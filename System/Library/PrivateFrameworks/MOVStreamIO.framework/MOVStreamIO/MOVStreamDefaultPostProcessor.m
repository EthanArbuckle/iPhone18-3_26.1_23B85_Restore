@interface MOVStreamDefaultPostProcessor
- (BOOL)shouldChangeBytesPerRowOfPixelBuffer:(__CVBuffer *)a3;
- (BOOL)shouldRemovePaddingOfPixelBuffer:(__CVBuffer *)a3 metadata:(id)a4;
- (MOVStreamDefaultPostProcessor)initWithOriginalPixelFormat:(unsigned int)a3;
- (MOVStreamDefaultPostProcessor)initWithOriginalPixelFormat:(unsigned int)a3 bufferCacheMode:(int)a4;
- (__CVBuffer)pixelBufferWithExactBytesPerRow:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 error:(id *)a5;
- (__CVBuffer)pixelBufferWithoutPaddingFromPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation MOVStreamDefaultPostProcessor

- (MOVStreamDefaultPostProcessor)initWithOriginalPixelFormat:(unsigned int)a3 bufferCacheMode:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v10.receiver = self;
  v10.super_class = MOVStreamDefaultPostProcessor;
  v6 = [(MOVStreamDefaultPostProcessor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(MOVStreamDefaultPostProcessor *)v6 setOriginalPixelFormat:v5];
    [(MOVStreamDefaultPostProcessor *)v7 setBufferCacheMode:v4];
    v8 = v7;
  }

  return v7;
}

- (MOVStreamDefaultPostProcessor)initWithOriginalPixelFormat:(unsigned int)a3
{
  v3 = *&a3;
  v8.receiver = self;
  v8.super_class = MOVStreamDefaultPostProcessor;
  v4 = [(MOVStreamDefaultPostProcessor *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(MOVStreamDefaultPostProcessor *)v4 setOriginalPixelFormat:v3];
    [(MOVStreamDefaultPostProcessor *)v5 setBufferCacheMode:0];
    v6 = v5;
  }

  return v5;
}

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)a3 metadata:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:a3 metadata:v8])
  {
    a3 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:a3 error:a5];
  }

  else if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:a3])
  {
    v9 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    a3 = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:v9 fromPixelBuffer:a3 error:a5];
  }

  else
  {
    CVPixelBufferRetain(a3);
  }

  return a3;
}

- (void)dealloc
{
  converter = self->_converter;
  self->_converter = 0;

  v4.receiver = self;
  v4.super_class = MOVStreamDefaultPostProcessor;
  [(MOVStreamDefaultPostProcessor *)&v4 dealloc];
}

- (BOOL)shouldChangeBytesPerRowOfPixelBuffer:(__CVBuffer *)a3
{
  v5 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];

  if (!v5)
  {
    goto LABEL_11;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  v7 = PlaneCount;
  if (PlaneCount <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = PlaneCount;
  }

  v9 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v11 = [v10 count];

    if (v11 < v8)
    {
      v12 = +[MIOLog debugEnabled];
      if (!v12)
      {
        return v12;
      }

      v13 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_DEBUG, "ExactBytesPerRow count doesn't match pixel buffers plane count!", buf, 2u);
      }

LABEL_11:
      LOBYTE(v12) = 0;
      return v12;
    }
  }

  else
  {
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v18 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v19 = v18;
    if (isKindOfClass)
    {
      v20 = [v18 unsignedIntegerValue];
      goto LABEL_18;
    }

    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      break;
    }

    v19 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v22 = [v19 objectAtIndex:v14];
    v20 = [v22 unsignedIntegerValue];

LABEL_18:
    if (CVPixelBufferGetBytesPerRowOfPlane(a3, v14) == v20)
    {
      v15 = v7 > ++v14;
      if (v8 != v14)
      {
        continue;
      }
    }

    v23 = 1;
    goto LABEL_24;
  }

  v24 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *v26 = 0;
    _os_log_impl(&dword_257883000, v24, OS_LOG_TYPE_ERROR, "Invalid ExactBytesPerRow value type!", v26, 2u);
  }

  v23 = 0;
LABEL_24:
  LOBYTE(v12) = v15 & v23;
  return v12;
}

- (BOOL)shouldRemovePaddingOfPixelBuffer:(__CVBuffer *)a3 metadata:(id)a4
{
  v6 = [(MOVStreamDefaultPostProcessor *)self minimumBytesPerRowForPixelBuffer:a3, a4];
  v7 = [(MOVStreamDefaultPostProcessor *)self removePadding];
  if (v7)
  {
    LOBYTE(v7) = v6 < CVPixelBufferGetBytesPerRow(a3);
  }

  return v7;
}

- (__CVBuffer)pixelBufferWithoutPaddingFromPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  converter = self->_converter;
  if (!converter)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v9 = [[MOVStreamFrameConverter alloc] initWithTargetWidth:Width height:Height format:CVPixelBufferGetPixelFormatType(a3) bytesPerRow:[(MOVStreamDefaultPostProcessor *)self minimumBytesPerRowForPixelBuffer:a3] bufferCacheMode:self->bufferCacheMode];
    v10 = self->_converter;
    self->_converter = v9;

    converter = self->_converter;
  }

  return [(MOVStreamFrameConverter *)converter convertPixelBuffer:a3, a4];
}

- (__CVBuffer)pixelBufferWithExactBytesPerRow:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!self->_converter)
  {
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    v11 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [MOVStreamFrameConverter alloc];
      PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
      v15 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v28[0] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v17 = [(MOVStreamFrameConverter *)v13 initWithTargetWidth:Width height:Height format:PixelFormatType bytesPerRows:v16 bufferCacheMode:self->bufferCacheMode];
      converter = self->_converter;
      self->_converter = v17;
    }

    else
    {
      v19 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        [MEMORY[0x277CCA9B8] populateStreamError:a5 message:@"Invalid ExactBytesPerRow value type!" code:19];
        v26 = 0;
        goto LABEL_7;
      }

      v21 = [MOVStreamFrameConverter alloc];
      v22 = CVPixelBufferGetPixelFormatType(a4);
      v23 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v24 = [(MOVStreamFrameConverter *)v21 initWithTargetWidth:Width height:Height format:v22 bytesPerRows:v23 bufferCacheMode:self->bufferCacheMode];
      v25 = self->_converter;
      self->_converter = v24;
    }
  }

  v26 = [(MOVStreamFrameConverter *)self->_converter convertPixelBuffer:a4];
LABEL_7:

  return v26;
}

@end