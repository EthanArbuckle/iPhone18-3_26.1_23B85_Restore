@interface CAFAudioContentBadgeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFAudioContentBadgeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFAudioContentBadgeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFAudioContentBadgeCharacteristic *)self audioContentBadgeValue];

  return NSStringFromAudioContentBadge(v2);
}

@end