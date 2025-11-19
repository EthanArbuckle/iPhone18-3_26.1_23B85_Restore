@interface LNBundleActionsMetadata
- (BOOL)isEqual:(id)a3;
- (LNBundleActionsMetadata)initWithActions:(id)a3 systemProtocolDefaults:(id)a4;
- (LNBundleActionsMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNBundleActionsMetadata

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
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNBundleActionsMetadata *)self actions];
    v8 = [(LNBundleActionsMetadata *)v6 actions];
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
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqualToDictionary:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
    v16 = [(LNBundleActionsMetadata *)v6 systemProtocolDefaults];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqualToDictionary:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNBundleActionsMetadata *)self actions];
  v4 = [v3 hash];
  v5 = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNBundleActionsMetadata *)self actions];
  v7 = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
  v8 = [v3 stringWithFormat:@"<%@: %p, actions: %@, systemProtocolDefaults: %@>", v5, self, v6, v7];

  return v8;
}

- (LNBundleActionsMetadata)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"actions"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v5 decodeObjectOfClasses:v13 forKey:@"systemProtocolDefaults"];

  v15 = 0;
  if (v9 && v14)
  {
    self = [(LNBundleActionsMetadata *)self initWithActions:v9 systemProtocolDefaults:v14];
    v15 = self;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNBundleActionsMetadata *)self actions];
  [v4 encodeObject:v5 forKey:@"actions"];

  v6 = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
  [v4 encodeObject:v6 forKey:@"systemProtocolDefaults"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LNBundleActionsMetadata alloc];
  v5 = [(LNBundleActionsMetadata *)self actions];
  v6 = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
  v7 = [(LNBundleActionsMetadata *)v4 initWithActions:v5 systemProtocolDefaults:v6];

  return v7;
}

- (LNBundleActionsMetadata)initWithActions:(id)a3 systemProtocolDefaults:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"LNBundleActionsMetadata.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"actions"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"LNBundleActionsMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"systemProtocolDefaults"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = LNBundleActionsMetadata;
  v11 = [(LNBundleActionsMetadata *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actions, a3);
    objc_storeStrong(&v12->_systemProtocolDefaults, a4);
    v13 = v12;
  }

  return v12;
}

@end