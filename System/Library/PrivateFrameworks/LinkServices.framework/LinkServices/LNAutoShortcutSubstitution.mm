@interface LNAutoShortcutSubstitution
- (LNAutoShortcutSubstitution)initWithActionIdentifier:(id)identifier basePhraseTemplateSubstitutions:(id)substitutions;
- (LNAutoShortcutSubstitution)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAutoShortcutSubstitution

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionIdentifier = [(LNAutoShortcutSubstitution *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  basePhraseTemplateSubstitutions = [(LNAutoShortcutSubstitution *)self basePhraseTemplateSubstitutions];
  [coderCopy encodeObject:basePhraseTemplateSubstitutions forKey:@"basePhraseTemplateSubstitutions"];
}

- (LNAutoShortcutSubstitution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"basePhraseTemplateSubstitutions"];

    if (v9)
    {
      self = [(LNAutoShortcutSubstitution *)self initWithActionIdentifier:v5 basePhraseTemplateSubstitutions:v9];
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

- (LNAutoShortcutSubstitution)initWithActionIdentifier:(id)identifier basePhraseTemplateSubstitutions:(id)substitutions
{
  identifierCopy = identifier;
  substitutionsCopy = substitutions;
  v9 = substitutionsCopy;
  if (identifierCopy)
  {
    if (substitutionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAutoShortcutSubstitution.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutSubstitution.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"basePhraseTemplateSubstitutions"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNAutoShortcutSubstitution;
  v10 = [(LNAutoShortcutSubstitution *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    actionIdentifier = v10->_actionIdentifier;
    v10->_actionIdentifier = v11;

    v13 = [v9 copy];
    basePhraseTemplateSubstitutions = v10->_basePhraseTemplateSubstitutions;
    v10->_basePhraseTemplateSubstitutions = v13;

    v15 = v10;
  }

  return v10;
}

@end