@interface MICodeSigningInfo
+ (BOOL)getValue:(id *)a3 forEntitlement:(id)a4 fromProcessWithAuditToken:(id *)a5 error:(id *)a6;
+ (id)signingIdentifierForAuditToken:(id *)a3 error:(id *)a4;
- (MICodeSigningInfo)initWithDictionaryRepresentation:(id)a3 fromSource:(unint64_t)a4;
- (MICodeSigningInfo)initWithSignerIdentity:(id)a3 signerOrganization:(id)a4 codeInfoIdentifier:(id)a5 teamIdentifier:(id)a6 signatureVersion:(id)a7 entitlements:(id)a8 signerType:(unint64_t)a9 profileType:(unint64_t)a10 signingInfoSource:(unint64_t)a11 launchWarningData:(id)a12;
- (NSDictionary)dictionaryRepresentation;
- (id)initForTesting;
@end

@implementation MICodeSigningInfo

- (id)initForTesting
{
  v3.receiver = self;
  v3.super_class = MICodeSigningInfo;
  return [(MICodeSigningInfo *)&v3 init];
}

- (MICodeSigningInfo)initWithSignerIdentity:(id)a3 signerOrganization:(id)a4 codeInfoIdentifier:(id)a5 teamIdentifier:(id)a6 signatureVersion:(id)a7 entitlements:(id)a8 signerType:(unint64_t)a9 profileType:(unint64_t)a10 signingInfoSource:(unint64_t)a11 launchWarningData:(id)a12
{
  v19 = a3;
  v20 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v21 = a12;
  v29.receiver = self;
  v29.super_class = MICodeSigningInfo;
  v22 = [(MICodeSigningInfo *)&v29 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_signerIdentity, a3);
    objc_storeStrong(&v23->_signerOrganization, a4);
    objc_storeStrong(&v23->_codeInfoIdentifier, a5);
    objc_storeStrong(&v23->_teamIdentifier, a6);
    objc_storeStrong(&v23->_signatureVersion, a7);
    objc_storeStrong(&v23->_entitlements, a8);
    v23->_profileValidationType = a10;
    v23->_signingInfoSource = a11;
    v23->_codeSignerType = a9;
    objc_storeStrong(&v23->_launchWarningData, a12);
  }

  return v23;
}

- (MICodeSigningInfo)initWithDictionaryRepresentation:(id)a3 fromSource:(unint64_t)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_41;
    }

LABEL_40:
    MOLogWrite();
