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
  _stateString = [self _stateString];
  _invalidationReasonString = [self _invalidationReasonString];
  v6 = [v2 stringWithFormat:@"<%@:%p state: %@, invalidation reason: %@>", v3, self, _stateString, _invalidationReasonString];

  return v6;
}

- (__CFString)_stateString
{
  state = [self state];
  v2 = @"unacquired";
  if (state == 1)
  {
    v2 = @"acquired";
  }

  if (state == 2)
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
  invalidationReason = [self invalidationReason];
  if ((invalidationReason - 1) > 7)
  {
    return @"none";
  }

  else
  {
    return off_2786236B8[invalidationReason - 1];
  }
}

@end