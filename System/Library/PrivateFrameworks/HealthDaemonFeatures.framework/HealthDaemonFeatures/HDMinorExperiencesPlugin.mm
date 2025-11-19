@interface HDMinorExperiencesPlugin
- (id)extensionForProfile:(id)a3;
@end

@implementation HDMinorExperiencesPlugin

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  if ([v3 profileType] == 1)
  {
    v4 = [[HDMinorExperiencesProfileExtension alloc] initWithProfile:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end