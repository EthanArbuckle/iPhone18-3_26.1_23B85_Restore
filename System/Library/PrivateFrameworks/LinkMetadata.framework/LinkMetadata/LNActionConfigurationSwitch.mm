@interface LNActionConfigurationSwitch
- (BOOL)isEqual:(id)equal;
- (LNActionConfigurationSwitch)initWithCoder:(id)coder;
- (LNActionConfigurationSwitch)initWithParameterIdentifier:(id)identifier cases:(id)cases;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionConfigurationSwitch

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

    parameterIdentifier = [(LNActionConfigurationSwitch *)self parameterIdentifier];
    parameterIdentifier2 = [(LNActionConfigurationSwitch *)v6 parameterIdentifier];
    v9 = parameterIdentifier;
    v10 = parameterIdentifier2;
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

    cases = [(LNActionConfigurationSwitch *)self cases];
    cases2 = [(LNActionConfigurationSwitch *)v6 cases];
    v14 = cases;
    v17 = cases2;
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
  parameterIdentifier = [(LNActionConfigurationSwitch *)self parameterIdentifier];
  v4 = [parameterIdentifier hash];
  cases = [(LNActionConfigurationSwitch *)self cases];
  v6 = [cases hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterIdentifier = [(LNActionConfigurationSwitch *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];

  cases = [(LNActionConfigurationSwitch *)self cases];
  [coderCopy encodeObject:cases forKey:@"cases"];
}

- (LNActionConfigurationSwitch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"cases"];

    if (v9)
    {
      self = [(LNActionConfigurationSwitch *)self initWithParameterIdentifier:v5 cases:v9];
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
  parameterIdentifier = [(LNActionConfigurationSwitch *)self parameterIdentifier];
  cases = [(LNActionConfigurationSwitch *)self cases];
  v8 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifier: %@, cases: %@>", v5, self, parameterIdentifier, cases];

  return v8;
}

- (LNActionConfigurationSwitch)initWithParameterIdentifier:(id)identifier cases:(id)cases
{
  identifierCopy = identifier;
  casesCopy = cases;
  v9 = casesCopy;
  if (identifierCopy)
  {
    if (casesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionConfigurationSwitch.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNActionConfigurationSwitch.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"cases"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNActionConfigurationSwitch;
  v10 = [(LNActionConfigurationSwitch *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    parameterIdentifier = v10->_parameterIdentifier;
    v10->_parameterIdentifier = v11;

    v13 = [v9 copy];
    cases = v10->_cases;
    v10->_cases = v13;

    v15 = v10;
  }

  return v10;
}

@end