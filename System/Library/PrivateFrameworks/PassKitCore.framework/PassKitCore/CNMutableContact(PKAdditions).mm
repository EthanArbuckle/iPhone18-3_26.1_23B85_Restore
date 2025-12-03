@interface CNMutableContact(PKAdditions)
- (void)populateNamesFromComponents:()PKAdditions;
@end

@implementation CNMutableContact(PKAdditions)

- (void)populateNamesFromComponents:()PKAdditions
{
  v16 = a3;
  givenName = [v16 givenName];

  if (givenName)
  {
    givenName2 = [v16 givenName];
    [self setGivenName:givenName2];
  }

  familyName = [v16 familyName];

  if (familyName)
  {
    familyName2 = [v16 familyName];
    [self setFamilyName:familyName2];
  }

  phoneticRepresentation = [v16 phoneticRepresentation];
  givenName3 = [phoneticRepresentation givenName];

  if (givenName3)
  {
    phoneticRepresentation2 = [v16 phoneticRepresentation];
    givenName4 = [phoneticRepresentation2 givenName];
    [self setPhoneticGivenName:givenName4];
  }

  phoneticRepresentation3 = [v16 phoneticRepresentation];
  familyName3 = [phoneticRepresentation3 familyName];

  if (familyName3)
  {
    phoneticRepresentation4 = [v16 phoneticRepresentation];
    familyName4 = [phoneticRepresentation4 familyName];
    [self setPhoneticFamilyName:familyName4];
  }
}

@end