@interface FRCFrameTimingInfo
- (void)setPresentationTimeStamp:(id *)a3;
@end

@implementation FRCFrameTimingInfo

- (void)setPresentationTimeStamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_presentationTimeStamp.epoch = a3->var3;
  *&self->_presentationTimeStamp.value = v3;
}

@end