@interface MIOPixelBufferUtility
+ (BOOL)bufferHasPadding:(__CVBuffer *)padding;
+ (BOOL)concatPixelBuffer:(__CVBuffer *)buffer withPixelBuffer:(__CVBuffer *)pixelBuffer targetPixelBuffer:(__CVBuffer *)targetPixelBuffer;
+ (BOOL)copyAlphaChannelOfBuffer:(__CVBuffer *)buffer toMonochromeBuffer:(__CVBuffer *)monochromeBuffer;
+ (BOOL)copyAlphaChannelOfBuffer:(__CVBuffer *)buffer touint16Data:(unsigned __int16 *)data;
+ (BOOL)copyData:(id)data toNonPlanarPixelBuffer:(__CVBuffer *)buffer;
+ (BOOL)copyData:(id)data toPlanarPixelBuffer:(__CVBuffer *)buffer toPlane:(unint64_t)plane;
+ (BOOL)copyFromPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer andShiftBits:(int)bits;
+ (BOOL)copyMonochromeBuffer:(__CVBuffer *)buffer toAlphaChannelOfBuffer:(__CVBuffer *)ofBuffer;
+ (BOOL)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer;
+ (BOOL)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer bytesPerPixel:(double)pixel;
+ (BOOL)copyuint16Data:(unsigned __int16 *)data toAlphaChannelOfBuffer:(__CVBuffer *)buffer;
+ (BOOL)fillPlaneOfPixelBuffer:(__CVBuffer *)buffer planeIndex:(int)index withValue:(unsigned __int16)value;
+ (BOOL)isPixelBufferCompandedRawBayer:(__CVBuffer *)bayer;
+ (BOOL)isPixelBufferRawBayer:(__CVBuffer *)bayer;
+ (BOOL)isPixelFormatCompandedRawBayer:(unsigned int)bayer;
+ (BOOL)isPixelFormatRawBayer:(unsigned int)bayer;
+ (BOOL)joinCompandedWarholBuffer:(__CVBuffer *)buffer intoCompandedBayerBuffer:(__CVBuffer *)bayerBuffer;
+ (BOOL)joinWarholBuffer:(__CVBuffer *)buffer intoBayerBuffer:(__CVBuffer *)bayerBuffer shiftBitsRightBy:(int)by msbReplication:(BOOL)replication;
+ (BOOL)joinYUVBuffer:(__CVBuffer *)buffer intoRawBayerPixelBuffer:(__CVBuffer *)pixelBuffer shiftBitsLeftBy:(int)by msbReplication:(BOOL)replication;
+ (BOOL)splitBayerBuffer:(__CVBuffer *)buffer intoWarholPixelBuffer:(__CVBuffer *)pixelBuffer shiftBitsLeftBy:(int)by;
+ (BOOL)splitBayerBuffer:(__CVBuffer *)buffer intoYUVPixelBuffer:(__CVBuffer *)pixelBuffer shiftBitsLeftBy:(int)by;
+ (BOOL)splitCompandedBayerBuffer:(__CVBuffer *)buffer intoCompandedWarholPixelBuffer:(__CVBuffer *)pixelBuffer;
+ (BOOL)transferL010PixelBuffer:(__CVBuffer *)buffer toq8q2PixelBuffer:(__CVBuffer *)pixelBuffer;
+ (BOOL)transfer_RGhABuffer:(__CVBuffer *)buffer torg3h:(__CVBuffer *)torg3h;
+ (BOOL)transfer_rg3hBuffer:(__CVBuffer *)buffer toRGhA:(__CVBuffer *)a;
+ (BOOL)transferq8q2PixelBuffer:(__CVBuffer *)buffer toL010PixelBuffer:(__CVBuffer *)pixelBuffer;
+ (BOOL)verticallySplitPixelBuffer:(__CVBuffer *)buffer intoTopPixelBuffer:(__CVBuffer *)pixelBuffer bottomPixelBuffer:(__CVBuffer *)bottomPixelBuffer;
+ (BOOL)writeBuffer:(__CVBuffer *)buffer toFile:(id)file;
+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)width height:(unsigned int)height extendedPixelsPerRow:(unsigned int)row pixelFormat:(int)format bytesPerRowAlignment:(unsigned int)alignment planeAlignment:(unsigned int)planeAlignment;
+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)width height:(unsigned int)height extendedPixelsPerRow:(unsigned int)row pixelFormat:(int)format bytesPerRowAlignment:(unsigned int)alignment planeAlignment:(unsigned int)planeAlignment bufferCacheMode:(int)mode;
+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)width height:(unsigned int)height pixelFormat:(int)format bytesPerRow:(unsigned int)row;
+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)width height:(unsigned int)height pixelFormat:(int)format bytesPerRows:(id)rows;
+ (__CVBuffer)combineLeftBuffer:(__CVBuffer *)buffer rightBuffer:(__CVBuffer *)rightBuffer;
+ (__CVBuffer)create4444AYpCbCr16PixelBufferFillAlphaWithData:(__CFData *)data width:(unint64_t)width height:(unint64_t)height;
+ (__CVBuffer)createRawPixelBufferWithWidth:(unsigned int)width height:(unsigned int)height extendedRows:(unsigned int)rows extendedPixelsPerRow:(unsigned int)row pixelFormat:(int)format bytesPerRowAlignment:(unsigned int)alignment planeAlignment:(unsigned int)planeAlignment bufferCacheMode:(unsigned int)self0;
+ (__CVBuffer)createRawPixelBufferWithWidth:(unsigned int)width height:(unsigned int)height pixelFormat:(int)format bytesPerRow:(unsigned int)row;
+ (__CVBuffer)newPixelBufferRefCopy:(__CVBuffer *)copy;
+ (__CVBuffer)newPixelBufferRefCopy:(__CVBuffer *)copy attachmentKeysToCopy:(id)toCopy;
+ (__CVBuffer)newRawBayerBufferFromYUVPixelBuffer:(__CVBuffer *)buffer withPixelBufferPool:(__CVPixelBufferPool *)pool msbReplication:(BOOL)replication;
+ (__CVBuffer)newWarholBufferFromCompandedRawBayerPixelBuffer:(__CVBuffer *)buffer withPixelBufferPool:(__CVPixelBufferPool *)pool;
+ (__CVBuffer)newWarholBufferFromRawBayerPixelBuffer:(__CVBuffer *)buffer;
+ (__CVBuffer)newWarholBufferFromRawBayerPixelBuffer:(__CVBuffer *)buffer withPixelBufferPool:(__CVPixelBufferPool *)pool;
+ (__CVBuffer)newYUVBufferFromRawBayerPixelBuffer:(__CVBuffer *)buffer withPixelBufferPool:(__CVPixelBufferPool *)pool;
+ (__CVBuffer)pixelBufferFromPool:(__CVPixelBufferPool *)pool;
+ (__CVBuffer)readFrameFromFile:(id)file width:(unsigned int)width height:(unsigned int)height pixelFormat:(unsigned int)format;
+ (__CVBuffer)stripBufferPadding:(__CVBuffer *)padding;
+ (__CVPixelBufferPool)createNewL008PixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)buffer minimumBufferCount:(unint64_t)count;
+ (__CVPixelBufferPool)createNewL010PixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)buffer minimumBufferCount:(unint64_t)count;
+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format bytesPerRow:(unint64_t)row minBufferCount:(unint64_t)count;
+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format bytesPerRows:(id)rows minBufferCount:(unint64_t)count;
+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format extendedPixelsPerRow:(unint64_t)row minBufferCount:(unint64_t)count;
+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format extendedPixelsPerRow:(unint64_t)row minBufferCount:(unint64_t)count bufferCacheMode:(int)mode;
+ (id)copyNonPlanarPixelBufferData:(__CVBuffer *)data;
+ (id)copyPixelBufferData:(__CVBuffer *)data ofPlane:(unint64_t)plane;
+ (id)histogramOf8BitBuffer:(__CVBuffer *)buffer;
+ (id)rangesOf8BitBuffer:(__CVBuffer *)buffer;
+ (id)sharedBytesPerPixelLookUp;
+ (int64_t)numberOfPlanesForPixelFormatType:(unsigned int)type;
+ (unint64_t)bytesPerWidthOfBuffer:(__CVBuffer *)buffer;
+ (unint64_t)extendedPixelsPerRowOfPixelBuffer:(__CVBuffer *)buffer;
+ (unint64_t)pixelBufferSizeWithPadding:(__CVBuffer *)padding;
+ (void)transferAttachmentForKey:(__CFString *)key fromBuffer:(__CVBuffer *)buffer toBuffer:(__CVBuffer *)toBuffer;
+ (void)writeBuffer:(const char *)buffer ofSize:(unint64_t)size toFile:(id)file;
@end

