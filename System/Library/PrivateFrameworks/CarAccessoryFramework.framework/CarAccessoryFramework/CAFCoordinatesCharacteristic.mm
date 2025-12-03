@interface CAFCoordinatesCharacteristic
+ (void)load;
- (CAFCoordinates)coordinatesValue;
- (id)formattedValue;
- (void)setCoordinatesValue:(id)value;
@end

@implementation CAFCoordinatesCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCoordinatesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFCoordinates)coordinatesValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFCoordinates coordinatesWithArray:arrayValue];

  return v3;
}

- (void)setCoordinatesValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  coordinatesValue = [(CAFCoordinatesCharacteristic *)self coordinatesValue];
  formattedValue = [coordinatesValue formattedValue];

  return formattedValue;
}

@end