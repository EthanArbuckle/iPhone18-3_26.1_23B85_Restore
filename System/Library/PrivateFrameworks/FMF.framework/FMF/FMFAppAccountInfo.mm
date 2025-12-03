@interface FMFAppAccountInfo
- (id)description;
@end

@implementation FMFAppAccountInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  dsid = [(FMFAppAccountInfo *)self dsid];
  username = [(FMFAppAccountInfo *)self username];
  appAuthToken = [(FMFAppAccountInfo *)self appAuthToken];
  if (appAuthToken)
  {
    v7 = @"(not-nil)";
  }

  else
  {
    v7 = @"(nil)";
  }

  appAuthTokenStatus = [(FMFAppAccountInfo *)self appAuthTokenStatus];
  appServerHost = [(FMFAppAccountInfo *)self appServerHost];
  legacyDsid = [(FMFAppAccountInfo *)self legacyDsid];
  legacyUsername = [(FMFAppAccountInfo *)self legacyUsername];
  v12 = [v3 stringWithFormat:@"FMFAppAccountInfo(0x%lx) %@, %@, %@, %ld, %@, %@, %@", self, dsid, username, v7, appAuthTokenStatus, appServerHost, legacyDsid, legacyUsername];

  return v12;
}

@end