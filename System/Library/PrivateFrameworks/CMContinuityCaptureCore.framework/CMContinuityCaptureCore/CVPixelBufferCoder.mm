@interface CVPixelBufferCoder
+ (void)initialize;
- (CVPixelBufferCoder)initWithCVPixelBuffer:(__CVBuffer *)buffer;
- (CVPixelBufferCoder)initWithCoder:(id)coder;
- (__CVBuffer)_createPixelBufferForImage:(id)image fillWidth:(int64_t)width fillHeight:(int64_t)height;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVPixelBufferCoder

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
    self->_pixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CVPixelBufferCoder;
  [(CVPixelBufferCoder *)&v4 dealloc];
}

- (CVPixelBufferCoder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = CVPixelBufferCoder;
  v5 = [(CVPixelBufferCoder *)&v40 init];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_38;
  }

  v6 = v5;
  blockBufferOut = 0;
  pixelBufferOut = 0;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PixelBufferSourceMediaName"];
  mediaName = v6->_mediaName;
  v6->_mediaName = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PixelBufferSourceMedia"];
  if (v9)
  {
    v10 = [MEMORY[0x277CBF758] imageWithData:v9];
    v6->_pixelBuffer = [(CVPixelBufferCoder *)v6 _createPixelBufferForImage:v10 fillWidth:1920 fillHeight:1080];

    v6->_transferSourceMedia = 1;
  }

  else
  {
    v6->_transferSourceMedia = 0;
    dataLength = 0;
    v12 = [coderCopy decodeBytesForKey:@"PixelBufferAtomData" returnedLength:&dataLength];
    if (v12)
    {
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v12, dataLength, *MEMORY[0x277CBED00], 0, 0, dataLength, 0, &blockBufferOut) || FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer())
      {
        goto LABEL_31;
      }

      [(CVPixelBufferCoder *)&pixelBufferOut initWithCoder:v6, &v41];
      v13 = v41;
    }

    else
    {
      v14 = [coderCopy decodeInt64ForKey:@"PixelBufferWidth"];
      v15 = [coderCopy decodeInt64ForKey:@"PixelBufferHeight"];
      v16 = [coderCopy decodeInt32ForKey:@"PixelBufferFormat"];
      v17 = *MEMORY[0x277CC4DE8];
      v35[0] = *MEMORY[0x277CC4DE0];
      v35[1] = v17;
      v36[0] = MEMORY[0x277CBEC38];
      v36[1] = MEMORY[0x277CBEC10];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v14, v15, v16, v13, &pixelBufferOut))
      {
        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
          pixelBufferOut = 0;
        }
      }

      else if (pixelBufferOut)
      {
        v32 = v13;
        v41 = 0;
        v33 = [coderCopy decodeBytesForKey:@"PixelBufferData" returnedLength:&v41];
        if (v33)
        {
          v34 = v41;
          if (v41)
          {
            v18 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PixelBufferLayout"];
            v19 = [v18 count] >> 1;
            if (CVPixelBufferGetPlaneCount(pixelBufferOut) == v19)
            {
              CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
              if (CVPixelBufferGetPlaneCount(pixelBufferOut))
              {
                v20 = 0;
                while (1)
                {
                  v21 = [v18 objectAtIndexedSubscript:2 * v20];
                  unsignedIntegerValue = [v21 unsignedIntegerValue];

                  v23 = [v18 objectAtIndexedSubscript:(2 * (v20 & 0x3FFFFFFFFFFFFFFFLL)) | 1];
                  unsignedIntegerValue2 = [v23 unsignedIntegerValue];

                  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, v20);
                  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, v20);
                  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, v20);
                  if (unsignedIntegerValue < 1)
                  {
                    break;
                  }

                  if (unsignedIntegerValue > v34)
                  {
                    break;
                  }

                  v28 = HeightOfPlane;
                  v29 = (v33 + unsignedIntegerValue);
                  if (&v29[HeightOfPlane * unsignedIntegerValue2] > v33 + v34)
                  {
                    break;
                  }

                  if (unsignedIntegerValue2 == BytesPerRowOfPlane)
                  {
                    memcpy(BaseAddressOfPlane, v29, HeightOfPlane * unsignedIntegerValue2);
                  }

                  else
                  {
                    if (unsignedIntegerValue2 >= BytesPerRowOfPlane)
                    {
                      v30 = BytesPerRowOfPlane;
                    }

                    else
                    {
                      v30 = unsignedIntegerValue2;
                    }

                    if (HeightOfPlane)
                    {
                      do
                      {
                        memcpy(BaseAddressOfPlane, v29, v30);
                        BaseAddressOfPlane += BytesPerRowOfPlane;
                        v29 += unsignedIntegerValue2;
                        --v28;
                      }

                      while (v28);
                    }
                  }

                  if (CVPixelBufferGetPlaneCount(pixelBufferOut) <= ++v20)
                  {
                    goto LABEL_27;
                  }
                }
              }

              else
              {
LABEL_27:
                CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
                v6->_pixelBuffer = pixelBufferOut;
                pixelBufferOut = 0;
              }
            }
          }
        }

        v13 = v32;
        v9 = 0;
      }
    }
  }

