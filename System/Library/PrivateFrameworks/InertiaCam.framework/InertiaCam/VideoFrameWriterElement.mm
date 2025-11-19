@interface VideoFrameWriterElement
- (void)DeallocPixBuffer;
- (void)dealloc;
- (void)setFrameTime:(id *)a3;
@end

@implementation VideoFrameWriterElement

- (void)DeallocPixBuffer
{
  if ([(VideoFrameWriterElement *)self pixelBuffer])
  {
    CVPixelBufferRelease([(VideoFrameWriterElement *)self pixelBuffer]);

    [(VideoFrameWriterElement *)self setPixelBuffer:0];
  }
}

- (void)dealloc
{
  [(VideoFrameWriterElement *)self DeallocPixBuffer];
  v3.receiver = self;
  v3.super_class = VideoFrameWriterElement;
  [(VideoFrameWriterElement *)&v3 dealloc];
}

- (void)setFrameTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_frameTime.epoch = a3->var3;
  *&self->_frameTime.value = v3;
}

@end