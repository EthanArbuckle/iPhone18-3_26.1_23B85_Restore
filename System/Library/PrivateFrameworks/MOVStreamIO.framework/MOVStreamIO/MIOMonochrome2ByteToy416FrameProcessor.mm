@interface MIOMonochrome2ByteToy416FrameProcessor
- (MIOMonochrome2ByteToy416FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description;
- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error;
- (void)dealloc;
@end

@implementation MIOMonochrome2ByteToy416FrameProcessor

- (MIOMonochrome2ByteToy416FrameProcessor)initWithInputFormatDescription:(opaqueCMFormatDescription *)description
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = MIOMonochrome2ByteToy416FrameProcessor;
  v4 = [(MIOFrameProcessor *)&v10 initWithInputFormatDescription:?];
  if (v4)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(description);
    texture = 0;
    v11 = *MEMORY[0x277CC4DE8];
    v12[0] = MEMORY[0x277CBEC10];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], Dimensions.width, *&Dimensions >> 32, 0x79343136u, v6, &texture);
    v7 = [MOVStreamIOUtility createFormatDescriptionFromPixelBuffer:texture];
    v4->_formatDescForEncoding = v7;
    CFRetain(v7);
    CVPixelBufferRelease(texture);
    [(MIOFrameProcessor *)v4 setFormatDescriptionNeedsUpdate:1];
  }

  return v4;
}

- (void)dealloc
{
  formatDescForEncoding = self->_formatDescForEncoding;
  if (formatDescForEncoding)
  {
    CFRelease(formatDescForEncoding);
  }

  v4.receiver = self;
  v4.super_class = MIOMonochrome2ByteToy416FrameProcessor;
  [(MIOFrameProcessor *)&v4 dealloc];
}

- (__CVBuffer)processPixelBuffer:(__CVBuffer *)buffer preserveAttachments:(id)attachments error:(id *)error
{
  attachmentsCopy = attachments;
  pool = self->_pool;
  if (pool || (Width = CVPixelBufferGetWidth(buffer), [MIOPixelBufferPool createMIOPixelBufferPoolWithWidth:Width height:CVPixelBufferGetHeight(buffer) pixelFormat:2033463606 extendedPixelsPerRow:0 minBufferCount:2 bufferCacheMode:[(MIOMonochrome2ByteToy416FrameProcessor *)self bufferCacheMode]], v11 = objc_claimAutoreleasedReturnValue(), v12 = self->_pool, self->_pool = v11, v12, (pool = self->_pool) != 0))
  {
    [(MIOPixelBufferPool *)pool flush];
    getPixelBuffer = [(MIOPixelBufferPool *)self->_pool getPixelBuffer];
    if (!getPixelBuffer)
    {
      NSLog(&cfstr_RunningOutOfBu.isa);
      __assert_rtn("[MIOMonochrome2ByteToy416FrameProcessor processPixelBuffer:preserveAttachments:error:]", "MIOMonochrome2ByteToy416FrameProcessor.mm", 85, "0");
    }

    [(MIOPixelBufferUtility *)PixelBufferUtility copyMonochromeBuffer:buffer toAlphaChannelOfBuffer:getPixelBuffer];
    self->_formatDescForEncoding = [(MIOFrameProcessor *)self updatedFormatDescriptionIfNeededWithBuffer:getPixelBuffer currentFormatDescription:self->_formatDescForEncoding];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:@"Cannot create pixel buffer pool for RawBayer stream." code:19];
    if (error)
    {
      v15 = v15;
      *error = v15;
    }

    getPixelBuffer = 0;
  }

  return getPixelBuffer;
}

@end