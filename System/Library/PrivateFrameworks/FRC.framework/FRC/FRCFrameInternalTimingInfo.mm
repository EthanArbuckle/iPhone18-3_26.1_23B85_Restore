@interface FRCFrameInternalTimingInfo
- (void)setFrameDuration:(id *)a3;
- (void)setInterpolatedFrameDuration:(id *)a3;
- (void)setPresentationTimeStamp:(id *)a3;
@end

@implementation FRCFrameInternalTimingInfo

- (void)setPresentationTimeStamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_presentationTimeStamp.epoch = a3->var3;
  *&self->_presentationTimeStamp.value = v3;
}

- (void)setFrameDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_frameDuration.epoch = a3->var3;
  *&self->_frameDuration.value = v3;
}

- (void)setInterpolatedFrameDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_interpolatedFrameDuration.epoch = a3->var3;
  *&self->_interpolatedFrameDuration.value = v3;
}

@end