@implementation MIOPixelBufferUtility

+ (id)sharedBytesPerPixelLookUp
{
  if (+[MIOPixelBufferUtility sharedBytesPerPixelLookUp]::onceToken != -1)
  {
    +[MIOPixelBufferUtility sharedBytesPerPixelLookUp];
  }

  v3 = +[MIOPixelBufferUtility sharedBytesPerPixelLookUp]::lookup;

  return v3;
}

uint64_t __50__MIOPixelBufferUtility_sharedBytesPerPixelLookUp__block_invoke()
{
  +[MIOPixelBufferUtility sharedBytesPerPixelLookUp]::lookup = [&unk_2868E3C28 mutableCopy];

  return MEMORY[0x2821F96F8]();
}

+ (__CVBuffer)createRawPixelBufferWithWidth:(unsigned int)width height:(unsigned int)height extendedRows:(unsigned int)rows extendedPixelsPerRow:(unsigned int)row pixelFormat:(int)format bytesPerRowAlignment:(unsigned int)alignment planeAlignment:(unsigned int)planeAlignment bufferCacheMode:(unsigned int)self0
{
  pixelBufferOut = 0;
  LODWORD(v15) = mode;
  v13 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:*&width height:*&height extendedPixelsPerRow:*&row pixelFormat:*&format bytesPerRowAlignment:*&alignment planeAlignment:planeAlignment bufferCacheMode:v15];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, format, v13, &pixelBufferOut);
  CFRelease(v13);
  return pixelBufferOut;
}

+ (__CVBuffer)createRawPixelBufferWithWidth:(unsigned int)width height:(unsigned int)height pixelFormat:(int)format bytesPerRow:(unsigned int)row
{
  pixelBufferOut = 0;
  v9 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:*&width height:*&height pixelFormat:*&format bytesPerRow:*&row];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, format, v9, &pixelBufferOut);
  CFRelease(v9);
  return pixelBufferOut;
}

+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)width height:(unsigned int)height pixelFormat:(int)format bytesPerRows:(id)rows
{
  heightCopy = height;
  valuePtr = width;
  formatCopy = format;
  rowsCopy = rows;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v9);
  CFRelease(v9);
  if ([rowsCopy count] == 1)
  {
    v10 = [rowsCopy objectAtIndexedSubscript:0];
    intValue = [v10 intValue];

    v18 = intValue;
    v12 = CFNumberCreate(v7, kCFNumberIntType, &v18);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D98], v12);
    CFRelease(v12);
  }

  if ([rowsCopy count] >= 2)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D98], rowsCopy);
  }

  v13 = CFNumberCreate(v7, kCFNumberIntType, &heightCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v13);
  CFRelease(v13);
  v14 = CFNumberCreate(v7, kCFNumberIntType, &formatCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v14);
  CFRelease(v14);
  v15 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = 0;
  v16 = CFNumberCreate(v7, kCFNumberIntType, &v18);
  CFDictionarySetValue(v15, *MEMORY[0x277CD2970], v16);
  CFRelease(v16);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v15);
  CFRelease(v15);

  return Mutable;
}

+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)width height:(unsigned int)height pixelFormat:(int)format bytesPerRow:(unsigned int)row
{
  heightCopy = height;
  valuePtr = width;
  formatCopy = format;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF138];
  v9 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v11);
  CFRelease(v11);
  rowCopy = row;
  v12 = CFNumberCreate(v7, kCFNumberIntType, &rowCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D98], v12);
  CFRelease(v12);
  v13 = CFNumberCreate(v7, kCFNumberIntType, &heightCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v13);
  CFRelease(v13);
  v14 = CFNumberCreate(v7, kCFNumberIntType, &formatCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v14);
  CFRelease(v14);
  v15 = CFDictionaryCreateMutable(v7, 0, v8, v9);
  v18 = 0;
  v16 = CFNumberCreate(v7, kCFNumberIntType, &v18);
  CFDictionarySetValue(v15, *MEMORY[0x277CD2970], v16);
  CFRelease(v16);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v15);
  CFRelease(v15);
  return Mutable;
}

+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)width height:(unsigned int)height extendedPixelsPerRow:(unsigned int)row pixelFormat:(int)format bytesPerRowAlignment:(unsigned int)alignment planeAlignment:(unsigned int)planeAlignment
{
  heightCopy = height;
  valuePtr = width;
  formatCopy = format;
  rowCopy = row;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v13);
  CFRelease(v13);
  alignmentCopy = alignment;
  v14 = CFNumberCreate(v11, kCFNumberIntType, &alignmentCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v14);
  CFRelease(v14);
  v15 = CFNumberCreate(v11, kCFNumberIntType, &heightCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v15);
  CFRelease(v15);
  if (row)
  {
    v16 = CFNumberCreate(v11, kCFNumberIntType, &rowCopy);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DB8], v16);
    CFRelease(v16);
  }

  v17 = CFNumberCreate(v11, kCFNumberIntType, &formatCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v17);
  CFRelease(v17);
  planeAlignmentCopy = planeAlignment;
  v18 = CFNumberCreate(v11, kCFNumberIntType, &planeAlignmentCopy);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E38], v18);
  CFRelease(v18);
  v19 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v22 = 0;
  v20 = CFNumberCreate(v11, kCFNumberIntType, &v22);
  CFDictionarySetValue(v19, *MEMORY[0x277CD2970], v20);
  CFRelease(v20);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v19);
  CFRelease(v19);
  return Mutable;
}

+ (__CFDictionary)createPixelBufferAttributesWithWidth:(unsigned int)width height:(unsigned int)height extendedPixelsPerRow:(unsigned int)row pixelFormat:(int)format bytesPerRowAlignment:(unsigned int)alignment planeAlignment:(unsigned int)planeAlignment bufferCacheMode:(int)mode
{
  modeCopy = mode;
  v10 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:*&width height:*&height extendedPixelsPerRow:*&row pixelFormat:*&format bytesPerRowAlignment:1 planeAlignment:1];
  v11 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v10);
  CFRelease(v10);
  if (!modeCopy)
  {
    mode = 0;
  }

  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = CFNumberCreate(v11, kCFNumberIntType, &mode);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD2970], v14);
  CFRelease(v14);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC4DE8], Mutable);
  CFRelease(Mutable);
  return MutableCopy;
}

+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format extendedPixelsPerRow:(unint64_t)row minBufferCount:(unint64_t)count bufferCacheMode:(int)mode
{
  v16[1] = *MEMORY[0x277D85DE8];
  LODWORD(v13) = mode;
  v9 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:width height:height extendedPixelsPerRow:row pixelFormat:*&format bytesPerRowAlignment:1 planeAlignment:1 bufferCacheMode:v13];
  poolOut = 0;
  v15 = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v11, v9, &poolOut);

  CFRelease(v9);
  return poolOut;
}

+ (__CVBuffer)newPixelBufferRefCopy:(__CVBuffer *)copy
{
  v13[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  IOSurface = CVPixelBufferGetIOSurface(copy);
  if (IOSurfaceGetProhibitUseCount())
  {
    v12 = *MEMORY[0x277CC4D90];
    v13[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], IOSurface, v4, &pixelBufferOut);
  if (v5)
  {
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = v5;
      _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_ERROR, "ERROR CREATING PIXELBUFFERREFCOPY %d", buf, 8u);
    }

    v7 = 0;
  }

  else
  {
    v7 = pixelBufferOut;
  }

  return v7;
}

+ (__CVBuffer)newPixelBufferRefCopy:(__CVBuffer *)copy attachmentKeysToCopy:(id)toCopy
{
  v27[1] = *MEMORY[0x277D85DE8];
  toCopyCopy = toCopy;
  IOSurface = CVPixelBufferGetIOSurface(copy);
  pixelBufferOut = 0;
  if (IOSurfaceGetProhibitUseCount())
  {
    v26 = *MEMORY[0x277CC4D90];
    v27[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], IOSurface, v7, &pixelBufferOut);
  if (v8)
  {
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v25 = v8;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "ERROR CREATING PIXELBUFFERREFCOPY %d", buf, 8u);
    }

    v10 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = toCopyCopy;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          *buf = 0;
          v16 = CVBufferCopyAttachment(copy, v15, buf);
          if (v16)
          {
            CVBufferSetAttachment(pixelBufferOut, v15, v16, *buf);
            CFRelease(v16);
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    v10 = pixelBufferOut;
  }

  return v10;
}

