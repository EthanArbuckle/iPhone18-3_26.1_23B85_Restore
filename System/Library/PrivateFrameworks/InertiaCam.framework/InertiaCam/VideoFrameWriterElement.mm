@interface VideoFrameWriterElement
- (void)DeallocPixBuffer;
- (void)dealloc;
- (void)setFrameTime:(id *)time;
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

- (void)setFrameTime:(id *)time
{
  v3 = *&time->var0;
  self->_frameTime.epoch = time->var3;
  *&self->_frameTime.value = v3;
}

@end