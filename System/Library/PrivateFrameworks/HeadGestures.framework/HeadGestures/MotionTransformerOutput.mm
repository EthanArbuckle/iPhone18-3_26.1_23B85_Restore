@interface MotionTransformerOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation MotionTransformerOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  sub_251131108();

  v4 = sub_2511310F8();

  return v4;
}

- (id)featureValueForName:(id)name
{
  featureValueForName_ = [*self->provider featureValueForName_];

  return featureValueForName_;
}

@end