+ (BOOL)copyFromPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer andShiftBits:(int)bits
{
  if (buffer)
  {
    v5 = pixelBuffer == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    if (bits >= 0)
    {
      LOBYTE(v10) = bits;
    }

    else
    {
      v10 = -bits;
    }

    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    if (CVPixelBufferIsPlanar(buffer))
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
    }

    else
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddress(buffer);
    }

    v12 = BaseAddressOfPlane;
    if (CVPixelBufferIsPlanar(pixelBuffer))
    {
      BaseAddress = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    }

    v14 = BaseAddress;
    if (CVPixelBufferIsPlanar(buffer))
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeight(buffer);
    }

    v16 = HeightOfPlane;
    if (CVPixelBufferIsPlanar(buffer))
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
    }

    else
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
    }

    v18 = BytesPerRowOfPlane * v16;
    if (bits)
    {
      if (bits < 1)
      {
        right_shift_uint16_buffer(v12, v14, v18, v10);
      }

      else
      {
        left_shift_uint16_buffer(v12, v14, v18, v10);
      }
    }

    else
    {
      memcpy(v14, v12, v18);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  }

  return v6;
}

+ (__CVPixelBufferPool)createNewL010PixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)buffer minimumBufferCount:(unint64_t)count
{
  v15[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v8 = +[MOVStreamIOUtility getPreferredBytesPerRowAlignmentSize];
  v9 = +[MIOPixelBufferUtility createPixelBufferAttributesWithWidth:height:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:](MIOPixelBufferUtility, "createPixelBufferAttributesWithWidth:height:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:", Width, Height, (CVPixelBufferGetBytesPerRow(buffer) % v8) >> 1, 1278226736, v8, +[MOVStreamIOUtility getPreferredPlaneAlignmentSize]);
  v13 = 0;
  v14 = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v11, v9, &v13);

  CFRelease(v9);
  return v13;
}

+ (__CVPixelBufferPool)createNewL008PixelBufferPoolWithReferencePixelBuffer:(__CVBuffer *)buffer minimumBufferCount:(unint64_t)count
{
  v15[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v8 = +[MOVStreamIOUtility getPreferredBytesPerRowAlignmentSize];
  v9 = +[MIOPixelBufferUtility createPixelBufferAttributesWithWidth:height:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:](MIOPixelBufferUtility, "createPixelBufferAttributesWithWidth:height:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:", Width, Height, (CVPixelBufferGetBytesPerRow(buffer) % v8), 1278226488, v8, +[MOVStreamIOUtility getPreferredPlaneAlignmentSize]);
  v13 = 0;
  v14 = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v11, v9, &v13);

  CFRelease(v9);
  return v13;
}

+ (__CVBuffer)newWarholBufferFromRawBayerPixelBuffer:(__CVBuffer *)buffer withPixelBufferPool:(__CVPixelBufferPool *)pool
{
  pixelBufferOut = 0;
  v5 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pool, &pixelBufferOut);
  result = 0;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = pixelBufferOut == 0;
  }

  if (!v7)
  {
    [MIOPixelBufferUtility splitBayerBuffer:"splitBayerBuffer:intoWarholPixelBuffer:shiftBitsLeftBy:" intoWarholPixelBuffer:buffer shiftBitsLeftBy:?];
    return pixelBufferOut;
  }

  return result;
}

+ (__CVBuffer)newYUVBufferFromRawBayerPixelBuffer:(__CVBuffer *)buffer withPixelBufferPool:(__CVPixelBufferPool *)pool
{
  pixelBufferOut = 0;
  v5 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pool, &pixelBufferOut);
  result = 0;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = pixelBufferOut == 0;
  }

  if (!v7)
  {
    [MIOPixelBufferUtility splitBayerBuffer:"splitBayerBuffer:intoYUVPixelBuffer:shiftBitsLeftBy:" intoYUVPixelBuffer:buffer shiftBitsLeftBy:?];
    return pixelBufferOut;
  }

  return result;
}

+ (__CVBuffer)newRawBayerBufferFromYUVPixelBuffer:(__CVBuffer *)buffer withPixelBufferPool:(__CVPixelBufferPool *)pool msbReplication:(BOOL)replication
{
  pixelBufferOut = 0;
  v6 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pool, &pixelBufferOut);
  result = 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = pixelBufferOut == 0;
  }

  if (!v8)
  {
    [MIOPixelBufferUtility joinYUVBuffer:"joinYUVBuffer:intoRawBayerPixelBuffer:shiftBitsLeftBy:msbReplication:" intoRawBayerPixelBuffer:buffer shiftBitsLeftBy:? msbReplication:?];
    return pixelBufferOut;
  }

  return result;
}

+ (__CVBuffer)newWarholBufferFromCompandedRawBayerPixelBuffer:(__CVBuffer *)buffer withPixelBufferPool:(__CVPixelBufferPool *)pool
{
  pixelBufferOut = 0;
  v5 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pool, &pixelBufferOut);
  result = 0;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = pixelBufferOut == 0;
  }

  if (!v7)
  {
    [MIOPixelBufferUtility splitCompandedBayerBuffer:buffer intoCompandedWarholPixelBuffer:?];
    return pixelBufferOut;
  }

  return result;
}

+ (__CVBuffer)newWarholBufferFromRawBayerPixelBuffer:(__CVBuffer *)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v6 = +[MOVStreamIOUtility getPreferredBytesPerRowAlignmentSize];
  v7 = +[MIOPixelBufferUtility createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:](MIOPixelBufferUtility, "createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:", Width, Height, 0, (CVPixelBufferGetBytesPerRow(buffer) % v6) >> 1, 1278226736, v6, +[MOVStreamIOUtility getPreferredPlaneAlignmentSize]);
  [MIOPixelBufferUtility splitBayerBuffer:buffer intoWarholPixelBuffer:v7 shiftBitsLeftBy:2];
  return v7;
}

+ (BOOL)fillPlaneOfPixelBuffer:(__CVBuffer *)buffer planeIndex:(int)index withValue:(unsigned __int16)value
{
  result = 0;
  if (buffer && (index & 0x80000000) == 0)
  {
    if (CVPixelBufferGetPlaneCount(buffer) <= index)
    {
      return 0;
    }

    else
    {
      CVPixelBufferLockBaseAddress(buffer, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, index);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, index);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, index);
      __pattern4[0] = value;
      __pattern4[1] = value;
      memset_pattern4(BaseAddressOfPlane, __pattern4, BytesPerRowOfPlane * HeightOfPlane);
      CVPixelBufferUnlockBaseAddress(buffer, 0);
      return 1;
    }
  }

  return result;
}

+ (BOOL)isPixelBufferRawBayer:(__CVBuffer *)bayer
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(bayer);

  return [MIOPixelBufferUtility isPixelFormatRawBayer:PixelFormatType];
}

+ (BOOL)isPixelFormatRawBayer:(unsigned int)bayer
{
  result = 1;
  if (bayer > 1735549491)
  {
    if (bayer == 1735549492)
    {
      return result;
    }

    v4 = 1919379252;
  }

  else
  {
    if (bayer == 1650943796)
    {
      return result;
    }

    v4 = 1734505012;
  }

  if (bayer != v4)
  {
    return 0;
  }

  return result;
}

+ (BOOL)isPixelBufferCompandedRawBayer:(__CVBuffer *)bayer
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(bayer);

  return [MIOPixelBufferUtility isPixelFormatCompandedRawBayer:PixelFormatType];
}

+ (BOOL)isPixelFormatCompandedRawBayer:(unsigned int)bayer
{
  result = 1;
  if (bayer > 1735549751)
  {
    if (bayer == 1735549752)
    {
      return result;
    }

    v4 = 1919378232;
  }

  else
  {
    if (bayer == 1650942776)
    {
      return result;
    }

    v4 = 1734501176;
  }

  if (bayer != v4)
  {
    return 0;
  }

  return result;
}

+ (void)writeBuffer:(const char *)buffer ofSize:(unint64_t)size toFile:(id)file
{
  v7 = fopen([file cStringUsingEncoding:4], "wb");
  if (v7)
  {
    v8 = v7;
    fwrite(buffer, size, 1uLL, v7);

    fclose(v8);
  }
}

