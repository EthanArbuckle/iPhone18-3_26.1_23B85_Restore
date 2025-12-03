@interface LNAppEntityConnectionPolicy
- (BOOL)isEqual:(id)equal;
- (LNAppEntityConnectionPolicy)initWithAppEntityIdentifier:(id)identifier appEntityMangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier appBundleIdentifier:(id)appBundleIdentifier processInstanceIdentifier:(id)instanceIdentifier;
- (LNAppEntityConnectionPolicy)initWithCoder:(id)coder;
- (id)connectionWithUserIdentity:(id)identity error:(id *)error;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppEntityConnectionPolicy

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
LABEL_46:

      goto LABEL_47;
    }

    appEntityIdentifier = [(LNAppEntityConnectionPolicy *)self appEntityIdentifier];
    appEntityIdentifier2 = [(LNAppEntityConnectionPolicy *)v6 appEntityIdentifier];
    v9 = appEntityIdentifier;
    v10 = appEntityIdentifier2;
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
        goto LABEL_44;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    appEntityMangledTypeName = [(LNAppEntityConnectionPolicy *)self appEntityMangledTypeName];
    appEntityMangledTypeName2 = [(LNAppEntityConnectionPolicy *)v6 appEntityMangledTypeName];
    v14 = appEntityMangledTypeName;
    v18 = appEntityMangledTypeName2;
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
        goto LABEL_43;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    effectiveBundleIdentifier = [(LNAppEntityConnectionPolicy *)self effectiveBundleIdentifier];
    effectiveBundleIdentifier2 = [(LNAppEntityConnectionPolicy *)v6 effectiveBundleIdentifier];
    v20 = effectiveBundleIdentifier;
    v24 = effectiveBundleIdentifier2;
    v41 = v24;
    if (v20 != v24)
    {
      LOBYTE(v12) = 0;
      if (v20)
      {
        v25 = v24;
        v26 = v20;
        if (v24)
        {
          v12 = [v20 isEqual:v24];

          if (!v12)
          {
            goto LABEL_42;
          }

LABEL_24:
          v40 = v20;
          appBundleIdentifier = [(LNAppEntityConnectionPolicy *)self appBundleIdentifier];
          appBundleIdentifier2 = [(LNAppEntityConnectionPolicy *)v6 appBundleIdentifier];
          v29 = appBundleIdentifier;
          v30 = appBundleIdentifier2;
          v38 = v30;
          v39 = v29;
          if (v29 == v30)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v29)
            {
              v31 = v30;
              v20 = v40;
              goto LABEL_39;
            }

            v31 = v30;
            v20 = v40;
            if (!v30)
            {
LABEL_39:

              goto LABEL_40;
            }

            v32 = [v29 isEqualToString:v30];

            if (!v32)
            {
              LOBYTE(v12) = 0;
              v20 = v40;
LABEL_40:
              v25 = v38;
              v26 = v39;
              goto LABEL_41;
            }
          }

          v33 = [(LNAppEntityConnectionPolicy *)self processInstanceIdentifier:v38];
          processInstanceIdentifier = [(LNAppEntityConnectionPolicy *)v6 processInstanceIdentifier];
          v29 = v33;
          v35 = processInstanceIdentifier;
          v36 = v35;
          if (v29 == v35)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v29)
            {
              v20 = v40;
              if (v35)
              {
                LOBYTE(v12) = [v29 isEqualToString:v35];
              }

              goto LABEL_37;
            }
          }

          v20 = v40;
LABEL_37:

          v31 = v36;
          goto LABEL_39;
        }
      }

      else
      {
        v25 = v24;
        v26 = 0;
      }

LABEL_41:

LABEL_42:
      v19 = v41;
LABEL_43:

      goto LABEL_44;
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_47:

  return v12;
}

