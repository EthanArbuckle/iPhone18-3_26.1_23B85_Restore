@interface LNTargetMetadata
+ (LNTargetMetadata)defaultTarget;
+ (LNTargetMetadata)mainTarget;
- (BOOL)isEqual:(id)equal;
- (LNTargetMetadata)initWithCoder:(id)coder;
- (LNTargetMetadata)initWithType:(int64_t)type bundleIdentifier:(id)identifier conditions:(id)conditions;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNTargetMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        type = [(LNTargetMetadata *)self type];
        if (type != [(LNTargetMetadata *)v6 type])
        {
          LOBYTE(v13) = 0;
LABEL_24:

          goto LABEL_25;
        }

        bundleIdentifier = [(LNTargetMetadata *)self bundleIdentifier];
        bundleIdentifier2 = [(LNTargetMetadata *)v6 bundleIdentifier];
        v10 = bundleIdentifier;
        v11 = bundleIdentifier2;
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

        conditions = [(LNTargetMetadata *)self conditions];
        conditions2 = [(LNTargetMetadata *)v6 conditions];
        v15 = conditions;
        v18 = conditions2;
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
  type = [(LNTargetMetadata *)self type];
  bundleIdentifier = [(LNTargetMetadata *)self bundleIdentifier];
  v5 = [bundleIdentifier hash] ^ type;
  conditions = [(LNTargetMetadata *)self conditions];
  v7 = [conditions hash];

  return v5 ^ v7;
}

- (id)description
{
  type = [(LNTargetMetadata *)self type];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (type == 2)
  {
    bundleIdentifier = [(LNTargetMetadata *)self bundleIdentifier];
    conditions = [(LNTargetMetadata *)self conditions];
    [v4 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, conditions: %@>", v6, self, bundleIdentifier, conditions];
  }

  else
  {
    type2 = [(LNTargetMetadata *)self type];
    v10 = @"Default";
    if (type2 == 1)
    {
      v10 = @"Main";
    }

    if (type2 == 2)
    {
      v10 = @"BundleIdentifier";
    }

    conditions = v10;
    bundleIdentifier = [(LNTargetMetadata *)self conditions];
    [v4 stringWithFormat:@"<%@: %p, type: %@, conditions: %@>", v6, self, conditions, bundleIdentifier];
  }
  v11 = ;

  return v11;
}

- (LNTargetMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"conditions"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v11 = [(LNTargetMetadata *)self initWithType:v5 bundleIdentifier:v10 conditions:v9];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNTargetMetadata type](self forKey:{"type"), @"type"}];
  bundleIdentifier = [(LNTargetMetadata *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  conditions = [(LNTargetMetadata *)self conditions];
  [coderCopy encodeObject:conditions forKey:@"conditions"];
}

- (LNTargetMetadata)initWithType:(int64_t)type bundleIdentifier:(id)identifier conditions:(id)conditions
{
  identifierCopy = identifier;
  conditionsCopy = conditions;
  v18.receiver = self;
  v18.super_class = LNTargetMetadata;
  v10 = [(LNTargetMetadata *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v14 = [conditionsCopy copy];
    conditions = v11->_conditions;
    v11->_conditions = v14;

    v16 = v11;
  }

  return v11;
}

+ (LNTargetMetadata)mainTarget
{
  v2 = [[self alloc] initWithType:1 bundleIdentifier:0 conditions:0];

  return v2;
}

+ (LNTargetMetadata)defaultTarget
{
  v2 = [[self alloc] initWithType:0 bundleIdentifier:0 conditions:0];

  return v2;
}

@end