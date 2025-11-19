@interface NTKMonogram
+ (id)_currentUser;
+ (id)_firstNameForPerson:(id)a3;
+ (id)_initialsForPerson:(id)a3;
+ (id)alternateMonogram;
+ (id)defaultMonogram;
+ (id)monogram;
@end

@implementation NTKMonogram

+ (id)monogram
{
  v3 = +[NTKCustomMonogramStore sharedInstance];
  v4 = [v3 customMonogram];
  if (!v4)
  {
    v4 = [a1 defaultMonogram];
  }

  return v4;
}

+ (id)defaultMonogram
{
  v3 = [a1 _currentUser];
  if (v3)
  {
    v4 = [a1 _initialsForPerson:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)alternateMonogram
{
  v3 = [a1 _currentUser];
  if (v3)
  {
    v4 = [a1 _firstNameForPerson:v3];
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

+ (id)_firstNameForPerson:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CBD160];
  v14[0] = *MEMORY[0x277CBD000];
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  if (([v3 areKeysAvailable:v5] & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v7 = tcc_identity_create();
    [v6 setAssumedIdentity:v7];

    v8 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v6];
    v9 = [v3 identifier];
    v10 = [v8 unifiedContactWithIdentifier:v9 keysToFetch:v5 error:0];

    v3 = v10;
  }

  if (v3 && ![v3 contactType])
  {
    v12 = [v3 givenName];
    if (v12 && (CNStringContainsNonLatinCharacters() & 1) == 0 && [v12 length])
    {
      v11 = [v12 localizedCapitalizedString];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_initialsForPerson:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CBCFF8];
  v18[0] = *MEMORY[0x277CBD000];
  v18[1] = v4;
  v18[2] = *MEMORY[0x277CBD160];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  if (([v3 areKeysAvailable:v5] & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    v7 = tcc_identity_create();
    [v6 setAssumedIdentity:v7];

    v8 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v6];
    v9 = [v3 identifier];
    v10 = [v8 unifiedContactWithIdentifier:v9 keysToFetch:v5 error:0];

    v3 = v10;
  }

  if (v3 && ![v3 contactType])
  {
    v12 = [v3 givenName];
    v13 = [v3 familyName];
    if (!(v12 | v13) || (CNStringContainsNonLatinCharacters() & 1) != 0 || (CNStringContainsNonLatinCharacters() & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v15 = objc_opt_new();
      [v15 setGivenName:v12];
      [v15 setFamilyName:v13];
      v16 = objc_opt_new();
      [v16 setStyle:4];
      [v16 set_ignoresFallbacks:1];
      v17 = [v16 stringFromPersonNameComponents:v15];
      if ([v17 length])
      {
        v11 = [v17 localizedUppercaseString];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end