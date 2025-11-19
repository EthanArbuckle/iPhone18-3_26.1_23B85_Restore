@interface CAFCoordinatesCharacteristic
+ (void)load;
- (CAFCoordinates)coordinatesValue;
- (id)formattedValue;
- (void)setCoordinatesValue:(id)a3;
@end

@implementation CAFCoordinatesCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFCoordinatesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFCoordinates)coordinatesValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFCoordinates coordinatesWithArray:v2];

  return v3;
}

- (void)setCoordinatesValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFCoordinatesCharacteristic *)self coordinatesValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end