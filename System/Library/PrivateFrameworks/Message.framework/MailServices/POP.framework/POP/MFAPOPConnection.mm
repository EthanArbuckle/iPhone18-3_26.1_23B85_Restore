@interface MFAPOPConnection
- (BOOL)authenticateUsingAccount:(id)account;
@end

@implementation MFAPOPConnection

- (BOOL)authenticateUsingAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (self->super._apopTimeStamp)
  {
    username = [accountCopy username];
    password = [v5 password];
    v8 = [password dataUsingEncoding:4];

    v9 = [(MFPOP3Connection *)self _apopWithUsername:username password:v8];
    v10 = v9 == 0;
    if (v9)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = MFLookupLocalizedString();
      hostname = [v5 hostname];
      v14 = [v11 stringWithFormat:v12, hostname];

      v15 = MEMORY[0x277D28200];
      v16 = MFLookupLocalizedString();
      v17 = [v15 errorWithDomain:*MEMORY[0x277D281D8] code:1032 localizedDescription:v14 title:v16 userInfo:0];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = MFLookupLocalizedString();
    accountTypeString = [objc_opt_class() accountTypeString];
    hostname2 = [v5 hostname];
    preferredAuthScheme = [v5 preferredAuthScheme];
    humanReadableName = [preferredAuthScheme humanReadableName];
    username = [v18 stringWithFormat:v19, accountTypeString, hostname2, humanReadableName];

    v17 = [MEMORY[0x277D28200] errorWithDomain:*MEMORY[0x277D281D8] code:1034 localizedDescription:username];
    v10 = 0;
  }

  if (v17)
  {
    currentMonitor = [MEMORY[0x277D281F0] currentMonitor];
    [currentMonitor setError:v17];
  }

  return v10;
}

@end