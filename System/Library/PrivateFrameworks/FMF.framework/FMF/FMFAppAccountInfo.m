@interface FMFAppAccountInfo
- (id)description;
@end

@implementation FMFAppAccountInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FMFAppAccountInfo *)self dsid];
  v5 = [(FMFAppAccountInfo *)self username];
  v6 = [(FMFAppAccountInfo *)self appAuthToken];
  if (v6)
  {
    v7 = @"(not-nil)";
  }

  else
  {
    v7 = @"(nil)";
  }

  v8 = [(FMFAppAccountInfo *)self appAuthTokenStatus];
  v9 = [(FMFAppAccountInfo *)self appServerHost];
  v10 = [(FMFAppAccountInfo *)self legacyDsid];
  v11 = [(FMFAppAccountInfo *)self legacyUsername];
  v12 = [v3 stringWithFormat:@"FMFAppAccountInfo(0x%lx) %@, %@, %@, %ld, %@, %@, %@", self, v4, v5, v7, v8, v9, v10, v11];

  return v12;
}

@end