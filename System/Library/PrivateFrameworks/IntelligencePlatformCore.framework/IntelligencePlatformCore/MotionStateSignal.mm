@interface MotionStateSignal
- (id)featureValueForName:(id)name;
@end

@implementation MotionStateSignal

- (id)featureValueForName:(id)name
{
  v3 = sub_1C4F01138();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  v7 = MotionStateSignal.featureValue(for:)(v6);

  return v7;
}

@end