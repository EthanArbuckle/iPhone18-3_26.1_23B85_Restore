@interface LNSymbolImageConfigurationSpecification
- (BOOL)isEqual:(id)equal;
- (LNSymbolImageConfigurationSpecification)initWithCoder:(id)coder;
- (LNSymbolImageConfigurationSpecification)initWithPlatformAgnosticConfiguration:(id)configuration;
- (LNSymbolImageConfigurationSpecification)initWithPlatformSpecificationConfigurationData:(id)data platform:(id)platform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSymbolImageConfigurationSpecification

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

    platformAgnosticConfiguration = [(LNSymbolImageConfigurationSpecification *)self platformAgnosticConfiguration];
    platformAgnosticConfiguration2 = [(LNSymbolImageConfigurationSpecification *)v6 platformAgnosticConfiguration];
    v9 = platformAgnosticConfiguration;
    v10 = platformAgnosticConfiguration2;
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

    platformSpecificData = [(LNSymbolImageConfigurationSpecification *)self platformSpecificData];
    platformSpecificData2 = [(LNSymbolImageConfigurationSpecification *)v6 platformSpecificData];
    v14 = platformSpecificData;
    v18 = platformSpecificData2;
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

    platform = [(LNSymbolImageConfigurationSpecification *)self platform];
    platform2 = [(LNSymbolImageConfigurationSpecification *)v6 platform];
    v20 = platform;
    v23 = platform2;
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
  platformAgnosticConfiguration = [(LNSymbolImageConfigurationSpecification *)self platformAgnosticConfiguration];
  v4 = [platformAgnosticConfiguration hash];
  platformSpecificData = [(LNSymbolImageConfigurationSpecification *)self platformSpecificData];
  v6 = [platformSpecificData hash] ^ v4;
  platform = [(LNSymbolImageConfigurationSpecification *)self platform];
  v8 = [platform hash];

  return v6 ^ v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  platformAgnosticConfiguration = [(LNSymbolImageConfigurationSpecification *)self platformAgnosticConfiguration];
  [coderCopy encodeObject:platformAgnosticConfiguration forKey:@"platformAgnosticConfiguration"];

  platformSpecificData = [(LNSymbolImageConfigurationSpecification *)self platformSpecificData];
  [coderCopy encodeObject:platformSpecificData forKey:@"platformSpecificData"];

  platform = [(LNSymbolImageConfigurationSpecification *)self platform];
  [coderCopy encodeObject:platform forKey:@"platform"];
}

- (LNSymbolImageConfigurationSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformAgnosticConfiguration"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformSpecificData"];

  if (v5)
  {
    v8 = [(LNSymbolImageConfigurationSpecification *)self initWithPlatformAgnosticConfiguration:v5];
LABEL_9:
    self = v8;
    selfCopy = self;
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

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (LNSymbolImageConfigurationSpecification)initWithPlatformSpecificationConfigurationData:(id)data platform:(id)platform
{
  dataCopy = data;
  platformCopy = platform;
  v14.receiver = self;
  v14.super_class = LNSymbolImageConfigurationSpecification;
  v8 = [(LNSymbolImageConfigurationSpecification *)&v14 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    platformSpecificData = v8->_platformSpecificData;
    v8->_platformSpecificData = v9;

    v11 = [platformCopy copy];
    platform = v8->_platform;
    v8->_platform = v11;
  }

  return v8;
}

- (LNSymbolImageConfigurationSpecification)initWithPlatformAgnosticConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = LNSymbolImageConfigurationSpecification;
  v6 = [(LNSymbolImageConfigurationSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformAgnosticConfiguration, configuration);
  }

  return v7;
}

@end