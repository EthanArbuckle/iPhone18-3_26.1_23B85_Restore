@interface SNAAssertion(HDExtensions)
- (__CFString)_invalidationReasonString;
- (__CFString)_stateString;
- (id)hd_description;
@end

@implementation SNAAssertion(HDExtensions)

- (id)hd_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 _stateString];
  v5 = [a1 _invalidationReasonString];
  v6 = [v2 stringWithFormat:@"<%@:%p state: %@, invalidation reason: %@>", v3, a1, v4, v5];

  return v6;
}

- (__CFString)_stateString
{
  v1 = [a1 state];
  v2 = @"unacquired";
  if (v1 == 1)
  {
    v2 = @"acquired";
  }

  if (v1 == 2)
  {
    return @"invalidated";
  }

  else
  {
    return v2;
  }
}

- (__CFString)_invalidationReasonString
{
  v1 = [a1 invalidationReason];
  if ((v1 - 1) > 7)
  {
    return @"none";
  }

  else
  {
    return off_2786236B8[v1 - 1];
  }
}

@end