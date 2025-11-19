@interface LNConnectionContext
- (BOOL)isEqual:(id)a3;
- (LNConnectionContext)initWithCoder:(id)a3;
- (LNConnectionContext)initWithUserIdentity:(id)a3 effectiveBundleIdentifier:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConnectionContext

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

    v7 = [(LNConnectionContext *)self userIdentity];
    v8 = [(LNConnectionContext *)v6 userIdentity];
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

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNConnectionContext *)self effectiveBundleIdentifier];
    v16 = [(LNConnectionContext *)v6 effectiveBundleIdentifier];
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
        LOBYTE(v12) = [v14 isEqual:v17];
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
  v3 = [(LNConnectionContext *)self userIdentity];
  v4 = [v3 hash];
  v5 = [(LNConnectionContext *)self effectiveBundleIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (LNConnectionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userIdentity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectiveBundleIdentifier"];

  v7 = [(LNConnectionContext *)self initWithUserIdentity:v5 effectiveBundleIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNConnectionContext *)self userIdentity];
  [v4 encodeObject:v5 forKey:@"userIdentity"];

  v6 = [(LNConnectionContext *)self effectiveBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"effectiveBundleIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConnectionContext *)self userIdentity];
  v7 = [(LNConnectionContext *)self effectiveBundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, userIdentity: %@, effectiveBundleIdentifier: %@>", v5, self, v6, v7];

  return v8;
}

- (LNConnectionContext)initWithUserIdentity:(id)a3 effectiveBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = LNConnectionContext;
  v8 = [(LNConnectionContext *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    userIdentity = v8->_userIdentity;
    v8->_userIdentity = v9;

    objc_storeStrong(&v8->_effectiveBundleIdentifier, a4);
    v11 = v8;
  }

  return v8;
}

@end