@interface HMIVideoFrame
- (CGSize)size;
- (HMIVideoFrame)initWithCoder:(id)coder;
- (HMIVideoFrame)initWithJPEGData:(id)data size:(CGSize)size presentationTimeStamp:(id *)stamp;
- (HMIVideoFrame)initWithPixelBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp;
- (HMIVideoFrame)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (NSData)data;
- (id)attributeDescriptions;
- (id)base64Encoded;
- (id)compressedFrameWithScale:(double)scale quality:(double)quality error:(id *)error;
- (id)pixelBufferFrameWithError:(id *)error;
- (id)redactedCopy;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)printWithHeight:(unint64_t)height;
- (void)printWithScale:(double)scale;
@end

@implementation HMIVideoFrame

- (HMIVideoFrame)initWithJPEGData:(id)data size:(CGSize)size presentationTimeStamp:(id *)stamp
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  if (dataCopy)
  {
    v11 = dataCopy;
    v20.receiver = self;
    v20.super_class = HMIVideoFrame;
    v12 = [(HMIVideoFrame *)&v20 init];
    v13 = v12;
    if (v12)
    {
      var3 = stamp->var3;
      *&v12->_presentationTimeStamp.value = *&stamp->var0;
      v12->_presentationTimeStamp.epoch = var3;
      objc_storeStrong(&v12->_data, data);
      v13->_size.width = width;
      v13->_size.height = height;
      v13->_store = 1;
    }

    return v13;
  }

  else
  {
    v16 = [HMIFaceprint initWithUUID:data:modelUUID:faceCropUUID:];
    return [(HMIVideoFrame *)v16 initWithPixelBuffer:v17 presentationTimeStamp:v18, v19];
  }
}

- (HMIVideoFrame)initWithPixelBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp
{
  v11.receiver = self;
  v11.super_class = HMIVideoFrame;
  v6 = [(HMIVideoFrame *)&v11 init];
  v7 = v6;
  if (v6)
  {
    var3 = stamp->var3;
    *&v6->_presentationTimeStamp.value = *&stamp->var0;
    v6->_presentationTimeStamp.epoch = var3;
    v6->_size.width = HMICVPixelBufferGetSize(buffer);
    v7->_size.height = v9;
    v7->_pixelBuffer = CFRetain(buffer);
    v7->_store = 0;
  }

  return v7;
}

- (HMIVideoFrame)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  CMSampleBufferGetPresentationTimeStamp(&v7, buffer);
  return [(HMIVideoFrame *)self initWithPixelBuffer:ImageBuffer presentationTimeStamp:&v7];
}

- (id)redactedCopy
{
  v3 = objc_alloc(objc_opt_class());
  data = [MEMORY[0x277CBEA90] data];
  [(HMIVideoFrame *)self size];
  v6 = v5;
  v8 = v7;
  [(HMIVideoFrame *)self presentationTimeStamp];
  v9 = [v3 initWithJPEGData:data size:v11 presentationTimeStamp:{v6, v8}];

  return v9;
}

- (id)base64Encoded
{
  data = [(HMIVideoFrame *)self data];
  v3 = [data base64EncodedStringWithOptions:32];

  return v3;
}

