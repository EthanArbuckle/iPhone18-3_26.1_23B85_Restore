@interface GEOAddress(MNExtras)
- (__CFString)singleLineAddress;
@end

@implementation GEOAddress(MNExtras)

- (__CFString)singleLineAddress
{
  formattedAddressLines = [self formattedAddressLines];
  v3 = [formattedAddressLines count];

  if (!v3)
  {
    structuredAddress = [self structuredAddress];

    if (!structuredAddress)
    {
      v6 = 0;
      goto LABEL_36;
    }

    structuredAddress2 = [self structuredAddress];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fullThoroughfare = [structuredAddress2 fullThoroughfare];
    if ([fullThoroughfare length])
    {
      [v5 addObject:fullThoroughfare];
    }

    if (fullThoroughfare)
    {
      goto LABEL_16;
    }

    subThoroughfare = [structuredAddress2 subThoroughfare];
    v10 = [subThoroughfare length];

    thoroughfare = [structuredAddress2 thoroughfare];
    v12 = [thoroughfare length];

    v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:v10 + v12 + 1];
    if (v10)
    {
      subThoroughfare2 = [structuredAddress2 subThoroughfare];
      [v13 appendString:subThoroughfare2];

      if (v12)
      {
        [v13 appendFormat:@" "];
LABEL_12:
        thoroughfare2 = [structuredAddress2 thoroughfare];
        [v13 appendString:thoroughfare2];
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
    locality = [structuredAddress2 locality];

    if ([locality length])
    {
      [v5 addObject:locality];
    }

    subAdministrativeArea = [structuredAddress2 subAdministrativeArea];

    if ([subAdministrativeArea length])
    {
      locality2 = [structuredAddress2 locality];
      v19 = [subAdministrativeArea isEqualToString:locality2];

      if ((v19 & 1) == 0)
      {
        [v5 addObject:subAdministrativeArea];
      }
    }

    administrativeArea = [structuredAddress2 administrativeArea];

    if ([administrativeArea length])
    {
      [v5 addObject:administrativeArea];
    }

    if (![v5 count])
    {
      administrativeAreaCode = [structuredAddress2 administrativeAreaCode];

      if ([administrativeAreaCode length])
      {
        [v5 addObject:administrativeAreaCode];
      }

      administrativeArea = [structuredAddress2 country];

      if ([administrativeArea length])
      {
        [v5 addObject:administrativeArea];
      }
    }

    if ([v5 count])
    {
      v22 = _MNLocalizedStringFromThisBundle(@"Address Components Separator");
      v23 = [v5 objectAtIndex:0];
      _navigation_isCJK = [v23 _navigation_isCJK];

      if (_navigation_isCJK)
      {
        reverseObjectEnumerator = [v5 reverseObjectEnumerator];
        allObjects = [reverseObjectEnumerator allObjects];
      }

      else
      {
        allObjects = v5;
      }

      v6 = [allObjects componentsJoinedByString:v22];
    }

    else
    {
      v6 = &stru_1F4EB6B70;
    }

    goto LABEL_35;
  }

  structuredAddress2 = [self formattedAddressLines];
  v5 = _MNLocalizedStringFromThisBundle(@"Address Components Separator");
  v6 = [structuredAddress2 componentsJoinedByString:v5];
LABEL_35:

LABEL_36:

  return v6;
}

@end