@interface MICodeSigningInfo
+ (BOOL)getValue:(id *)value forEntitlement:(id)entitlement fromProcessWithAuditToken:(id *)token error:(id *)error;
+ (id)signingIdentifierForAuditToken:(id *)token error:(id *)error;
- (MICodeSigningInfo)initWithDictionaryRepresentation:(id)representation fromSource:(unint64_t)source;
- (MICodeSigningInfo)initWithSignerIdentity:(id)identity signerOrganization:(id)organization codeInfoIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier signatureVersion:(id)version entitlements:(id)entitlements signerType:(unint64_t)type profileType:(unint64_t)self0 signingInfoSource:(unint64_t)self1 launchWarningData:(id)self2;
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

- (MICodeSigningInfo)initWithSignerIdentity:(id)identity signerOrganization:(id)organization codeInfoIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier signatureVersion:(id)version entitlements:(id)entitlements signerType:(unint64_t)type profileType:(unint64_t)self0 signingInfoSource:(unint64_t)self1 launchWarningData:(id)self2
{
  identityCopy = identity;
  organizationCopy = organization;
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  versionCopy = version;
  entitlementsCopy = entitlements;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = MICodeSigningInfo;
  v22 = [(MICodeSigningInfo *)&v29 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_signerIdentity, identity);
    objc_storeStrong(&v23->_signerOrganization, organization);
    objc_storeStrong(&v23->_codeInfoIdentifier, identifier);
    objc_storeStrong(&v23->_teamIdentifier, teamIdentifier);
    objc_storeStrong(&v23->_signatureVersion, version);
    objc_storeStrong(&v23->_entitlements, entitlements);
    v23->_profileValidationType = profileType;
    v23->_signingInfoSource = source;
    v23->_codeSignerType = type;
    objc_storeStrong(&v23->_launchWarningData, data);
  }

  return v23;
}

- (MICodeSigningInfo)initWithDictionaryRepresentation:(id)representation fromSource:(unint64_t)source
{
  representationCopy = representation;
  objc_opt_class();
  v7 = representationCopy;
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

  unsignedIntegerValue = [v11 unsignedIntegerValue];
  if (source)
  {
    sourceCopy = source;
  }

  else
  {
    sourceCopy = unsignedIntegerValue;
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
    unsignedIntegerValue2 = [v17 unsignedIntegerValue];
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
      unsignedIntegerValue2 = 1;
    }

    else
    {
      unsignedIntegerValue2 = v23;
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
    unsignedIntegerValue3 = [v27 unsignedIntegerValue];
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
        unsignedIntegerValue3 = 2;
      }

      else
      {
        v33 = [v24 objectForKeyedSubscript:@"ValidatedByFreeProfile"];
        v34 = MIBooleanValue(v33, 0);

        if (v34)
        {
          unsignedIntegerValue3 = 3;
        }

        else
        {
          unsignedIntegerValue3 = 4;
        }
      }
    }

    else
    {
      unsignedIntegerValue3 = 1;
    }
  }

  if (unsignedIntegerValue2 == 3 && unsignedIntegerValue3 == 1)
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
  selfCopy = self;
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

  v44 = unsignedIntegerValue3;
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

  v35 = [(MICodeSigningInfo *)selfCopy initWithSignerIdentity:v62 signerOrganization:v60 codeInfoIdentifier:v58 teamIdentifier:v56 signatureVersion:v47 entitlements:v50 signerType:unsignedIntegerValue2 profileType:v44 signingInfoSource:sourceCopy launchWarningData:v53];
  self = v35;

