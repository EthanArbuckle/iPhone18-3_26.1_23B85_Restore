@interface LNDynamicOption
- (BOOL)isEqual:(id)equal;
- (LNDynamicOption)initWithCoder:(id)coder;
- (LNDynamicOption)initWithValue:(id)value indentationLevel:(int64_t)level;
- (LNImage)image;
- (LNStaticDeferredLocalizedString)subtitle;
- (LNStaticDeferredLocalizedString)title;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDynamicOption

- (unint64_t)hash
{
  value = [(LNDynamicOption *)self value];
  v4 = [value hash];
  title = [(LNDynamicOption *)self title];
  v6 = [title hash] ^ v4;
  subtitle = [(LNDynamicOption *)self subtitle];
  v8 = [subtitle hash];

  return v6 ^ v8;
}

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
LABEL_29:

      goto LABEL_30;
    }

    value = [(LNDynamicOption *)self value];
    value2 = [(LNDynamicOption *)v6 value];
    v9 = value;
    v10 = value2;
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

    title = [(LNDynamicOption *)self title];
    title2 = [(LNDynamicOption *)v6 title];
    v14 = title;
    v18 = title2;
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

    subtitle = [(LNDynamicOption *)self subtitle];
    subtitle2 = [(LNDynamicOption *)v6 subtitle];
    v20 = subtitle;
    v24 = subtitle2;
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

    indentationLevel = [(LNDynamicOption *)self indentationLevel];
    LOBYTE(v12) = indentationLevel == [(LNDynamicOption *)v6 indentationLevel];
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
  title = [(LNDynamicOption *)self title];
  v7 = [v3 stringWithFormat:@"<%@: %p titleKey=%@>", v5, self, title];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  value = [(LNDynamicOption *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  [coderCopy encodeInteger:-[LNDynamicOption indentationLevel](self forKey:{"indentationLevel"), @"indentationLevel"}];
}

- (LNDynamicOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v6 = [coderCopy decodeIntegerForKey:@"indentationLevel"];

  v7 = [(LNDynamicOption *)self initWithValue:v5 indentationLevel:v6];
  return v7;
}

- (LNImage)image
{
  value = [(LNDynamicOption *)self value];
  displayRepresentation = [value displayRepresentation];
  image = [displayRepresentation image];

  return image;
}

- (LNStaticDeferredLocalizedString)subtitle
{
  value = [(LNDynamicOption *)self value];
  displayRepresentation = [value displayRepresentation];
  subtitle = [displayRepresentation subtitle];

  return subtitle;
}

- (LNStaticDeferredLocalizedString)title
{
  value = [(LNDynamicOption *)self value];
  displayRepresentation = [value displayRepresentation];
  title = [displayRepresentation title];

  return title;
}

- (LNDynamicOption)initWithValue:(id)value indentationLevel:(int64_t)level
{
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsResult.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  v14.receiver = self;
  v14.super_class = LNDynamicOption;
  v9 = [(LNDynamicOption *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, value);
    v10->_indentationLevel = level;
    v11 = v10;
  }

  return v10;
}

@end