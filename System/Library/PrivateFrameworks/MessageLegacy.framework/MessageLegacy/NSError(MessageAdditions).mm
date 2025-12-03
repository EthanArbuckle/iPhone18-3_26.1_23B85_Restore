@interface NSError(MessageAdditions)
- (BOOL)mf_shouldFailDownload;
- (uint64_t)mf_isSMIMEError;
- (uint64_t)mf_isUserCancelledError;
- (uint64_t)mf_moreInfo;
- (uint64_t)mf_shortDescription;
- (uint64_t)mf_shouldBeReportedToUser;
@end

@implementation NSError(MessageAdditions)

- (uint64_t)mf_isUserCancelledError
{
  if ([self code] != 1028)
  {
    return 0;
  }

  domain = [self domain];

  return [@"MFMessageErrorDomain" isEqualToString:domain];
}

- (uint64_t)mf_isSMIMEError
{
  domain = [self domain];
  code = [self code];
  LODWORD(result) = [@"MFMessageErrorDomain" isEqualToString:domain];
  if ((code - 1035) < 2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)mf_shouldBeReportedToUser
{
  if ([self mf_isUserCancelledError])
  {
    return 0;
  }

  if ([self code] == 1029)
  {
    return [@"MFMessageErrorDomain" isEqualToString:{objc_msgSend(self, "domain")}] ^ 1;
  }

  return 1;
}

- (uint64_t)mf_moreInfo
{
  userInfo = [self userInfo];

  return [userInfo objectForKey:@"_MFMoreInfo"];
}

- (uint64_t)mf_shortDescription
{
  userInfo = [self userInfo];

  return [userInfo objectForKey:@"_MFShortDescription"];
}

- (BOOL)mf_shouldFailDownload
{
  if (![@"MFMessageErrorDomain" isEqualToString:{objc_msgSend(self, "domain")}])
  {
    return 1;
  }

  if ([self code] == 1036)
  {
    return 0;
  }

  return [self code] != 1035;
}

@end