@interface LNSymbolImage
- (BOOL)isEqual:(id)a3;
- (LNSymbolConfiguration)platformAgnosticSymbolConfiguration;
- (LNSymbolImage)initWithCoder:(id)a3;
- (LNSymbolImage)initWithSymbolSystemName:(id)a3;
- (LNSymbolImage)initWithSymbolSystemName:(id)a3 colorization:(id)a4 configuration:(id)a5;
- (LNSymbolImage)initWithSymbolSystemName:(id)a3 tintColorData:(id)a4 configurationData:(id)a5 platform:(id)a6;
- (LNSymbolImage)initWithSymbolSystemName:(id)a3 tintColorData:(id)a4 platformAgnosticConfiguration:(id)a5 platform:(id)a6;
- (NSData)configurationData;
- (NSData)tintColorData;
- (NSString)platform;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSymbolImage

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

    v7 = [(LNSymbolImage *)self systemName];
    v8 = [(LNSymbolImage *)v6 systemName];
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

    v16 = [(LNSymbolImage *)self colorization];
    v17 = [(LNSymbolImage *)v6 colorization];
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

    v21 = [(LNSymbolImage *)self configurationSpecification];
    v22 = [(LNSymbolImage *)v6 configurationSpecification];
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
  v3 = [(LNSymbolImage *)self systemName];
  v4 = [v3 hash];
  v5 = [(LNSymbolImage *)self colorization];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNSymbolImage *)self configurationSpecification];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSymbolImage *)self systemName];
  v7 = [(LNSymbolImage *)self colorization];
  v8 = [(LNSymbolImage *)self configurationSpecification];
  v9 = [v3 stringWithFormat:@"<%@: %p, systemName: %@, colorization: %@, configurationSpecification: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = LNSymbolImage;
  v4 = a3;
  [(LNImage *)&v8 encodeWithCoder:v4];
  v5 = [(LNSymbolImage *)self systemName:v8.receiver];
  [v4 encodeObject:v5 forKey:@"systemName"];

  v6 = [(LNSymbolImage *)self colorization];
  [v4 encodeObject:v6 forKey:@"colorization"];

  v7 = [(LNSymbolImage *)self configurationSpecification];
  [v4 encodeObject:v7 forKey:@"configurationSpecification"];
}

