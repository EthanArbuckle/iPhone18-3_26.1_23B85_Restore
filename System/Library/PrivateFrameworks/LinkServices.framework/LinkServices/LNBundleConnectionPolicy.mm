@interface LNBundleConnectionPolicy
- (BOOL)isEqual:(id)a3;
- (LNBundleConnectionPolicy)initWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 processInstanceIdentifier:(id)a5;
- (id)connectionWithUserIdentity:(id)a3 error:(id *)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation LNBundleConnectionPolicy

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
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(LNBundleConnectionPolicy *)self bundleIdentifier];
    v8 = [(LNBundleConnectionPolicy *)v6 bundleIdentifier];
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

    v16 = [(LNBundleConnectionPolicy *)self appBundleIdentifier];
    v17 = [(LNBundleConnectionPolicy *)v6 appBundleIdentifier];
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

    v21 = [(LNBundleConnectionPolicy *)self processInstanceIdentifier];
    v22 = [(LNBundleConnectionPolicy *)v6 processInstanceIdentifier];
    v20 = v21;
    v23 = v22;
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
  v3 = [(LNBundleConnectionPolicy *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(LNBundleConnectionPolicy *)self appBundleIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNBundleConnectionPolicy *)self processInstanceIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNBundleConnectionPolicy *)self bundleIdentifier];
  v7 = [(LNBundleConnectionPolicy *)self appBundleIdentifier];
  v8 = [(LNBundleConnectionPolicy *)self processInstanceIdentifier];
  v9 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, appBundleIdentifier: %@, processInstanceIdentifier: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (id)connectionWithUserIdentity:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E6963620];
  v7 = a3;
  v8 = [(LNBundleConnectionPolicy *)self bundleIdentifier];
  v9 = [v6 bundleRecordWithBundleIdentifier:v8 allowPlaceholder:0 error:0];

  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();
  v10 = objc_alloc(MEMORY[0x1E69AC7B0]);
  v11 = [(LNBundleConnectionPolicy *)self bundleIdentifier];
  v12 = [v9 URL];
  v13 = [v10 initWithType:v8 & 1 bundleIdentifier:v11 url:v12];

  v14 = +[LNConnectionManager sharedInstance];
  v15 = [(LNBundleConnectionPolicy *)self appBundleIdentifier];
  v16 = [(LNBundleConnectionPolicy *)self processInstanceIdentifier];
  v17 = [v14 connectionForEffectiveBundleIdentifier:v13 appBundleIdentifier:v15 processInstanceIdentifier:v16 mangledTypeName:0 userIdentity:v7 error:a4];

  return v17;
}

- (LNBundleConnectionPolicy)initWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 processInstanceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNBundleConnectionPolicy.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v22.receiver = self;
  v22.super_class = LNBundleConnectionPolicy;
  v12 = [(LNBundleConnectionPolicy *)&v22 init];
  if (v12)
  {
    v13 = [v9 copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v13;

    v15 = [v10 copy];
    appBundleIdentifier = v12->_appBundleIdentifier;
    v12->_appBundleIdentifier = v15;

    v17 = [v11 copy];
    processInstanceIdentifier = v12->_processInstanceIdentifier;
    v12->_processInstanceIdentifier = v17;

    v19 = v12;
  }

  return v12;
}

@end