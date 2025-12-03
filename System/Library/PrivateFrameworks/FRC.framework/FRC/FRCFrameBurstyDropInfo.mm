@interface FRCFrameBurstyDropInfo
- (void)setBurstyBaseDuration:(id *)duration;
@end

@implementation FRCFrameBurstyDropInfo

- (void)setBurstyBaseDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_burstyBaseDuration.epoch = duration->var3;
  *&self->_burstyBaseDuration.value = v3;
}

@end