@interface CAFRouteLegsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFRouteLegs)routeLegsValue;
- (id)formattedValue;
- (void)setRouteLegsValue:(id)value;
@end

@implementation CAFRouteLegsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFRouteLegsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFRouteLegs)routeLegsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFRouteLegs routeLegsWithArray:arrayValue];

  return v3;
}

- (void)setRouteLegsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  routeLegsValue = [(CAFRouteLegsCharacteristic *)self routeLegsValue];
  formattedValue = [routeLegsValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000045000109";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end