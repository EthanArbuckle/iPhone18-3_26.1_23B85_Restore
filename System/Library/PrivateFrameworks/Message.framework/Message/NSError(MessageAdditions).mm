@interface NSError(MessageAdditions)
- (BOOL)mf_shouldFailDownload;
- (id)mf_moreInfo;
- (id)mf_shortDescription;
- (uint64_t)mf_isSMIMEError;
- (uint64_t)mf_isUserCancelledError;
- (uint64_t)mf_shouldBeReportedToUser;
@end

@implementation NSError(MessageAdditions)

- (uint64_t)mf_isUserCancelledError
{
  if ([self ef_isCancelledError])
  {
    return 1;
  }

  if ([self code] != 1028)
  {
    return 0;
  }

  domain = [self domain];
  v2 = [domain isEqualToString:@"MFMessageErrorDomain"];

  return v2;
}

- (uint64_t)mf_isSMIMEError
{
  domain = [self domain];
  code = [self code];
  v4 = [@"MFMessageErrorDomain" isEqualToString:domain];
  if ((code - 1035) < 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)mf_shouldBeReportedToUser
{
  if ([self mf_isUserCancelledError])
  {
    return 0;
  }

  if ([self code] != 1029)
  {
    return 1;
  }

  domain = [self domain];
  v4 = [@"MFMessageErrorDomain" isEqualToString:domain];

  return v4 ^ 1u;
}

- (id)mf_moreInfo
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"_MFMoreInfo"];

  return v2;
}

- (id)mf_shortDescription
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"_MFShortDescription"];

  return v2;
}

- (BOOL)mf_shouldFailDownload
{
  domain = [self domain];
  if ([@"MFMessageErrorDomain" isEqualToString:domain])
  {
    v3 = [self code] != 1036 && objc_msgSend(self, "code") != 1035;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end