+ (BOOL)joinYUVBuffer:(__CVBuffer *)buffer intoRawBayerPixelBuffer:(__CVBuffer *)pixelBuffer shiftBitsLeftBy:(int)by msbReplication:(BOOL)replication
{
  if (buffer)
  {
    v6 = pixelBuffer == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    replicationCopy = replication;
    v9 = *&by;
    v12 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v13 = [v12 joinYUVBuffer:buffer intoRawBayerPixelBuffer:pixelBuffer shiftBitsLeftBy:v9 msbReplication:replicationCopy];

    if ((v13 & 1) == 0)
    {
      if (v9 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = -v9;
      }

      v26 = v14;
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      v16 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      Width = CVPixelBufferGetWidth(pixelBuffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      v21 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
      join_bayer_buffer_yuv(BaseAddressOfPlane, v16, BaseAddress, Width, Height, BytesPerRow, BytesPerRowOfPlane, v21, v22, v23, v26, replicationCopy);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }
  }

  return v7;
}

+ (unint64_t)bytesPerWidthOfBuffer:(__CVBuffer *)buffer
{
  if (CVPixelBufferIsPlanar(buffer))
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_ERROR, "bytesPerWidthOfBuffer requires non-planar buffer.", v8, 2u);
    }

    return 0;
  }

  else
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, 0);
    return (BytesPerPixelOfPlaneForFormat * CVPixelBufferGetWidth(buffer));
  }
}

+ (BOOL)bufferHasPadding:(__CVBuffer *)padding
{
  if (CVPixelBufferIsPlanar(padding))
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_ERROR, "bufferHasPadding requires non-planar buffer.", v7, 2u);
    }

    return 0;
  }

  else
  {
    v6 = [MIOPixelBufferUtility bytesPerWidthOfBuffer:padding];
    return v6 < CVPixelBufferGetBytesPerRow(padding);
  }
}

+ (__CVBuffer)stripBufferPadding:(__CVBuffer *)padding
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferIsPlanar(padding))
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(destinationBuffer) = 0;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_ERROR, "stripBufferPadding requires non-planar buffer.", &destinationBuffer, 2u);
    }

    goto LABEL_7;
  }

  v5 = [MIOPixelBufferUtility bytesPerWidthOfBuffer:padding];
  v14[0] = *MEMORY[0x277CC4D98];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
  v14[1] = *MEMORY[0x277CC4DE8];
  v15[0] = v6;
  v15[1] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  destinationBuffer = 0;
  Default = CFAllocatorGetDefault();
  Width = CVPixelBufferGetWidth(padding);
  Height = CVPixelBufferGetHeight(padding);
  PixelFormatType = CVPixelBufferGetPixelFormatType(padding);
  CVPixelBufferCreate(Default, Width, Height, PixelFormatType, v4, &destinationBuffer);
  if (![MIOPixelBufferUtility copyPixelBuffer:padding toPixelBuffer:destinationBuffer])
  {
    CVPixelBufferRelease(destinationBuffer);
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  CVBufferPropagateAttachments(padding, destinationBuffer);
  v11 = destinationBuffer;
LABEL_8:

  return v11;
}

+ (BOOL)transfer_RGhABuffer:(__CVBuffer *)buffer torg3h:(__CVBuffer *)torg3h
{
  Width = CVPixelBufferGetWidth(torg3h);
  if (Width != CVPixelBufferGetWidth(buffer))
  {
    v24 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v32 = 0;
    v25 = "Width of rg3h and RGhA buffers does not match.";
    v26 = &v32;
LABEL_19:
    _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_ERROR, v25, v26, 2u);
    goto LABEL_20;
  }

  Height = CVPixelBufferGetHeight(torg3h);
  if (Height != CVPixelBufferGetHeight(buffer))
  {
    v24 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v31 = 0;
    v25 = "Height of rg3h and RGhA buffers does not match.";
    v26 = &v31;
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(torg3h) != 1919365992)
  {
    v24 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v30 = 0;
    v25 = "rg3h buffer has wrong pixel format type.";
    v26 = &v30;
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(buffer) != 1380411457)
  {
    v24 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "RGhA buffer has wrong pixel format type.";
      v26 = buf;
      goto LABEL_19;
    }

LABEL_20:

    return 0;
  }

  CVPixelBufferLockBaseAddress(torg3h, 0);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(torg3h, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(torg3h, 1uLL);
  v10 = CVPixelBufferGetBaseAddressOfPlane(torg3h, 2uLL);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(torg3h, 0);
  v13 = CVPixelBufferGetBytesPerRowOfPlane(torg3h, 1uLL);
  v14 = CVPixelBufferGetBytesPerRowOfPlane(torg3h, 2uLL);
  if (Height)
  {
    v15 = 0;
    v16 = 2 * (v14 >> 1);
    v17 = BaseAddress + 2;
    do
    {
      v18 = v17;
      v19 = BaseAddressOfPlane;
      v20 = v9;
      v21 = v10;
      for (i = Width; i; --i)
      {
        *v19++ = *(v18 - 1);
        *v20++ = *v18;
        *v21++ = v18[1];
        v18 += 4;
      }

      ++v15;
      v10 += v16;
      v9 += 2 * (v13 >> 1);
      BaseAddressOfPlane += 2 * (BytesPerRowOfPlane >> 1);
      v17 += BytesPerRow >> 1;
    }

    while (v15 != Height);
  }

  v23 = 1;
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(torg3h, 0);
  return v23;
}

+ (BOOL)transfer_rg3hBuffer:(__CVBuffer *)buffer toRGhA:(__CVBuffer *)a
{
  Width = CVPixelBufferGetWidth(buffer);
  if (Width != CVPixelBufferGetWidth(a))
  {
    v27 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v35 = 0;
    v28 = "Width of rg3h and RGhA buffers does not match.";
    v29 = &v35;
LABEL_19:
    _os_log_impl(&dword_257883000, v27, OS_LOG_TYPE_ERROR, v28, v29, 2u);
    goto LABEL_20;
  }

  Height = CVPixelBufferGetHeight(buffer);
  if (Height != CVPixelBufferGetHeight(a))
  {
    v27 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v34 = 0;
    v28 = "Height of rg3h and RGhA buffers does not match.";
    v29 = &v34;
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(buffer) != 1919365992)
  {
    v27 = +[MIOLog defaultLog];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v33 = 0;
    v28 = "rg3h buffer has wrong pixel format type.";
    v29 = &v33;
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(a) != 1380411457)
  {
    v27 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "RGhA buffer has wrong pixel format type.";
      v29 = buf;
      goto LABEL_19;
    }

LABEL_20:

    return 0;
  }

  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  CVPixelBufferLockBaseAddress(a, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v9 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
  v10 = CVPixelBufferGetBaseAddressOfPlane(buffer, 2uLL);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  v13 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
  v14 = CVPixelBufferGetBytesPerRowOfPlane(buffer, 2uLL);
  if (Height)
  {
    v15 = 0;
    v16 = 2 * (v14 >> 1);
    v17 = BaseAddress + 4;
    do
    {
      v18 = v17;
      v19 = BaseAddressOfPlane;
      v20 = v9;
      v21 = v10;
      for (i = Width; i; --i)
      {
        v23 = *v19++;
        *(v18 - 2) = v23;
        v24 = *v20++;
        *(v18 - 1) = v24;
        v25 = *v21++;
        *v18 = v25;
        v18[1] = 15360;
        v18 += 4;
      }

      ++v15;
      v10 += v16;
      v9 += 2 * (v13 >> 1);
      BaseAddressOfPlane += 2 * (BytesPerRowOfPlane >> 1);
      v17 += BytesPerRow >> 1;
    }

    while (v15 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a, 0);
  v26 = 1;
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  return v26;
}

+ (BOOL)splitBayerBuffer:(__CVBuffer *)buffer intoYUVPixelBuffer:(__CVBuffer *)pixelBuffer shiftBitsLeftBy:(int)by
{
  if (buffer)
  {
    v5 = pixelBuffer == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = *&by;
    v10 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v11 = [v10 splitBayerBuffer:buffer intoYUVPixelBuffer:pixelBuffer shiftBitsLeftBy:v7];

    if ((v11 & 1) == 0)
    {
      if (v7 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = -v7;
      }

      v25 = v12;
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
      v15 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
      Height = CVPixelBufferGetHeight(buffer);
      Width = CVPixelBufferGetWidth(buffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
      v20 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
      split_bayer_buffer_yuv(BaseAddress, BaseAddressOfPlane, v15, Width, Height, BytesPerRow, BytesPerRowOfPlane, v20, v21, v22, v23, v25);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }
  }

  return v6;
}

+ (BOOL)splitBayerBuffer:(__CVBuffer *)buffer intoWarholPixelBuffer:(__CVBuffer *)pixelBuffer shiftBitsLeftBy:(int)by
{
  if (buffer)
  {
    v5 = pixelBuffer == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = *&by;
    v10 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v11 = [v10 splitBayerBuffer:buffer intoWarholPixelBuffer:pixelBuffer shiftBitsLeftBy:v7];

    if ((v11 & 1) == 0)
    {
      if (v7 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = -v7;
      }

      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      if (CVPixelBufferIsPlanar(buffer))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(buffer);
      }

      v14 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(pixelBuffer))
      {
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
      }

      v16 = BaseAddress;
      if (CVPixelBufferIsPlanar(buffer))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeight(buffer);
      }

      v18 = HeightOfPlane;
      if (CVPixelBufferIsPlanar(buffer))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
      }

      v20 = BytesPerRowOfPlane;
      v21 = BytesPerRowOfPlane * v18;
      if (CVPixelBufferIsPlanar(pixelBuffer))
      {
        Height = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
      }

      else
      {
        Height = CVPixelBufferGetHeight(pixelBuffer);
      }

      v23 = Height;
      if (CVPixelBufferIsPlanar(pixelBuffer))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
      }

      split_bayer_buffer(v14, v16, (v16 + (v20 >> 1)), (v16 + BytesPerRow * (v23 >> 1)), (v16 + BytesPerRow * (v23 >> 1) + (v20 >> 1)), v21, v20, BytesPerRow, v12, 1);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }
  }

  return v6;
}

