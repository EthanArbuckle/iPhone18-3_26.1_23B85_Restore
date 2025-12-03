@interface LNSymbolImageColorization
- (BOOL)isEqual:(id)equal;
- (LNSymbolImageColorization)initWithCoder:(id)coder;
- (LNSymbolImageColorization)initWithForeground:(id)foreground background:(id)background;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSymbolImageColorization

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

    foreground = [(LNSymbolImageColorization *)self foreground];
    foreground2 = [(LNSymbolImageColorization *)v6 foreground];
    v9 = foreground;
    v10 = foreground2;
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

    background = [(LNSymbolImageColorization *)self background];
    background2 = [(LNSymbolImageColorization *)v6 background];
    v14 = background;
    v17 = background2;
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
  foreground = [(LNSymbolImageColorization *)self foreground];
  v4 = [foreground hash];
  background = [(LNSymbolImageColorization *)self background];
  v6 = [background hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  foreground = [(LNSymbolImageColorization *)self foreground];
  [coderCopy encodeObject:foreground forKey:@"foreground"];

  background = [(LNSymbolImageColorization *)self background];
  [coderCopy encodeObject:background forKey:@"background"];
}

- (LNSymbolImageColorization)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foreground"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"background"];

  v7 = [(LNSymbolImageColorization *)self initWithForeground:v5 background:v6];
  return v7;
}

- (LNSymbolImageColorization)initWithForeground:(id)foreground background:(id)background
{
  foregroundCopy = foreground;
  backgroundCopy = background;
  v12.receiver = self;
  v12.super_class = LNSymbolImageColorization;
  v9 = [(LNSymbolImageColorization *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_foreground, foreground);
    objc_storeStrong(&v10->_background, background);
  }

  return v10;
}

@end