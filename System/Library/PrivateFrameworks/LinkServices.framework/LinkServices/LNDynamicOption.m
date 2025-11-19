@interface LNDynamicOption
- (BOOL)isEqual:(id)a3;
- (LNDynamicOption)initWithCoder:(id)a3;
- (LNDynamicOption)initWithValue:(id)a3 indentationLevel:(int64_t)a4;
- (LNImage)image;
- (LNStaticDeferredLocalizedString)subtitle;
- (LNStaticDeferredLocalizedString)title;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNDynamicOption

- (unint64_t)hash
{
  v3 = [(LNDynamicOption *)self value];
  v4 = [v3 hash];
  v5 = [(LNDynamicOption *)self title];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNDynamicOption *)self subtitle];
  v8 = [v7 hash];

  return v6 ^ v8;
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
LABEL_29:

      goto LABEL_30;
    }

    v7 = [(LNDynamicOption *)self value];
    v8 = [(LNDynamicOption *)v6 value];
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
        goto LABEL_27;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v16 = [(LNDynamicOption *)self title];
    v17 = [(LNDynamicOption *)v6 title];
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
        goto LABEL_26;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v22 = [(LNDynamicOption *)self subtitle];
    v23 = [(LNDynamicOption *)v6 subtitle];
    v20 = v22;
    v24 = v23;
    v19 = v24;
    if (v20 == v24)
    {
    }

    else
    {
      if (!v20 || !v24)
      {

        LOBYTE(v12) = 0;
        goto LABEL_26;
      }

      v12 = [v20 isEqual:v24];

      if (!v12)
      {
        goto LABEL_26;
      }
    }

    v25 = [(LNDynamicOption *)self indentationLevel];
    LOBYTE(v12) = v25 == [(LNDynamicOption *)v6 indentationLevel];
LABEL_26:

    goto LABEL_27;
  }

  LOBYTE(v12) = 1;
LABEL_30:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNDynamicOption *)self title];
  v7 = [v3 stringWithFormat:@"<%@: %p titleKey=%@>", v5, self, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(LNDynamicOption *)self value];
  [v5 encodeObject:v4 forKey:@"value"];

  [v5 encodeInteger:-[LNDynamicOption indentationLevel](self forKey:{"indentationLevel"), @"indentationLevel"}];
}

- (LNDynamicOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v6 = [v4 decodeIntegerForKey:@"indentationLevel"];

  v7 = [(LNDynamicOption *)self initWithValue:v5 indentationLevel:v6];
  return v7;
}

- (LNImage)image
{
  v2 = [(LNDynamicOption *)self value];
  v3 = [v2 displayRepresentation];
  v4 = [v3 image];

  return v4;
}

- (LNStaticDeferredLocalizedString)subtitle
{
  v2 = [(LNDynamicOption *)self value];
  v3 = [v2 displayRepresentation];
  v4 = [v3 subtitle];

  return v4;
}

- (LNStaticDeferredLocalizedString)title
{
  v2 = [(LNDynamicOption *)self value];
  v3 = [v2 displayRepresentation];
  v4 = [v3 title];

  return v4;
}

- (LNDynamicOption)initWithValue:(id)a3 indentationLevel:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsResult.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  v14.receiver = self;
  v14.super_class = LNDynamicOption;
  v9 = [(LNDynamicOption *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, a3);
    v10->_indentationLevel = a4;
    v11 = v10;
  }

  return v10;
}

@end