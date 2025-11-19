@interface CAFVolumeTypeCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFVolumeTypeCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFVolumeTypeCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFVolumeTypeCharacteristic *)self volumeTypeValue];

  return NSStringFromVolumeType(v2);
}

@end