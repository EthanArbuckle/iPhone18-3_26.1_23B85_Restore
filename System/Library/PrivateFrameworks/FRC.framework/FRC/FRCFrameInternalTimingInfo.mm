@interface FRCFrameInternalTimingInfo
- (void)setFrameDuration:(id *)duration;
- (void)setInterpolatedFrameDuration:(id *)duration;
- (void)setPresentationTimeStamp:(id *)stamp;
@end

@implementation FRCFrameInternalTimingInfo

- (void)setPresentationTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  self->_presentationTimeStamp.epoch = stamp->var3;
  *&self->_presentationTimeStamp.value = v3;
}

- (void)setFrameDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_frameDuration.epoch = duration->var3;
  *&self->_frameDuration.value = v3;
}

- (void)setInterpolatedFrameDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_interpolatedFrameDuration.epoch = duration->var3;
  *&self->_interpolatedFrameDuration.value = v3;
}

@end