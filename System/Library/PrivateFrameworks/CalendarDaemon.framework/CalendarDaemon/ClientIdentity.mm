@interface ClientIdentity
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (ClientIdentity)initWithAuditToken:(id *)a3;
- (ClientIdentity)initWithCoder:(id)a3;
- (id)description;
@end

@implementation ClientIdentity

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[2].var0[4];
  *retstr->var0 = *self[2].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (ClientIdentity)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v5 = a3;
  v6 = [a3 decodeBytesForKey:@"auditToken" returnedLength:&v12];
  if (v12 == 32)
  {
    v7 = v6[1];
    v13 = *v6;
    v14 = v7;
    v11[0] = v13;
    v11[1] = v7;
    self = [(ClientIdentity *)self initWithAuditToken:v11];
    v8 = self;
  }

  else
  {
    NSLog(&cfstr_ErrorInvalidAu.isa);
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (ClientIdentity)initWithAuditToken:(id *)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = ClientIdentity;
  v4 = [(ClientIdentity *)&v42 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3->var0[4];
    *v4->_auditToken.val = *a3->var0;
    *&v4->_auditToken.val[4] = v6;
    pidp = -1;
    v7 = *&a3->var0[4];
    *atoken.val = *a3->var0;
    *&atoken.val[4] = v7;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    v8 = pidp;
    v5->_pid = pidp;
    LOBYTE(atoken.val[0]) = 0;
    proc_name(v8, &atoken, 0x400u);
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:&atoken encoding:4];
    clientName = v5->_clientName;
    v5->_clientName = v9;

    v40[1] = 0;
    v11 = *&a3->var0[4];
    buffer = *a3->var0;
    v46 = v11;
    CPCopyBundleIdentifierAndTeamFromAuditToken();
    v40[0] = 0;
    v12 = *&a3->var0[4];
    buffer = *a3->var0;
    v46 = v12;
    v13 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:&buffer error:v40];
    v14 = v40[0];
    v15 = [v13 teamIdentifier];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v15;

    v17 = [v13 localizedName];
    localizedName = v5->_localizedName;
    v5->_localizedName = v17;

    v19 = [v13 bundleIdentifier];
    bundleIdentifierShared = v5->_bundleIdentifierShared;
    v5->_bundleIdentifierShared = v19;

    if (!v5->_bundleIdentifierShared)
    {
      bzero(&buffer, 0x400uLL);
      v21 = proc_pidpath(pidp, &buffer, 0x400u);
      if (v21 <= 0)
      {
        v28 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v44 = pidp;
          _os_log_impl(&dword_22430B000, v28, OS_LOG_TYPE_ERROR, "Could not find path of process with PID: [%d]", buf, 8u);
        }
      }

      else
      {
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&buffer length:v21 encoding:4];
        if (v22)
        {
          v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v22];
          v24 = _CFBundleCopyBundleURLForExecutableURL();
          v25 = [MEMORY[0x277CCA8D8] bundleWithURL:v24];
          v26 = [v25 bundleIdentifier];
          v27 = v5->_bundleIdentifierShared;
          v5->_bundleIdentifierShared = v26;
        }

        else
        {
          v29 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v44 = pidp;
            _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_ERROR, "Could not generate path string for process with pid: [%d]", buf, 8u);
          }
        }
      }

      if (!v5->_bundleIdentifierShared)
      {
        v30 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
        {
          pid = v5->_pid;
          LODWORD(buffer) = 67109120;
          DWORD1(buffer) = pid;
          _os_log_impl(&dword_22430B000, v30, OS_LOG_TYPE_DEBUG, "Could not get bundle identifier for client (pid %d).", &buffer, 8u);
        }
      }
    }

    if (!v5->_teamIdentifier)
    {
      v32 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v33 = v5->_pid;
        LODWORD(buffer) = 67109120;
        DWORD1(buffer) = v33;
        _os_log_impl(&dword_22430B000, v32, OS_LOG_TYPE_DEBUG, "Could not get team identifier for client (pid %d).", &buffer, 8u);
      }
    }

    if (!v5->_localizedName)
    {
      v34 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v35 = v5->_pid;
        LODWORD(buffer) = 67109120;
        DWORD1(buffer) = v35;
        _os_log_impl(&dword_22430B000, v34, OS_LOG_TYPE_DEBUG, "Could not get localized name for client (pid %d).", &buffer, 8u);
      }
    }

    if (!v5->_applicationIdentifier)
    {
      v36 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v37 = v5->_pid;
        LODWORD(buffer) = 67109120;
        DWORD1(buffer) = v37;
        _os_log_impl(&dword_22430B000, v36, OS_LOG_TYPE_DEBUG, "Could not get application identifier for client (pid %d).", &buffer, 8u);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(ClientIdentity *)self auditToken];
    memset(v12, 0, sizeof(v12));
    if (v5)
    {
      [v5 auditToken];
    }

    if (LODWORD(v12[2]) == LODWORD(v12[0]))
    {
      v6 = 0;
      do
      {
        v7 = v6;
        if (v6 == 7)
        {
          break;
        }

        v8 = *(&v12[2] + v6 + 1);
        v9 = *(v12 + ++v6);
      }

      while (v8 == v9);
      v10 = v7 > 6;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v11.receiver = self;
  v11.super_class = ClientIdentity;
  v4 = [(ClientIdentity *)&v11 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"bundleIdentifier" withString:self->_bundleIdentifierShared];
  v6 = [(ClientIdentity *)self applicationIdentifier];
  [v5 setKey:@"applicationIdentifier" withString:v6];

  v7 = [(ClientIdentity *)self teamIdentifier];
  [v5 setKey:@"teamIdentifier" withString:v7];

  v8 = [(ClientIdentity *)self clientName];
  [v5 setKey:@"clientName" withString:v8];

  [v5 setKey:@"pid" withProcessID:{-[ClientIdentity pid](self, "pid")}];
  v9 = [v5 build];

  return v9;
}

@end