@interface GEOAddress(MNExtras)
- (__CFString)singleLineAddress;
@end

@implementation GEOAddress(MNExtras)

- (__CFString)singleLineAddress
{
  v2 = [a1 formattedAddressLines];
  v3 = [v2 count];

  if (!v3)
  {
    v7 = [a1 structuredAddress];

    if (!v7)
    {
      v6 = 0;
      goto LABEL_36;
    }

    v4 = [a1 structuredAddress];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v4 fullThoroughfare];
    if ([v8 length])
    {
      [v5 addObject:v8];
    }

    if (v8)
    {
      goto LABEL_16;
    }

    v9 = [v4 subThoroughfare];
    v10 = [v9 length];

    v11 = [v4 thoroughfare];
    v12 = [v11 length];

    v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:v10 + v12 + 1];
    if (v10)
    {
      v14 = [v4 subThoroughfare];
      [v13 appendString:v14];

      if (v12)
      {
        [v13 appendFormat:@" "];
LABEL_12:
        v15 = [v4 thoroughfare];
        [v13 appendString:v15];
      }
    }

    else if (v12)
    {
      goto LABEL_12;
    }

    if (v10 + v12)
    {
      [v5 addObject:v13];
    }

LABEL_16:
    v16 = [v4 locality];

    if ([v16 length])
    {
      [v5 addObject:v16];
    }

    v17 = [v4 subAdministrativeArea];

    if ([v17 length])
    {
      v18 = [v4 locality];
      v19 = [v17 isEqualToString:v18];

      if ((v19 & 1) == 0)
      {
        [v5 addObject:v17];
      }
    }

    v20 = [v4 administrativeArea];

    if ([v20 length])
    {
      [v5 addObject:v20];
    }

    if (![v5 count])
    {
      v21 = [v4 administrativeAreaCode];

      if ([v21 length])
      {
        [v5 addObject:v21];
      }

      v20 = [v4 country];

      if ([v20 length])
      {
        [v5 addObject:v20];
      }
    }

    if ([v5 count])
    {
      v22 = _MNLocalizedStringFromThisBundle(@"Address Components Separator");
      v23 = [v5 objectAtIndex:0];
      v24 = [v23 _navigation_isCJK];

      if (v24)
      {
        v25 = [v5 reverseObjectEnumerator];
        v26 = [v25 allObjects];
      }

      else
      {
        v26 = v5;
      }

      v6 = [v26 componentsJoinedByString:v22];
    }

    else
    {
      v6 = &stru_1F4EB6B70;
    }

    goto LABEL_35;
  }

  v4 = [a1 formattedAddressLines];
  v5 = _MNLocalizedStringFromThisBundle(@"Address Components Separator");
  v6 = [v4 componentsJoinedByString:v5];
LABEL_35:

LABEL_36:

  return v6;
}

@end