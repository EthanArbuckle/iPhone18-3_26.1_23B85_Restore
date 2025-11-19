@interface ReturnToCallClassifierCJOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation ReturnToCallClassifierCJOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  v3 = [v2 featureNames];
  sub_1D2EE4D78();

  v4 = sub_1D2EE4D68();

  return v4;
}

- (id)featureValueForName:(id)a3
{
  v3 = [*self->provider featureValueForName_];

  return v3;
}

@end