- (unint64_t)hash
{
  appEntityIdentifier = [(LNAppEntityConnectionPolicy *)self appEntityIdentifier];
  v4 = [appEntityIdentifier hash];
  appEntityMangledTypeName = [(LNAppEntityConnectionPolicy *)self appEntityMangledTypeName];
  v6 = [appEntityMangledTypeName hash] ^ v4;
  effectiveBundleIdentifier = [(LNAppEntityConnectionPolicy *)self effectiveBundleIdentifier];
  v8 = [effectiveBundleIdentifier hash];
  appBundleIdentifier = [(LNAppEntityConnectionPolicy *)self appBundleIdentifier];
  v10 = v6 ^ v8 ^ [appBundleIdentifier hash];
  processInstanceIdentifier = [(LNAppEntityConnectionPolicy *)self processInstanceIdentifier];
  v12 = [processInstanceIdentifier hash];

  return v10 ^ v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  appEntityIdentifier = [(LNAppEntityConnectionPolicy *)self appEntityIdentifier];
  appEntityMangledTypeName = [(LNAppEntityConnectionPolicy *)self appEntityMangledTypeName];
  effectiveBundleIdentifier = [(LNAppEntityConnectionPolicy *)self effectiveBundleIdentifier];
  appBundleIdentifier = [(LNAppEntityConnectionPolicy *)self appBundleIdentifier];
  processInstanceIdentifier = [(LNAppEntityConnectionPolicy *)self processInstanceIdentifier];
  v11 = [v3 stringWithFormat:@"<%@: %p, appEntityIdentifier: %@, appEntityMangledTypeName: %@, effectiveBundleIdentifier: %@, appBundleIdentfier: %@, processInstanceIdentifier: %@>", v5, self, appEntityIdentifier, appEntityMangledTypeName, effectiveBundleIdentifier, appBundleIdentifier, processInstanceIdentifier];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appEntityIdentifier = [(LNAppEntityConnectionPolicy *)self appEntityIdentifier];
  [coderCopy encodeObject:appEntityIdentifier forKey:@"appEntityIdentifier"];

  appEntityMangledTypeName = [(LNAppEntityConnectionPolicy *)self appEntityMangledTypeName];
  [coderCopy encodeObject:appEntityMangledTypeName forKey:@"appEntityMangledTypeName"];

  effectiveBundleIdentifier = [(LNAppEntityConnectionPolicy *)self effectiveBundleIdentifier];
  [coderCopy encodeObject:effectiveBundleIdentifier forKey:@"effectiveBundleIdentifier"];

  appBundleIdentifier = [(LNAppEntityConnectionPolicy *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];

  processInstanceIdentifier = [(LNAppEntityConnectionPolicy *)self processInstanceIdentifier];
  [coderCopy encodeObject:processInstanceIdentifier forKey:@"processInstanceIdentifier"];
}

- (LNAppEntityConnectionPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appEntityIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appEntityMangledTypeName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveBundleIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processInstanceIdentifier"];

  selfCopy = 0;
  if (v5 && v6 && v7)
  {
    self = [(LNAppEntityConnectionPolicy *)self initWithAppEntityIdentifier:v5 appEntityMangledTypeName:v6 effectiveBundleIdentifier:v7 appBundleIdentifier:v8 processInstanceIdentifier:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)connectionWithUserIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v7 = +[LNConnectionManager sharedInstance];
  effectiveBundleIdentifier = [(LNAppEntityConnectionPolicy *)self effectiveBundleIdentifier];
  appBundleIdentifier = [(LNAppEntityConnectionPolicy *)self appBundleIdentifier];
  processInstanceIdentifier = [(LNAppEntityConnectionPolicy *)self processInstanceIdentifier];
  appEntityMangledTypeName = [(LNAppEntityConnectionPolicy *)self appEntityMangledTypeName];
  v12 = [v7 connectionForEffectiveBundleIdentifier:effectiveBundleIdentifier appBundleIdentifier:appBundleIdentifier processInstanceIdentifier:processInstanceIdentifier mangledTypeName:appEntityMangledTypeName userIdentity:identityCopy error:error];

  return v12;
}

- (LNAppEntityConnectionPolicy)initWithAppEntityIdentifier:(id)identifier appEntityMangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier appBundleIdentifier:(id)appBundleIdentifier processInstanceIdentifier:(id)instanceIdentifier
{
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  appBundleIdentifierCopy = appBundleIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppEntityConnectionPolicy.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"appEntityMangledTypeName"}];

    if (bundleIdentifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAppEntityConnectionPolicy.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"appEntityIdentifier"}];

  if (!nameCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (bundleIdentifierCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAppEntityConnectionPolicy.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifier"}];

LABEL_4:
  v34.receiver = self;
  v34.super_class = LNAppEntityConnectionPolicy;
  v18 = [(LNAppEntityConnectionPolicy *)&v34 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    appEntityIdentifier = v18->_appEntityIdentifier;
    v18->_appEntityIdentifier = v19;

    v21 = [nameCopy copy];
    appEntityMangledTypeName = v18->_appEntityMangledTypeName;
    v18->_appEntityMangledTypeName = v21;

    v23 = [bundleIdentifierCopy copy];
    effectiveBundleIdentifier = v18->_effectiveBundleIdentifier;
    v18->_effectiveBundleIdentifier = v23;

    v25 = [appBundleIdentifierCopy copy];
    appBundleIdentifier = v18->_appBundleIdentifier;
    v18->_appBundleIdentifier = v25;

    v27 = [instanceIdentifierCopy copy];
    processInstanceIdentifier = v18->_processInstanceIdentifier;
    v18->_processInstanceIdentifier = v27;

    v29 = v18;
  }

  return v18;
}

@end