@interface GEOStructuredAddress(MNExtras)
- (__CFString)singleLineAddress;
@end

@implementation GEOStructuredAddress(MNExtras)

- (__CFString)singleLineAddress
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 subThoroughfare];
  if ([v3 length])
  {
    [v2 addObject:v3];
  }

  v4 = [a1 thoroughfare];

  if ([v4 length])
  {
    [v2 addObject:v4];
  }

  v5 = [a1 subLocality];

  if ([v5 length])
  {
    [v2 addObject:v5];
  }

  v6 = [a1 locality];

  if ([v6 length])
  {
    [v2 addObject:v6];
  }

  v7 = [a1 subAdministrativeArea];

  if ([v7 length])
  {
    v8 = [a1 locality];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      [v2 addObject:v7];
    }
  }

  v10 = [a1 administrativeArea];

  if ([v10 length])
  {
    [v2 addObject:v10];
  }

  if (!v2)
  {
    v11 = [a1 administrativeAreaCode];

    if ([v11 length])
    {
      [0 addObject:v11];
    }

    v10 = [a1 country];

    if ([v10 length])
    {
      [0 addObject:v10];
    }
  }

  if ([v2 count])
  {
    v12 = _MNLocalizedStringFromThisBundle(@"Address Components Separator");
    v13 = [v2 objectAtIndex:0];
    v14 = [v13 _navigation_isCJK];

    if (v14)
    {
      v15 = [v2 reverseObjectEnumerator];
      v16 = [v15 allObjects];
    }

    else
    {
      v16 = v2;
    }

    v17 = [v16 componentsJoinedByString:v12];
  }

  else
  {
    v17 = &stru_1F4EB6B70;
  }

  return v17;
}

@end