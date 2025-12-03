@interface LNAssistantDefinedSchemaConformance
- (BOOL)isEqual:(id)equal;
- (LNAssistantDefinedSchemaConformance)initWithCoder:(id)coder;
- (LNAssistantDefinedSchemaConformance)initWithName:(id)name version:(id)version domain:(id)domain;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantDefinedSchemaConformance

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(LNAssistantDefinedSchemaConformance *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  version = [(LNAssistantDefinedSchemaConformance *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  domain = [(LNAssistantDefinedSchemaConformance *)self domain];
  [coderCopy encodeObject:domain forKey:@"domain"];
}

- (LNAssistantDefinedSchemaConformance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNAssistantDefinedSchemaConformance *)self initWithName:v5 version:v6 domain:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  name = [(LNAssistantDefinedSchemaConformance *)self name];
  v4 = [name hash];
  version = [(LNAssistantDefinedSchemaConformance *)self version];
  v6 = [version hash];

  return v6 ^ v4;
}

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
LABEL_27:

      goto LABEL_28;
    }

    name = [(LNAssistantDefinedSchemaConformance *)self name];
    name2 = [(LNAssistantDefinedSchemaConformance *)v6 name];
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

    version = [(LNAssistantDefinedSchemaConformance *)self version];
    version2 = [(LNAssistantDefinedSchemaConformance *)v6 version];
    v14 = version;
    v18 = version2;
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

    domain = [(LNAssistantDefinedSchemaConformance *)self domain];
    domain2 = [(LNAssistantDefinedSchemaConformance *)v6 domain];
    v20 = domain;
    v23 = domain2;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(LNAssistantDefinedSchemaConformance *)self name];
  version = [(LNAssistantDefinedSchemaConformance *)self version];
  domain = [(LNAssistantDefinedSchemaConformance *)self domain];
  v9 = [v3 stringWithFormat:@"<%@: %p, name: %@, version: %@, domain: %@>", v5, self, name, version, domain];

  return v9;
}

- (LNAssistantDefinedSchemaConformance)initWithName:(id)name version:(id)version domain:(id)domain
{
  nameCopy = name;
  versionCopy = version;
  domainCopy = domain;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantDefinedSchemaConformance.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (versionCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAssistantDefinedSchemaConformance.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"version"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = LNAssistantDefinedSchemaConformance;
  v12 = [(LNAssistantDefinedSchemaConformance *)&v23 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [versionCopy copy];
    version = v12->_version;
    v12->_version = v15;

    v17 = [domainCopy copy];
    domain = v12->_domain;
    v12->_domain = v17;

    v19 = v12;
  }

  return v12;
}

@end