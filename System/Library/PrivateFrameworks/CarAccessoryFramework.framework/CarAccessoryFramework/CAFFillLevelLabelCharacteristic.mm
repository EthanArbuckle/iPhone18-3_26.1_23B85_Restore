@interface CAFFillLevelLabelCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFFillLevelLabelCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFFillLevelLabelCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFFillLevelLabelCharacteristic *)self fillLevelLabelValue];

  return NSStringFromFillLevelLabel(v2);
}

@end