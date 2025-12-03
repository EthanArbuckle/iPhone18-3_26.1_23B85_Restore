@interface MADMattedFullFrame
- (MADMattedFullFrame)initWithPixelBuffer:(__CVBuffer *)buffer presentationTimestamp:(id *)timestamp confidence:(double)confidence;
- (void)dealloc;
- (void)setPresentationTimestamp:(id *)timestamp;
@end

@implementation MADMattedFullFrame

- (MADMattedFullFrame)initWithPixelBuffer:(__CVBuffer *)buffer presentationTimestamp:(id *)timestamp confidence:(double)confidence
{
  v15.receiver = self;
  v15.super_class = MADMattedFullFrame;
  v8 = [(MADMattedFullFrame *)&v15 init];
  if (v8)
  {
    *(v8 + 1) = CFRetain(buffer);
    v9 = *&timestamp->var0;
    *(v8 + 5) = timestamp->var3;
    *(v8 + 24) = v9;
    *(v8 + 2) = confidence;
    v10 = *MEMORY[0x1E6965CE8];
    cf = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965CE8], 0);
    if (!cf)
    {
      v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v13 = 0;
      cf = v11;
      CF<__CVBuffer *>::~CF(&v13);
      CVBufferSetAttachment(buffer, v10, cf, kCVAttachmentMode_ShouldPropagate);
    }

    CF<__CVBuffer *>::~CF(&cf);
  }

  return v8;
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = MADMattedFullFrame;
  [(MADMattedFullFrame *)&v4 dealloc];
}

- (void)setPresentationTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_presentationTimestamp.epoch = timestamp->var3;
  *&self->_presentationTimestamp.value = v3;
}

@end