@interface LNBundleConnectionPolicy
- (BOOL)isEqual:(id)equal;
- (LNBundleConnectionPolicy)initWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier;
- (id)connectionWithUserIdentity:(id)identity error:(id *)error;
- (id)description;
- (unint64_t)hash;
@end

@implementation LNBundleConnectionPolicy

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
LABEL_27:

      goto LABEL_28;
    }

    bundleIdentifier = [(LNBundleConnectionPolicy *)self bundleIdentifier];
    bundleIdentifier2 = [(LNBundleConnectionPolicy *)v6 bundleIdentifier];
    v9 = bundleIdentifier;
    v10 = bundleIdentifier2;
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
        goto LABEL_25;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    appBundleIdentifier = [(LNBundleConnectionPolicy *)self appBundleIdentifier];
    appBundleIdentifier2 = [(LNBundleConnectionPolicy *)v6 appBundleIdentifier];
    v14 = appBundleIdentifier;
    v18 = appBundleIdentifier2;
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
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqualToString:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    processInstanceIdentifier = [(LNBundleConnectionPolicy *)self processInstanceIdentifier];
    processInstanceIdentifier2 = [(LNBundleConnectionPolicy *)v6 processInstanceIdentifier];
    v20 = processInstanceIdentifier;
    v23 = processInstanceIdentifier2;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqualToString:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  bundleIdentifier = [(LNBundleConnectionPolicy *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  appBundleIdentifier = [(LNBundleConnectionPolicy *)self appBundleIdentifier];
  v6 = [appBundleIdentifier hash] ^ v4;
  processInstanceIdentifier = [(LNBundleConnectionPolicy *)self processInstanceIdentifier];
  v8 = [processInstanceIdentifier hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(LNBundleConnectionPolicy *)self bundleIdentifier];
  appBundleIdentifier = [(LNBundleConnectionPolicy *)self appBundleIdentifier];
  processInstanceIdentifier = [(LNBundleConnectionPolicy *)self processInstanceIdentifier];
  v9 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, appBundleIdentifier: %@, processInstanceIdentifier: %@>", v5, self, bundleIdentifier, appBundleIdentifier, processInstanceIdentifier];

  return v9;
}

- (id)connectionWithUserIdentity:(id)identity error:(id *)error
{
  v6 = MEMORY[0x1E6963620];
  identityCopy = identity;
  bundleIdentifier = [(LNBundleConnectionPolicy *)self bundleIdentifier];
  v9 = [v6 bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  objc_opt_class();
  LOBYTE(bundleIdentifier) = objc_opt_isKindOfClass();
  v10 = objc_alloc(MEMORY[0x1E69AC7B0]);
  bundleIdentifier2 = [(LNBundleConnectionPolicy *)self bundleIdentifier];
  v12 = [v9 URL];
  v13 = [v10 initWithType:bundleIdentifier & 1 bundleIdentifier:bundleIdentifier2 url:v12];

  v14 = +[LNConnectionManager sharedInstance];
  appBundleIdentifier = [(LNBundleConnectionPolicy *)self appBundleIdentifier];
  processInstanceIdentifier = [(LNBundleConnectionPolicy *)self processInstanceIdentifier];
  v17 = [v14 connectionForEffectiveBundleIdentifier:v13 appBundleIdentifier:appBundleIdentifier processInstanceIdentifier:processInstanceIdentifier mangledTypeName:0 userIdentity:identityCopy error:error];

  return v17;
}

- (LNBundleConnectionPolicy)initWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNBundleConnectionPolicy.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v22.receiver = self;
  v22.super_class = LNBundleConnectionPolicy;
  v12 = [(LNBundleConnectionPolicy *)&v22 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v13;

    v15 = [bundleIdentifierCopy copy];
    appBundleIdentifier = v12->_appBundleIdentifier;
    v12->_appBundleIdentifier = v15;

    v17 = [instanceIdentifierCopy copy];
    processInstanceIdentifier = v12->_processInstanceIdentifier;
    v12->_processInstanceIdentifier = v17;

    v19 = v12;
  }

  return v12;
}

@end