+ (BOOL)joinWarholBuffer:(__CVBuffer *)buffer intoBayerBuffer:(__CVBuffer *)bayerBuffer shiftBitsRightBy:(int)by msbReplication:(BOOL)replication
{
  if (buffer)
  {
    v6 = bayerBuffer == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    replicationCopy = replication;
    v9 = *&by;
    v12 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v13 = [v12 joinWarholBuffer:buffer intoBayerBuffer:bayerBuffer shiftBitsRightBy:v9 msbReplication:replicationCopy];

    if ((v13 & 1) == 0)
    {
      if (v9 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = -v9;
      }

      v28 = v14;
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      CVPixelBufferLockBaseAddress(bayerBuffer, 0);
      if (CVPixelBufferIsPlanar(bayerBuffer))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(bayerBuffer, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(bayerBuffer);
      }

      v27 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(buffer))
      {
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      }

      v17 = BaseAddress;
      if (CVPixelBufferIsPlanar(buffer))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeight(buffer);
      }

      v19 = HeightOfPlane;
      if (CVPixelBufferIsPlanar(buffer))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
      }

      v21 = BytesPerRowOfPlane;
      if (CVPixelBufferIsPlanar(buffer))
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
      }

      else
      {
        WidthOfPlane = CVPixelBufferGetWidth(buffer);
      }

      v23 = WidthOfPlane;
      v24 = v21 - 2 * WidthOfPlane;
      if (CVPixelBufferIsPlanar(bayerBuffer))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(bayerBuffer, 0);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(bayerBuffer);
      }

      join_bayer_buffer(v17, (v17 + v23), (v17 + v21 * (v19 >> 1)), (v17 + v21 * (v19 >> 1) + v23), v27, (v21 * v19) >> 2, v21 >> 1, BytesPerRow, v24 >> 1, v28, 1, replicationCopy);
      CVPixelBufferUnlockBaseAddress(bayerBuffer, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }
  }

  return v7;
}

+ (BOOL)splitCompandedBayerBuffer:(__CVBuffer *)buffer intoCompandedWarholPixelBuffer:(__CVBuffer *)pixelBuffer
{
  if (buffer)
  {
    v4 = pixelBuffer == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v8 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v9 = [v8 splitCompandedBayerBuffer:buffer intoCompandedWarholPixelBuffer:pixelBuffer];

    if ((v9 & 1) == 0)
    {
      extraColumnsOnRight = 0;
      extraColumnsOnLeft = 0;
      extraRowsOnBottom = 0;
      extraRowsOnTop = 0;
      CVPixelBufferGetExtendedPixels(pixelBuffer, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      if (CVPixelBufferIsPlanar(buffer))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(buffer);
      }

      v11 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(pixelBuffer))
      {
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
      }

      v13 = BaseAddress;
      if (CVPixelBufferIsPlanar(buffer))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeight(buffer);
      }

      v15 = HeightOfPlane;
      if (CVPixelBufferIsPlanar(buffer))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
      }

      v17 = BytesPerRowOfPlane;
      v18 = BytesPerRowOfPlane * v15;
      Width = CVPixelBufferGetWidth(buffer);
      v20 = CVPixelBufferGetWidth(pixelBuffer);
      if (CVPixelBufferIsPlanar(pixelBuffer))
      {
        Height = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
      }

      else
      {
        Height = CVPixelBufferGetHeight(pixelBuffer);
      }

      v22 = Height;
      if (CVPixelBufferIsPlanar(pixelBuffer))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
      }

      split_companded_bayer_buffer(v11, &v13[extraColumnsOnLeft + extraRowsOnTop * BytesPerRow], &v13[extraColumnsOnLeft + extraRowsOnTop * BytesPerRow + (Width >> 1)], &v13[extraColumnsOnLeft + extraRowsOnTop * BytesPerRow + BytesPerRow * (v22 >> 1)], &v13[extraColumnsOnLeft + extraRowsOnTop * BytesPerRow + BytesPerRow * (v22 >> 1) + (Width >> 1)], v18, v17, BytesPerRow, Width, v20);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }
  }

  return v5;
}

+ (BOOL)joinCompandedWarholBuffer:(__CVBuffer *)buffer intoCompandedBayerBuffer:(__CVBuffer *)bayerBuffer
{
  if (buffer)
  {
    v4 = bayerBuffer == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v8 = +[MOVStreamMetalPixelBufferUtility sharedMetalPixelBufferUtility];
    v9 = [v8 joinCompandedWarholBuffer:buffer intoCompandedBayerBuffer:bayerBuffer];

    if ((v9 & 1) == 0)
    {
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      CVPixelBufferLockBaseAddress(bayerBuffer, 0);
      if (CVPixelBufferIsPlanar(bayerBuffer))
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(bayerBuffer, 0);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(bayerBuffer);
      }

      v11 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(buffer))
      {
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      }

      v13 = BaseAddress;
      if (CVPixelBufferIsPlanar(buffer))
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeight(buffer);
      }

      v15 = HeightOfPlane;
      if (CVPixelBufferIsPlanar(buffer))
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
      }

      v17 = BytesPerRowOfPlane;
      if (CVPixelBufferIsPlanar(buffer))
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
      }

      else
      {
        WidthOfPlane = CVPixelBufferGetWidth(buffer);
      }

      v19 = WidthOfPlane;
      v20 = v17 - WidthOfPlane;
      if (CVPixelBufferIsPlanar(bayerBuffer))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(bayerBuffer, 0);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(bayerBuffer);
      }

      join_companded_bayer_buffer(v13, (v13 + (v19 >> 1)), (v13 + v17 * (v15 >> 1)), (v13 + v17 * (v15 >> 1) + (v19 >> 1)), v11, v15 >> 1, v19 >> 1, BytesPerRow, v20, 1);
      CVPixelBufferUnlockBaseAddress(bayerBuffer, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }
  }

  return v5;
}

+ (BOOL)verticallySplitPixelBuffer:(__CVBuffer *)buffer intoTopPixelBuffer:(__CVBuffer *)pixelBuffer bottomPixelBuffer:(__CVBuffer *)bottomPixelBuffer
{
  v5 = 0;
  if (buffer && pixelBuffer && bottomPixelBuffer)
  {
    Height = CVPixelBufferGetHeight(buffer);
    v10 = CVPixelBufferGetHeight(pixelBuffer);
    if (Height == CVPixelBufferGetHeight(bottomPixelBuffer) + v10)
    {
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      if (BytesPerRow == CVPixelBufferGetBytesPerRow(pixelBuffer))
      {
        v12 = CVPixelBufferGetBytesPerRow(buffer);
        if (v12 == CVPixelBufferGetBytesPerRow(bottomPixelBuffer))
        {
          v5 = 1;
          CVPixelBufferLockBaseAddress(buffer, 1uLL);
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
          v14 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
          v15 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v16 = CVPixelBufferGetHeight(pixelBuffer) * v15;
          memcpy(v14, BaseAddressOfPlane, v16);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          CVPixelBufferLockBaseAddress(bottomPixelBuffer, 0);
          v17 = CVPixelBufferGetBaseAddressOfPlane(bottomPixelBuffer, 0);
          v18 = CVPixelBufferGetBytesPerRow(bottomPixelBuffer);
          v19 = CVPixelBufferGetHeight(bottomPixelBuffer);
          memcpy(v17, &BaseAddressOfPlane[v16], v19 * v18);
          CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
          CVPixelBufferUnlockBaseAddress(bottomPixelBuffer, 0);
          return v5;
        }
      }

      if (+[MIOLog debugEnabled])
      {
        v20 = +[MIOLog defaultLog];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v24 = 0;
          v21 = "Inconsistent bytes per row.";
          v22 = &v24;
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }

    else if (+[MIOLog debugEnabled])
    {
      v20 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v25 = 0;
        v21 = "Inconsistent height.";
        v22 = &v25;
LABEL_14:
        _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_DEBUG, v21, v22, 2u);
      }

LABEL_15:
    }

    return 0;
  }

  return v5;
}

