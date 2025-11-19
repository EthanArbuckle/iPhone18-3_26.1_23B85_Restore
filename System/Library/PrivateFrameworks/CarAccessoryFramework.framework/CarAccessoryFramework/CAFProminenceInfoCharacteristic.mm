@interface CAFProminenceInfoCharacteristic
+ (void)load;
- (CAFProminenceInfo)prominenceInfoValue;
- (id)formattedValue;
- (void)setProminenceInfoValue:(id)a3;
@end

@implementation CAFProminenceInfoCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFProminenceInfoCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFProminenceInfo)prominenceInfoValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFProminenceInfo prominenceInfoWithArray:v2];

  return v3;
}

- (void)setProminenceInfoValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFProminenceInfoCharacteristic *)self prominenceInfoValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end