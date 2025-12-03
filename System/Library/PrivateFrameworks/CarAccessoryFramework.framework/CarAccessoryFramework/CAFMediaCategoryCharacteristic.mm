@interface CAFMediaCategoryCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFMediaCategoryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMediaCategoryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  mediaCategoryValue = [(CAFMediaCategoryCharacteristic *)self mediaCategoryValue];

  return NSStringFromMediaCategory(mediaCategoryValue);
}

@end