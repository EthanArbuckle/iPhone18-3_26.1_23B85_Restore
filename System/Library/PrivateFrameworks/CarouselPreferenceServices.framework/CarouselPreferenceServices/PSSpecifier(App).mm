@interface PSSpecifier(App)
- (id)app;
@end

@implementation PSSpecifier(App)

- (id)app
{
  v2 = [a1 cslprf_settings];
  v3 = [v2 application];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [a1 propertyForKey:@"CSLPRFApp"];
  }

  v5 = v4;

  return v5;
}

@end