LABEL_31:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (!v6->_pixelBuffer)
  {

    v6 = 0;
  }

  v11 = v6;

LABEL_38:
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = CMGetAttachment(self->_pixelBuffer, @"preference-image-url", 0);
  v6 = v5;
  mediaName = self->_mediaName;
  if (mediaName)
  {
    lastPathComponent = mediaName;
LABEL_4:
    [coderCopy encodeObject:lastPathComponent forKey:@"PixelBufferSourceMediaName"];
    goto LABEL_5;
  }

  lastPathComponent = [v5 lastPathComponent];
  if (lastPathComponent)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (self->_transferSourceMedia && v6)
  {
    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6];
    v10 = v9;
    if (v9 && [v9 length])
    {
      [coderCopy encodeObject:v10 forKey:@"PixelBufferSourceMedia"];

      goto LABEL_21;
    }
  }

  theBuffer = 0;
  v11 = *MEMORY[0x277CBECE8];
  pixelBuffer = self->_pixelBuffer;
  if (!FigRemote_CreateSerializedAtomDataBlockBufferForPixelBuffer())
  {
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer, 0, 0);
    v14 = theBuffer;
    if (IsRangeContiguous)
    {
LABEL_17:
      v15 = 0;
      dataPointerOut = 0;
      if (!CMBlockBufferGetDataPointer(v14, 0, 0, &v15, &dataPointerOut))
      {
        [coderCopy encodeBytes:dataPointerOut length:v15 forKey:@"PixelBufferAtomData"];
      }

      goto LABEL_19;
    }

    blockBufferOut = 0;
    if (!CMBlockBufferCreateContiguous(v11, theBuffer, v11, 0, 0, 0, 0, &blockBufferOut))
    {
      if (theBuffer)
      {
        CFRelease(theBuffer);
      }

      v14 = blockBufferOut;
      theBuffer = blockBufferOut;
      goto LABEL_17;
    }
  }

LABEL_19:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

LABEL_21:
}

- (CVPixelBufferCoder)initWithCVPixelBuffer:(__CVBuffer *)buffer
{
  v8.receiver = self;
  v8.super_class = CVPixelBufferCoder;
  v4 = [(CVPixelBufferCoder *)&v8 init];
  v5 = v4;
  v6 = 0;
  if (buffer && v4)
  {
    v4->_pixelBuffer = CFRetain(buffer);
    v5->_transferSourceMedia = 1;
    v6 = v5;
  }

  return v6;
}

- (__CVBuffer)_createPixelBufferForImage:(id)image fillWidth:(int64_t)width fillHeight:(int64_t)height
{
  imageCopy = image;
  v8 = imageCopy;
  pixelBufferOut = 0;
  if (!imageCopy)
  {
    goto LABEL_11;
  }

  [(__CVBuffer *)imageCopy extent];
  v10 = v9;
  [(__CVBuffer *)v8 extent];
  v12 = v11;
  v13 = height / v10;
  if (width / v12 >= v13)
  {
    v13 = width / v12;
  }

  if (v13 >= 1.0)
  {
    goto LABEL_6;
  }

  v14 = round(v10 * v13 * 0.5);
  v10 = v14 + v14;
  v15 = round(v12 * v13 * 0.5);
  v12 = v15 + v15;
  *&v16 = -1;
  *(&v16 + 1) = -1;
  *&v32.c = v16;
  *&v32.tx = v16;
  *&v32.a = v16;
  CGAffineTransformMakeScale(&v32, width / v12, height / (v14 + v14));
  v31 = v32;
  v17 = [(__CVBuffer *)v8 imageByApplyingTransform:&v31];

  v8 = v17;
  if (v17)
  {
LABEL_6:
    v18 = *MEMORY[0x277CC4DE8];
    v29[0] = *MEMORY[0x277CC4DE0];
    v29[1] = v18;
    v30[0] = MEMORY[0x277CBEC38];
    v30[1] = MEMORY[0x277CBEC10];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v20 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v12, v10, 0x34323076u, v19, &pixelBufferOut);

    if (!v20 && pixelBufferOut)
    {
      v21 = *MEMORY[0x277CC4C20];
      v22 = *MEMORY[0x277CC4D10];
      v27[0] = *MEMORY[0x277CC4C00];
      v27[1] = v22;
      v23 = *MEMORY[0x277CC4D28];
      v28[0] = v21;
      v28[1] = v23;
      v27[2] = *MEMORY[0x277CC4CC0];
      v28[2] = *MEMORY[0x277CC4CD8];
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
      CMSetAttachments(pixelBufferOut, v24, 1u);
      v25 = [MEMORY[0x277CBF740] contextWithOptions:MEMORY[0x277CBEC10]];
      [v25 render:v8 toCVPixelBuffer:pixelBufferOut];

      v17 = pixelBufferOut;
      goto LABEL_12;
    }

    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
      v17 = 0;
      pixelBufferOut = 0;
      goto LABEL_12;
    }

LABEL_11:
    v17 = 0;
  }

LABEL_12:

  return v17;
}

- (uint64_t)initWithCoder:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  v5 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:*a1];
  *a3 = v5;
  result = [a2 _createPixelBufferForImage:v5 fillWidth:1920 fillHeight:1080];
  a2[2] = result;
  return result;
}

@end