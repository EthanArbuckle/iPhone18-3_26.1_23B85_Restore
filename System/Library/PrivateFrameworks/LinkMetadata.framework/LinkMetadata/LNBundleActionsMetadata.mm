@interface LNBundleActionsMetadata
- (BOOL)isEqual:(id)equal;
- (LNBundleActionsMetadata)initWithActions:(id)actions systemProtocolDefaults:(id)defaults;
- (LNBundleActionsMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNBundleActionsMetadata

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

    actions = [(LNBundleActionsMetadata *)self actions];
    actions2 = [(LNBundleActionsMetadata *)v6 actions];
    v9 = actions;
    v10 = actions2;
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

    systemProtocolDefaults = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
    systemProtocolDefaults2 = [(LNBundleActionsMetadata *)v6 systemProtocolDefaults];
    v14 = systemProtocolDefaults;
    v17 = systemProtocolDefaults2;
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
  actions = [(LNBundleActionsMetadata *)self actions];
  v4 = [actions hash];
  systemProtocolDefaults = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
  v6 = [systemProtocolDefaults hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  actions = [(LNBundleActionsMetadata *)self actions];
  systemProtocolDefaults = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
  v8 = [v3 stringWithFormat:@"<%@: %p, actions: %@, systemProtocolDefaults: %@>", v5, self, actions, systemProtocolDefaults];

  return v8;
}

- (LNBundleActionsMetadata)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"actions"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"systemProtocolDefaults"];

  selfCopy = 0;
  if (v9 && v14)
  {
    self = [(LNBundleActionsMetadata *)self initWithActions:v9 systemProtocolDefaults:v14];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actions = [(LNBundleActionsMetadata *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];

  systemProtocolDefaults = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
  [coderCopy encodeObject:systemProtocolDefaults forKey:@"systemProtocolDefaults"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LNBundleActionsMetadata alloc];
  actions = [(LNBundleActionsMetadata *)self actions];
  systemProtocolDefaults = [(LNBundleActionsMetadata *)self systemProtocolDefaults];
  v7 = [(LNBundleActionsMetadata *)v4 initWithActions:actions systemProtocolDefaults:systemProtocolDefaults];

  return v7;
}

- (LNBundleActionsMetadata)initWithActions:(id)actions systemProtocolDefaults:(id)defaults
{
  actionsCopy = actions;
  defaultsCopy = defaults;
  v10 = defaultsCopy;
  if (actionsCopy)
  {
    if (defaultsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNBundleActionsMetadata.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"actions"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNBundleActionsMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"systemProtocolDefaults"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = LNBundleActionsMetadata;
  v11 = [(LNBundleActionsMetadata *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actions, actions);
    objc_storeStrong(&v12->_systemProtocolDefaults, defaults);
    v13 = v12;
  }

  return v12;
}

@end