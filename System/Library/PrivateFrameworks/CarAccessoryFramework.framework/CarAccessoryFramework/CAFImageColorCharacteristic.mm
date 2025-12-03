@interface CAFImageColorCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFImageColorCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFImageColorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  imageColorValue = [(CAFImageColorCharacteristic *)self imageColorValue];

  return NSStringFromImageColor(imageColorValue);
}

@end