@interface LNBundleMetadataGeneratorDescription
- (BOOL)isEqual:(id)equal;
- (LNBundleMetadataGeneratorDescription)initWithCoder:(id)coder;
- (LNBundleMetadataGeneratorDescription)initWithName:(id)name version:(id)version;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNBundleMetadataGeneratorDescription

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

    name = [(LNBundleMetadataGeneratorDescription *)self name];
    name2 = [(LNBundleMetadataGeneratorDescription *)v6 name];
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

    version = [(LNBundleMetadataGeneratorDescription *)self version];
    version2 = [(LNBundleMetadataGeneratorDescription *)v6 version];
    v14 = version;
    v17 = version2;
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
  name = [(LNBundleMetadataGeneratorDescription *)self name];
  v4 = [name hash];
  version = [(LNBundleMetadataGeneratorDescription *)self version];
  v6 = [version hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(LNBundleMetadataGeneratorDescription *)self name];
  version = [(LNBundleMetadataGeneratorDescription *)self version];
  v8 = [v3 stringWithFormat:@"<%@: %p, name: %@, version: %@>", v5, self, name, version];

  return v8;
}

- (LNBundleMetadataGeneratorDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNBundleMetadataGeneratorDescription *)self initWithName:v5 version:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(LNBundleMetadataGeneratorDescription *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  version = [(LNBundleMetadataGeneratorDescription *)self version];
  [coderCopy encodeObject:version forKey:@"version"];
}

- (LNBundleMetadataGeneratorDescription)initWithName:(id)name version:(id)version
{
  nameCopy = name;
  versionCopy = version;
  v9 = versionCopy;
  if (nameCopy)
  {
    if (versionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNBundleMetadataGeneratorDescription.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNBundleMetadataGeneratorDescription.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"version"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNBundleMetadataGeneratorDescription;
  v10 = [(LNBundleMetadataGeneratorDescription *)&v19 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [v9 copy];
    version = v10->_version;
    v10->_version = v13;

    v15 = v10;
  }

  return v10;
}

@end