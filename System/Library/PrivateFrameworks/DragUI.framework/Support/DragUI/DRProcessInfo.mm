@interface DRProcessInfo
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isAppleProcess;
- (BOOL)isSameProcessAsSource:(id)a3;
- (BOOL)isSameTeamAsSource:(id)a3;
- (DRProcessInfo)initWithAuditToken:(id *)a3;
- (void)setAuditToken:(id *)a3;
@end

@implementation DRProcessInfo

- (DRProcessInfo)initWithAuditToken:(id *)a3
{
  v16.receiver = self;
  v16.super_class = DRProcessInfo;
  v4 = [(DRProcessInfo *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3->var0[4];
    v14 = *a3->var0;
    v15 = v6;
    [(DRProcessInfo *)v4 setAuditToken:&v14];
    v7 = *&a3->var0[4];
    v14 = *a3->var0;
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

- (BOOL)isSameTeamAsSource:(id)a3
{
  v5 = a3;
  v6 = [v5 teamID];
  if (!v6)
  {
    v3 = [(DRProcessInfo *)self teamID];
    if (!v3)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v7 = [v5 teamID];
  v8 = [(DRProcessInfo *)self teamID];
  v9 = [v7 isEqualToString:v8];

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (BOOL)isSameProcessAsSource:(id)a3
{
  v4 = a3;
  if ([(DRProcessInfo *)self isSameTeamAsSource:v4])
  {
    v5 = [v4 bundleID];
    v6 = [(DRProcessInfo *)self bundleID];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAppleProcess
{
  v2 = [(DRProcessInfo *)self teamID];
  v3 = v2 == 0;

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_auditToken.val = *a3->var0;
  *&self->_auditToken.val[4] = v3;
}

@end