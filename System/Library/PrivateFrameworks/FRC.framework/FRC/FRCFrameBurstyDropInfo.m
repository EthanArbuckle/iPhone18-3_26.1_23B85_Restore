@interface FRCFrameBurstyDropInfo
- (void)setBurstyBaseDuration:(id *)a3;
@end

@implementation FRCFrameBurstyDropInfo

- (void)setBurstyBaseDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_burstyBaseDuration.epoch = a3->var3;
  *&self->_burstyBaseDuration.value = v3;
}

@end