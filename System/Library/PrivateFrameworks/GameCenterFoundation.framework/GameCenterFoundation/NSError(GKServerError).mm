@interface NSError(GKServerError)
- (uint64_t)gkIsServerUnauthenticatedError;
- (uint64_t)gkRequiresCredentialRenewal;
- (uint64_t)isGKCompoundError;
@end

@implementation NSError(GKServerError)

- (uint64_t)isGKCompoundError
{
  if ([self code] != 5020)
  {
    return 0;
  }

  if ([self isGKServerError])
  {
    return 1;
  }

  return [self isGKClientError];
}

- (uint64_t)gkIsServerUnauthenticatedError
{
  if ([self code] != 5000)
  {
    return 0;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:@"GKServerErrorDomain"];

  return v3;
}

- (uint64_t)gkRequiresCredentialRenewal
{
  if (![self gkIsUnauthenticatedError])
  {
    return 0;
  }

  userInfo = [self userInfo];
  v3 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

  if (!v3)
  {
    return 0;
  }

  gkIsServerUnauthenticatedError = [v3 gkIsServerUnauthenticatedError];

  return gkIsServerUnauthenticatedError;
}

@end