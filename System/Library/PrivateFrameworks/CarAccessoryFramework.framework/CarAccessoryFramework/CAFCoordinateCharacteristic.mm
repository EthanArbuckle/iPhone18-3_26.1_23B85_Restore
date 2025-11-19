@interface CAFCoordinateCharacteristic
+ (void)load;
- (CAFCoordinate)coordinateValue;
- (id)formattedValue;
- (void)setCoordinateValue:(id)a3;
@end

@implementation CAFCoordinateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFCoordinateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFCoordinate)coordinateValue
{
  v3 = [CAFCoordinate alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFCoordinate *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setCoordinateValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFCoordinateCharacteristic *)self coordinateValue];
  v3 = [v2 description];

  return v3;
}

@end