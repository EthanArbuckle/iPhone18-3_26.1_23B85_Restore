@interface MADMattedFullFrame
- (MADMattedFullFrame)initWithPixelBuffer:(__CVBuffer *)a3 presentationTimestamp:(id *)a4 confidence:(double)a5;
- (void)dealloc;
- (void)setPresentationTimestamp:(id *)a3;
@end

@implementation MADMattedFullFrame

- (MADMattedFullFrame)initWithPixelBuffer:(__CVBuffer *)a3 presentationTimestamp:(id *)a4 confidence:(double)a5
{
  v15.receiver = self;
  v15.super_class = MADMattedFullFrame;
  v8 = [(MADMattedFullFrame *)&v15 init];
  if (v8)
  {
    *(v8 + 1) = CFRetain(a3);
    v9 = *&a4->var0;
    *(v8 + 5) = a4->var3;
    *(v8 + 24) = v9;
    *(v8 + 2) = a5;
    v10 = *MEMORY[0x1E6965CE8];
    cf = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965CE8], 0);
    if (!cf)
    {
      v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v13 = 0;
      cf = v11;
      CF<__CVBuffer *>::~CF(&v13);
      CVBufferSetAttachment(a3, v10, cf, kCVAttachmentMode_ShouldPropagate);
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

- (void)setPresentationTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_presentationTimestamp.epoch = a3->var3;
  *&self->_presentationTimestamp.value = v3;
}

@end