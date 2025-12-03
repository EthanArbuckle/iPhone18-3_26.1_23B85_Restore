@interface CAFProminenceInfoCharacteristic
+ (void)load;
- (CAFProminenceInfo)prominenceInfoValue;
- (id)formattedValue;
- (void)setProminenceInfoValue:(id)value;
@end

@implementation CAFProminenceInfoCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFProminenceInfoCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFProminenceInfo)prominenceInfoValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFProminenceInfo prominenceInfoWithArray:arrayValue];

  return v3;
}

- (void)setProminenceInfoValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  prominenceInfoValue = [(CAFProminenceInfoCharacteristic *)self prominenceInfoValue];
  formattedValue = [prominenceInfoValue formattedValue];

  return formattedValue;
}

@end