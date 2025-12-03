@interface LNDialog
- (BOOL)isEqual:(id)equal;
- (LNDialog)initWithCoder:(id)coder;
- (LNDialog)initWithLocaleIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDialog

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localeIdentifier = [(LNDialog *)self localeIdentifier];
  [coderCopy encodeObject:localeIdentifier forKey:@"localeIdentifier"];
}

- (LNDialog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];

  if (v5)
  {
    self = [(LNDialog *)self initWithLocaleIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      localeIdentifier = [(LNDialog *)self localeIdentifier];
      localeIdentifier2 = [(LNDialog *)v6 localeIdentifier];
      v9 = localeIdentifier;
      v10 = localeIdentifier2;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqualToString:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  localeIdentifier = [(LNDialog *)self localeIdentifier];
  v3 = [localeIdentifier hash];

  return v3;
}

- (LNDialog)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDialog.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier"}];
  }

  v12.receiver = self;
  v12.super_class = LNDialog;
  v6 = [(LNDialog *)&v12 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    localeIdentifier = v6->_localeIdentifier;
    v6->_localeIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

@end