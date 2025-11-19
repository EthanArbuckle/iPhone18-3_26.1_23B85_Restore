@interface CAFPointsOfInterestCharacteristic
+ (void)load;
- (CAFPointsOfInterest)pointsOfInterestValue;
- (id)formattedValue;
- (void)setPointsOfInterestValue:(id)a3;
@end

@implementation CAFPointsOfInterestCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPointsOfInterestCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFPointsOfInterest)pointsOfInterestValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFPointsOfInterest pointsOfInterestWithArray:v2];

  return v3;
}

- (void)setPointsOfInterestValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFPointsOfInterestCharacteristic *)self pointsOfInterestValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end