- (id)compressedFrameWithScale:(double)scale quality:(double)quality error:(id *)error
{
  v8 = scale <= 0.0;
  v7 = 1.0;
  v8 = v8 || scale > 1.0;
  if (v8)
  {
    [HMIVideoFrame compressedFrameWithScale:quality:error:];
LABEL_31:
    v25 = [HMIVideoFrame compressedFrameWithScale:quality:error:];
    return [(HMIVideoFrame *)v25 pixelBufferFrameWithError:v26, v27];
  }

  qualityCopy = quality;
  if (quality <= 0.0 || quality > 1.0)
  {
    goto LABEL_31;
  }

  store = self->_store;
  if (store != 1)
  {
    if (!store)
    {
      *&v7 = scale;
      *&quality = quality;
      v14 = [HMIVisionUtilities createJPEGDataFromPixelBuffer:self->_pixelBuffer scale:error encodeQuality:v7 error:quality];
      if (v14)
      {
        Size = HMICVPixelBufferGetSize(self->_pixelBuffer);
        v28 = v16;
        v29 = Size;
        CGAffineTransformMakeScale(&v32, scale, scale);
        v30 = vmlaq_n_f64(vmulq_n_f64(*&v32.c, v28), *&v32.a, v29);
        v17 = objc_alloc(objc_opt_class());
        *&v32.a = *&self->_presentationTimeStamp.value;
        *&v32.c = self->_presentationTimeStamp.epoch;
        v5 = [v17 initWithJPEGData:v14 size:&v32 presentationTimeStamp:*&v30];
      }

      else
      {
        v5 = 0;
      }
    }

    goto LABEL_27;
  }

  if (scale == 1.0 && quality == 1.0)
  {
    selfCopy = self;
  }

  else
  {
    if ([(NSData *)self->_data length])
    {
      v19 = [(HMIVideoFrame *)self pixelBufferFrameWithError:error];
      v20 = v19;
      if (v19)
      {
        v5 = [v19 compressedFrameWithScale:error quality:scale error:qualityCopy];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_27;
    }

    CGAffineTransformMakeScale(&v32, scale, scale);
    v31 = vmlaq_n_f64(vmulq_n_f64(*&v32.c, self->_size.height), *&v32.a, self->_size.width);
    v22 = objc_alloc(objc_opt_class());
    data = self->_data;
    *&v32.a = *&self->_presentationTimeStamp.value;
    *&v32.c = self->_presentationTimeStamp.epoch;
    selfCopy = [v22 initWithJPEGData:data size:&v32 presentationTimeStamp:*&v31];
  }

  v5 = selfCopy;
LABEL_27:

  return v5;
}

- (id)pixelBufferFrameWithError:(id *)error
{
  if ([(HMIVideoFrame *)self pixelBuffer])
  {
    selfCopy = self;
  }

  else
  {
    v6 = [HMIVisionUtilities createPixelBufferFromImageData:self->_data error:error];
    if (v6)
    {
      v7 = v6;
      v8 = objc_alloc(objc_opt_class());
      [(HMIVideoFrame *)self presentationTimeStamp];
      selfCopy = [v8 initWithPixelBuffer:v7 presentationTimeStamp:v10];
      CVPixelBufferRelease(v7);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    v11 = 0;
    v4 = [(HMIVideoFrame *)self compressedFrameWithScale:&v11 quality:1.0 error:1.0];
    v5 = v11;
    if (!v4)
    {
      v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"HMIVideoFrame failed to create compressed representation." userInfo:0];
      objc_exception_throw(v10);
    }

    v6 = v5;
    data = [v4 data];
    v8 = self->_data;
    self->_data = data;

    data = self->_data;
  }

  return data;
}

- (void)printWithHeight:(unint64_t)height
{
  heightCopy = height;
  [(HMIVideoFrame *)self size];

  [(HMIVideoFrame *)self printWithScale:heightCopy / v5];
}

- (void)printWithScale:(double)scale
{
  v8 = [(HMIVideoFrame *)self compressedFrameWithScale:0 quality:fmax(fmin(scale error:1.0), 0.1), 1.0];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  data = [v8 data];
  v5 = [data base64EncodedDataWithOptions:1];
  v6 = [v3 initWithData:v5 encoding:4];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"\x1B]1337File=inline=1;preserveAspectRatio=1:%@\a", v6];;
  fprintf(*MEMORY[0x277D85E08], "%s\n", [v7 UTF8String]);
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = HMIVideoFrame;
  [(HMIVideoFrame *)&v4 dealloc];
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (self->_store == 1)
  {
    v3 = @"Data (JPEG)";
  }

  else
  {
    v3 = @"CVPixelBuffer";
  }

  v4 = MEMORY[0x277D0F778];
  v5 = v3;
  v6 = [v4 alloc];
  presentationTimeStamp = self->_presentationTimeStamp;
  v7 = HMICMTimeDescription(&presentationTimeStamp);
  v8 = [v6 initWithName:@"Presentation Time Stamp" value:v7];
  v16[0] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = HMICGSizeDescription(self->_size.width, self->_size.height);
  v11 = [v9 initWithName:@"Size" value:v10];
  v16[1] = v11;
  v12 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Store" value:v5];

  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  return v13;
}

- (HMIVideoFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22 = 0uLL;
  v23 = 0;
  v5 = NSStringFromSelector(sel_presentationTimeStamp);
  if (coderCopy)
  {
    [coderCopy decodeCMTimeForKey:v5];
  }

  else
  {
    v22 = 0uLL;
    v23 = 0;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_surface);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  if (v8)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v8, 0, &pixelBufferOut);
    v19 = v22;
    v20 = v23;
    v9 = [(HMIVideoFrame *)self initWithPixelBuffer:pixelBufferOut presentationTimeStamp:&v19];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  else
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_data);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

    v13 = NSStringFromSelector(sel_size);
    [coderCopy decodeSizeForKey:v13];
    v15 = v14;
    v17 = v16;

    v19 = v22;
    v20 = v23;
    v9 = [(HMIVideoFrame *)self initWithJPEGData:v12 size:&v19 presentationTimeStamp:v15, v17];
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_presentationTimeStamp);
  presentationTimeStamp = self->_presentationTimeStamp;
  [coderCopy encodeCMTime:&presentationTimeStamp forKey:v5];

  store = self->_store;
  if (store == 1)
  {
    data = self->_data;
    v11 = NSStringFromSelector(sel_data);
    [coderCopy encodeObject:data forKey:v11];

    width = self->_size.width;
    height = self->_size.height;
    v8 = NSStringFromSelector(sel_size);
    [coderCopy encodeSize:v8 forKey:{width, height}];
LABEL_6:

    goto LABEL_7;
  }

  if (!store)
  {
    v7 = CVPixelBufferGetIOSurface(self->_pixelBuffer);
    if (!v7)
    {
      v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"HMIVideoFrame pixel buffer is not backed by an IOSurface" userInfo:0];
      objc_exception_throw(v14);
    }

    v8 = v7;
    v9 = NSStringFromSelector(sel_surface);
    [coderCopy encodeObject:v8 forKey:v9];

    goto LABEL_6;
  }

LABEL_7:
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end