@interface GEOStructuredAddress(MNExtras)
- (__CFString)singleLineAddress;
@end

@implementation GEOStructuredAddress(MNExtras)

- (__CFString)singleLineAddress
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  subThoroughfare = [self subThoroughfare];
  if ([subThoroughfare length])
  {
    [v2 addObject:subThoroughfare];
  }

  thoroughfare = [self thoroughfare];

  if ([thoroughfare length])
  {
    [v2 addObject:thoroughfare];
  }

  subLocality = [self subLocality];

  if ([subLocality length])
  {
    [v2 addObject:subLocality];
  }

  locality = [self locality];

  if ([locality length])
  {
    [v2 addObject:locality];
  }

  subAdministrativeArea = [self subAdministrativeArea];

  if ([subAdministrativeArea length])
  {
    locality2 = [self locality];
    v9 = [subAdministrativeArea isEqualToString:locality2];

    if ((v9 & 1) == 0)
    {
      [v2 addObject:subAdministrativeArea];
    }
  }

  administrativeArea = [self administrativeArea];

  if ([administrativeArea length])
  {
    [v2 addObject:administrativeArea];
  }

  if (!v2)
  {
    administrativeAreaCode = [self administrativeAreaCode];

    if ([administrativeAreaCode length])
    {
      [0 addObject:administrativeAreaCode];
    }

    administrativeArea = [self country];

    if ([administrativeArea length])
    {
      [0 addObject:administrativeArea];
    }
  }

  if ([v2 count])
  {
    v12 = _MNLocalizedStringFromThisBundle(@"Address Components Separator");
    v13 = [v2 objectAtIndex:0];
    _navigation_isCJK = [v13 _navigation_isCJK];

    if (_navigation_isCJK)
    {
      reverseObjectEnumerator = [v2 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
    }

    else
    {
      allObjects = v2;
    }

    v17 = [allObjects componentsJoinedByString:v12];
  }

  else
  {
    v17 = &stru_1F4EB6B70;
  }

  return v17;
}

@end