@interface LNSymbolImageColorSpecification
- (BOOL)isEqual:(id)equal;
- (LNSymbolImageColorSpecification)initWithCoder:(id)coder;
- (LNSymbolImageColorSpecification)initWithPlatformSpecificData:(id)data platform:(id)platform;
- (LNSymbolImageColorSpecification)initWithSystemNamedColor:(id)color;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSymbolImageColorSpecification

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

    systemNamedColor = [(LNSymbolImageColorSpecification *)self systemNamedColor];
    systemNamedColor2 = [(LNSymbolImageColorSpecification *)v6 systemNamedColor];
    v9 = systemNamedColor;
    v10 = systemNamedColor2;
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

    platform = [(LNSymbolImageColorSpecification *)self platform];
    platform2 = [(LNSymbolImageColorSpecification *)v6 platform];
    v14 = platform;
    v18 = platform2;
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

    platformSpecificData = [(LNSymbolImageColorSpecification *)self platformSpecificData];
    platformSpecificData2 = [(LNSymbolImageColorSpecification *)v6 platformSpecificData];
    v20 = platformSpecificData;
    v23 = platformSpecificData2;
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
  systemNamedColor = [(LNSymbolImageColorSpecification *)self systemNamedColor];
  v4 = [systemNamedColor hash];
  platform = [(LNSymbolImageColorSpecification *)self platform];
  v6 = [platform hash] ^ v4;
  platformSpecificData = [(LNSymbolImageColorSpecification *)self platformSpecificData];
  v8 = [platformSpecificData hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  systemNamedColor = [(LNSymbolImageColorSpecification *)self systemNamedColor];
  platform = [(LNSymbolImageColorSpecification *)self platform];
  platformSpecificData = [(LNSymbolImageColorSpecification *)self platformSpecificData];
  platformSpecificData2 = [(LNSymbolImageColorSpecification *)self platformSpecificData];
  v10 = [v3 stringWithFormat:@"<%@: %p, systemNamedColor: %@, platform: %@, has platformSpecificData: %d, bytes %lu>", v5, self, systemNamedColor, platform, platformSpecificData != 0, objc_msgSend(platformSpecificData2, "length")];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  systemNamedColor = [(LNSymbolImageColorSpecification *)self systemNamedColor];
  [coderCopy encodeObject:systemNamedColor forKey:@"systemNamedColor"];

  platformSpecificData = [(LNSymbolImageColorSpecification *)self platformSpecificData];
  [coderCopy encodeObject:platformSpecificData forKey:@"platformSpecificData"];

  platform = [(LNSymbolImageColorSpecification *)self platform];
  [coderCopy encodeObject:platform forKey:@"platform"];
}

- (LNSymbolImageColorSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemNamedColor"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformSpecificData"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];

  if (v5)
  {
    v8 = [(LNSymbolImageColorSpecification *)self initWithSystemNamedColor:v5];
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
    v8 = [(LNSymbolImageColorSpecification *)self initWithPlatformSpecificData:v6 platform:v7];
    goto LABEL_9;
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (LNSymbolImageColorSpecification)initWithPlatformSpecificData:(id)data platform:(id)platform
{
  dataCopy = data;
  platformCopy = platform;
  v12.receiver = self;
  v12.super_class = LNSymbolImageColorSpecification;
  v9 = [(LNSymbolImageColorSpecification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platformSpecificData, data);
    objc_storeStrong(&v10->_platform, platform);
  }

  return v10;
}

- (LNSymbolImageColorSpecification)initWithSystemNamedColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = LNSymbolImageColorSpecification;
  v6 = [(LNSymbolImageColorSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemNamedColor, color);
  }

  return v7;
}

@end