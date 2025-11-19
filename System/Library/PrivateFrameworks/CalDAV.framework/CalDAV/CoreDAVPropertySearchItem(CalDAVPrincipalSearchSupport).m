@interface CoreDAVPropertySearchItem(CalDAVPrincipalSearchSupport)
- (uint64_t)wellKnownPrincipalSearchType;
@end

@implementation CoreDAVPropertySearchItem(CalDAVPrincipalSearchSupport)

- (uint64_t)wellKnownPrincipalSearchType
{
  LODWORD(v2) = 8;
  do
  {
    v2 = (v2 - 1);
    v3 = [CalDAVPrincipalSearchSupport namespaceForWellKnownType:v2];
    v4 = [a1 nameSpace];
    if ([v3 isEqualToString:v4])
    {
      v5 = [CalDAVPrincipalSearchSupport nameForWellKnownType:v2];
      v6 = [a1 name];
      v7 = [v5 isEqualToString:v6];

      if (v7)
      {
        return v2;
      }
    }

    else
    {
    }
  }

  while (v2 >= 2);
  return 0;
}

@end