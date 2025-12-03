@interface FrameTimingInfo
- (void)setPresentationTimeStamp:(id *)stamp;
@end

@implementation FrameTimingInfo

- (void)setPresentationTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  self->_presentationTimeStamp.epoch = stamp->var3;
  *&self->_presentationTimeStamp.value = v3;
}

@end