- (LNSymbolImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemName"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorization"];
    if (!v6)
    {
      v6 = objc_opt_new();
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationSpecification"];
    self = [(LNSymbolImage *)self initWithSymbolSystemName:v5 colorization:v6 configuration:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)platform
{
  v3 = [(LNSymbolImage *)self colorization];
  v4 = [v3 background];
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = [(LNSymbolImage *)self colorization];
  v12 = [v4 foreground];
  v13 = [v12 platformSpecificData];
  if (!v13)
  {

LABEL_2:
    goto LABEL_3;
  }

  v14 = v13;
  v15 = [(LNSymbolImage *)self colorization];
  v16 = [v15 foreground];
  v17 = [v16 platform];

  if (v17)
  {
    v10 = [(LNSymbolImage *)self colorization];
    v18 = [v10 foreground];
    v11 = [v18 platform];
LABEL_15:

    goto LABEL_19;
  }

LABEL_3:
  v5 = [(LNSymbolImage *)self configurationSpecification];
  v6 = [v5 platformSpecificData];
  if (v6)
  {
    v7 = v6;
    v8 = [(LNSymbolImage *)self configurationSpecification];
    v9 = [v8 platform];

    if (v9)
    {
      v10 = [(LNSymbolImage *)self configurationSpecification];
      v11 = [v10 platform];
LABEL_19:

      goto LABEL_20;
    }
  }

  else
  {
  }

  v10 = [(LNSymbolImage *)self colorization];
  v19 = [v10 background];
  if (v19)
  {

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v20 = [(LNSymbolImage *)self colorization];
  v21 = [v20 foreground];
  v22 = [v21 systemNamedColor];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_18;
  }

  v23 = [(LNSymbolImage *)self colorization];
  v24 = [v23 foreground];
  v25 = [v24 systemNamedColor];
  v26 = [v25 tintColorPlatform];

  if (v26)
  {
    v10 = [(LNSymbolImage *)self colorization];
    v18 = [v10 foreground];
    v27 = [v18 systemNamedColor];
    v11 = [v27 tintColorPlatform];

    goto LABEL_15;
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (LNSymbolConfiguration)platformAgnosticSymbolConfiguration
{
  v2 = [(LNSymbolImage *)self configurationSpecification];
  v3 = [v2 platformAgnosticConfiguration];

  return v3;
}

- (NSData)configurationData
{
  v2 = [(LNSymbolImage *)self configurationSpecification];
  v3 = [v2 platformSpecificData];

  return v3;
}

- (NSData)tintColorData
{
  v3 = [(LNSymbolImage *)self colorization];
  v4 = [v3 background];

  if (v4)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v6 = [(LNSymbolImage *)self colorization];
  v7 = [v6 foreground];

  v8 = [v7 platformSpecificData];
  v9 = v8;
  if (!v8)
  {
    v10 = [v7 systemNamedColor];
    if (v10 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [v10 tintColorData];
      if (!v5)
      {
LABEL_12:

        goto LABEL_13;
      }

      v11 = [v10 tintColorPlatform];

      if (v11)
      {
        v5 = [v10 tintColorData];
        goto LABEL_12;
      }
    }

    v5 = 0;
    goto LABEL_12;
  }

  v5 = v8;
LABEL_13:

LABEL_14:

  return v5;
}

- (LNSymbolImage)initWithSymbolSystemName:(id)a3 tintColorData:(id)a4 platformAgnosticConfiguration:(id)a5 platform:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = 0;
  if (v11 && v13)
  {
    v15 = [[LNSymbolImageColorSpecification alloc] initWithPlatformSpecificData:v11 platform:v13];
  }

  v16 = [[LNSymbolImageColorization alloc] initWithForeground:v15 background:0];
  v17 = 0;
  if (v12 && v14)
  {
    v17 = [[LNSymbolImageConfigurationSpecification alloc] initWithPlatformAgnosticConfiguration:v12];
  }

  v18 = [(LNSymbolImage *)self initWithSymbolSystemName:v10 colorization:v16 configuration:v17];

  return v18;
}

- (LNSymbolImage)initWithSymbolSystemName:(id)a3 tintColorData:(id)a4 configurationData:(id)a5 platform:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = 0;
  if (v11 && v13)
  {
    v15 = [[LNSymbolImageColorSpecification alloc] initWithPlatformSpecificData:v11 platform:v13];
  }

  v16 = [[LNSymbolImageColorization alloc] initWithForeground:v15 background:0];
  v17 = 0;
  if (v12 && v14)
  {
    v17 = [[LNSymbolImageConfigurationSpecification alloc] initWithPlatformSpecificationConfigurationData:v12 platform:v14];
  }

  v18 = [(LNSymbolImage *)self initWithSymbolSystemName:v10 colorization:v16 configuration:v17];

  return v18;
}

- (LNSymbolImage)initWithSymbolSystemName:(id)a3 colorization:(id)a4 configuration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v16.receiver = self;
    v16.super_class = LNSymbolImage;
    v11 = [(LNImage *)&v16 initWithSystemImageNamed:v8];
    if (v11)
    {
      v12 = [v8 copy];
      systemName = v11->_systemName;
      v11->_systemName = v12;

      objc_storeStrong(&v11->_colorization, a4);
      objc_storeStrong(&v11->_configurationSpecification, a5);
    }

    self = v11;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (LNSymbolImage)initWithSymbolSystemName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(LNSymbolImage *)self initWithSymbolSystemName:v4 colorization:v5 configuration:0];

  return v6;
}

@end