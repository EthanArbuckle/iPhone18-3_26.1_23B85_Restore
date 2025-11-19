@interface MCMAMFI
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (Class)lwcrClass;
- (MCMAMFI)initWithAuditToken:(id *)a3;
- (id)_encodeRequirement:(id)a3 name:(id)a4 reason:(unint64_t)a5;
- (id)_encodedQueriesWithContainerConfig:(id)a3 teamID:(id)a4;
- (id)_requirementForProfileValidatedEntitlements;
- (id)_requirementForTeamID:(id)a3;
- (id)_requirementForValidationCategory:(id)a3;
- (id)_requirementForiOSPlatform;
- (unint64_t)signaturePassesStrictScrutinyForAppGroupEntitlementWithContainerConfig:(id)a3 teamID:(id)a4;
- (void)setLWCRClass:(Class)a3;
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

- (void)setLWCRClass:(Class)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_lwcrClass = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (Class)lwcrClass
{
  lwcrClass = self->_lwcrClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];

  return lwcrClass;
}

- (id)_encodedQueriesWithContainerConfig:(id)a3 teamID:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  if ([v6 honorGroupContainerEntitlementForPlatformBinary])
  {
    v9 = [(MCMAMFI *)self _requirementForValidationCategory:&unk_1F5A75B20];
    v10 = [(MCMAMFI *)self _encodeRequirement:v9 name:@"platform binary" reason:10];
    if (!v10)
    {
      goto LABEL_23;
    }

    v11 = v10;
    [v8 addObject:v10];
  }

  if ([v6 honorGroupContainerEntitlementForAppStoreSigned])
  {
    v9 = [(MCMAMFI *)self _requirementForValidationCategory:&unk_1F5A75B38];
    v12 = [(MCMAMFI *)self _encodeRequirement:v9 name:@"MAS" reason:6];
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = v12;
    [v8 addObject:v12];
  }

  if ([v6 honorGroupContainerEntitlementForProfileValidatedEntitlements])
  {
    v9 = [(MCMAMFI *)self _requirementForProfileValidatedEntitlements];
    v14 = [(MCMAMFI *)self _encodeRequirement:v9 name:@"profile validated entitlements" reason:4];
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v14;
    [v8 addObject:v14];
  }

  if ([v6 honorGroupContainerEntitlementForMatchingTeamIDPrefix])
  {
    v9 = [(MCMAMFI *)self _requirementForTeamID:v7];
    if (v9)
    {
      v16 = [(MCMAMFI *)self _encodeRequirement:v9 name:@"team ID prefix" reason:8];
      if (!v16)
      {
        goto LABEL_23;
      }

      v17 = v16;
      [v8 addObject:v16];
    }
  }

  if ([v6 honorGroupContainerEntitlementForiPadAppsOnMac])
  {
    v9 = [(MCMAMFI *)self _requirementForiOSPlatform];
    v18 = [(MCMAMFI *)self _encodeRequirement:v9 name:@"iPad app" reason:11];
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    [v8 addObject:v18];
  }

  if (![v6 honorGroupContainerEntitlementForTestFlight])
  {
    goto LABEL_21;
  }

  v9 = [(MCMAMFI *)self _requirementForValidationCategory:&unk_1F5A75AF0];
  v20 = [(MCMAMFI *)self _encodeRequirement:v9 name:@"TestFlight" reason:7];
  if (v20)
  {
    v21 = v20;
    [v8 addObject:v20];

LABEL_21:
    if ([v8 count])
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_23:

  v8 = v9;
LABEL_24:

  v8 = 0;
LABEL_25:

  v22 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_encodeRequirement:(id)a3 name:(id)a4 reason:(unint64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v10 = [(objc_class *)[(MCMAMFI *)self lwcrClass] withVersion:1 withConstraintCategory:0 withRequirements:v8 withError:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = [v10 externalRepresentation];
    v13 = [[MCMAMFIEncodedQuery alloc] initWithLoggingName:v9 reason:a5 encodedQuery:v12];
  }

  else
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Could not construct LWCR for requirement %@; error = %@", buf, 0x16u);
    }

    v12 = 0;
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

- (id)_requirementForValidationCategory:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"validation-category";
  v9[0] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_requirementForTeamID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = a3;
    v11 = @"$optional";
    v9 = @"team-identifier";
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:&v10 forKeys:&v9 count:1];
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

- (unint64_t)signaturePassesStrictScrutinyForAppGroupEntitlementWithContainerConfig:(id)a3 teamID:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(MCMAMFI *)self auditToken];
  pid = container_audit_token_get_pid();
  v8 = objc_autoreleasePoolPush();
  if (![(MCMAMFI *)self lwcrClass]|| ([(MCMAMFI *)self _encodedQueriesWithContainerConfig:v6 teamID:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
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

    v22 = 1;
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
    v27 = v7;
    v28 = v6;
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
        v16 = [v15 encodedQuery];
        [v16 bytes];
        v17 = [v15 encodedQuery];
        [v17 length];
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

          v21 = [v15 loggingName];
          *buf = 136316162;
          v31 = v20;
          v32 = 2112;
          v33 = v21;
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
          v22 = [v15 reason];
          v7 = v27;
          v6 = v28;
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

    v7 = v27;
    v6 = v28;
    v8 = v26;
  }

  v22 = 1;
LABEL_20:

  objc_autoreleasePoolPop(v8);
  if (v22 == 1)
  {
    goto LABEL_21;
  }

LABEL_24:

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (MCMAMFI)initWithAuditToken:(id *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCMAMFI;
  v4 = [(MCMAMFI *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3->var0[4];
    *v4->_auditToken.val = *a3->var0;
    *&v4->_auditToken.val[4] = v6;
    v4->_lwcrClass = objc_opt_class();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

@end