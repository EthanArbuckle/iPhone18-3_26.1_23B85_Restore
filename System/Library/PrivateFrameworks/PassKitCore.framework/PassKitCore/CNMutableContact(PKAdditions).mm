@interface CNMutableContact(PKAdditions)
- (void)populateNamesFromComponents:()PKAdditions;
@end

@implementation CNMutableContact(PKAdditions)

- (void)populateNamesFromComponents:()PKAdditions
{
  v16 = a3;
  v4 = [v16 givenName];

  if (v4)
  {
    v5 = [v16 givenName];
    [a1 setGivenName:v5];
  }

  v6 = [v16 familyName];

  if (v6)
  {
    v7 = [v16 familyName];
    [a1 setFamilyName:v7];
  }

  v8 = [v16 phoneticRepresentation];
  v9 = [v8 givenName];

  if (v9)
  {
    v10 = [v16 phoneticRepresentation];
    v11 = [v10 givenName];
    [a1 setPhoneticGivenName:v11];
  }

  v12 = [v16 phoneticRepresentation];
  v13 = [v12 familyName];

  if (v13)
  {
    v14 = [v16 phoneticRepresentation];
    v15 = [v14 familyName];
    [a1 setPhoneticFamilyName:v15];
  }
}

@end