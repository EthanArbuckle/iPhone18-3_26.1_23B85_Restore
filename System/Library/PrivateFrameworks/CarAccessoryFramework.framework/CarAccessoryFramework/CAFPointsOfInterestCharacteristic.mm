@interface CAFPointsOfInterestCharacteristic
+ (void)load;
- (CAFPointsOfInterest)pointsOfInterestValue;
- (id)formattedValue;
- (void)setPointsOfInterestValue:(id)value;
@end

@implementation CAFPointsOfInterestCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFPointsOfInterestCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFPointsOfInterest)pointsOfInterestValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFPointsOfInterest pointsOfInterestWithArray:arrayValue];

  return v3;
}

- (void)setPointsOfInterestValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  pointsOfInterestValue = [(CAFPointsOfInterestCharacteristic *)self pointsOfInterestValue];
  formattedValue = [pointsOfInterestValue formattedValue];

  return formattedValue;
}

@end