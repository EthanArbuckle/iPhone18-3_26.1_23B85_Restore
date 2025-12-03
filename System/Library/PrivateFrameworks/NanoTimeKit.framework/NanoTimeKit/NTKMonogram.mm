@interface NTKMonogram
+ (id)_currentUser;
+ (id)_firstNameForPerson:(id)person;
+ (id)_initialsForPerson:(id)person;
+ (id)alternateMonogram;
+ (id)defaultMonogram;
+ (id)monogram;
@end

@implementation NTKMonogram

+ (id)monogram
{
  v3 = +[NTKCustomMonogramStore sharedInstance];
  customMonogram = [v3 customMonogram];
  if (!customMonogram)
  {
    customMonogram = [self defaultMonogram];
  }

  return customMonogram;
}

+ (id)defaultMonogram
{
  _currentUser = [self _currentUser];
  if (_currentUser)
  {
    v4 = [self _initialsForPerson:_currentUser];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)alternateMonogram
{
  _currentUser = [self _currentUser];
  if (_currentUser)
  {
    v4 = [self _firstNameForPerson:_currentUser];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_currentUser
{
  if (NTKDeviceIsGreenTea() && ([MEMORY[0x277CBBAE8] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isPaired"), v2, !v3))
  {
    v7 = 0;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v5 = tcc_identity_create();
    [v4 setAssumedIdentity:v5];

    v6 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v4];
    v7 = [v6 _ios_meContactWithKeysToFetch:MEMORY[0x277CBEBF8] error:0];
  }

  return v7;
}

+ (id)_firstNameForPerson:(id)person
{
  v14[2] = *MEMORY[0x277D85DE8];
  personCopy = person;
  v4 = *MEMORY[0x277CBD160];
  v14[0] = *MEMORY[0x277CBD000];
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  if (([personCopy areKeysAvailable:v5] & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v7 = tcc_identity_create();
    [v6 setAssumedIdentity:v7];

    v8 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v6];
    identifier = [personCopy identifier];
    v10 = [v8 unifiedContactWithIdentifier:identifier keysToFetch:v5 error:0];

    personCopy = v10;
  }

  if (personCopy && ![personCopy contactType])
  {
    givenName = [personCopy givenName];
    if (givenName && (CNStringContainsNonLatinCharacters() & 1) == 0 && [givenName length])
    {
      localizedCapitalizedString = [givenName localizedCapitalizedString];
    }

    else
    {
      localizedCapitalizedString = 0;
    }
  }

  else
  {
    localizedCapitalizedString = 0;
  }

  return localizedCapitalizedString;
}

+ (id)_initialsForPerson:(id)person
{
  v18[3] = *MEMORY[0x277D85DE8];
  personCopy = person;
  v4 = *MEMORY[0x277CBCFF8];
  v18[0] = *MEMORY[0x277CBD000];
  v18[1] = v4;
  v18[2] = *MEMORY[0x277CBD160];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  if (([personCopy areKeysAvailable:v5] & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v7 = tcc_identity_create();
    [v6 setAssumedIdentity:v7];

    v8 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v6];
    identifier = [personCopy identifier];
    v10 = [v8 unifiedContactWithIdentifier:identifier keysToFetch:v5 error:0];

    personCopy = v10;
  }

  if (personCopy && ![personCopy contactType])
  {
    givenName = [personCopy givenName];
    familyName = [personCopy familyName];
    if (!(givenName | familyName) || (CNStringContainsNonLatinCharacters() & 1) != 0 || (CNStringContainsNonLatinCharacters() & 1) != 0)
    {
      localizedUppercaseString = 0;
    }

    else
    {
      v15 = objc_opt_new();
      [v15 setGivenName:givenName];
      [v15 setFamilyName:familyName];
      v16 = objc_opt_new();
      [v16 setStyle:4];
      [v16 set_ignoresFallbacks:1];
      v17 = [v16 stringFromPersonNameComponents:v15];
      if ([v17 length])
      {
        localizedUppercaseString = [v17 localizedUppercaseString];
      }

      else
      {
        localizedUppercaseString = 0;
      }
    }
  }

  else
  {
    localizedUppercaseString = 0;
  }

  return localizedUppercaseString;
}

@end