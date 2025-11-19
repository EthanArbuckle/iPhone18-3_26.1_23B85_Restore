@interface LNDynamicOptionsResult
- (LNDynamicOptionsResult)initWithCoder:(id)a3;
- (LNDynamicOptionsResult)initWithSections:(id)a3 usesIndexedCollation:(BOOL)a4 promptLabel:(id)a5 dependentParameterIdentifiers:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNDynamicOptionsResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNDynamicOptionsResult *)self sections];
  [v4 encodeObject:v5 forKey:@"sections"];

  [v4 encodeBool:-[LNDynamicOptionsResult usesIndexedCollation](self forKey:{"usesIndexedCollation"), @"usesIndexedCollation"}];
  v6 = [(LNDynamicOptionsResult *)self promptLabel];
  [v4 encodeObject:v6 forKey:@"promptLabel"];

  v7 = [(LNDynamicOptionsResult *)self dependentParameterIdentifiers];
  [v4 encodeObject:v7 forKey:@"dependentParameterIdentifiers"];
}

- (LNDynamicOptionsResult)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"sections"];

  v9 = [v5 decodeBoolForKey:@"usesIndexedCollation"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"promptLabel"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v5 decodeObjectOfClasses:v13 forKey:@"dependentParameterIdentifiers"];

  v15 = [(LNDynamicOptionsResult *)self initWithSections:v8 usesIndexedCollation:v9 promptLabel:v10 dependentParameterIdentifiers:v14];
  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNDynamicOptionsResult *)self sections];
  v7 = [v6 description];
  v8 = [(LNDynamicOptionsResult *)self usesIndexedCollation];
  v9 = [(LNDynamicOptionsResult *)self promptLabel];
  v10 = [(LNDynamicOptionsResult *)self dependentParameterIdentifiers];
  v11 = [v3 stringWithFormat:@"<%@: %p, sections: %@, usesIndexedCollation: %i, promptLabel: %@, dependentParameterIdentifiers: %@>", v5, self, v7, v8, v9, v10];

  return v11;
}

- (LNDynamicOptionsResult)initWithSections:(id)a3 usesIndexedCollation:(BOOL)a4 promptLabel:(id)a5 dependentParameterIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsResult.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"sections"}];
  }

  v24.receiver = self;
  v24.super_class = LNDynamicOptionsResult;
  v14 = [(LNDynamicOptionsResult *)&v24 init];
  if (v14)
  {
    v15 = [v11 copy];
    sections = v14->_sections;
    v14->_sections = v15;

    v14->_usesIndexedCollation = a4;
    v17 = [v12 copy];
    promptLabel = v14->_promptLabel;
    v14->_promptLabel = v17;

    v19 = [v13 copy];
    dependentParameterIdentifiers = v14->_dependentParameterIdentifiers;
    v14->_dependentParameterIdentifiers = v19;

    v21 = v14;
  }

  return v14;
}

@end