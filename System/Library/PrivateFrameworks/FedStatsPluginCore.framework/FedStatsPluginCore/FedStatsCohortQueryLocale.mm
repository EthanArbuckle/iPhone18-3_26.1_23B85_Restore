@interface FedStatsCohortQueryLocale
+ (id)cohortInstance;
- (FedStatsCohortQueryLocale)init;
@end

@implementation FedStatsCohortQueryLocale

- (FedStatsCohortQueryLocale)init
{
  v7.receiver = self;
  v7.super_class = FedStatsCohortQueryLocale;
  v2 = [(FedStatsCohortQueryLocale *)&v7 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    languageIdentifier = [autoupdatingCurrentLocale languageIdentifier];
    deviceLocale = v2->_deviceLocale;
    v2->_deviceLocale = languageIdentifier;
  }

  return v2;
}

+ (id)cohortInstance
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end