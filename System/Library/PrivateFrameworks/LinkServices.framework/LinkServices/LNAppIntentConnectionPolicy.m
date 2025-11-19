@interface LNAppIntentConnectionPolicy
- (BOOL)isEqual:(id)a3;
- (BOOL)reuseConnectionIfPossible;
- (LNAppIntentConnectionPolicy)initWithAppIntentMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6;
- (NSString)appIntentMangledTypeName;
- (id)actionWithParameters:(id)a3;
- (id)connectionWithUserIdentity:(id)a3 error:(id *)a4;
- (id)description;
- (id)newConnectionForSpringBoardOnlyWithError:(id *)a3;
- (unint64_t)hash;
@end

@implementation LNAppIntentConnectionPolicy

- (NSString)appIntentMangledTypeName
{
  v3 = [(LNActionMetadata *)self->_metadata effectiveBundleIdentifiers];
  if ([v3 count] == 1)
  {
    v4 = [(LNActionMetadata *)self->_metadata effectiveBundleIdentifiers];
    v5 = [v4 firstObject];
    v6 = [v5 type];

    if (v6 == 3)
    {
      metadata = self->_metadata;
      v8 = [(LNActionMetadata *)metadata effectiveBundleIdentifiers];
      v9 = [v8 firstObject];
      v10 = [v9 bundleIdentifier];
      v11 = [(LNActionMetadata *)metadata mangledTypeNameForBundleIdentifier:v10];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = self->_metadata;
  v8 = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  v9 = [v8 bundleIdentifier];
  v11 = [(LNActionMetadata *)v12 mangledTypeNameForBundleIdentifier:v9];
LABEL_6:

  return v11;
}

- (BOOL)reuseConnectionIfPossible
{
  v2 = [(LNAppIntentConnectionPolicy *)self metadata];
  v3 = [v2 systemProtocols];
  v4 = [MEMORY[0x1E69ACA48] cameraCaptureProtocol];
  v5 = [v3 containsObject:v4];

  return v5 ^ 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_45:

      goto LABEL_46;
    }

    v7 = [(LNAppIntentConnectionPolicy *)self appIntentIdentifier];
    v8 = [(LNAppIntentConnectionPolicy *)v6 appIntentIdentifier];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_43;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v16 = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
    v17 = [(LNAppIntentConnectionPolicy *)v6 appIntentMangledTypeName];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_42;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        goto LABEL_19;
      }
    }

    v22 = [(LNAppIntentConnectionPolicy *)self openAppWhenRun];
    if (v22 != [(LNAppIntentConnectionPolicy *)v6 openAppWhenRun])
    {
LABEL_19:
      LOBYTE(v12) = 0;
LABEL_43:

      goto LABEL_44;
    }

    v23 = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
    v24 = [(LNAppIntentConnectionPolicy *)v6 effectiveBundleIdentifier];
    v20 = v23;
    v25 = v24;
    v19 = v25;
    v40 = v20;
    if (v20 == v25)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v26 = v25;
      if (!v20 || !v25)
      {
        goto LABEL_41;
      }

      v12 = [v20 isEqual:v25];

      if (!v12)
      {
        goto LABEL_42;
      }
    }

    v27 = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
    v37 = [(LNAppIntentConnectionPolicy *)v6 appBundleIdentifier];
    v28 = v27;
    v29 = v37;
    v38 = v29;
    v39 = v28;
    if (v28 != v29)
    {
      LOBYTE(v12) = 0;
      if (v28)
      {
        v30 = v29;
        if (v29)
        {
          v36 = [v28 isEqualToString:v29];

          if (!v36)
          {
            LOBYTE(v12) = 0;
LABEL_40:
            v26 = v38;
            v20 = v39;
LABEL_41:

            v20 = v40;
LABEL_42:

            goto LABEL_43;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v30 = v29;
      }

LABEL_39:

      goto LABEL_40;
    }

LABEL_32:
    v31 = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
    v32 = [(LNAppIntentConnectionPolicy *)v6 processInstanceIdentifier];
    v28 = v31;
    v33 = v32;
    v34 = v33;
    if (v28 == v33)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v28 && v33)
      {
        LOBYTE(v12) = [v28 isEqualToString:v33];
      }
    }

    v30 = v34;
    goto LABEL_39;
  }

  LOBYTE(v12) = 1;