+ (BOOL)concatPixelBuffer:(__CVBuffer *)buffer withPixelBuffer:(__CVBuffer *)pixelBuffer targetPixelBuffer:(__CVBuffer *)targetPixelBuffer
{
  v5 = 0;
  if (buffer && pixelBuffer && targetPixelBuffer)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v11 = CVPixelBufferGetHeight(pixelBuffer);
    if (Width == CVPixelBufferGetWidth(targetPixelBuffer) && Width == CVPixelBufferGetWidth(pixelBuffer))
    {
      if (v11 + Height == CVPixelBufferGetHeight(targetPixelBuffer))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
        v13 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v14 = CVPixelBufferGetBytesPerRow(targetPixelBuffer);
        if (v14 == BytesPerRow && v14 == v13)
        {
          v5 = 1;
          CVPixelBufferLockBaseAddress(buffer, 1uLL);
          CVPixelBufferLockBaseAddress(targetPixelBuffer, 0);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
          v16 = CVPixelBufferGetBaseAddressOfPlane(targetPixelBuffer, 0);
          v17 = CVPixelBufferGetBytesPerRow(buffer);
          v18 = CVPixelBufferGetHeight(buffer) * v17;
          memcpy(v16, BaseAddressOfPlane, v18);
          CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
          CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
          v19 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
          v20 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v21 = CVPixelBufferGetHeight(pixelBuffer);
          memcpy(&v16[v18], v19, v21 * v20);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferUnlockBaseAddress(targetPixelBuffer, 0);
          return v5;
        }

        if (+[MIOLog debugEnabled])
        {
          v22 = +[MIOLog defaultLog];
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_14;
          }

          v26 = 0;
          v23 = "Inconsistent bytes per row.";
          v24 = &v26;
          goto LABEL_13;
        }

        return 0;
      }

      if (!+[MIOLog debugEnabled])
      {
        return 0;
      }

      v22 = +[MIOLog defaultLog];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v27 = 0;
      v23 = "Inconsistent height.";
      v24 = &v27;
    }

    else
    {
      if (!+[MIOLog debugEnabled])
      {
        return 0;
      }

      v22 = +[MIOLog defaultLog];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:

        return 0;
      }

      *buf = 0;
      v23 = "Inconsistent width.";
      v24 = buf;
    }

LABEL_13:
    _os_log_impl(&dword_257883000, v22, OS_LOG_TYPE_DEBUG, v23, v24, 2u);
    goto LABEL_14;
  }

  return v5;
}

+ (unint64_t)extendedPixelsPerRowOfPixelBuffer:(__CVBuffer *)buffer
{
  extraColumnsOnRight = 0;
  CVPixelBufferGetExtendedPixels(buffer, 0, &extraColumnsOnRight, 0, 0);
  return extraColumnsOnRight;
}

+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format extendedPixelsPerRow:(unint64_t)row minBufferCount:(unint64_t)count
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:width height:height extendedPixelsPerRow:row pixelFormat:*&format bytesPerRowAlignment:1 planeAlignment:1];
  v12 = 0;
  v13 = *MEMORY[0x277CC4E50];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v10, v8, &v12);

  CFRelease(v8);
  return v12;
}

+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format bytesPerRow:(unint64_t)row minBufferCount:(unint64_t)count
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:width height:height pixelFormat:*&format bytesPerRow:row];
  v12 = 0;
  v13 = *MEMORY[0x277CC4E50];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v10, v8, &v12);

  CFRelease(v8);
  return v12;
}

+ (__CVPixelBufferPool)createPixelBufferPoolWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format bytesPerRows:(id)rows minBufferCount:(unint64_t)count
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:width height:height pixelFormat:*&format bytesPerRows:rows];
  v12 = 0;
  v13 = *MEMORY[0x277CC4E50];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:count];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v10, v8, &v12);

  CFRelease(v8);
  return v12;
}

+ (__CVBuffer)pixelBufferFromPool:(__CVPixelBufferPool *)pool
{
  v10 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v3 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pool, &pixelBufferOut);
  result = pixelBufferOut;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = pixelBufferOut == 0;
  }

  if (v5)
  {
    v6 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&dword_257883000, v6, OS_LOG_TYPE_ERROR, "Error creating pixel buffer from pool (%d).", buf, 8u);
    }

    return 0;
  }

  return result;
}

+ (BOOL)transferq8q2PixelBuffer:(__CVBuffer *)buffer toL010PixelBuffer:(__CVBuffer *)pixelBuffer
{
  v4 = 0;
  if (buffer && pixelBuffer)
  {
    if (CVPixelBufferLockBaseAddress(buffer, 1uLL))
    {
      return 0;
    }

    else
    {
      v7 = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      v4 = v7 == 0;
      if (!v7)
      {
        BaseAddress = CVPixelBufferGetBaseAddress(buffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
        v10 = CVPixelBufferGetBaseAddress(pixelBuffer);
        v11 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        Width = CVPixelBufferGetWidth(buffer);
        Height = CVPixelBufferGetHeight(buffer);
        conv_q8q2_to_L010(BaseAddress, BytesPerRow, v10, v11, Width, Height);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      }

      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }
  }

  return v4;
}

+ (BOOL)transferL010PixelBuffer:(__CVBuffer *)buffer toq8q2PixelBuffer:(__CVBuffer *)pixelBuffer
{
  v4 = 0;
  if (buffer && pixelBuffer)
  {
    if (CVPixelBufferLockBaseAddress(buffer, 1uLL))
    {
      return 0;
    }

    else
    {
      v7 = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      v4 = v7 == 0;
      if (!v7)
      {
        BaseAddress = CVPixelBufferGetBaseAddress(buffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
        v10 = CVPixelBufferGetBaseAddress(pixelBuffer);
        v11 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        Width = CVPixelBufferGetWidth(buffer);
        Height = CVPixelBufferGetHeight(buffer);
        conv_L010_to_q8q2(BaseAddress, BytesPerRow, v10, v11, Width, Height);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      }

      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }
  }

  return v4;
}

+ (BOOL)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer bytesPerPixel:(double)pixel
{
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(buffer);
  v9 = PlaneCount;
  if (PlaneCount <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = PlaneCount;
  }

  v11 = CVPixelBufferGetPlaneCount(pixelBuffer);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v9 <= v12)
  {
    v16 = 0;
    while (1)
    {
      v17 = (CVPixelBufferGetWidthOfPlane(buffer, v16) * pixel);
      if (CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v16) < v17)
      {
        break;
      }

      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, v16);
      v19 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v16);
      if (CVPixelBufferGetHeightOfPlane(buffer, v16))
      {
        v20 = 0;
        do
        {
          v21 = &BaseAddressOfPlane[CVPixelBufferGetBytesPerRowOfPlane(buffer, v16) * v20];
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v16);
          memcpy(&v19[BytesPerRowOfPlane * v20++], v21, v17);
        }

        while (v20 < CVPixelBufferGetHeightOfPlane(buffer, v16));
      }

      if (++v16 == v10)
      {
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        v23 = 1;
        CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
        return v23;
      }
    }

    if (+[MIOLog debugEnabled])
    {
      v13 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v25 = 0;
        v14 = "Cannot copyPixelBuffer, not matching bytes per row";
        v15 = &v25;
        goto LABEL_21;
      }

LABEL_22:
    }
  }

  else if (+[MIOLog debugEnabled])
  {
    v13 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v26 = 0;
      v14 = "Cannot copyPixelBuffer, not matching plane count";
      v15 = &v26;
LABEL_21:
      _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_DEBUG, v14, v15, 2u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  return 0;
}

+ (BOOL)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  if (buffer)
  {
    v4 = pixelBuffer == 0;
  }

  else
  {
    v4 = 1;
  }

  result = !v4;
  if (!v4)
  {
    v30 = result;
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    PlaneCount = CVPixelBufferGetPlaneCount(buffer);
    if (PlaneCount <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = PlaneCount;
    }

    v10 = CVPixelBufferGetPlaneCount(pixelBuffer);
    v11 = 0;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    if (v9 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    do
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, v11);
      v16 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v17 = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(v16, v11);
      v18 = (BytesPerPixelOfPlaneForFormat * CVPixelBufferGetWidthOfPlane(buffer, v11));
      v19 = v17 * CVPixelBufferGetWidthOfPlane(pixelBuffer, v11);
      if (v18 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, v11);
      v22 = CVPixelBufferGetHeightOfPlane(pixelBuffer, v11);
      if (HeightOfPlane >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = HeightOfPlane;
      }

      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, v11);
      v25 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v11);
      if (v23)
      {
        v26 = v25;
        for (i = 0; i != v23; ++i)
        {
          v28 = &BaseAddressOfPlane[CVPixelBufferGetBytesPerRowOfPlane(buffer, v11) * i];
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v11);
          memcpy(&v26[BytesPerRowOfPlane * i], v28, v20);
        }
      }

      ++v11;
    }

    while (v11 != v13);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    return v30;
  }

  return result;
}

