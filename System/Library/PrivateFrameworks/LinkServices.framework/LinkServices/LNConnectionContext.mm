@interface LNConnectionContext
- (BOOL)isEqual:(id)equal;
- (LNConnectionContext)initWithCoder:(id)coder;
- (LNConnectionContext)initWithUserIdentity:(id)identity effectiveBundleIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNConnectionContext

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
LABEL_20:

      goto LABEL_21;
    }

    userIdentity = [(LNConnectionContext *)self userIdentity];
    userIdentity2 = [(LNConnectionContext *)v6 userIdentity];
    v9 = userIdentity;
    v10 = userIdentity2;
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

    effectiveBundleIdentifier = [(LNConnectionContext *)self effectiveBundleIdentifier];
    effectiveBundleIdentifier2 = [(LNConnectionContext *)v6 effectiveBundleIdentifier];
    v14 = effectiveBundleIdentifier;
    v17 = effectiveBundleIdentifier2;
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
  userIdentity = [(LNConnectionContext *)self userIdentity];
  v4 = [userIdentity hash];
  effectiveBundleIdentifier = [(LNConnectionContext *)self effectiveBundleIdentifier];
  v6 = [effectiveBundleIdentifier hash];

  return v6 ^ v4;
}

- (LNConnectionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectiveBundleIdentifier"];

  v7 = [(LNConnectionContext *)self initWithUserIdentity:v5 effectiveBundleIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userIdentity = [(LNConnectionContext *)self userIdentity];
  [coderCopy encodeObject:userIdentity forKey:@"userIdentity"];

  effectiveBundleIdentifier = [(LNConnectionContext *)self effectiveBundleIdentifier];
  [coderCopy encodeObject:effectiveBundleIdentifier forKey:@"effectiveBundleIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  userIdentity = [(LNConnectionContext *)self userIdentity];
  effectiveBundleIdentifier = [(LNConnectionContext *)self effectiveBundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, userIdentity: %@, effectiveBundleIdentifier: %@>", v5, self, userIdentity, effectiveBundleIdentifier];

  return v8;
}

- (LNConnectionContext)initWithUserIdentity:(id)identity effectiveBundleIdentifier:(id)identifier
{
  identityCopy = identity;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = LNConnectionContext;
  v8 = [(LNConnectionContext *)&v13 init];
  if (v8)
  {
    v9 = [identityCopy copy];
    userIdentity = v8->_userIdentity;
    v8->_userIdentity = v9;

    objc_storeStrong(&v8->_effectiveBundleIdentifier, identifier);
    v11 = v8;
  }

  return v8;
}

@end