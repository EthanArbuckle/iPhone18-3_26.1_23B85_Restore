@interface CKSearchVideoDuration
- (void)setDuration:(id *)a3;
@end

@implementation CKSearchVideoDuration

- (void)setDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_duration.epoch = a3->var3;
  *&self->_duration.value = v3;
}

@end