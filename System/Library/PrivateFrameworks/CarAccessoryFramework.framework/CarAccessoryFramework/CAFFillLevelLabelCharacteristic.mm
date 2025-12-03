@interface CAFFillLevelLabelCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFFillLevelLabelCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFFillLevelLabelCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  fillLevelLabelValue = [(CAFFillLevelLabelCharacteristic *)self fillLevelLabelValue];

  return NSStringFromFillLevelLabel(fillLevelLabelValue);
}

@end