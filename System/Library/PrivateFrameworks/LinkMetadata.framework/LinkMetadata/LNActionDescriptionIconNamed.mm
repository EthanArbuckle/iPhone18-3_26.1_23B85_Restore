@interface LNActionDescriptionIconNamed
- (BOOL)isEqual:(id)equal;
- (LNActionDescriptionIconNamed)initWithCoder:(id)coder;
- (LNActionDescriptionIconNamed)initWithName:(id)name bundleURL:(id)l;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionDescriptionIconNamed

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

    name = [(LNActionDescriptionIconNamed *)self name];
    name2 = [(LNActionDescriptionIconNamed *)v6 name];
    v9 = name;
    v10 = name2;
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

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    bundleURL = [(LNActionDescriptionIconNamed *)self bundleURL];
    bundleURL2 = [(LNActionDescriptionIconNamed *)v6 bundleURL];
    v14 = bundleURL;
    v17 = bundleURL2;
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
  name = [(LNActionDescriptionIconNamed *)self name];
  v4 = [name hash];
  bundleURL = [(LNActionDescriptionIconNamed *)self bundleURL];
  v6 = [bundleURL hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(LNActionDescriptionIconNamed *)self name];
  bundleURL = [(LNActionDescriptionIconNamed *)self bundleURL];
  v8 = [v3 stringWithFormat:@"<%@: %p, name: %@, bundleURL: %@>", v5, self, name, bundleURL];

  return v8;
}

- (LNActionDescriptionIconNamed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];

  if (v5)
  {
    self = [(LNActionDescriptionIconNamed *)self initWithName:v5 bundleURL:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(LNActionDescriptionIconNamed *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  bundleURL = [(LNActionDescriptionIconNamed *)self bundleURL];
  [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];
}

- (LNActionDescriptionIconNamed)initWithName:(id)name bundleURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionDescriptionIcon.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v15.receiver = self;
  v15.super_class = LNActionDescriptionIconNamed;
  v9 = [(LNActionDescriptionIconNamed *)&v15 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    objc_storeStrong(&v9->_bundleURL, l);
    v12 = v9;
  }

  return v9;
}

@end