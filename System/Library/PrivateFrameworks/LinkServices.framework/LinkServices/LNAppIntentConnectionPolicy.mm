@interface LNAppIntentConnectionPolicy
- (BOOL)isEqual:(id)equal;
- (BOOL)reuseConnectionIfPossible;
- (LNAppIntentConnectionPolicy)initWithAppIntentMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier;
- (NSString)appIntentMangledTypeName;
- (id)actionWithParameters:(id)parameters;
- (id)connectionWithUserIdentity:(id)identity error:(id *)error;
- (id)description;
- (id)newConnectionForSpringBoardOnlyWithError:(id *)error;
- (unint64_t)hash;
@end

@implementation LNAppIntentConnectionPolicy

- (NSString)appIntentMangledTypeName
{
  effectiveBundleIdentifiers = [(LNActionMetadata *)self->_metadata effectiveBundleIdentifiers];
  if ([effectiveBundleIdentifiers count] == 1)
  {
    effectiveBundleIdentifiers2 = [(LNActionMetadata *)self->_metadata effectiveBundleIdentifiers];
    firstObject = [effectiveBundleIdentifiers2 firstObject];
    type = [firstObject type];

    if (type == 3)
    {
      metadata = self->_metadata;
      effectiveBundleIdentifiers3 = [(LNActionMetadata *)metadata effectiveBundleIdentifiers];
      firstObject2 = [effectiveBundleIdentifiers3 firstObject];
      bundleIdentifier = [firstObject2 bundleIdentifier];
      v11 = [(LNActionMetadata *)metadata mangledTypeNameForBundleIdentifier:bundleIdentifier];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = self->_metadata;
  effectiveBundleIdentifiers3 = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  firstObject2 = [effectiveBundleIdentifiers3 bundleIdentifier];
  v11 = [(LNActionMetadata *)v12 mangledTypeNameForBundleIdentifier:firstObject2];
LABEL_6:

  return v11;
}

- (BOOL)reuseConnectionIfPossible
{
  metadata = [(LNAppIntentConnectionPolicy *)self metadata];
  systemProtocols = [metadata systemProtocols];
  cameraCaptureProtocol = [MEMORY[0x1E69ACA48] cameraCaptureProtocol];
  v5 = [systemProtocols containsObject:cameraCaptureProtocol];

  return v5 ^ 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_45:

      goto LABEL_46;
    }

    appIntentIdentifier = [(LNAppIntentConnectionPolicy *)self appIntentIdentifier];
    appIntentIdentifier2 = [(LNAppIntentConnectionPolicy *)v6 appIntentIdentifier];
    v9 = appIntentIdentifier;
    v10 = appIntentIdentifier2;
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

    appIntentMangledTypeName = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
    appIntentMangledTypeName2 = [(LNAppIntentConnectionPolicy *)v6 appIntentMangledTypeName];
    v14 = appIntentMangledTypeName;
    v18 = appIntentMangledTypeName2;
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

    openAppWhenRun = [(LNAppIntentConnectionPolicy *)self openAppWhenRun];
    if (openAppWhenRun != [(LNAppIntentConnectionPolicy *)v6 openAppWhenRun])
    {
LABEL_19:
      LOBYTE(v12) = 0;
LABEL_43:

      goto LABEL_44;
    }

    effectiveBundleIdentifier = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
    effectiveBundleIdentifier2 = [(LNAppIntentConnectionPolicy *)v6 effectiveBundleIdentifier];
    v20 = effectiveBundleIdentifier;
    v25 = effectiveBundleIdentifier2;
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

    appBundleIdentifier = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
    appBundleIdentifier2 = [(LNAppIntentConnectionPolicy *)v6 appBundleIdentifier];
    v28 = appBundleIdentifier;
    v29 = appBundleIdentifier2;
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
    processInstanceIdentifier = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
    processInstanceIdentifier2 = [(LNAppIntentConnectionPolicy *)v6 processInstanceIdentifier];
    v28 = processInstanceIdentifier;
    v33 = processInstanceIdentifier2;
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
  appIntentIdentifier = [(LNAppIntentConnectionPolicy *)self appIntentIdentifier];
  v4 = [appIntentIdentifier hash];
  appIntentMangledTypeName = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
  v6 = [appIntentMangledTypeName hash] ^ v4;
  v7 = v6 ^ [(LNAppIntentConnectionPolicy *)self openAppWhenRun];
  effectiveBundleIdentifier = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  v9 = [effectiveBundleIdentifier hash];
  appBundleIdentifier = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
  v11 = v9 ^ [appBundleIdentifier hash];
  processInstanceIdentifier = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
  v13 = v11 ^ [processInstanceIdentifier hash];

  return v7 ^ v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  appIntentIdentifier = [(LNAppIntentConnectionPolicy *)self appIntentIdentifier];
  appIntentMangledTypeName = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
  if ([(LNAppIntentConnectionPolicy *)self openAppWhenRun])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  effectiveBundleIdentifier = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  appBundleIdentifier = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
  processInstanceIdentifier = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
  v12 = [v3 stringWithFormat:@"<%@: %p, appIntentIdentifier: %@, appIntentMangledTypeName: %@, openAppWhenRun: %@, effectiveBundleIdentifier: %@, appBundleIdentifier: %@, processInstanceIdentifier: %@>", v5, self, appIntentIdentifier, appIntentMangledTypeName, v8, effectiveBundleIdentifier, appBundleIdentifier, processInstanceIdentifier];

  return v12;
}

- (id)connectionWithUserIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  reuseConnectionIfPossible = [(LNAppIntentConnectionPolicy *)self reuseConnectionIfPossible];
  v8 = +[LNConnectionManager sharedInstance];
  effectiveBundleIdentifier = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  appBundleIdentifier = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
  processInstanceIdentifier = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
  appIntentMangledTypeName = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
  if (reuseConnectionIfPossible)
  {
    v13 = [v8 connectionForEffectiveBundleIdentifier:effectiveBundleIdentifier appBundleIdentifier:appBundleIdentifier processInstanceIdentifier:processInstanceIdentifier mangledTypeName:appIntentMangledTypeName userIdentity:identityCopy error:error];
  }

  else
  {
    v13 = [v8 newConnectionForEffectiveBundleIdentifier:effectiveBundleIdentifier appBundleIdentifier:appBundleIdentifier processInstanceIdentifier:processInstanceIdentifier mangledTypeName:appIntentMangledTypeName userIdentity:identityCopy error:error];
  }

  v14 = v13;

  return v14;
}

