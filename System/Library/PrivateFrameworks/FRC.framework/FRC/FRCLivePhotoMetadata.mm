@interface FRCLivePhotoMetadata
- (void)setTime:(id *)time;
@end

@implementation FRCLivePhotoMetadata

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

@end