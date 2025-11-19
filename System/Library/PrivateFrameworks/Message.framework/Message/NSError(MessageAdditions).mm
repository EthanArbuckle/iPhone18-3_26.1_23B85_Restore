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
  if ([a1 ef_isCancelledError])
  {
    return 1;
  }

  if ([a1 code] != 1028)
  {
    return 0;
  }

  v3 = [a1 domain];
  v2 = [v3 isEqualToString:@"MFMessageErrorDomain"];

  return v2;
}

- (uint64_t)mf_isSMIMEError
{
  v2 = [a1 domain];
  v3 = [a1 code];
  v4 = [@"MFMessageErrorDomain" isEqualToString:v2];
  if ((v3 - 1035) < 2)
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
  if ([a1 mf_isUserCancelledError])
  {
    return 0;
  }

  if ([a1 code] != 1029)
  {
    return 1;
  }

  v3 = [a1 domain];
  v4 = [@"MFMessageErrorDomain" isEqualToString:v3];

  return v4 ^ 1u;
}

- (id)mf_moreInfo
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"_MFMoreInfo"];

  return v2;
}

- (id)mf_shortDescription
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"_MFShortDescription"];

  return v2;
}

- (BOOL)mf_shouldFailDownload
{
  v2 = [a1 domain];
  if ([@"MFMessageErrorDomain" isEqualToString:v2])
  {
    v3 = [a1 code] != 1036 && objc_msgSend(a1, "code") != 1035;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end