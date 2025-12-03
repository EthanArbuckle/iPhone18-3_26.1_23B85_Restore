@interface LNVocabulary
- (BOOL)isEqual:(id)equal;
- (LNVocabulary)initWithCoder:(id)coder;
- (LNVocabulary)initWithTerm:(id)term appSettingName:(id)name;
- (LNVocabulary)initWithTerm:(id)term entityIdentifier:(id)identifier;
- (LNVocabulary)initWithTerm:(id)term entityTypeName:(id)name;
- (LNVocabulary)initWithTerm:(id)term traits:(id)traits;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNVocabulary

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

    term = [(LNVocabulary *)self term];
    term2 = [(LNVocabulary *)v6 term];
    v9 = term;
    v10 = term2;
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

    traits = [(LNVocabulary *)self traits];
    traits2 = [(LNVocabulary *)v6 traits];
    v14 = traits;
    v17 = traits2;
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
        LOBYTE(v12) = [v14 isEqualToDictionary:v17];
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
  term = [(LNVocabulary *)self term];
  v4 = [term hash];
  traits = [(LNVocabulary *)self traits];
  v6 = [traits hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  term = [(LNVocabulary *)self term];
  traits = [(LNVocabulary *)self traits];
  v8 = [v3 stringWithFormat:@"<%@: %p, term: %@, traits: %@>", v5, self, term, traits];

  return v8;
}

- (LNVocabulary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"term"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"traits"];

  if (v5)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNVocabulary *)self initWithTerm:v5 traits:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  term = [(LNVocabulary *)self term];
  [coderCopy encodeObject:term forKey:@"term"];

  traits = [(LNVocabulary *)self traits];
  [coderCopy encodeObject:traits forKey:@"traits"];
}

- (LNVocabulary)initWithTerm:(id)term entityIdentifier:(id)identifier
{
  v17[3] = *MEMORY[0x1E69E9840];
  v17[0] = @"appEntity";
  v16[0] = @"model";
  v16[1] = @"id";
  identifierCopy = identifier;
  termCopy = term;
  instanceIdentifier = [identifierCopy instanceIdentifier];
  v9 = [instanceIdentifier copy];
  v17[1] = v9;
  v16[2] = @"name";
  typeIdentifier = [identifierCopy typeIdentifier];

  v11 = [typeIdentifier copy];
  v17[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v13 = [(LNVocabulary *)self initWithTerm:termCopy traits:v12];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (LNVocabulary)initWithTerm:(id)term entityTypeName:(id)name
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"model";
  v12[1] = @"name";
  v13[0] = @"appEntityType";
  termCopy = term;
  v7 = [name copy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [(LNVocabulary *)self initWithTerm:termCopy traits:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (LNVocabulary)initWithTerm:(id)term appSettingName:(id)name
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"model";
  v12[1] = @"name";
  v13[0] = @"appSetting";
  termCopy = term;
  v7 = [name copy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [(LNVocabulary *)self initWithTerm:termCopy traits:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (LNVocabulary)initWithTerm:(id)term traits:(id)traits
{
  termCopy = term;
  traitsCopy = traits;
  v9 = traitsCopy;
  if (termCopy)
  {
    if (traitsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNVocabulary.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"term"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNVocabulary.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"traits"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNVocabulary;
  v10 = [(LNVocabulary *)&v19 init];
  if (v10)
  {
    v11 = [termCopy copy];
    term = v10->_term;
    v10->_term = v11;

    v13 = [v9 copy];
    traits = v10->_traits;
    v10->_traits = v13;

    v15 = v10;
  }

  return v10;
}

@end