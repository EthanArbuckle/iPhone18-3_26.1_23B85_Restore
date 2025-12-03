@interface LNParameterSubstitution
- (LNParameterSubstitution)initWithCoder:(id)coder;
- (LNParameterSubstitution)initWithParameterIdentifier:(id)identifier substitutionValues:(id)values;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNParameterSubstitution

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterIdentifier = [(LNParameterSubstitution *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];

  substitutionValues = [(LNParameterSubstitution *)self substitutionValues];
  [coderCopy encodeObject:substitutionValues forKey:@"substitutionValues"];
}

- (LNParameterSubstitution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"substitutionValues"];

    if (v9)
    {
      self = [(LNParameterSubstitution *)self initWithParameterIdentifier:v5 substitutionValues:v9];
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

- (LNParameterSubstitution)initWithParameterIdentifier:(id)identifier substitutionValues:(id)values
{
  identifierCopy = identifier;
  valuesCopy = values;
  v9 = valuesCopy;
  if (identifierCopy)
  {
    if (valuesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNParameterSubstitution.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNParameterSubstitution.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"substitutionValues"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNParameterSubstitution;
  v10 = [(LNParameterSubstitution *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    parameterIdentifier = v10->_parameterIdentifier;
    v10->_parameterIdentifier = v11;

    v13 = [v9 copy];
    substitutionValues = v10->_substitutionValues;
    v10->_substitutionValues = v13;

    v15 = v10;
  }

  return v10;
}

@end