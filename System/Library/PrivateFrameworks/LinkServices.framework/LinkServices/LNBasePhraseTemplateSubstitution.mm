@interface LNBasePhraseTemplateSubstitution
- (LNBasePhraseTemplateSubstitution)initWithBasePhraseTemplate:(id)a3 parameterSubstitutions:(id)a4;
- (LNBasePhraseTemplateSubstitution)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNBasePhraseTemplateSubstitution

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNBasePhraseTemplateSubstitution *)self basePhraseTemplate];
  [v4 encodeObject:v5 forKey:@"basePhraseTemplate"];

  v6 = [(LNBasePhraseTemplateSubstitution *)self parameterSubstitutions];
  [v4 encodeObject:v6 forKey:@"parameterSubstitutions"];
}

- (LNBasePhraseTemplateSubstitution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"basePhraseTemplate"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"parameterSubstitutions"];

    if (v9)
    {
      self = [(LNBasePhraseTemplateSubstitution *)self initWithBasePhraseTemplate:v5 parameterSubstitutions:v9];
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

- (LNBasePhraseTemplateSubstitution)initWithBasePhraseTemplate:(id)a3 parameterSubstitutions:(id)a4
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
    [v17 handleFailureInMethod:a2 object:self file:@"LNBasePhraseTemplateSubstitution.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"basePhraseTemplate"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNBasePhraseTemplateSubstitution.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"parameterSubstitutions"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNBasePhraseTemplateSubstitution;
  v10 = [(LNBasePhraseTemplateSubstitution *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    basePhraseTemplate = v10->_basePhraseTemplate;
    v10->_basePhraseTemplate = v11;

    v13 = [v9 copy];
    parameterSubstitutions = v10->_parameterSubstitutions;
    v10->_parameterSubstitutions = v13;

    v15 = v10;
  }

  return v10;
}

@end