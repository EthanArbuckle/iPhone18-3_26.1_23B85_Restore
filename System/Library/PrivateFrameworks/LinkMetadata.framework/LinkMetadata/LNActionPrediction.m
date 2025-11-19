@interface LNActionPrediction
- (BOOL)isEqual:(id)a3;
- (LNActionPrediction)initWithCoder:(id)a3;
- (LNActionPrediction)initWithParameterIdentifiers:(id)a3 displayRepresentation:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionPrediction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNActionPrediction *)self parameterIdentifiers];
        v8 = [(LNActionPrediction *)v6 parameterIdentifiers];

        if (v7 != v8)
        {
          v9 = [(LNActionPrediction *)self parameterIdentifiers];
          if (!v9)
          {
            goto LABEL_15;
          }

          v10 = v9;
          v11 = [(LNActionPrediction *)v6 parameterIdentifiers];

          if (!v11)
          {
            goto LABEL_15;
          }

          v12 = MEMORY[0x1E695DFD8];
          v13 = [(LNActionPrediction *)self parameterIdentifiers];
          v14 = [v12 setWithArray:v13];
          v15 = MEMORY[0x1E695DFD8];
          v16 = [(LNActionPrediction *)v6 parameterIdentifiers];
          v17 = [v15 setWithArray:v16];
          v18 = [v14 isEqualToSet:v17];

          if (!v18)
          {
LABEL_15:
            v24 = 0;
LABEL_19:

            goto LABEL_20;
          }
        }

        v19 = [(LNActionPrediction *)self displayRepresentation];
        v20 = [(LNActionPrediction *)v6 displayRepresentation];
        v21 = v19;
        v22 = v20;
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
  v3 = [(LNActionPrediction *)self parameterIdentifiers];
  v4 = [v3 hash];
  v5 = [(LNActionPrediction *)self displayRepresentation];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionPrediction *)self parameterIdentifiers];
  v7 = [(LNActionPrediction *)self displayRepresentation];
  v8 = [v3 stringWithFormat:@"<%@: %p, parameterIdentifiers: %@, displayRepresentation: %@>", v5, self, v6, v7];

  return v8;
}

- (LNActionPrediction)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"parameterIdentifiers"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];

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
    v11 = 0;
  }

  else
  {
    self = [(LNActionPrediction *)self initWithParameterIdentifiers:v8 displayRepresentation:v9];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionPrediction *)self parameterIdentifiers];
  [v4 encodeObject:v5 forKey:@"parameterIdentifiers"];

  v6 = [(LNActionPrediction *)self displayRepresentation];
  [v4 encodeObject:v6 forKey:@"displayRepresentation"];
}

- (LNActionPrediction)initWithParameterIdentifiers:(id)a3 displayRepresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNActionPrediction.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifiers"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNActionPrediction.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"displayRepresentation"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNActionPrediction;
  v10 = [(LNActionPrediction *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
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