LABEL_46:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNAppIntentConnectionPolicy *)self appIntentIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(LNAppIntentConnectionPolicy *)self openAppWhenRun];
  v8 = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  v9 = [v8 hash];
  v10 = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
  v11 = v9 ^ [v10 hash];
  v12 = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
  v13 = v11 ^ [v12 hash];

  return v7 ^ v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAppIntentConnectionPolicy *)self appIntentIdentifier];
  v7 = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
  if ([(LNAppIntentConnectionPolicy *)self openAppWhenRun])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  v10 = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
  v11 = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
  v12 = [v3 stringWithFormat:@"<%@: %p, appIntentIdentifier: %@, appIntentMangledTypeName: %@, openAppWhenRun: %@, effectiveBundleIdentifier: %@, appBundleIdentifier: %@, processInstanceIdentifier: %@>", v5, self, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)connectionWithUserIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(LNAppIntentConnectionPolicy *)self reuseConnectionIfPossible];
  v8 = +[LNConnectionManager sharedInstance];
  v9 = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  v10 = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
  v11 = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
  v12 = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
  if (v7)
  {
    v13 = [v8 connectionForEffectiveBundleIdentifier:v9 appBundleIdentifier:v10 processInstanceIdentifier:v11 mangledTypeName:v12 userIdentity:v6 error:a4];
  }

  else
  {
    v13 = [v8 newConnectionForEffectiveBundleIdentifier:v9 appBundleIdentifier:v10 processInstanceIdentifier:v11 mangledTypeName:v12 userIdentity:v6 error:a4];
  }

  v14 = v13;

  return v14;
}

- (id)actionWithParameters:(id)a3
{
  v4 = MEMORY[0x1E69AC640];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(LNAppIntentConnectionPolicy *)self metadata];
  v8 = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  v9 = [v8 bundleIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__LNAppIntentConnectionPolicy_actionWithParameters___block_invoke;
  v13[3] = &unk_1E74B0CB8;
  v13[4] = self;
  v10 = [v5 if_map:v13];

  v11 = [v6 initWithMetadata:v7 bundleIdentifier:v9 parameters:v10];

  return v11;
}

id __52__LNAppIntentConnectionPolicy_actionWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 configuration];
  v7 = [v6 copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E69AC8F8]);
  }

  v10 = v9;

  v11 = [*(a1 + 32) metadata];
  v12 = [v11 parameters];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52__LNAppIntentConnectionPolicy_actionWithParameters___block_invoke_2;
  v20[3] = &unk_1E74B0C90;
  v21 = v5;
  v13 = v5;
  v14 = [v12 if_firstObjectPassingTest:v20];

  [v10 setSecure:{(objc_msgSend(v14, "capabilities") >> 4) & 1}];
  v15 = objc_alloc(MEMORY[0x1E69AC8E8]);
  v16 = [v3 identifier];
  v17 = [v3 value];
  v18 = [v15 initWithIdentifier:v16 value:v17 configuration:v10];

  return v18;
}

uint64_t __52__LNAppIntentConnectionPolicy_actionWithParameters___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (LNAppIntentConnectionPolicy)initWithAppIntentMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"LNAppIntentConnectionPolicy.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"LNAppIntentConnectionPolicy.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifier"}];

LABEL_3:
  v28.receiver = self;
  v28.super_class = LNAppIntentConnectionPolicy;
  v16 = [(LNAppIntentConnectionPolicy *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_metadata, a3);
    v18 = [v13 copy];
    effectiveBundleIdentifier = v17->_effectiveBundleIdentifier;
    v17->_effectiveBundleIdentifier = v18;

    v20 = [v14 copy];
    appBundleIdentifier = v17->_appBundleIdentifier;
    v17->_appBundleIdentifier = v20;

    v22 = [v15 copy];
    processInstanceIdentifier = v17->_processInstanceIdentifier;
    v17->_processInstanceIdentifier = v22;

    v24 = v17;
  }

  return v17;
}

- (id)newConnectionForSpringBoardOnlyWithError:(id *)a3
{
  v5 = +[LNConnectionManager sharedInstance];
  v6 = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  v7 = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
  v8 = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
  v9 = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
  v10 = [v5 newConnectionForEffectiveBundleIdentifier:v6 appBundleIdentifier:v7 processInstanceIdentifier:v8 mangledTypeName:v9 userIdentity:0 error:a3];

  return v10;
}

@end