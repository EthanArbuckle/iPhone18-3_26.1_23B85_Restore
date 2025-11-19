@interface LNSymbolImageColorSpecification
- (BOOL)isEqual:(id)a3;
- (LNSymbolImageColorSpecification)initWithCoder:(id)a3;
- (LNSymbolImageColorSpecification)initWithPlatformSpecificData:(id)a3 platform:(id)a4;
- (LNSymbolImageColorSpecification)initWithSystemNamedColor:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSymbolImageColorSpecification

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

    v7 = [(LNSymbolImageColorSpecification *)self systemNamedColor];
    v8 = [(LNSymbolImageColorSpecification *)v6 systemNamedColor];
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

    v16 = [(LNSymbolImageColorSpecification *)self platform];
    v17 = [(LNSymbolImageColorSpecification *)v6 platform];
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

    v21 = [(LNSymbolImageColorSpecification *)self platformSpecificData];
    v22 = [(LNSymbolImageColorSpecification *)v6 platformSpecificData];
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
  v3 = [(LNSymbolImageColorSpecification *)self systemNamedColor];
  v4 = [v3 hash];
  v5 = [(LNSymbolImageColorSpecification *)self platform];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNSymbolImageColorSpecification *)self platformSpecificData];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSymbolImageColorSpecification *)self systemNamedColor];
  v7 = [(LNSymbolImageColorSpecification *)self platform];
  v8 = [(LNSymbolImageColorSpecification *)self platformSpecificData];
  v9 = [(LNSymbolImageColorSpecification *)self platformSpecificData];
  v10 = [v3 stringWithFormat:@"<%@: %p, systemNamedColor: %@, platform: %@, has platformSpecificData: %d, bytes %lu>", v5, self, v6, v7, v8 != 0, objc_msgSend(v9, "length")];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSymbolImageColorSpecification *)self systemNamedColor];
  [v4 encodeObject:v5 forKey:@"systemNamedColor"];

  v6 = [(LNSymbolImageColorSpecification *)self platformSpecificData];
  [v4 encodeObject:v6 forKey:@"platformSpecificData"];

  v7 = [(LNSymbolImageColorSpecification *)self platform];
  [v4 encodeObject:v7 forKey:@"platform"];
}

- (LNSymbolImageColorSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemNamedColor"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformSpecificData"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platform"];

  if (v5)
  {
    v8 = [(LNSymbolImageColorSpecification *)self initWithSystemNamedColor:v5];
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
    v8 = [(LNSymbolImageColorSpecification *)self initWithPlatformSpecificData:v6 platform:v7];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (LNSymbolImageColorSpecification)initWithPlatformSpecificData:(id)a3 platform:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LNSymbolImageColorSpecification;
  v9 = [(LNSymbolImageColorSpecification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platformSpecificData, a3);
    objc_storeStrong(&v10->_platform, a4);
  }

  return v10;
}

- (LNSymbolImageColorSpecification)initWithSystemNamedColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LNSymbolImageColorSpecification;
  v6 = [(LNSymbolImageColorSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_systemNamedColor, a3);
  }

  return v7;
}

@end