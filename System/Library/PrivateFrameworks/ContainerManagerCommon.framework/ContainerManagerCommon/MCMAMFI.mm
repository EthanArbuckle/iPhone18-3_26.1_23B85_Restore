@interface MCMAMFI
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (Class)lwcrClass;
- (MCMAMFI)initWithAuditToken:(id *)token;
- (id)_encodeRequirement:(id)requirement name:(id)name reason:(unint64_t)reason;
- (id)_encodedQueriesWithContainerConfig:(id)config teamID:(id)d;
- (id)_requirementForProfileValidatedEntitlements;
- (id)_requirementForTeamID:(id)d;
- (id)_requirementForValidationCategory:(id)category;
- (id)_requirementForiOSPlatform;
- (unint64_t)signaturePassesStrictScrutinyForAppGroupEntitlementWithContainerConfig:(id)config teamID:(id)d;
- (void)setLWCRClass:(Class)class;
@end

@implementation MCMAMFI

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *MEMORY[0x1E69E9840];
  v4 = *self[1].var0;
  *retstr->var0 = *&self->var0[4];
  *&retstr->var0[4] = v4;
  return self;
}

- (void)setLWCRClass:(Class)class
{
  v4 = *MEMORY[0x1E69E9840];
  self->_lwcrClass = class;
  v3 = *MEMORY[0x1E69E9840];
}

- (Class)lwcrClass
{
  lwcrClass = self->_lwcrClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];

  return lwcrClass;
}

- (id)_encodedQueriesWithContainerConfig:(id)config teamID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  configCopy = config;
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
  if ([configCopy honorGroupContainerEntitlementForPlatformBinary])
  {
    _requirementForProfileValidatedEntitlements = [(MCMAMFI *)self _requirementForValidationCategory:&unk_1F5A75B20];
    v10 = [(MCMAMFI *)self _encodeRequirement:_requirementForProfileValidatedEntitlements name:@"platform binary" reason:10];
    if (!v10)
    {
      goto LABEL_23;
    }

    v11 = v10;
    [array addObject:v10];
  }

  if ([configCopy honorGroupContainerEntitlementForAppStoreSigned])
  {
    _requirementForProfileValidatedEntitlements = [(MCMAMFI *)self _requirementForValidationCategory:&unk_1F5A75B38];
    v12 = [(MCMAMFI *)self _encodeRequirement:_requirementForProfileValidatedEntitlements name:@"MAS" reason:6];
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = v12;
    [array addObject:v12];
  }

  if ([configCopy honorGroupContainerEntitlementForProfileValidatedEntitlements])
  {
    _requirementForProfileValidatedEntitlements = [(MCMAMFI *)self _requirementForProfileValidatedEntitlements];
    v14 = [(MCMAMFI *)self _encodeRequirement:_requirementForProfileValidatedEntitlements name:@"profile validated entitlements" reason:4];
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v14;
    [array addObject:v14];
  }

  if ([configCopy honorGroupContainerEntitlementForMatchingTeamIDPrefix])
  {
    _requirementForProfileValidatedEntitlements = [(MCMAMFI *)self _requirementForTeamID:dCopy];
    if (_requirementForProfileValidatedEntitlements)
    {
      v16 = [(MCMAMFI *)self _encodeRequirement:_requirementForProfileValidatedEntitlements name:@"team ID prefix" reason:8];
      if (!v16)
      {
        goto LABEL_23;
      }

      v17 = v16;
      [array addObject:v16];
    }
  }

  if ([configCopy honorGroupContainerEntitlementForiPadAppsOnMac])
  {
    _requirementForProfileValidatedEntitlements = [(MCMAMFI *)self _requirementForiOSPlatform];
    v18 = [(MCMAMFI *)self _encodeRequirement:_requirementForProfileValidatedEntitlements name:@"iPad app" reason:11];
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    [array addObject:v18];
  }

  if (![configCopy honorGroupContainerEntitlementForTestFlight])
  {
    goto LABEL_21;
  }

  _requirementForProfileValidatedEntitlements = [(MCMAMFI *)self _requirementForValidationCategory:&unk_1F5A75AF0];
  v20 = [(MCMAMFI *)self _encodeRequirement:_requirementForProfileValidatedEntitlements name:@"TestFlight" reason:7];
  if (v20)
  {
    v21 = v20;
    [array addObject:v20];

LABEL_21:
    if ([array count])
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_23:

  array = _requirementForProfileValidatedEntitlements;
LABEL_24:

  array = 0;
LABEL_25:

  v22 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_encodeRequirement:(id)requirement name:(id)name reason:(unint64_t)reason
{
  v23 = *MEMORY[0x1E69E9840];
  requirementCopy = requirement;
  nameCopy = name;
  v18 = 0;
  v10 = [(objc_class *)[(MCMAMFI *)self lwcrClass] withVersion:1 withConstraintCategory:0 withRequirements:requirementCopy withError:&v18];
  v11 = v18;
  if (v10)
  {
    externalRepresentation = [v10 externalRepresentation];
    v13 = [[MCMAMFIEncodedQuery alloc] initWithLoggingName:nameCopy reason:reason encodedQuery:externalRepresentation];
  }

  else
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = requirementCopy;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not construct LWCR for requirement %@; error = %@", buf, 0x16u);
    }

    externalRepresentation = 0;
    v13 = 0;
  }

  v15 = v13;

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_requirementForProfileValidatedEntitlements
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return &unk_1F5A75A28;
}

