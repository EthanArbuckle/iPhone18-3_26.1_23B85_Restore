@interface PSSpecifier(App)
- (id)app;
@end

@implementation PSSpecifier(App)

- (id)app
{
  cslprf_settings = [self cslprf_settings];
  application = [cslprf_settings application];

  if (application)
  {
    v4 = application;
  }

  else
  {
    v4 = [self propertyForKey:@"CSLPRFApp"];
  }

  v5 = v4;

  return v5;
}

@end