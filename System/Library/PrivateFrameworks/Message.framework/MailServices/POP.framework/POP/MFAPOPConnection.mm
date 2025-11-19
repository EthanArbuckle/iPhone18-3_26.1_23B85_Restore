@interface MFAPOPConnection
- (BOOL)authenticateUsingAccount:(id)a3;
@end

@implementation MFAPOPConnection

- (BOOL)authenticateUsingAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->super._apopTimeStamp)
  {
    v6 = [v4 username];
    v7 = [v5 password];
    v8 = [v7 dataUsingEncoding:4];

    v9 = [(MFPOP3Connection *)self _apopWithUsername:v6 password:v8];
    v10 = v9 == 0;
    if (v9)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = MFLookupLocalizedString();
      v13 = [v5 hostname];
      v14 = [v11 stringWithFormat:v12, v13];

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
    v20 = [objc_opt_class() accountTypeString];
    v21 = [v5 hostname];
    v22 = [v5 preferredAuthScheme];
    v23 = [v22 humanReadableName];
    v6 = [v18 stringWithFormat:v19, v20, v21, v23];

    v17 = [MEMORY[0x277D28200] errorWithDomain:*MEMORY[0x277D281D8] code:1034 localizedDescription:v6];
    v10 = 0;
  }

  if (v17)
  {
    v24 = [MEMORY[0x277D281F0] currentMonitor];
    [v24 setError:v17];
  }

  return v10;
}

@end