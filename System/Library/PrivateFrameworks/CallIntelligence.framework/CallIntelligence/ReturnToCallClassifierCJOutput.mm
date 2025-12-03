@interface ReturnToCallClassifierCJOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation ReturnToCallClassifierCJOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  sub_1D2EE4D78();

  v4 = sub_1D2EE4D68();

  return v4;
}

- (id)featureValueForName:(id)name
{
  featureValueForName_ = [*self->provider featureValueForName_];

  return featureValueForName_;
}

@end