@interface CKSearchVideoDuration
- (void)setDuration:(id *)duration;
@end

@implementation CKSearchVideoDuration

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_duration.epoch = duration->var3;
  *&self->_duration.value = v3;
}

@end