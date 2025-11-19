@interface MotionTransformerOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation MotionTransformerOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  v3 = [v2 featureNames];
  sub_251131108();

  v4 = sub_2511310F8();

  return v4;
}

- (id)featureValueForName:(id)a3
{
  v3 = [*self->provider featureValueForName_];

  return v3;
}

@end