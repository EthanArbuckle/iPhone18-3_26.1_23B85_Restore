@interface LNSymbolImage
- (BOOL)isEqual:(id)equal;
- (LNSymbolConfiguration)platformAgnosticSymbolConfiguration;
- (LNSymbolImage)initWithCoder:(id)coder;
- (LNSymbolImage)initWithSymbolSystemName:(id)name;
- (LNSymbolImage)initWithSymbolSystemName:(id)name colorization:(id)colorization configuration:(id)configuration;
- (LNSymbolImage)initWithSymbolSystemName:(id)name tintColorData:(id)data configurationData:(id)configurationData platform:(id)platform;
- (LNSymbolImage)initWithSymbolSystemName:(id)name tintColorData:(id)data platformAgnosticConfiguration:(id)configuration platform:(id)platform;
- (NSData)configurationData;
- (NSData)tintColorData;
- (NSString)platform;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSymbolImage

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

    systemName = [(LNSymbolImage *)self systemName];
    systemName2 = [(LNSymbolImage *)v6 systemName];
    v9 = systemName;
    v10 = systemName2;
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

    colorization = [(LNSymbolImage *)self colorization];
    colorization2 = [(LNSymbolImage *)v6 colorization];
    v14 = colorization;
    v18 = colorization2;
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

    configurationSpecification = [(LNSymbolImage *)self configurationSpecification];
    configurationSpecification2 = [(LNSymbolImage *)v6 configurationSpecification];
    v20 = configurationSpecification;
    v23 = configurationSpecification2;
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
  systemName = [(LNSymbolImage *)self systemName];
  v4 = [systemName hash];
  colorization = [(LNSymbolImage *)self colorization];
  v6 = [colorization hash] ^ v4;
  configurationSpecification = [(LNSymbolImage *)self configurationSpecification];
  v8 = [configurationSpecification hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  systemName = [(LNSymbolImage *)self systemName];
  colorization = [(LNSymbolImage *)self colorization];
  configurationSpecification = [(LNSymbolImage *)self configurationSpecification];
  v9 = [v3 stringWithFormat:@"<%@: %p, systemName: %@, colorization: %@, configurationSpecification: %@>", v5, self, systemName, colorization, configurationSpecification];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = LNSymbolImage;
  coderCopy = coder;
  [(LNImage *)&v8 encodeWithCoder:coderCopy];
  v5 = [(LNSymbolImage *)self systemName:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"systemName"];

  colorization = [(LNSymbolImage *)self colorization];
  [coderCopy encodeObject:colorization forKey:@"colorization"];

  configurationSpecification = [(LNSymbolImage *)self configurationSpecification];
  [coderCopy encodeObject:configurationSpecification forKey:@"configurationSpecification"];
}

- (LNSymbolImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemName"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorization"];
    if (!v6)
    {
      v6 = objc_opt_new();
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationSpecification"];
    self = [(LNSymbolImage *)self initWithSymbolSystemName:v5 colorization:v6 configuration:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)platform
{
  colorization = [(LNSymbolImage *)self colorization];
  background = [colorization background];
  if (background)
  {
    goto LABEL_2;
  }

  background = [(LNSymbolImage *)self colorization];
  foreground = [background foreground];
  platformSpecificData = [foreground platformSpecificData];
  if (!platformSpecificData)
  {

LABEL_2:
    goto LABEL_3;
  }

  v14 = platformSpecificData;
  colorization2 = [(LNSymbolImage *)self colorization];
  foreground2 = [colorization2 foreground];
  platform = [foreground2 platform];

  if (platform)
  {
    colorization3 = [(LNSymbolImage *)self colorization];
    foreground3 = [colorization3 foreground];
    platform2 = [foreground3 platform];
LABEL_15:

    goto LABEL_19;
  }

LABEL_3:
  configurationSpecification = [(LNSymbolImage *)self configurationSpecification];
  platformSpecificData2 = [configurationSpecification platformSpecificData];
  if (platformSpecificData2)
  {
    v7 = platformSpecificData2;
    configurationSpecification2 = [(LNSymbolImage *)self configurationSpecification];
    platform3 = [configurationSpecification2 platform];

    if (platform3)
    {
      colorization3 = [(LNSymbolImage *)self configurationSpecification];
      platform2 = [colorization3 platform];
LABEL_19:

      goto LABEL_20;
    }
  }

  else
  {
  }

  colorization3 = [(LNSymbolImage *)self colorization];
  background2 = [colorization3 background];
  if (background2)
  {

LABEL_18:
    platform2 = 0;
    goto LABEL_19;
  }

  colorization4 = [(LNSymbolImage *)self colorization];
  foreground4 = [colorization4 foreground];
  systemNamedColor = [foreground4 systemNamedColor];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_18;
  }

  colorization5 = [(LNSymbolImage *)self colorization];
  foreground5 = [colorization5 foreground];
  systemNamedColor2 = [foreground5 systemNamedColor];
  tintColorPlatform = [systemNamedColor2 tintColorPlatform];

  if (tintColorPlatform)
  {
    colorization3 = [(LNSymbolImage *)self colorization];
    foreground3 = [colorization3 foreground];
    systemNamedColor3 = [foreground3 systemNamedColor];
    platform2 = [systemNamedColor3 tintColorPlatform];

    goto LABEL_15;
  }

  platform2 = 0;
LABEL_20:

  return platform2;
}