LABEL_41:
    v35 = 0;
    goto LABEL_64;
  }

  v9 = [v7 objectForKeyedSubscript:@"SigningInfoSource"];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 unsignedIntegerValue];
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  v14 = v7;
  v15 = [v14 objectForKeyedSubscript:@"CodeSignerType"];
  objc_opt_class();
  v16 = v15;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = [v17 unsignedIntegerValue];
  }

  else
  {
    v19 = [v14 objectForKeyedSubscript:@"AdHocSigned"];
    v20 = MIBooleanValue(v19, 0);

    v21 = [v14 objectForKeyedSubscript:@"ValidatedByProfile"];
    v22 = MIBooleanValue(v21, 0);

    v23 = 2;
    if (v22)
    {
      v23 = 3;
    }

    if (v20)
    {
      v18 = 1;
    }

    else
    {
      v18 = v23;
    }
  }

  v24 = v14;
  v25 = [v24 objectForKeyedSubscript:@"ProfileType"];
  objc_opt_class();
  v26 = v25;
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v28 = [v27 unsignedIntegerValue];
  }

  else
  {
    v29 = [v24 objectForKeyedSubscript:@"ValidatedByProfile"];
    v30 = MIBooleanValue(v29, 0);

    if (v30)
    {
      v31 = [v24 objectForKeyedSubscript:@"ValidatedByUPP"];
      v32 = MIBooleanValue(v31, 0);

      if (v32)
      {
        v28 = 2;
      }

      else
      {
        v33 = [v24 objectForKeyedSubscript:@"ValidatedByFreeProfile"];
        v34 = MIBooleanValue(v33, 0);

        if (v34)
        {
          v28 = 3;
        }

        else
        {
          v28 = 4;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  if (v18 == 3 && v28 == 1)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v36 = [v24 objectForKeyedSubscript:@"SignerIdentity"];
  objc_opt_class();
  v37 = v36;
  if (objc_opt_isKindOfClass())
  {
    v62 = v37;
  }

  else
  {
    v62 = 0;
  }

  v63 = v37;

  v38 = [v24 objectForKeyedSubscript:@"SignerOrganization"];
  objc_opt_class();
  v39 = v38;
  if (objc_opt_isKindOfClass())
  {
    v60 = v39;
  }

  else
  {
    v60 = 0;
  }

  v61 = v39;

  v40 = [v24 objectForKeyedSubscript:@"CodeInfoIdentifier"];
  objc_opt_class();
  v41 = v40;
  v64 = self;
  if (objc_opt_isKindOfClass())
  {
    v58 = v41;
  }

  else
  {
    v58 = 0;
  }

  v59 = v41;

  v42 = [v24 objectForKeyedSubscript:@"TeamIdentifier"];
  objc_opt_class();
  v43 = v42;
  if (objc_opt_isKindOfClass())
  {
    v56 = v43;
  }

  else
  {
    v56 = 0;
  }

  v44 = v28;
  v57 = v43;

  v45 = [v24 objectForKeyedSubscript:@"SignatureVersion"];
  objc_opt_class();
  v46 = v45;
  if (objc_opt_isKindOfClass())
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = [v24 objectForKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];
  objc_opt_class();
  v49 = v48;
  if (objc_opt_isKindOfClass())
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  v51 = [v24 objectForKeyedSubscript:@"LaunchWarningData"];
  objc_opt_class();
  v52 = v51;
  v55 = v46;
  if (objc_opt_isKindOfClass())
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v35 = [(MICodeSigningInfo *)v64 initWithSignerIdentity:v62 signerOrganization:v60 codeInfoIdentifier:v58 teamIdentifier:v56 signatureVersion:v47 entitlements:v50 signerType:v18 profileType:v44 signingInfoSource:v13 launchWarningData:v53];
  self = v35;

LABEL_64:
  return v35;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(MICodeSigningInfo *)self entitlements];

  if (v4)
  {
    v5 = [(MICodeSigningInfo *)self entitlements];
    [v3 setObject:v5 forKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];
  }

  v6 = [(MICodeSigningInfo *)self signerIdentity];

  if (v6)
  {
    v7 = [(MICodeSigningInfo *)self signerIdentity];
    [v3 setObject:v7 forKeyedSubscript:@"SignerIdentity"];
  }

  v8 = [(MICodeSigningInfo *)self signerOrganization];

  if (v8)
  {
    v9 = [(MICodeSigningInfo *)self signerOrganization];
    [v3 setObject:v9 forKeyedSubscript:@"SignerOrganization"];
  }

  v10 = [(MICodeSigningInfo *)self codeInfoIdentifier];

  if (v10)
  {
    v11 = [(MICodeSigningInfo *)self codeInfoIdentifier];
    [v3 setObject:v11 forKeyedSubscript:@"CodeInfoIdentifier"];
  }

  v12 = [(MICodeSigningInfo *)self teamIdentifier];

  if (v12)
  {
    v13 = [(MICodeSigningInfo *)self teamIdentifier];
    [v3 setObject:v13 forKeyedSubscript:@"TeamIdentifier"];
  }

  v14 = [(MICodeSigningInfo *)self signatureVersion];

  if (v14)
  {
    v15 = [(MICodeSigningInfo *)self signatureVersion];
    [v3 setObject:v15 forKeyedSubscript:@"SignatureVersion"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MICodeSigningInfo profileValidationType](self, "profileValidationType")}];
  [v3 setObject:v16 forKeyedSubscript:@"ProfileType"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MICodeSigningInfo codeSignerType](self, "codeSignerType")}];
  [v3 setObject:v17 forKeyedSubscript:@"CodeSignerType"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MICodeSigningInfo signingInfoSource](self, "signingInfoSource")}];
  [v3 setObject:v18 forKeyedSubscript:@"SigningInfoSource"];

  v19 = [(MICodeSigningInfo *)self launchWarningData];
  [v3 setObject:v19 forKeyedSubscript:@"LaunchWarningData"];

  v20 = [v3 copy];

  return v20;
}