- (id)actionWithParameters:(id)parameters
{
  v4 = MEMORY[0x1E69AC640];
  parametersCopy = parameters;
  v6 = [v4 alloc];
  metadata = [(LNAppIntentConnectionPolicy *)self metadata];
  effectiveBundleIdentifier = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  bundleIdentifier = [effectiveBundleIdentifier bundleIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__LNAppIntentConnectionPolicy_actionWithParameters___block_invoke;
  v13[3] = &unk_1E74B0CB8;
  v13[4] = self;
  v10 = [parametersCopy if_map:v13];

  v11 = [v6 initWithMetadata:metadata bundleIdentifier:bundleIdentifier parameters:v10];

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

- (LNAppIntentConnectionPolicy)initWithAppIntentMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  if (metadataCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppIntentConnectionPolicy.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAppIntentConnectionPolicy.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifier"}];

LABEL_3:
  v28.receiver = self;
  v28.super_class = LNAppIntentConnectionPolicy;
  v16 = [(LNAppIntentConnectionPolicy *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_metadata, metadata);
    v18 = [identifierCopy copy];
    effectiveBundleIdentifier = v17->_effectiveBundleIdentifier;
    v17->_effectiveBundleIdentifier = v18;

    v20 = [bundleIdentifierCopy copy];
    appBundleIdentifier = v17->_appBundleIdentifier;
    v17->_appBundleIdentifier = v20;

    v22 = [instanceIdentifierCopy copy];
    processInstanceIdentifier = v17->_processInstanceIdentifier;
    v17->_processInstanceIdentifier = v22;

    v24 = v17;
  }

  return v17;
}

- (id)newConnectionForSpringBoardOnlyWithError:(id *)error
{
  v5 = +[LNConnectionManager sharedInstance];
  effectiveBundleIdentifier = [(LNAppIntentConnectionPolicy *)self effectiveBundleIdentifier];
  appBundleIdentifier = [(LNAppIntentConnectionPolicy *)self appBundleIdentifier];
  processInstanceIdentifier = [(LNAppIntentConnectionPolicy *)self processInstanceIdentifier];
  appIntentMangledTypeName = [(LNAppIntentConnectionPolicy *)self appIntentMangledTypeName];
  v10 = [v5 newConnectionForEffectiveBundleIdentifier:effectiveBundleIdentifier appBundleIdentifier:appBundleIdentifier processInstanceIdentifier:processInstanceIdentifier mangledTypeName:appIntentMangledTypeName userIdentity:0 error:error];

  return v10;
}

@end