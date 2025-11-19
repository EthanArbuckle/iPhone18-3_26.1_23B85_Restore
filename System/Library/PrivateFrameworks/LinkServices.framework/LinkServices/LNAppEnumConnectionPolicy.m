@interface LNAppEnumConnectionPolicy
- (BOOL)isEqual:(id)a3;
- (LNAppEnumConnectionPolicy)initWithAppEnumIdentifier:(id)a3 appEnumMangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 appBundleIdentifier:(id)a6 processInstanceIdentifier:(id)a7;
- (LNAppEnumConnectionPolicy)initWithCoder:(id)a3;
- (id)connectionWithUserIdentity:(id)a3 error:(id *)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAppEnumConnectionPolicy

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
LABEL_46:

      goto LABEL_47;
    }

    v7 = [(LNAppEnumConnectionPolicy *)self appEnumIdentifier];
    v8 = [(LNAppEnumConnectionPolicy *)v6 appEnumIdentifier];
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

    v16 = [(LNAppEnumConnectionPolicy *)self appEnumMangledTypeName];
    v17 = [(LNAppEnumConnectionPolicy *)v6 appEnumMangledTypeName];
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

    v22 = [(LNAppEnumConnectionPolicy *)self effectiveBundleIdentifier];
    v23 = [(LNAppEnumConnectionPolicy *)v6 effectiveBundleIdentifier];
    v20 = v22;
    v24 = v23;
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
          v27 = [(LNAppEnumConnectionPolicy *)self appBundleIdentifier];
          v28 = [(LNAppEnumConnectionPolicy *)v6 appBundleIdentifier];
          v29 = v27;
          v30 = v28;
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

          v33 = [(LNAppEnumConnectionPolicy *)self processInstanceIdentifier:v38];
          v34 = [(LNAppEnumConnectionPolicy *)v6 processInstanceIdentifier];
          v29 = v33;
          v35 = v34;
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
  v3 = [(LNAppEnumConnectionPolicy *)self appEnumIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAppEnumConnectionPolicy *)self appEnumMangledTypeName];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNAppEnumConnectionPolicy *)self effectiveBundleIdentifier];
  v8 = [v7 hash];
  v9 = [(LNAppEnumConnectionPolicy *)self appBundleIdentifier];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(LNAppEnumConnectionPolicy *)self processInstanceIdentifier];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAppEnumConnectionPolicy *)self appEnumIdentifier];
  v7 = [(LNAppEnumConnectionPolicy *)self appEnumMangledTypeName];
  v8 = [(LNAppEnumConnectionPolicy *)self effectiveBundleIdentifier];
  v9 = [(LNAppEnumConnectionPolicy *)self appBundleIdentifier];
  v10 = [(LNAppEnumConnectionPolicy *)self processInstanceIdentifier];
  v11 = [v3 stringWithFormat:@"<%@: %p, appEnumIdentifier: %@, appEnumMangledTypeName: %@, effectiveBundleIdentifier: %@, appBundleIdentfier: %@, processInstanceIdentifier: %@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAppEnumConnectionPolicy *)self appEnumIdentifier];
  [v4 encodeObject:v5 forKey:@"appEnumIdentifier"];

  v6 = [(LNAppEnumConnectionPolicy *)self appEnumMangledTypeName];
  [v4 encodeObject:v6 forKey:@"appEnumMangledTypeName"];

  v7 = [(LNAppEnumConnectionPolicy *)self effectiveBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"effectiveBundleIdentifier"];

  v8 = [(LNAppEnumConnectionPolicy *)self appBundleIdentifier];
  [v4 encodeObject:v8 forKey:@"appBundleIdentifier"];

  v9 = [(LNAppEnumConnectionPolicy *)self processInstanceIdentifier];
  [v4 encodeObject:v9 forKey:@"processInstanceIdentifier"];
}

- (LNAppEnumConnectionPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appEnumIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appEnumMangledTypeName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectiveBundleIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processInstanceIdentifier"];

  v10 = 0;
  if (v5 && v6 && v7)
  {
    self = [(LNAppEnumConnectionPolicy *)self initWithAppEnumIdentifier:v5 appEnumMangledTypeName:v6 effectiveBundleIdentifier:v7 appBundleIdentifier:v8 processInstanceIdentifier:v9];
    v10 = self;
  }

  return v10;
}

- (id)connectionWithUserIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[LNConnectionManager sharedInstance];
  v8 = [(LNAppEnumConnectionPolicy *)self effectiveBundleIdentifier];
  v9 = [(LNAppEnumConnectionPolicy *)self appBundleIdentifier];
  v10 = [(LNAppEnumConnectionPolicy *)self processInstanceIdentifier];
  v11 = [(LNAppEnumConnectionPolicy *)self appEnumMangledTypeName];
  v12 = [v7 connectionForEffectiveBundleIdentifier:v8 appBundleIdentifier:v9 processInstanceIdentifier:v10 mangledTypeName:v11 userIdentity:v6 error:a4];

  return v12;
}

- (LNAppEnumConnectionPolicy)initWithAppEnumIdentifier:(id)a3 appEnumMangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 appBundleIdentifier:(id)a6 processInstanceIdentifier:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"LNAppEnumConnectionPolicy.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"appEnumMangledTypeName"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"LNAppEnumConnectionPolicy.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"appEnumIdentifier"}];

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_9:
  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"LNAppEnumConnectionPolicy.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifier"}];

LABEL_4:
  v34.receiver = self;
  v34.super_class = LNAppEnumConnectionPolicy;
  v18 = [(LNAppEnumConnectionPolicy *)&v34 init];
  if (v18)
  {
    v19 = [v13 copy];
    appEnumIdentifier = v18->_appEnumIdentifier;
    v18->_appEnumIdentifier = v19;

    v21 = [v14 copy];
    appEnumMangledTypeName = v18->_appEnumMangledTypeName;
    v18->_appEnumMangledTypeName = v21;

    v23 = [v15 copy];
    effectiveBundleIdentifier = v18->_effectiveBundleIdentifier;
    v18->_effectiveBundleIdentifier = v23;

    v25 = [v16 copy];
    appBundleIdentifier = v18->_appBundleIdentifier;
    v18->_appBundleIdentifier = v25;

    v27 = [v17 copy];
    processInstanceIdentifier = v18->_processInstanceIdentifier;
    v18->_processInstanceIdentifier = v27;

    v29 = v18;
  }

  return v18;
}

@end