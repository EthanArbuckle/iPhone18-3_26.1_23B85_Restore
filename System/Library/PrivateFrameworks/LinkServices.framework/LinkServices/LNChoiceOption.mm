@interface LNChoiceOption
- (BOOL)isEqual:(id)equal;
- (LNChoiceOption)initWithCoder:(id)coder;
- (LNChoiceOption)initWithIdentifier:(id)identifier title:(id)title style:(int64_t)style;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNChoiceOption

- (LNChoiceOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [coderCopy decodeIntegerForKey:@"style"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNChoiceOption *)self initWithIdentifier:v5 title:v6 style:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNChoiceOption *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  title = [(LNChoiceOption *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeInteger:-[LNChoiceOption style](self forKey:{"style"), @"style"}];
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
      v13 = 0;
LABEL_16:

      goto LABEL_17;
    }

    title = [(LNChoiceOption *)self title];
    title2 = [(LNChoiceOption *)v6 title];
    v9 = title;
    v10 = title2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (!v9 || !v10)
      {

LABEL_14:
        v13 = 0;
        goto LABEL_15;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    style = [(LNChoiceOption *)self style];
    v13 = style == [(LNChoiceOption *)v6 style];
LABEL_15:

    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  identifier = [(LNChoiceOption *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNChoiceOption *)self identifier];
  title = [(LNChoiceOption *)self title];
  style = [(LNChoiceOption *)self style];
  v9 = @"Default";
  if (style == 1)
  {
    v9 = @"Cancel";
  }

  if (style == 2)
  {
    v9 = @"Destructive";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, title: %@, style: %@>", v5, self, identifier, title, v9];

  return v10;
}

- (LNChoiceOption)initWithIdentifier:(id)identifier title:(id)title style:(int64_t)style
{
  identifierCopy = identifier;
  titleCopy = title;
  v12 = titleCopy;
  if (identifierCopy)
  {
    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNChoiceOption.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNChoiceOption.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"title"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNChoiceOption;
  v13 = [(LNChoiceOption *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_title, title);
    v14->_style = style;
    v15 = v14;
  }

  return v14;
}

@end