LABEL_64:
  return v35;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  entitlements = [(MICodeSigningInfo *)self entitlements];

  if (entitlements)
  {
    entitlements2 = [(MICodeSigningInfo *)self entitlements];
    [v3 setObject:entitlements2 forKeyedSubscript:@"com.apple.MobileContainerManager.Entitlements"];
  }

  signerIdentity = [(MICodeSigningInfo *)self signerIdentity];

  if (signerIdentity)
  {
    signerIdentity2 = [(MICodeSigningInfo *)self signerIdentity];
    [v3 setObject:signerIdentity2 forKeyedSubscript:@"SignerIdentity"];
  }

  signerOrganization = [(MICodeSigningInfo *)self signerOrganization];

  if (signerOrganization)
  {
    signerOrganization2 = [(MICodeSigningInfo *)self signerOrganization];
    [v3 setObject:signerOrganization2 forKeyedSubscript:@"SignerOrganization"];
  }

  codeInfoIdentifier = [(MICodeSigningInfo *)self codeInfoIdentifier];

  if (codeInfoIdentifier)
  {
    codeInfoIdentifier2 = [(MICodeSigningInfo *)self codeInfoIdentifier];
    [v3 setObject:codeInfoIdentifier2 forKeyedSubscript:@"CodeInfoIdentifier"];
  }

  teamIdentifier = [(MICodeSigningInfo *)self teamIdentifier];

  if (teamIdentifier)
  {
    teamIdentifier2 = [(MICodeSigningInfo *)self teamIdentifier];
    [v3 setObject:teamIdentifier2 forKeyedSubscript:@"TeamIdentifier"];
  }

  signatureVersion = [(MICodeSigningInfo *)self signatureVersion];

  if (signatureVersion)
  {
    signatureVersion2 = [(MICodeSigningInfo *)self signatureVersion];
    [v3 setObject:signatureVersion2 forKeyedSubscript:@"SignatureVersion"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MICodeSigningInfo profileValidationType](self, "profileValidationType")}];
  [v3 setObject:v16 forKeyedSubscript:@"ProfileType"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MICodeSigningInfo codeSignerType](self, "codeSignerType")}];
  [v3 setObject:v17 forKeyedSubscript:@"CodeSignerType"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MICodeSigningInfo signingInfoSource](self, "signingInfoSource")}];
  [v3 setObject:v18 forKeyedSubscript:@"SigningInfoSource"];

  launchWarningData = [(MICodeSigningInfo *)self launchWarningData];
  [v3 setObject:launchWarningData forKeyedSubscript:@"LaunchWarningData"];

  v20 = [v3 copy];

  return v20;
}

+ (id)signingIdentifierForAuditToken:(id *)token error:(id *)error
{
  error = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &token);
  if (!v8)
  {
    v17 = *&token->var0[4];
    *token.val = *token->var0;
    *&token.val[4] = v17;
    v18 = audit_token_to_pid(&token);
    errorCopy = _CreateAndLogError("+[MICodeSigningInfo signingIdentifierForAuditToken:error:]", 197, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to create SecTask from audit token for pid %d", v19, v18);
    v11 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = v8;
  v10 = SecTaskCopySigningIdentifier(v8, &error);
  v11 = v10;
  errorCopy = error;
  if (error)
  {
    error = 0;
  }

  if (!v10)
  {
    v13 = *&token->var0[4];
    *token.val = *token->var0;
    *&token.val[4] = v13;
    v14 = audit_token_to_pid(&token);
    v16 = _CreateAndLogError("+[MICodeSigningInfo signingIdentifierForAuditToken:error:]", 209, @"MIInstallerErrorDomain", 4, errorCopy, 0, @"Failed to get signing identifier from SecTask for pid %d", v15, v14);

    errorCopy = v16;
  }

  CFRelease(v9);
  if (error)
  {
LABEL_9:
    if (!v11)
    {
      v20 = errorCopy;
      *error = errorCopy;
    }
  }

LABEL_11:

  return v11;
}

+ (BOOL)getValue:(id *)value forEntitlement:(id)entitlement fromProcessWithAuditToken:(id *)token error:(id *)error
{
  entitlementCopy = entitlement;
  error = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v11;
  v12 = SecTaskCreateWithAuditToken(v10, &token);
  if (v12)
  {
    v13 = v12;
    v14 = SecTaskCopyValueForEntitlement(v12, entitlementCopy, &error);
    v15 = v14;
    errorCopy = error;
    if (error && (error = 0, !v14))
    {
      v21 = *&token->var0[4];
      *token.val = *token->var0;
      *&token.val[4] = v21;
      v22 = audit_token_to_pid(&token);
      v24 = _CreateAndLogError("+[MICodeSigningInfo getValue:forEntitlement:fromProcessWithAuditToken:error:]", 245, @"MIInstallerErrorDomain", 4, errorCopy, 0, @"Failed to get signing identifier from SecTask for pid %d", v23, v22);

      v17 = 0;
      v15 = 0;
      errorCopy = v24;
    }

    else
    {
      v17 = 1;
    }

    CFRelease(v13);
    if (!error)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *&token->var0[4];
    *token.val = *token->var0;
    *&token.val[4] = v18;
    v19 = audit_token_to_pid(&token);
    errorCopy = _CreateAndLogError("+[MICodeSigningInfo getValue:forEntitlement:fromProcessWithAuditToken:error:]", 232, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to create SecTask from audit token for pid %d", v20, v19);
    v15 = 0;
    v17 = 0;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  if (!v17)
  {
    v25 = errorCopy;
    *error = errorCopy;
  }

LABEL_11:
  v26 = !v17;
  if (!value)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    v27 = v15;
    *value = v15;
  }

  return v17;
}

@end