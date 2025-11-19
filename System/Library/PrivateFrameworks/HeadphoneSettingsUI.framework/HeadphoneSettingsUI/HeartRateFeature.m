@interface HeartRateFeature
- (void)openHeartRatePrivacy;
@end

@implementation HeartRateFeature

- (void)openHeartRatePrivacy
{
  MEMORY[0x1E69E5928](self);
  sub_1AC25A868();
  MEMORY[0x1E69E5920](self);
}

@end