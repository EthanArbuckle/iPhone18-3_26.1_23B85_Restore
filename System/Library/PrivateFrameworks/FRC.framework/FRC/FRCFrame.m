@interface FRCFrame
- (FRCFrame)initWithBuffer:(__CVBuffer *)a3 presentationTimeStamp:(id *)a4 info:(id)a5;
- (void)dealloc;
- (void)setPresentationTimeStamp:(id *)a3;
@end

@implementation FRCFrame

- (FRCFrame)initWithBuffer:(__CVBuffer *)a3 presentationTimeStamp:(id *)a4 info:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = FRCFrame;
  v10 = [(FRCFrame *)&v13 init];
  if (v10)
  {
    *(v10 + 1) = CVPixelBufferRetain(a3);
    var3 = a4->var3;
    *(v10 + 24) = *&a4->var0;
    *(v10 + 5) = var3;
    objc_storeStrong(v10 + 2, a5);
  }

  return v10;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_buffer);
  v3.receiver = self;
  v3.super_class = FRCFrame;
  [(FRCFrame *)&v3 dealloc];
}

- (void)setPresentationTimeStamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_presentationTimeStamp.epoch = a3->var3;
  *&self->_presentationTimeStamp.value = v3;
}

@end