+ (id)signingIdentifierForAuditToken:(id *)a3 error:(id *)a4
{
  error = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &token);
  if (!v8)
  {
    v17 = *&a3->var0[4];
    *token.val = *a3->var0;
    *&token.val[4] = v17;
    v18 = audit_token_to_pid(&token);
    v12 = _CreateAndLogError("+[MICodeSigningInfo signingIdentifierForAuditToken:error:]", 197, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to create SecTask from audit token for pid %d", v19, v18);
    v11 = 0;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = v8;
  v10 = SecTaskCopySigningIdentifier(v8, &error);
  v11 = v10;
  v12 = error;
  if (error)
  {
    error = 0;
  }

  if (!v10)
  {
    v13 = *&a3->var0[4];
    *token.val = *a3->var0;
    *&token.val[4] = v13;
    v14 = audit_token_to_pid(&token);
    v16 = _CreateAndLogError("+[MICodeSigningInfo signingIdentifierForAuditToken:error:]", 209, @"MIInstallerErrorDomain", 4, v12, 0, @"Failed to get signing identifier from SecTask for pid %d", v15, v14);

    v12 = v16;
  }

  CFRelease(v9);
  if (a4)
  {
LABEL_9:
    if (!v11)
    {
      v20 = v12;
      *a4 = v12;
    }
  }

LABEL_11:

  return v11;
}

+ (BOOL)getValue:(id *)a3 forEntitlement:(id)a4 fromProcessWithAuditToken:(id *)a5 error:(id *)a6
{
  v9 = a4;
  error = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = *&a5->var0[4];
  *token.val = *a5->var0;
  *&token.val[4] = v11;
  v12 = SecTaskCreateWithAuditToken(v10, &token);
  if (v12)
  {
    v13 = v12;
    v14 = SecTaskCopyValueForEntitlement(v12, v9, &error);
    v15 = v14;
    v16 = error;
    if (error && (error = 0, !v14))
    {
      v21 = *&a5->var0[4];
      *token.val = *a5->var0;
      *&token.val[4] = v21;
      v22 = audit_token_to_pid(&token);
      v24 = _CreateAndLogError("+[MICodeSigningInfo getValue:forEntitlement:fromProcessWithAuditToken:error:]", 245, @"MIInstallerErrorDomain", 4, v16, 0, @"Failed to get signing identifier from SecTask for pid %d", v23, v22);

      v17 = 0;
      v15 = 0;
      v16 = v24;
    }

    else
    {
      v17 = 1;
    }

    CFRelease(v13);
    if (!a6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *&a5->var0[4];
    *token.val = *a5->var0;
    *&token.val[4] = v18;
    v19 = audit_token_to_pid(&token);
    v16 = _CreateAndLogError("+[MICodeSigningInfo getValue:forEntitlement:fromProcessWithAuditToken:error:]", 232, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to create SecTask from audit token for pid %d", v20, v19);
    v15 = 0;
    v17 = 0;
    if (!a6)
    {
      goto LABEL_11;
    }
  }

  if (!v17)
  {
    v25 = v16;
    *a6 = v16;
  }

LABEL_11:
  v26 = !v17;
  if (!a3)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    v27 = v15;
    *a3 = v15;
  }

  return v17;
}

@end