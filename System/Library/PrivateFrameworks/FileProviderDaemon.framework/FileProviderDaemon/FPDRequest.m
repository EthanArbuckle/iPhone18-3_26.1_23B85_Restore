@interface FPDRequest
+ (id)UUIDForSystemExecutablePath:(id)a3;
+ (id)fixupProcessName:(id)a3;
+ (id)requestForXPCConnection:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)providedExtent;
- ($0AC6E346AE4835514AAA8AC86D8F4844)requestedExtent;
- ($115C4C562B26FF47E01F9F4EA65B5887)audit_token;
- (BOOL)isPermittedToAttributeRequestingExecutable:(id)a3;
- (FPDRequest)initWithPID:(int)a3 auditToken:(id *)a4 fromPOSIX:(BOOL)a5 withExtent:(id)a6;
- (void)setAudit_token:(id *)a3;
@end

@implementation FPDRequest

+ (id)requestForXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 processIdentifier];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = [a1 requestForPID:v5 auditToken:v8 fromPOSIX:0 kernelFileInfo:0];

  return v6;
}

- (FPDRequest)initWithPID:(int)a3 auditToken:(id *)a4 fromPOSIX:(BOOL)a5 withExtent:(id)a6
{
  v6 = MEMORY[0x1EEE9AC00](self);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v37 = *MEMORY[0x1E69E9840];
  v34.receiver = v6;
  v34.super_class = FPDRequest;
  v17 = [(FPDRequest *)&v34 init];
  v18 = v17;
  if (v17)
  {
    v17->_fromPOSIX = v12;
    v19 = [MEMORY[0x1E695DF00] now];
    date = v18->_date;
    v18->_date = v19;

    v18->_qos = qos_class_self();
    *&v18->_selectedForMaterialization = 0;
    v18->_requestedExtent.location = v10;
    v18->_requestedExtent.length = v8;
    v18->_providedExtent.location = -1;
    v18->_providedExtent.length = -1;
    if (!v16)
    {
      v16 = getpid();
    }

    v18->_pid = v16;
    if (v16 > -1001)
    {
      if ((v16 & 0x80000000) == 0)
      {
        memset(buffer, 0, sizeof(buffer));
        if ((proc_name(v16, buffer, 0x20u) & 0x80000000) == 0 && LOBYTE(buffer[0]))
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
          processName = v18->_processName;
          v18->_processName = v23;
        }

        bzero(v35, 0x1000uLL);
        if (proc_pidpath(v18->_pid, v35, 0x1000u) < 0 || !v35[0])
        {
          goto LABEL_16;
        }

        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v35];
LABEL_15:
        executablePath = v18->_executablePath;
        v18->_executablePath = v25;

LABEL_16:
        v29 = [FPDRequest fixupProcessName:v18->_processName];
        userProcessName = v18->_userProcessName;
        v18->_userProcessName = v29;

        v31 = *v14;
        *&v18->_audit_token.val[4] = v14[1];
        *v18->_audit_token.val = v31;
        goto LABEL_17;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TestProcess%d", v16];
      v27 = v18->_processName;
      v18->_processName = v26;

      [MEMORY[0x1E696AEC0] stringWithFormat:@"/path/to/TestProcess%d.app", v18->_pid];
    }

    else
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnresponsiveTestProcess%d", v16];
      v22 = v18->_processName;
      v18->_processName = v21;

      [MEMORY[0x1E696AEC0] stringWithFormat:@"/path/to/UnresponsiveTestProcess%d.app", v18->_pid];
    }
    v25 = ;
    goto LABEL_15;
  }

LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)fixupProcessName:(id)a3
{
  v3 = a3;
  if ([@"com.apple.appkit.xpc.openAndSav" isEqualToString:v3])
  {
    v4 = @"Open and Save Panels";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (BOOL)isPermittedToAttributeRequestingExecutable:(id)a3
{
  if ([a3 hasFileProviderAttributionMDMAccess])
  {
    return 1;
  }

  v5 = [objc_opt_class() UUIDForSystemExecutablePath:self->_executablePath];
  v4 = v5 != 0;

  return v4;
}

+ (id)UUIDForSystemExecutablePath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (hardcodedUUIDs_onceToken != -1)
  {
    +[FPDRequest UUIDForSystemExecutablePath:];
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = hardcodedUUIDs_ret;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v3 hasPrefix:{v9, v13}])
        {
          v10 = [v4 objectForKeyedSubscript:v9];

          goto LABEL_16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([v3 hasPrefix:@"/var/containers/Bundle/Application/"] && objc_msgSend(v3, "hasSuffix:", @"/Files.app/Files"))
  {
    v10 = [MEMORY[0x1E6967518] _filesIdentifier];
  }

  else
  {
    v10 = 0;
  }

LABEL_16:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)requestedExtent
{
  length = self->_requestedExtent.length;
  location = self->_requestedExtent.location;
  result.var1 = length;
  result.var0 = location;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)providedExtent
{
  length = self->_providedExtent.length;
  location = self->_providedExtent.location;
  result.var1 = length;
  result.var0 = location;
  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)audit_token
{
  v3 = *&self[3].var0[2];
  *retstr->var0 = *&self[2].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAudit_token:(id *)a3
{
  v3 = *a3->var0;
  *&self->_audit_token.val[4] = *&a3->var0[4];
  *self->_audit_token.val = v3;
}

@end