@interface LNSymbolImageConfigurationSpecification
- (BOOL)isEqual:(id)a3;
- (LNSymbolImageConfigurationSpecification)initWithCoder:(id)a3;
- (LNSymbolImageConfigurationSpecification)initWithPlatformAgnosticConfiguration:(id)a3;
- (LNSymbolImageConfigurationSpecification)initWithPlatformSpecificationConfigurationData:(id)a3 platform:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSymbolImageConfigurationSpecification

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

    v7 = [(LNSymbolImageConfigurationSpecification *)self platformAgnosticConfiguration];
    v8 = [(LNSymbolImageConfigurationSpecification *)v6 platformAgnosticConfiguration];
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

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v16 = [(LNSymbolImageConfigurationSpecification *)self platformSpecificData];
    v17 = [(LNSymbolImageConfigurationSpecification *)v6 platformSpecificData];
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

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v21 = [(LNSymbolImageConfigurationSpecification *)self platform];
    v22 = [(LNSymbolImageConfigurationSpecification *)v6 platform];
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
        LOBYTE(v12) = [v20 isEqual:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNSymbolImageConfigurationSpecification *)self platformAgnosticConfiguration];
  v4 = [v3 hash];
  v5 = [(LNSymbolImageConfigurationSpecification *)self platformSpecificData];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNSymbolImageConfigurationSpecification *)self platform];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSymbolImageConfigurationSpecification *)self platformAgnosticConfiguration];
  [v4 encodeObject:v5 forKey:@"platformAgnosticConfiguration"];

  v6 = [(LNSymbolImageConfigurationSpecification *)self platformSpecificData];
  [v4 encodeObject:v6 forKey:@"platformSpecificData"];

  v7 = [(LNSymbolImageConfigurationSpecification *)self platform];
  [v4 encodeObject:v7 forKey:@"platform"];
}

- (LNSymbolImageConfigurationSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformAgnosticConfiguration"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformSpecificData"];

  if (v5)
  {
    v8 = [(LNSymbolImageConfigurationSpecification *)self initWithPlatformAgnosticConfiguration:v5];
LABEL_9:
    self = v8;
    v10 = self;
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v8 = [(LNSymbolImageConfigurationSpecification *)self initWithPlatformSpecificationConfigurationData:v7 platform:v6];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (LNSymbolImageConfigurationSpecification)initWithPlatformSpecificationConfigurationData:(id)a3 platform:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = LNSymbolImageConfigurationSpecification;
  v8 = [(LNSymbolImageConfigurationSpecification *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    platformSpecificData = v8->_platformSpecificData;
    v8->_platformSpecificData = v9;

    v11 = [v7 copy];
    platform = v8->_platform;
    v8->_platform = v11;
  }

  return v8;
}

- (LNSymbolImageConfigurationSpecification)initWithPlatformAgnosticConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LNSymbolImageConfigurationSpecification;
  v6 = [(LNSymbolImageConfigurationSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformAgnosticConfiguration, a3);
  }

  return v7;
}

@end