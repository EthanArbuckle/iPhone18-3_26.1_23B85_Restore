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
    nameSpace = [self nameSpace];
    if ([v3 isEqualToString:nameSpace])
    {
      v5 = [CalDAVPrincipalSearchSupport nameForWellKnownType:v2];
      name = [self name];
      v7 = [v5 isEqualToString:name];

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