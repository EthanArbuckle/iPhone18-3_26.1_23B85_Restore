@interface LNTypeDisplayRepresentation
- (BOOL)isEqual:(id)equal;
- (LNTypeDisplayRepresentation)initWithCoder:(id)coder;
- (LNTypeDisplayRepresentation)initWithName:(id)name numericFormat:(id)format synonyms:(id)synonyms;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNTypeDisplayRepresentation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(LNTypeDisplayRepresentation *)self name];
  numericFormat = [(LNTypeDisplayRepresentation *)self numericFormat];
  synonyms = [(LNTypeDisplayRepresentation *)self synonyms];
  v9 = [v3 stringWithFormat:@"<%@: %p, name: %@, numericFormat: %@>, synonyms: %@>", v5, self, name, numericFormat, synonyms];

  return v9;
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
LABEL_27:

      goto LABEL_28;
    }

    name = [(LNTypeDisplayRepresentation *)self name];
    name2 = [(LNTypeDisplayRepresentation *)v6 name];
    v9 = name;
    v10 = name2;
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

    numericFormat = [(LNTypeDisplayRepresentation *)self numericFormat];
    numericFormat2 = [(LNTypeDisplayRepresentation *)v6 numericFormat];
    v14 = numericFormat;
    v18 = numericFormat2;
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

    synonyms = [(LNTypeDisplayRepresentation *)self synonyms];
    synonyms2 = [(LNTypeDisplayRepresentation *)v6 synonyms];
    v20 = synonyms;
    v23 = synonyms2;
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
  name = [(LNTypeDisplayRepresentation *)self name];
  v4 = [name hash];
  numericFormat = [(LNTypeDisplayRepresentation *)self numericFormat];
  v6 = [numericFormat hash] ^ v4;
  synonyms = [(LNTypeDisplayRepresentation *)self synonyms];
  v8 = [synonyms hash];

  return v6 ^ v8;
}

- (LNTypeDisplayRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numericFormat"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"synonyms"];

  if (v5)
  {
    self = [(LNTypeDisplayRepresentation *)self initWithName:v5 numericFormat:v6 synonyms:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(LNTypeDisplayRepresentation *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  numericFormat = [(LNTypeDisplayRepresentation *)self numericFormat];
  [coderCopy encodeObject:numericFormat forKey:@"numericFormat"];

  synonyms = [(LNTypeDisplayRepresentation *)self synonyms];
  [coderCopy encodeObject:synonyms forKey:@"synonyms"];
}

- (LNTypeDisplayRepresentation)initWithName:(id)name numericFormat:(id)format synonyms:(id)synonyms
{
  nameCopy = name;
  formatCopy = format;
  synonymsCopy = synonyms;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNTypeDisplayRepresentation.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v22.receiver = self;
  v22.super_class = LNTypeDisplayRepresentation;
  v12 = [(LNTypeDisplayRepresentation *)&v22 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [formatCopy copy];
    numericFormat = v12->_numericFormat;
    v12->_numericFormat = v15;

    v17 = [synonymsCopy copy];
    synonyms = v12->_synonyms;
    v12->_synonyms = v17;

    v19 = v12;
  }

  return v12;
}

@end