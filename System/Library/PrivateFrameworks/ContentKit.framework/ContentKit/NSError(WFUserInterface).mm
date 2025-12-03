@interface NSError(WFUserInterface)
- (BOOL)wf_isSiriPunchOutError;
- (BOOL)wf_isUnsupportedUserInterfaceError;
@end

@implementation NSError(WFUserInterface)

- (BOOL)wf_isUnsupportedUserInterfaceError
{
  domain = [self domain];
  if ([domain isEqualToString:@"WFUserInterfaceErrorDomain"])
  {
    v3 = [self code] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)wf_isSiriPunchOutError
{
  domain = [self domain];
  if ([domain isEqualToString:@"WFUserInterfaceErrorDomain"])
  {
    v3 = [self code] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end