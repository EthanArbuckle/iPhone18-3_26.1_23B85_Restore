@interface LNBasePhraseTemplateSubstitution
- (LNBasePhraseTemplateSubstitution)initWithBasePhraseTemplate:(id)template parameterSubstitutions:(id)substitutions;
- (LNBasePhraseTemplateSubstitution)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNBasePhraseTemplateSubstitution

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  basePhraseTemplate = [(LNBasePhraseTemplateSubstitution *)self basePhraseTemplate];
  [coderCopy encodeObject:basePhraseTemplate forKey:@"basePhraseTemplate"];

  parameterSubstitutions = [(LNBasePhraseTemplateSubstitution *)self parameterSubstitutions];
  [coderCopy encodeObject:parameterSubstitutions forKey:@"parameterSubstitutions"];
}

- (LNBasePhraseTemplateSubstitution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"basePhraseTemplate"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parameterSubstitutions"];

    if (v9)
    {
      self = [(LNBasePhraseTemplateSubstitution *)self initWithBasePhraseTemplate:v5 parameterSubstitutions:v9];
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

- (LNBasePhraseTemplateSubstitution)initWithBasePhraseTemplate:(id)template parameterSubstitutions:(id)substitutions
{
  templateCopy = template;
  substitutionsCopy = substitutions;
  v9 = substitutionsCopy;
  if (templateCopy)
  {
    if (substitutionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNBasePhraseTemplateSubstitution.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"basePhraseTemplate"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNBasePhraseTemplateSubstitution.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"parameterSubstitutions"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNBasePhraseTemplateSubstitution;
  v10 = [(LNBasePhraseTemplateSubstitution *)&v19 init];
  if (v10)
  {
    v11 = [templateCopy copy];
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