+ (BOOL)copyData:(id)data toNonPlanarPixelBuffer:(__CVBuffer *)buffer
{
  dataCopy = data;
  v6 = 0;
  if (dataCopy && buffer)
  {
    if (CVPixelBufferIsPlanar(buffer))
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_opt_class() copyData:dataCopy toPlanarPixelBuffer:buffer toPlane:0];
    }
  }

  return v6;
}

+ (BOOL)copyData:(id)data toPlanarPixelBuffer:(__CVBuffer *)buffer toPlane:(unint64_t)plane
{
  dataCopy = data;
  if (dataCopy)
  {
    v8 = buffer == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, plane);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, plane);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, plane);
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, plane);
    bytes = [dataCopy bytes];
    CVPixelBufferLockBaseAddress(buffer, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, plane);
    if (HeightOfPlane)
    {
      v17 = BaseAddressOfPlane;
      v18 = (BytesPerPixelOfPlaneForFormat * WidthOfPlane);
      do
      {
        memcpy(v17, bytes, v18);
        bytes += v18;
        v17 += BytesPerRowOfPlane;
        --HeightOfPlane;
      }

      while (HeightOfPlane);
    }

    CVPixelBufferUnlockBaseAddress(buffer, 0);
  }

  return v9;
}

+ (id)copyNonPlanarPixelBufferData:(__CVBuffer *)data
{
  if (!data || CVPixelBufferIsPlanar(data))
  {
    return 0;
  }

  v5 = objc_opt_class();

  return [v5 copyPixelBufferData:data ofPlane:0];
}

+ (id)copyPixelBufferData:(__CVBuffer *)data ofPlane:(unint64_t)plane
{
  if (!data)
  {
    return 0;
  }

  if (!CVPixelBufferIsPlanar(data))
  {
    if (!plane)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (CVPixelBufferGetPlaneCount(data) <= plane)
  {
    return 0;
  }

LABEL_4:
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(data, plane);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(data, plane);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(data, plane);
  PixelFormatType = CVPixelBufferGetPixelFormatType(data);
  v10 = (MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, plane) * WidthOfPlane);
  v11 = [MEMORY[0x277CBEB28] dataWithLength:HeightOfPlane * v10];
  mutableBytes = [v11 mutableBytes];
  CVPixelBufferLockBaseAddress(data, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(data, plane);
  if (HeightOfPlane)
  {
    v14 = BaseAddressOfPlane;
    do
    {
      memcpy(mutableBytes, v14, v10);
      mutableBytes += v10;
      v14 += BytesPerRowOfPlane;
      --HeightOfPlane;
    }

    while (HeightOfPlane);
  }

  CVPixelBufferUnlockBaseAddress(data, 0);
  return v11;
}

+ (__CVBuffer)readFrameFromFile:(id)file width:(unsigned int)width height:(unsigned int)height pixelFormat:(unsigned int)format
{
  v32[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  pixelBuffer = 0;
  v31 = *MEMORY[0x277CC4DE8];
  v32[0] = MEMORY[0x277CBEC10];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, format, v10, &pixelBuffer);
  if (pixelBuffer)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
    if (PlaneCount <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = PlaneCount;
    }

    v13 = fileCopy;
    v14 = fopen([fileCopy UTF8String], "rb");
    if (v14)
    {
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      for (i = 0; i != v12; ++i)
      {
        if (CVPixelBufferIsPlanar(pixelBuffer))
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
        }

        else
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddress(pixelBuffer);
        }

        v17 = BaseAddressOfPlane;
        if (CVPixelBufferIsPlanar(pixelBuffer))
        {
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, i);
        }

        else
        {
          HeightOfPlane = CVPixelBufferGetHeight(pixelBuffer);
        }

        v19 = HeightOfPlane;
        if (CVPixelBufferIsPlanar(pixelBuffer))
        {
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, i);
        }

        else
        {
          WidthOfPlane = CVPixelBufferGetWidth(pixelBuffer);
        }

        v21 = WidthOfPlane;
        if (CVPixelBufferIsPlanar(pixelBuffer))
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
        }

        else
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
        }

        v23 = BytesPerRowOfPlane;
        PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
        BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, i);
        if (v19)
        {
          v26 = (BytesPerPixelOfPlaneForFormat * v21);
          v27 = 1;
          do
          {
            if (!fread(v17, 1uLL, v26, v14))
            {
              break;
            }

            v17 += v23;
          }

          while (v27++ < v19);
        }
      }

      fclose(v14);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      v14 = pixelBuffer;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (__CVBuffer)combineLeftBuffer:(__CVBuffer *)buffer rightBuffer:(__CVBuffer *)rightBuffer
{
  bufferCopy = buffer;
  v36[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(buffer);
  rightBufferCopy = rightBuffer;
  v7 = CVPixelBufferGetWidth(rightBuffer);
  Height = CVPixelBufferGetHeight(bufferCopy);
  PixelFormatType = CVPixelBufferGetPixelFormatType(bufferCopy);
  PlaneCount = CVPixelBufferGetPlaneCount(bufferCopy);
  if (PlaneCount <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = PlaneCount;
  }

  v32 = v11;
  pixelBufferOut = 0;
  v35 = *MEMORY[0x277CC4DE8];
  v36[0] = MEMORY[0x277CBEC10];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7 + Width, Height, PixelFormatType, v12, &pixelBufferOut);
  v13 = rightBufferCopy;
  if (pixelBufferOut)
  {
    CVPixelBufferLockBaseAddress(bufferCopy, 1uLL);
    CVPixelBufferLockBaseAddress(rightBufferCopy, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    v30 = v12;
    pixelBuffer = bufferCopy;
    for (i = 0; i != v32; ++i)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(bufferCopy, i);
      v16 = CVPixelBufferGetBaseAddressOfPlane(v13, i);
      v17 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, i);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(bufferCopy, i);
      v19 = CVPixelBufferGetBytesPerRowOfPlane(v13, i);
      v20 = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, i);
      v21 = CVPixelBufferGetPixelFormatType(bufferCopy);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(v21, i);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(bufferCopy, i);
      v24 = CVPixelBufferGetWidthOfPlane(v13, i);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, i);
      if (HeightOfPlane)
      {
        v26 = (BytesPerPixelOfPlaneForFormat * WidthOfPlane);
        v27 = (BytesPerPixelOfPlaneForFormat * v24);
        do
        {
          memcpy(v17, BaseAddressOfPlane, v26);
          memcpy(&v17[v26], v16, v27);
          v17 += v20;
          v16 += v19;
          BaseAddressOfPlane += BytesPerRowOfPlane;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }

      v13 = rightBufferCopy;
      bufferCopy = pixelBuffer;
    }

    v12 = v30;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferUnlockBaseAddress(rightBufferCopy, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v28 = pixelBufferOut;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (BOOL)writeBuffer:(__CVBuffer *)buffer toFile:(id)file
{
  fileCopy = file;
  v6 = fopen([fileCopy UTF8String], "wb");
  if (v6)
  {
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    PlaneCount = CVPixelBufferGetPlaneCount(buffer);
    v8 = 0;
    if (PlaneCount <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = PlaneCount;
    }

    while (1)
    {
      v10 = (CVPixelBufferIsPlanar(buffer) ? CVPixelBufferGetBaseAddressOfPlane(buffer, v8) : CVPixelBufferGetBaseAddress(buffer));
      v11 = v10;
      v12 = CVPixelBufferIsPlanar(buffer) ? CVPixelBufferGetHeightOfPlane(buffer, v8) : CVPixelBufferGetHeight(buffer);
      v13 = v12;
      v14 = CVPixelBufferIsPlanar(buffer) ? CVPixelBufferGetWidthOfPlane(buffer, v8) : CVPixelBufferGetWidth(buffer);
      v15 = v14;
      v16 = CVPixelBufferIsPlanar(buffer) ? CVPixelBufferGetBytesPerRowOfPlane(buffer, v8) : CVPixelBufferGetBytesPerRow(buffer);
      v17 = v16;
      PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, v8);
      if (v13)
      {
        break;
      }

LABEL_21:
      if (++v8 == v9)
      {
        CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
        fclose(v6);
        v21 = 1;
        goto LABEL_25;
      }
    }

    v20 = (BytesPerPixelOfPlaneForFormat * v15);
    while (fwrite(v11, v20, 1uLL, v6) == 1)
    {
      v11 += v17;
      if (!--v13)
      {
        goto LABEL_21;
      }
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  }

  v21 = 0;
LABEL_25:

  return v21;
}

+ (id)histogramOf8BitBuffer:(__CVBuffer *)buffer
{
  PlaneCount = CVPixelBufferGetPlaneCount(buffer);
  if (PlaneCount <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = PlaneCount;
  }

  v20 = v5;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  CVPixelBufferLockBaseAddress(buffer, 0);
  for (i = 0; i != v20; ++i)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:256];
    v8 = 256;
    do
    {
      [v7 addObject:&unk_2868E3828];
      --v8;
    }

    while (v8);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, i);
    for (j = 0; j < CVPixelBufferGetHeightOfPlane(buffer, i); ++j)
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, i);
      PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, i);
      v13 = 0;
      v14 = &BaseAddressOfPlane[BytesPerRowOfPlane * j];
      while (BytesPerPixelOfPlaneForFormat * CVPixelBufferGetWidthOfPlane(buffer, i) > v13)
      {
        v15 = v14[v13];
        v16 = MEMORY[0x277CCABB0];
        v17 = [v7 objectAtIndex:v15];
        v18 = [v16 numberWithInt:{objc_msgSend(v17, "intValue") + 1}];
        [v7 replaceObjectAtIndex:v15 withObject:v18];

        ++v13;
      }
    }

    [v21 addObject:v7];
  }

  CVPixelBufferUnlockBaseAddress(buffer, 0);

  return v21;
}

