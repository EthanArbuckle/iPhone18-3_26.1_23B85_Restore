@interface OFFrame
- (OFFrame)initWithBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp info:(id)info;
- (void)dealloc;
- (void)setPresentationTimeStamp:(id *)stamp;
@end

@implementation OFFrame

- (OFFrame)initWithBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp info:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = OFFrame;
  v10 = [(OFFrame *)&v13 init];
  if (v10)
  {
    *(v10 + 1) = CVPixelBufferRetain(buffer);
    var3 = stamp->var3;
    *(v10 + 24) = *&stamp->var0;
    *(v10 + 5) = var3;
    objc_storeStrong(v10 + 2, info);
  }

  return v10;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_buffer);
  v3.receiver = self;
  v3.super_class = OFFrame;
  [(OFFrame *)&v3 dealloc];
}

- (void)setPresentationTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  self->_presentationTimeStamp.epoch = stamp->var3;
  *&self->_presentationTimeStamp.value = v3;
}

@end