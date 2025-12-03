@interface HDMinorExperiencesPlugin
- (id)extensionForProfile:(id)profile;
@end

@implementation HDMinorExperiencesPlugin

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy profileType] == 1)
  {
    v4 = [[HDMinorExperiencesProfileExtension alloc] initWithProfile:profileCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end