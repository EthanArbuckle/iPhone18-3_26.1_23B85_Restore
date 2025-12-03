@interface HDDemoDataBaseSampleGenerator
- (HDDemoDataBaseSampleGenerator)init;
- (HDDemoDataBaseSampleGenerator)initWithCoder:(id)coder;
- (HDDemoDataGenerator)demoDataGenerator;
- (HDProfile)profile;
@end

@implementation HDDemoDataBaseSampleGenerator

- (HDDemoDataBaseSampleGenerator)init
{
  v3.receiver = self;
  v3.super_class = HDDemoDataBaseSampleGenerator;
  result = [(HDDemoDataBaseSampleGenerator *)&v3 init];
  if (result)
  {
    result->_createdFromNSKeyedUnarchiver = 0;
  }

  return result;
}

- (HDDemoDataBaseSampleGenerator)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HDDemoDataBaseSampleGenerator;
  result = [(HDDemoDataBaseSampleGenerator *)&v4 init];
  if (result)
  {
    result->_createdFromNSKeyedUnarchiver = 1;
  }

  return result;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (HDDemoDataGenerator)demoDataGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_demoDataGenerator);

  return WeakRetained;
}

@end