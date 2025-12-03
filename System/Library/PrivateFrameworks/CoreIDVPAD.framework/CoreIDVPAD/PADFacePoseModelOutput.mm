@interface PADFacePoseModelOutput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation PADFacePoseModelOutput

- (NSSet)featureNames
{
  v2 = *self->provider;

  featureNames = [v2 featureNames];
  sub_2456CB188();

  v4 = sub_2456CB178();

  return v4;
}

- (id)featureValueForName:(id)name
{
  featureValueForName_ = [*self->provider featureValueForName_];

  return featureValueForName_;
}

@end