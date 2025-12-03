@interface DRProcessInfo
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isAppleProcess;
- (BOOL)isSameProcessAsSource:(id)source;
- (BOOL)isSameTeamAsSource:(id)source;
- (DRProcessInfo)initWithAuditToken:(id *)token;
- (void)setAuditToken:(id *)token;
@end

@implementation DRProcessInfo

- (DRProcessInfo)initWithAuditToken:(id *)token
{
  v16.receiver = self;
  v16.super_class = DRProcessInfo;
  v4 = [(DRProcessInfo *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&token->var0[4];
    v14 = *token->var0;
    v15 = v6;
    [(DRProcessInfo *)v4 setAuditToken:&v14];
    v7 = *&token->var0[4];
    v14 = *token->var0;
    v15 = v7;
    if (CPCopyBundleIdentifierAndTeamFromAuditToken())
    {
      teamID = v5->_teamID;
      v5->_teamID = 0;

      bundleID = v5->_bundleID;
      v5->_bundleID = 0;
    }

    else
    {
      LOBYTE(v14) = 0;
      v10 = CPCopyBundleIdentifierFromAuditToken();
      v11 = v5->_bundleID;
      v5->_bundleID = v10;

      if (v14)
      {
        v12 = DRLogTarget();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10002F768(&v5->_bundleID, v12);
        }
      }
    }
  }

  return v5;
}

- (BOOL)isSameTeamAsSource:(id)source
{
  sourceCopy = source;
  teamID = [sourceCopy teamID];
  if (!teamID)
  {
    teamID2 = [(DRProcessInfo *)self teamID];
    if (!teamID2)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  teamID3 = [sourceCopy teamID];
  teamID4 = [(DRProcessInfo *)self teamID];
  v9 = [teamID3 isEqualToString:teamID4];

  if (!teamID)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (BOOL)isSameProcessAsSource:(id)source
{
  sourceCopy = source;
  if ([(DRProcessInfo *)self isSameTeamAsSource:sourceCopy])
  {
    bundleID = [sourceCopy bundleID];
    bundleID2 = [(DRProcessInfo *)self bundleID];
    v7 = [bundleID isEqualToString:bundleID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAppleProcess
{
  teamID = [(DRProcessInfo *)self teamID];
  v3 = teamID == 0;

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_auditToken.val = *token->var0;
  *&self->_auditToken.val[4] = v3;
}

@end