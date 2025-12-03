@interface CAFCoordinateCharacteristic
+ (void)load;
- (CAFCoordinate)coordinateValue;
- (id)formattedValue;
- (void)setCoordinateValue:(id)value;
@end

@implementation CAFCoordinateCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFCoordinateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFCoordinate)coordinateValue
{
  v3 = [CAFCoordinate alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFCoordinate *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setCoordinateValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  coordinateValue = [(CAFCoordinateCharacteristic *)self coordinateValue];
  v3 = [coordinateValue description];

  return v3;
}

@end