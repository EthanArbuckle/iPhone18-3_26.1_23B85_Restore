@interface LNDynamicOptionsResult
- (LNDynamicOptionsResult)initWithCoder:(id)coder;
- (LNDynamicOptionsResult)initWithSections:(id)sections usesIndexedCollation:(BOOL)collation promptLabel:(id)label dependentParameterIdentifiers:(id)identifiers;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDynamicOptionsResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sections = [(LNDynamicOptionsResult *)self sections];
  [coderCopy encodeObject:sections forKey:@"sections"];

  [coderCopy encodeBool:-[LNDynamicOptionsResult usesIndexedCollation](self forKey:{"usesIndexedCollation"), @"usesIndexedCollation"}];
  promptLabel = [(LNDynamicOptionsResult *)self promptLabel];
  [coderCopy encodeObject:promptLabel forKey:@"promptLabel"];

  dependentParameterIdentifiers = [(LNDynamicOptionsResult *)self dependentParameterIdentifiers];
  [coderCopy encodeObject:dependentParameterIdentifiers forKey:@"dependentParameterIdentifiers"];
}

- (LNDynamicOptionsResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sections"];

  v9 = [coderCopy decodeBoolForKey:@"usesIndexedCollation"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promptLabel"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"dependentParameterIdentifiers"];

  v15 = [(LNDynamicOptionsResult *)self initWithSections:v8 usesIndexedCollation:v9 promptLabel:v10 dependentParameterIdentifiers:v14];
  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sections = [(LNDynamicOptionsResult *)self sections];
  v7 = [sections description];
  usesIndexedCollation = [(LNDynamicOptionsResult *)self usesIndexedCollation];
  promptLabel = [(LNDynamicOptionsResult *)self promptLabel];
  dependentParameterIdentifiers = [(LNDynamicOptionsResult *)self dependentParameterIdentifiers];
  v11 = [v3 stringWithFormat:@"<%@: %p, sections: %@, usesIndexedCollation: %i, promptLabel: %@, dependentParameterIdentifiers: %@>", v5, self, v7, usesIndexedCollation, promptLabel, dependentParameterIdentifiers];

  return v11;
}

- (LNDynamicOptionsResult)initWithSections:(id)sections usesIndexedCollation:(BOOL)collation promptLabel:(id)label dependentParameterIdentifiers:(id)identifiers
{
  sectionsCopy = sections;
  labelCopy = label;
  identifiersCopy = identifiers;
  if (!sectionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsResult.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"sections"}];
  }

  v24.receiver = self;
  v24.super_class = LNDynamicOptionsResult;
  v14 = [(LNDynamicOptionsResult *)&v24 init];
  if (v14)
  {
    v15 = [sectionsCopy copy];
    sections = v14->_sections;
    v14->_sections = v15;

    v14->_usesIndexedCollation = collation;
    v17 = [labelCopy copy];
    promptLabel = v14->_promptLabel;
    v14->_promptLabel = v17;

    v19 = [identifiersCopy copy];
    dependentParameterIdentifiers = v14->_dependentParameterIdentifiers;
    v14->_dependentParameterIdentifiers = v19;

    v21 = v14;
  }

  return v14;
}

@end