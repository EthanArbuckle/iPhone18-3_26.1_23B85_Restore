@interface LNActionPrediction
- (BOOL)isEqual:(id)equal;
- (LNActionPrediction)initWithCoder:(id)coder;
- (LNActionPrediction)initWithParameterIdentifiers:(id)identifiers displayRepresentation:(id)representation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionPrediction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        parameterIdentifiers = [(LNActionPrediction *)self parameterIdentifiers];
        parameterIdentifiers2 = [(LNActionPrediction *)v6 parameterIdentifiers];

        if (parameterIdentifiers != parameterIdentifiers2)
        {
          parameterIdentifiers3 = [(LNActionPrediction *)self parameterIdentifiers];
          if (!parameterIdentifiers3)
          {
            goto LABEL_15;
          }

          v10 = parameterIdentifiers3;
          parameterIdentifiers4 = [(LNActionPrediction *)v6 parameterIdentifiers];

          if (!parameterIdentifiers4)
          {
            goto LABEL_15;
          }

          v12 = MEMORY[0x1E695DFD8];
          parameterIdentifiers5 = [(LNActionPrediction *)self parameterIdentifiers];
          v14 = [v12 setWithArray:parameterIdentifiers5];
          v15 = MEMORY[0x1E695DFD8];
          parameterIdentifiers6 = [(LNActionPrediction *)v6 parameterIdentifiers];
          v17 = [v15 setWithArray:parameterIdentifiers6];
          v18 = [v14 isEqualToSet:v17];

          if (!v18)
          {
LABEL_15:
            v24 = 0;
LABEL_19:

            goto LABEL_20;
          }
        }

        displayRepresentation = [(LNActionPrediction *)self displayRepresentation];
        displayRepresentation2 = [(LNActionPrediction *)v6 displayRepresentation];
        v21 = displayRepresentation;
        v22 = displayRepresentation2;
        v23 = v22;
        if (v21 == v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = 0;
          if (v21 && v22)
          {
            v24 = [(LNActionPrediction *)v21 isEqual:v22];
          }
        }
      }

      else
      {
        v24 = 0;
        v21 = v6;
        v6 = 0;
      }
    }

    else
    {
      v21 = 0;
      v24 = 0;
    }

    goto LABEL_19;
  }

  v24 = 1;
LABEL_20:

  return v24;
}

- (unint64_t)hash
{
  parameterIdentifiers = [(LNActionPrediction *)self parameterIdentifiers];
  v4 = [parameterIdentifiers hash];
  displayRepresentation = [(LNActionPrediction *)self displayRepresentation];
  v6 = [displayRepresentation hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  parameterIdentifiers = [(LNActionPrediction *)self parameterIdentifiers];
  displayRepresentation = [(LNActionPrediction *)self displayRepresentation];
  v8 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifiers: %@, displayRepresentation: %@>", v5, self, parameterIdentifiers, displayRepresentation];

  return v8;
}

- (LNActionPrediction)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"parameterIdentifiers"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];

  if (v8)
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
    self = [(LNActionPrediction *)self initWithParameterIdentifiers:v8 displayRepresentation:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterIdentifiers = [(LNActionPrediction *)self parameterIdentifiers];
  [coderCopy encodeObject:parameterIdentifiers forKey:@"parameterIdentifiers"];

  displayRepresentation = [(LNActionPrediction *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];
}

- (LNActionPrediction)initWithParameterIdentifiers:(id)identifiers displayRepresentation:(id)representation
{
  identifiersCopy = identifiers;
  representationCopy = representation;
  v9 = representationCopy;
  if (identifiersCopy)
  {
    if (representationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionPrediction.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifiers"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNActionPrediction.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"displayRepresentation"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNActionPrediction;
  v10 = [(LNActionPrediction *)&v19 init];
  if (v10)
  {
    v11 = [identifiersCopy copy];
    parameterIdentifiers = v10->_parameterIdentifiers;
    v10->_parameterIdentifiers = v11;

    v13 = [v9 copy];
    displayRepresentation = v10->_displayRepresentation;
    v10->_displayRepresentation = v13;

    v15 = v10;
  }

  return v10;
}

@end