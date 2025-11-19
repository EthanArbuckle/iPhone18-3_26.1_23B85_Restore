@interface LNTargetMetadata
+ (LNTargetMetadata)defaultTarget;
+ (LNTargetMetadata)mainTarget;
- (BOOL)isEqual:(id)a3;
- (LNTargetMetadata)initWithCoder:(id)a3;
- (LNTargetMetadata)initWithType:(int64_t)a3 bundleIdentifier:(id)a4 conditions:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNTargetMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNTargetMetadata *)self type];
        if (v7 != [(LNTargetMetadata *)v6 type])
        {
          LOBYTE(v13) = 0;
LABEL_24:

          goto LABEL_25;
        }

        v8 = [(LNTargetMetadata *)self bundleIdentifier];
        v9 = [(LNTargetMetadata *)v6 bundleIdentifier];
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          v14 = v11;
          v15 = v10;
          if (!v10 || !v11)
          {
LABEL_21:

LABEL_22:
            goto LABEL_23;
          }

          v13 = [(LNTargetMetadata *)v10 isEqualToString:v11];

          if (!v13)
          {
            goto LABEL_22;
          }
        }

        v16 = [(LNTargetMetadata *)self conditions];
        v17 = [(LNTargetMetadata *)v6 conditions];
        v15 = v16;
        v18 = v17;
        v14 = v18;
        if (v15 == v18)
        {
          LOBYTE(v13) = 1;
        }

        else
        {
          LOBYTE(v13) = 0;
          if (v15 && v18)
          {
            LOBYTE(v13) = [(LNTargetMetadata *)v15 isEqualToArray:v18];
          }
        }

        goto LABEL_21;
      }

      LOBYTE(v13) = 0;
      v10 = v6;
      v6 = 0;
    }

    else
    {
      v10 = 0;
      LOBYTE(v13) = 0;
    }

LABEL_23:

    goto LABEL_24;
  }

  LOBYTE(v13) = 1;
LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(LNTargetMetadata *)self type];
  v4 = [(LNTargetMetadata *)self bundleIdentifier];
  v5 = [v4 hash] ^ v3;
  v6 = [(LNTargetMetadata *)self conditions];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)description
{
  v3 = [(LNTargetMetadata *)self type];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3 == 2)
  {
    v7 = [(LNTargetMetadata *)self bundleIdentifier];
    v8 = [(LNTargetMetadata *)self conditions];
    [v4 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, conditions: %@>", v6, self, v7, v8];
  }

  else
  {
    v9 = [(LNTargetMetadata *)self type];
    v10 = @"Default";
    if (v9 == 1)
    {
      v10 = @"Main";
    }

    if (v9 == 2)
    {
      v10 = @"BundleIdentifier";
    }

    v8 = v10;
    v7 = [(LNTargetMetadata *)self conditions];
    [v4 stringWithFormat:@"<%@: %p, type: %@, conditions: %@>", v6, self, v8, v7];
  }
  v11 = ;

  return v11;
}

- (LNTargetMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"conditions"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v11 = [(LNTargetMetadata *)self initWithType:v5 bundleIdentifier:v10 conditions:v9];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNTargetMetadata type](self forKey:{"type"), @"type"}];
  v5 = [(LNTargetMetadata *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(LNTargetMetadata *)self conditions];
  [v4 encodeObject:v6 forKey:@"conditions"];
}

- (LNTargetMetadata)initWithType:(int64_t)a3 bundleIdentifier:(id)a4 conditions:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = LNTargetMetadata;
  v10 = [(LNTargetMetadata *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v14 = [v9 copy];
    conditions = v11->_conditions;
    v11->_conditions = v14;

    v16 = v11;
  }

  return v11;
}

+ (LNTargetMetadata)mainTarget
{
  v2 = [[a1 alloc] initWithType:1 bundleIdentifier:0 conditions:0];

  return v2;
}

+ (LNTargetMetadata)defaultTarget
{
  v2 = [[a1 alloc] initWithType:0 bundleIdentifier:0 conditions:0];

  return v2;
}

@end