@interface LNSymbolImageColorization
- (BOOL)isEqual:(id)a3;
- (LNSymbolImageColorization)initWithCoder:(id)a3;
- (LNSymbolImageColorization)initWithForeground:(id)a3 background:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSymbolImageColorization

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
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNSymbolImageColorization *)self foreground];
    v8 = [(LNSymbolImageColorization *)v6 foreground];
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
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNSymbolImageColorization *)self background];
    v16 = [(LNSymbolImageColorization *)v6 background];
    v14 = v15;
    v17 = v16;
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
  v3 = [(LNSymbolImageColorization *)self foreground];
  v4 = [v3 hash];
  v5 = [(LNSymbolImageColorization *)self background];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSymbolImageColorization *)self foreground];
  [v4 encodeObject:v5 forKey:@"foreground"];

  v6 = [(LNSymbolImageColorization *)self background];
  [v4 encodeObject:v6 forKey:@"background"];
}

- (LNSymbolImageColorization)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foreground"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"background"];

  v7 = [(LNSymbolImageColorization *)self initWithForeground:v5 background:v6];
  return v7;
}

- (LNSymbolImageColorization)initWithForeground:(id)a3 background:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LNSymbolImageColorization;
  v9 = [(LNSymbolImageColorization *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_foreground, a3);
    objc_storeStrong(&v10->_background, a4);
  }

  return v10;
}

@end