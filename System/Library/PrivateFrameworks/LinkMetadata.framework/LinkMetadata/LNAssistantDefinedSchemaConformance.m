@interface LNAssistantDefinedSchemaConformance
- (BOOL)isEqual:(id)a3;
- (LNAssistantDefinedSchemaConformance)initWithCoder:(id)a3;
- (LNAssistantDefinedSchemaConformance)initWithName:(id)a3 version:(id)a4 domain:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantDefinedSchemaConformance

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAssistantDefinedSchemaConformance *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(LNAssistantDefinedSchemaConformance *)self version];
  [v4 encodeObject:v6 forKey:@"version"];

  v7 = [(LNAssistantDefinedSchemaConformance *)self domain];
  [v4 encodeObject:v7 forKey:@"domain"];
}

- (LNAssistantDefinedSchemaConformance)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];

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
    v9 = 0;
  }

  else
  {
    self = [(LNAssistantDefinedSchemaConformance *)self initWithName:v5 version:v6 domain:v7];
    v9 = self;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(LNAssistantDefinedSchemaConformance *)self name];
  v4 = [v3 hash];
  v5 = [(LNAssistantDefinedSchemaConformance *)self version];
  v6 = [v5 hash];

  return v6 ^ v4;
}

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
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(LNAssistantDefinedSchemaConformance *)self name];
    v8 = [(LNAssistantDefinedSchemaConformance *)v6 name];
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

    v16 = [(LNAssistantDefinedSchemaConformance *)self version];
    v17 = [(LNAssistantDefinedSchemaConformance *)v6 version];
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

    v21 = [(LNAssistantDefinedSchemaConformance *)self domain];
    v22 = [(LNAssistantDefinedSchemaConformance *)v6 domain];
    v20 = v21;
    v23 = v22;
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
  v6 = [(LNAssistantDefinedSchemaConformance *)self name];
  v7 = [(LNAssistantDefinedSchemaConformance *)self version];
  v8 = [(LNAssistantDefinedSchemaConformance *)self domain];
  v9 = [v3 stringWithFormat:@"<%@: %p, name: %@, version: %@, domain: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (LNAssistantDefinedSchemaConformance)initWithName:(id)a3 version:(id)a4 domain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNAssistantDefinedSchemaConformance.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"LNAssistantDefinedSchemaConformance.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"version"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = LNAssistantDefinedSchemaConformance;
  v12 = [(LNAssistantDefinedSchemaConformance *)&v23 init];
  if (v12)
  {
    v13 = [v9 copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [v10 copy];
    version = v12->_version;
    v12->_version = v15;

    v17 = [v11 copy];
    domain = v12->_domain;
    v12->_domain = v17;

    v19 = v12;
  }

  return v12;
}

@end