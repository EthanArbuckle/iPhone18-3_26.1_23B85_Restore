@interface MOVStreamDefaultPostProcessor
- (BOOL)shouldChangeBytesPerRowOfPixelBuffer:(__CVBuffer *)buffer;
- (BOOL)shouldRemovePaddingOfPixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata;
- (MOVStreamDefaultPostProcessor)initWithOriginalPixelFormat:(unsigned int)format;
- (MOVStreamDefaultPostProcessor)initWithOriginalPixelFormat:(unsigned int)format bufferCacheMode:(int)mode;
- (__CVBuffer)pixelBufferWithExactBytesPerRow:(id)row fromPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (__CVBuffer)pixelBufferWithoutPaddingFromPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error;
- (void)dealloc;
@end

@implementation MOVStreamDefaultPostProcessor

- (MOVStreamDefaultPostProcessor)initWithOriginalPixelFormat:(unsigned int)format bufferCacheMode:(int)mode
{
  v4 = *&mode;
  v5 = *&format;
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

- (MOVStreamDefaultPostProcessor)initWithOriginalPixelFormat:(unsigned int)format
{
  v3 = *&format;
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

- (__CVBuffer)processedPixelBufferFrom:(__CVBuffer *)from metadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  if ([(MOVStreamDefaultPostProcessor *)self shouldRemovePaddingOfPixelBuffer:from metadata:metadataCopy])
  {
    from = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithoutPaddingFromPixelBuffer:from error:error];
  }

  else if ([(MOVStreamDefaultPostProcessor *)self shouldChangeBytesPerRowOfPixelBuffer:from])
  {
    exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    from = [(MOVStreamDefaultPostProcessor *)self pixelBufferWithExactBytesPerRow:exactBytesPerRow fromPixelBuffer:from error:error];
  }

  else
  {
    CVPixelBufferRetain(from);
  }

  return from;
}

- (void)dealloc
{
  converter = self->_converter;
  self->_converter = 0;

  v4.receiver = self;
  v4.super_class = MOVStreamDefaultPostProcessor;
  [(MOVStreamDefaultPostProcessor *)&v4 dealloc];
}

- (BOOL)shouldChangeBytesPerRowOfPixelBuffer:(__CVBuffer *)buffer
{
  exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];

  if (!exactBytesPerRow)
  {
    goto LABEL_11;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(buffer);
  v7 = PlaneCount;
  if (PlaneCount <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = PlaneCount;
  }

  exactBytesPerRow2 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    exactBytesPerRow3 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v11 = [exactBytesPerRow3 count];

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
    exactBytesPerRow4 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    exactBytesPerRow5 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    exactBytesPerRow6 = exactBytesPerRow5;
    if (isKindOfClass)
    {
      unsignedIntegerValue = [exactBytesPerRow5 unsignedIntegerValue];
      goto LABEL_18;
    }

    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      break;
    }

    exactBytesPerRow6 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    v22 = [exactBytesPerRow6 objectAtIndex:v14];
    unsignedIntegerValue = [v22 unsignedIntegerValue];

LABEL_18:
    if (CVPixelBufferGetBytesPerRowOfPlane(buffer, v14) == unsignedIntegerValue)
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

- (BOOL)shouldRemovePaddingOfPixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata
{
  metadata = [(MOVStreamDefaultPostProcessor *)self minimumBytesPerRowForPixelBuffer:buffer, metadata];
  removePadding = [(MOVStreamDefaultPostProcessor *)self removePadding];
  if (removePadding)
  {
    LOBYTE(removePadding) = metadata < CVPixelBufferGetBytesPerRow(buffer);
  }

  return removePadding;
}

- (__CVBuffer)pixelBufferWithoutPaddingFromPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  converter = self->_converter;
  if (!converter)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v9 = [[MOVStreamFrameConverter alloc] initWithTargetWidth:Width height:Height format:CVPixelBufferGetPixelFormatType(buffer) bytesPerRow:[(MOVStreamDefaultPostProcessor *)self minimumBytesPerRowForPixelBuffer:buffer] bufferCacheMode:self->bufferCacheMode];
    v10 = self->_converter;
    self->_converter = v9;

    converter = self->_converter;
  }

  return [(MOVStreamFrameConverter *)converter convertPixelBuffer:buffer, error];
}

- (__CVBuffer)pixelBufferWithExactBytesPerRow:(id)row fromPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  rowCopy = row;
  if (!self->_converter)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    exactBytesPerRow = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [MOVStreamFrameConverter alloc];
      PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
      exactBytesPerRow2 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v28[0] = exactBytesPerRow2;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v17 = [(MOVStreamFrameConverter *)v13 initWithTargetWidth:Width height:Height format:PixelFormatType bytesPerRows:v16 bufferCacheMode:self->bufferCacheMode];
      converter = self->_converter;
      self->_converter = v17;
    }

    else
    {
      exactBytesPerRow3 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        [MEMORY[0x277CCA9B8] populateStreamError:error message:@"Invalid ExactBytesPerRow value type!" code:19];
        v26 = 0;
        goto LABEL_7;
      }

      v21 = [MOVStreamFrameConverter alloc];
      v22 = CVPixelBufferGetPixelFormatType(buffer);
      exactBytesPerRow4 = [(MOVStreamDefaultPostProcessor *)self exactBytesPerRow];
      v24 = [(MOVStreamFrameConverter *)v21 initWithTargetWidth:Width height:Height format:v22 bytesPerRows:exactBytesPerRow4 bufferCacheMode:self->bufferCacheMode];
      v25 = self->_converter;
      self->_converter = v24;
    }
  }

  v26 = [(MOVStreamFrameConverter *)self->_converter convertPixelBuffer:buffer];
LABEL_7:

  return v26;
}

@end