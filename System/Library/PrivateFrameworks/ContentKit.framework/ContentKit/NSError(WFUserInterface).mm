@interface NSError(WFUserInterface)
- (BOOL)wf_isSiriPunchOutError;
- (BOOL)wf_isUnsupportedUserInterfaceError;
@end

@implementation NSError(WFUserInterface)

- (BOOL)wf_isUnsupportedUserInterfaceError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"WFUserInterfaceErrorDomain"])
  {
    v3 = [a1 code] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)wf_isSiriPunchOutError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"WFUserInterfaceErrorDomain"])
  {
    v3 = [a1 code] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end