- (LNSymbolConfiguration)platformAgnosticSymbolConfiguration
{
  configurationSpecification = [(LNSymbolImage *)self configurationSpecification];
  platformAgnosticConfiguration = [configurationSpecification platformAgnosticConfiguration];

  return platformAgnosticConfiguration;
}

- (NSData)configurationData
{
  configurationSpecification = [(LNSymbolImage *)self configurationSpecification];
  platformSpecificData = [configurationSpecification platformSpecificData];

  return platformSpecificData;
}

- (NSData)tintColorData
{
  colorization = [(LNSymbolImage *)self colorization];
  background = [colorization background];

  if (background)
  {
    tintColorData = 0;
    goto LABEL_14;
  }

  colorization2 = [(LNSymbolImage *)self colorization];
  foreground = [colorization2 foreground];

  platformSpecificData = [foreground platformSpecificData];
  v9 = platformSpecificData;
  if (!platformSpecificData)
  {
    systemNamedColor = [foreground systemNamedColor];
    if (systemNamedColor && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      tintColorData = [systemNamedColor tintColorData];
      if (!tintColorData)
      {
LABEL_12:

        goto LABEL_13;
      }

      tintColorPlatform = [systemNamedColor tintColorPlatform];

      if (tintColorPlatform)
      {
        tintColorData = [systemNamedColor tintColorData];
        goto LABEL_12;
      }
    }

    tintColorData = 0;
    goto LABEL_12;
  }

  tintColorData = platformSpecificData;
LABEL_13:

LABEL_14:

  return tintColorData;
}

- (LNSymbolImage)initWithSymbolSystemName:(id)name tintColorData:(id)data platformAgnosticConfiguration:(id)configuration platform:(id)platform
{
  nameCopy = name;
  dataCopy = data;
  configurationCopy = configuration;
  platformCopy = platform;
  v14 = platformCopy;
  v15 = 0;
  if (dataCopy && platformCopy)
  {
    v15 = [[LNSymbolImageColorSpecification alloc] initWithPlatformSpecificData:dataCopy platform:platformCopy];
  }

  v16 = [[LNSymbolImageColorization alloc] initWithForeground:v15 background:0];
  v17 = 0;
  if (configurationCopy && v14)
  {
    v17 = [[LNSymbolImageConfigurationSpecification alloc] initWithPlatformAgnosticConfiguration:configurationCopy];
  }

  v18 = [(LNSymbolImage *)self initWithSymbolSystemName:nameCopy colorization:v16 configuration:v17];

  return v18;
}

- (LNSymbolImage)initWithSymbolSystemName:(id)name tintColorData:(id)data configurationData:(id)configurationData platform:(id)platform
{
  nameCopy = name;
  dataCopy = data;
  configurationDataCopy = configurationData;
  platformCopy = platform;
  v14 = platformCopy;
  v15 = 0;
  if (dataCopy && platformCopy)
  {
    v15 = [[LNSymbolImageColorSpecification alloc] initWithPlatformSpecificData:dataCopy platform:platformCopy];
  }

  v16 = [[LNSymbolImageColorization alloc] initWithForeground:v15 background:0];
  v17 = 0;
  if (configurationDataCopy && v14)
  {
    v17 = [[LNSymbolImageConfigurationSpecification alloc] initWithPlatformSpecificationConfigurationData:configurationDataCopy platform:v14];
  }

  v18 = [(LNSymbolImage *)self initWithSymbolSystemName:nameCopy colorization:v16 configuration:v17];

  return v18;
}

- (LNSymbolImage)initWithSymbolSystemName:(id)name colorization:(id)colorization configuration:(id)configuration
{
  nameCopy = name;
  colorizationCopy = colorization;
  configurationCopy = configuration;
  if (nameCopy)
  {
    v16.receiver = self;
    v16.super_class = LNSymbolImage;
    v11 = [(LNImage *)&v16 initWithSystemImageNamed:nameCopy];
    if (v11)
    {
      v12 = [nameCopy copy];
      systemName = v11->_systemName;
      v11->_systemName = v12;

      objc_storeStrong(&v11->_colorization, colorization);
      objc_storeStrong(&v11->_configurationSpecification, configuration);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNSymbolImage)initWithSymbolSystemName:(id)name
{
  nameCopy = name;
  v5 = objc_opt_new();
  v6 = [(LNSymbolImage *)self initWithSymbolSystemName:nameCopy colorization:v5 configuration:0];

  return v6;
}

@end