+ (id)rangesOf8BitBuffer:(__CVBuffer *)buffer
{
  PlaneCount = CVPixelBufferGetPlaneCount(buffer);
  if (PlaneCount <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = PlaneCount;
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  CVPixelBufferLockBaseAddress(buffer, 0);
  for (i = 0; i != v5; ++i)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, i);
    v9 = 0;
    v10 = 0;
    v11 = -1;
    while (v10 < CVPixelBufferGetHeightOfPlane(buffer, i))
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, i);
      PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
      BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(PixelFormatType, i);
      v15 = 0;
      v16 = &BaseAddressOfPlane[BytesPerRowOfPlane * v10];
      while (BytesPerPixelOfPlaneForFormat * CVPixelBufferGetWidthOfPlane(buffer, i) > v15)
      {
        v17 = v16[v15];
        if (v17 < v11)
        {
          v11 = v16[v15];
        }

        if (v17 > v9)
        {
          v9 = v16[v15];
        }

        ++v15;
      }

      ++v10;
    }

    v18 = [MEMORY[0x277CCAE60] valueWithRange:{v11, v9}];
    [v6 addObject:v18];
  }

  CVPixelBufferUnlockBaseAddress(buffer, 0);

  return v6;
}

+ (__CVBuffer)create4444AYpCbCr16PixelBufferFillAlphaWithData:(__CFData *)data width:(unint64_t)width height:(unint64_t)height
{
  v20[1] = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  v19 = *MEMORY[0x277CC4DE8];
  v20[0] = MEMORY[0x277CBEC10];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x79343136u, v8, &pixelBuffer);
  BytePtr = CFDataGetBytePtr(data);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = CVPixelBufferGetBaseAddress(pixelBuffer) + 4;
  while (v12 < CVPixelBufferGetHeight(pixelBuffer))
  {
    v14 = 0;
    v15 = &v13[v10 * (CVPixelBufferGetBytesPerRow(pixelBuffer) >> 1)];
    while (v14 < 4 * CVPixelBufferGetWidth(pixelBuffer))
    {
      *(v15 - 2) = *&BytePtr[2 * v11];
      *(v15 - 2) = -2147450880;
      *(v15 + 1) = 0x8000;
      ++v11;
      v14 += 4;
      v15 += 8;
    }

    ++v12;
    v10 += 2;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v16 = pixelBuffer;

  return v16;
}

+ (BOOL)copyMonochromeBuffer:(__CVBuffer *)buffer toAlphaChannelOfBuffer:(__CVBuffer *)ofBuffer
{
  v4 = 0;
  if (buffer && ofBuffer)
  {
    if (CVPixelBufferGetPixelFormatType(ofBuffer) == 2033463606)
    {
      v4 = 1;
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      CVPixelBufferLockBaseAddress(ofBuffer, 0);
      Width = CVPixelBufferGetWidth(buffer);
      Height = CVPixelBufferGetHeight(buffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      v10 = CVPixelBufferGetBytesPerRow(ofBuffer);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      v12 = CVPixelBufferGetBaseAddress(ofBuffer);
      copy_monochrome_to_alpha_channel(BaseAddress, v12, Width, Height, BytesPerRow, v10);
      CVPixelBufferUnlockBaseAddress(ofBuffer, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

+ (BOOL)copyuint16Data:(unsigned __int16 *)data toAlphaChannelOfBuffer:(__CVBuffer *)buffer
{
  result = 0;
  if (data && buffer)
  {
    if (CVPixelBufferGetPixelFormatType(buffer) == 2033463606)
    {
      CVPixelBufferLockBaseAddress(buffer, 0);
      Width = CVPixelBufferGetWidth(buffer);
      Height = CVPixelBufferGetHeight(buffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      copy_monochrome_to_alpha_channel(data, BaseAddress, Width, Height, 2 * Width, BytesPerRow);
      CVPixelBufferUnlockBaseAddress(buffer, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (BOOL)copyAlphaChannelOfBuffer:(__CVBuffer *)buffer touint16Data:(unsigned __int16 *)data
{
  v4 = 0;
  if (buffer && data)
  {
    if (CVPixelBufferGetPixelFormatType(buffer) == 2033463606)
    {
      Width = CVPixelBufferGetWidth(buffer);
      Height = CVPixelBufferGetHeight(buffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      v4 = 1;
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      copy_alpha_channel_to_monochrome(BaseAddress, data, Width, Height, 2 * Width, BytesPerRow);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

+ (BOOL)copyAlphaChannelOfBuffer:(__CVBuffer *)buffer toMonochromeBuffer:(__CVBuffer *)monochromeBuffer
{
  v4 = 0;
  if (buffer && monochromeBuffer)
  {
    if (CVPixelBufferGetPixelFormatType(buffer) == 2033463606)
    {
      Width = CVPixelBufferGetWidth(monochromeBuffer);
      Height = CVPixelBufferGetHeight(monochromeBuffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(monochromeBuffer);
      v10 = CVPixelBufferGetBytesPerRow(buffer);
      v4 = 1;
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      CVPixelBufferLockBaseAddress(monochromeBuffer, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      v12 = CVPixelBufferGetBaseAddress(monochromeBuffer);
      copy_alpha_channel_to_monochrome(BaseAddress, v12, Width, Height, BytesPerRow, v10);
      CVPixelBufferUnlockBaseAddress(monochromeBuffer, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

+ (int64_t)numberOfPlanesForPixelFormatType:(unsigned int)type
{
  v9[1] = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  v8 = *MEMORY[0x277CC4DE8];
  v9[0] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x280uLL, 0x1E0uLL, type, v4, &pixelBuffer);
  if (pixelBuffer)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
    CVPixelBufferRelease(pixelBuffer);
  }

  else
  {
    PlaneCount = -1;
  }

  return PlaneCount;
}

+ (unint64_t)pixelBufferSizeWithPadding:(__CVBuffer *)padding
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v15 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(padding, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v15);
  if (CVPixelBufferIsPlanar(padding))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(padding);
    if (PlaneCount)
    {
      v5 = PlaneCount;
      v6 = 0;
      for (i = 0; i != v5; ++i)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(padding, i);
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(padding, i);
        v10 = (BytesPerRowOfPlane / (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight));
        v6 += CVPixelBufferGetHeightOfPlane(padding, i) * WidthOfPlane * v10;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(padding);
    Width = CVPixelBufferGetWidth(padding);
    v13 = (BytesPerRow / (extraColumnsOnLeft + Width + extraColumnsOnRight));
    return CVPixelBufferGetHeight(padding) * Width * v13;
  }

  return v6;
}

+ (void)transferAttachmentForKey:(__CFString *)key fromBuffer:(__CVBuffer *)buffer toBuffer:(__CVBuffer *)toBuffer
{
  v7 = CVBufferCopyAttachment(buffer, key, 0);
  if (v7)
  {
    v8 = v7;
    CVBufferSetAttachment(toBuffer, key, v7, kCVAttachmentMode_ShouldPropagate);

    CFRelease(v8);
  }

  else
  {

    CVBufferRemoveAttachment(toBuffer, key);
  }
}

@end