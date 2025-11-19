@interface LNAutoShortcutSubstitution
- (LNAutoShortcutSubstitution)initWithActionIdentifier:(id)a3 basePhraseTemplateSubstitutions:(id)a4;
- (LNAutoShortcutSubstitution)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAutoShortcutSubstitution

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAutoShortcutSubstitution *)self actionIdentifier];
  [v4 encodeObject:v5 forKey:@"actionIdentifier"];

  v6 = [(LNAutoShortcutSubstitution *)self basePhraseTemplateSubstitutions];
  [v4 encodeObject:v6 forKey:@"basePhraseTemplateSubstitutions"];
}

- (LNAutoShortcutSubstitution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"basePhraseTemplateSubstitutions"];

    if (v9)
    {
      self = [(LNAutoShortcutSubstitution *)self initWithActionIdentifier:v5 basePhraseTemplateSubstitutions:v9];
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

- (LNAutoShortcutSubstitution)initWithActionIdentifier:(id)a3 basePhraseTemplateSubstitutions:(id)a4
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
    [v17 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutSubstitution.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutSubstitution.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"basePhraseTemplateSubstitutions"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNAutoShortcutSubstitution;
  v10 = [(LNAutoShortcutSubstitution *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
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