- (id)_requirementForiOSPlatform
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return &unk_1F5A759D8;
}

- (id)_requirementForValidationCategory:(id)category
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"validation-category";
  v9[0] = category;
  v3 = MEMORY[0x1E695DF20];
  categoryCopy = category;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_requirementForTeamID:(id)d
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
    v11 = @"$optional";
    v9 = @"team-identifier";
    v3 = MEMORY[0x1E695DF20];
    dCopy2 = d;
    v5 = [v3 dictionaryWithObjects:&dCopy forKeys:&v9 count:1];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (unint64_t)signaturePassesStrictScrutinyForAppGroupEntitlementWithContainerConfig:(id)config teamID:(id)d
{
  v47 = *MEMORY[0x1E69E9840];
  configCopy = config;
  dCopy = d;
  [(MCMAMFI *)self auditToken];
  pid = container_audit_token_get_pid();
  v8 = objc_autoreleasePoolPush();
  if (![(MCMAMFI *)self lwcrClass]|| ([(MCMAMFI *)self _encodedQueriesWithContainerConfig:configCopy teamID:dCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    objc_autoreleasePoolPop(v8);
LABEL_21:
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 67109120;
      v41 = pid;
      _os_log_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEFAULT, "Requestor's signature did not pass strict scrutiny; pid = %d", v40, 8u);
    }

    reason = 1;
    goto LABEL_24;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v26 = v8;
    v27 = dCopy;
    v28 = configCopy;
    v13 = *v44;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        bzero(v40, 0x404uLL);
        [(MCMAMFI *)self auditToken];
        encodedQuery = [v15 encodedQuery];
        [encodedQuery bytes];
        encodedQuery2 = [v15 encodedQuery];
        [encodedQuery2 length];
        v18 = amfi_launch_constraint_matches_process();

        v19 = container_log_handle_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          if (v18)
          {
            v20 = "passed";
          }

          else
          {
            v20 = "insufficient for";
          }

          loggingName = [v15 loggingName];
          *buf = 136316162;
          v31 = v20;
          v32 = 2112;
          v33 = loggingName;
          v34 = 1024;
          v35 = pid;
          v36 = 1024;
          v37 = *v40;
          v38 = 2080;
          v39 = &v41;
          _os_log_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEFAULT, "Signature %s strict scrutiny; test = %@, pid = %d, error = (%u) %s", buf, 0x2Cu);
        }

        if (v18)
        {
          reason = [v15 reason];
          dCopy = v27;
          configCopy = v28;
          v8 = v26;
          goto LABEL_20;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v43 objects:v42 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    dCopy = v27;
    configCopy = v28;
    v8 = v26;
  }

  reason = 1;
LABEL_20:

  objc_autoreleasePoolPop(v8);
  if (reason == 1)
  {
    goto LABEL_21;
  }

LABEL_24:

  v24 = *MEMORY[0x1E69E9840];
  return reason;
}

- (MCMAMFI)initWithAuditToken:(id *)token
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCMAMFI;
  v4 = [(MCMAMFI *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&token->var0[4];
    *v4->_auditToken.val = *token->var0;
    *&v4->_auditToken.val[4] = v6;
    v4->_lwcrClass = objc_opt_class();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

@end