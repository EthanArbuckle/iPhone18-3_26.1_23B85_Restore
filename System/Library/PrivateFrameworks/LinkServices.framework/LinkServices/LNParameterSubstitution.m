@interface LNParameterSubstitution
- (LNParameterSubstitution)initWithCoder:(id)a3;
- (LNParameterSubstitution)initWithParameterIdentifier:(id)a3 substitutionValues:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNParameterSubstitution

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNParameterSubstitution *)self parameterIdentifier];
  [v4 encodeObject:v5 forKey:@"parameterIdentifier"];

  v6 = [(LNParameterSubstitution *)self substitutionValues];
  [v4 encodeObject:v6 forKey:@"substitutionValues"];
}

- (LNParameterSubstitution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"substitutionValues"];

    if (v9)
    {
      self = [(LNParameterSubstitution *)self initWithParameterIdentifier:v5 substitutionValues:v9];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (LNParameterSubstitution)initWithParameterIdentifier:(id)a3 substitutionValues:(id)a4
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
    [v17 handleFailureInMethod:a2 object:self file:@"LNParameterSubstitution.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNParameterSubstitution.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"substitutionValues"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNParameterSubstitution;
  v10 = [(LNParameterSubstitution *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
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