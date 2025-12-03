@interface LNDeferredLocalizedString
- (BOOL)isEqual:(id)equal;
- (LNDeferredLocalizedString)initWithCoder:(id)coder;
- (LNDeferredLocalizedString)initWithLocalizedKey:(id)key arguments:(id)arguments;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDeferredLocalizedString

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedKey = [(LNDeferredLocalizedString *)self localizedKey];
  [coderCopy encodeObject:localizedKey forKey:@"localizedKey"];

  arguments = [(LNDeferredLocalizedString *)self arguments];
  [coderCopy encodeObject:arguments forKey:@"arguments"];
}

- (LNDeferredLocalizedString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedKey"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"arguments"];

    if (v9)
    {
      self = [(LNDeferredLocalizedString *)self initWithLocalizedKey:v5 arguments:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localizedKey = [(LNDeferredLocalizedString *)self localizedKey];
  arguments = [(LNDeferredLocalizedString *)self arguments];
  v8 = [v3 stringWithFormat:@"<%@: %p, localizedKey: %@, arguments: %@>", v5, self, localizedKey, arguments];

  return v8;
}

- (unint64_t)hash
{
  localizedKey = [(LNDeferredLocalizedString *)self localizedKey];
  v4 = [localizedKey hash];
  arguments = [(LNDeferredLocalizedString *)self arguments];
  v6 = [arguments hash];

  return v6 ^ v4;
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
LABEL_20:

      goto LABEL_21;
    }

    localizedKey = [(LNDeferredLocalizedString *)self localizedKey];
    localizedKey2 = [(LNDeferredLocalizedString *)v6 localizedKey];
    v9 = localizedKey;
    v10 = localizedKey2;
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

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    arguments = [(LNDeferredLocalizedString *)self arguments];
    arguments2 = [(LNDeferredLocalizedString *)v6 arguments];
    v14 = arguments;
    v17 = arguments2;
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
        LOBYTE(v12) = [v14 isEqualToArray:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (LNDeferredLocalizedString)initWithLocalizedKey:(id)key arguments:(id)arguments
{
  keyCopy = key;
  argumentsCopy = arguments;
  v9 = argumentsCopy;
  if (keyCopy)
  {
    if (argumentsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDeferredLocalizedString.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"localizedKey"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNDeferredLocalizedString.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNDeferredLocalizedString;
  v10 = [(LNDeferredLocalizedString *)&v19 init];
  if (v10)
  {
    v11 = [keyCopy copy];
    localizedKey = v10->_localizedKey;
    v10->_localizedKey = v11;

    v13 = [v9 copy];
    arguments = v10->_arguments;
    v10->_arguments = v13;

    v15 = v10;
  }

  return v10;
}

@end