@interface LNSubstitutionValue
- (LNSubstitutionValue)initWithCoder:(id)a3;
- (LNSubstitutionValue)initWithParameterIdentifier:(id)a3 title:(id)a4 titleKey:(id)a5 value:(id)a6 optionsCollectionTitle:(id)a7 systemImageName:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSubstitutionValue

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSubstitutionValue *)self parameterIdentifier];
  [v4 encodeObject:v5 forKey:@"parameterIdentifier"];

  v6 = [(LNSubstitutionValue *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(LNSubstitutionValue *)self titleKey];
  [v4 encodeObject:v7 forKey:@"titleKey"];

  v8 = [(LNSubstitutionValue *)self value];
  [v4 encodeObject:v8 forKey:@"value"];

  v9 = [(LNSubstitutionValue *)self optionsCollectionTitle];
  [v4 encodeObject:v9 forKey:@"optionsCollectionTitle"];

  v10 = [(LNSubstitutionValue *)self systemImageName];
  [v4 encodeObject:v10 forKey:@"systemImageName"];
}

- (LNSubstitutionValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleKey"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
        v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optionsCollectionTitle"];
        v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemImageName"];
        self = [(LNSubstitutionValue *)self initWithParameterIdentifier:v5 title:v6 titleKey:v7 value:v8 optionsCollectionTitle:v9 systemImageName:v10];

        v11 = self;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (LNSubstitutionValue)initWithParameterIdentifier:(id)a3 title:(id)a4 titleKey:(id)a5 value:(id)a6 optionsCollectionTitle:(id)a7 systemImageName:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"LNSubstitutionValue.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifier"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"LNSubstitutionValue.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"title"}];

LABEL_3:
  v32.receiver = self;
  v32.super_class = LNSubstitutionValue;
  v20 = [(LNSubstitutionValue *)&v32 init];
  if (v20)
  {
    v21 = [v14 copy];
    parameterIdentifier = v20->_parameterIdentifier;
    v20->_parameterIdentifier = v21;

    v23 = [v15 copy];
    title = v20->_title;
    v20->_title = v23;

    v25 = [v16 copy];
    titleKey = v20->_titleKey;
    v20->_titleKey = v25;

    objc_storeStrong(&v20->_value, a6);
    objc_storeStrong(&v20->_optionsCollectionTitle, a7);
    objc_storeStrong(&v20->_systemImageName, a8);
    v27 = v20;
  }

  return v20;
}

@end