@interface CAFAudioContentBadgeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFAudioContentBadgeCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFAudioContentBadgeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  audioContentBadgeValue = [(CAFAudioContentBadgeCharacteristic *)self audioContentBadgeValue];

  return NSStringFromAudioContentBadge(audioContentBadgeValue);
}

@end