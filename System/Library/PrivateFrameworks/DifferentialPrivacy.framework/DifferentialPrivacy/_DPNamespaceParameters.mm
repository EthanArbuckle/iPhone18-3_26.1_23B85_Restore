@interface _DPNamespaceParameters
+ (id)allNamespaceNames;
+ (id)initParametersForNamespace:(id)namespace;
+ (id)namespaceParametersFromDictionary:(id)dictionary;
+ (id)parametersFromFile:(id)file;
- (_DPNamespaceParameters)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation _DPNamespaceParameters

- (_DPNamespaceParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _DPNamespaceParameters;
  v5 = [(_DPNamespaceParameters *)&v13 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"BudgetKeyName"];
  if (v6)
  {
    v7 = [_DPPrivacyBudget budgetWithName:v6];
    if (v7)
    {
      v8 = v7;
      objc_storeStrong(&v5->_budget, v7);
      v9 = [dictionaryCopy objectForKeyedSubscript:@"DataTypes"];
      v10 = v9;
      if (v9 && [(NSArray *)v9 count])
      {
        allowedDataTypes = v5->_allowedDataTypes;
        v5->_allowedDataTypes = v10;

LABEL_7:
        v6 = v5;
        goto LABEL_10;
      }
    }

    v6 = 0;
  }

LABEL_10:

  return v6;
}

+ (id)namespaceParametersFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

+ (id)initParametersForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v5 = +[_DPStrings namespaceParametersPath];
  v6 = [self parametersFromFile:v5];

  v7 = [v6 objectForKeyedSubscript:namespaceCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_DPPrivacyBudget *)self->_budget description];
  v7 = [(NSArray *)self->_allowedDataTypes componentsJoinedByString:@", "];
  v8 = [v3 stringWithFormat:@"%@: { %@, allowedDataTypes=%@}", v5, v6, v7];

  return v8;
}

+ (id)parametersFromFile:(id)file
{
  fileCopy = file;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45___DPNamespaceParameters_parametersFromFile___block_invoke;
  v10[3] = &unk_27858ABB8;
  v11 = fileCopy;
  selfCopy = self;
  v5 = parametersFromFile__onceToken;
  v6 = fileCopy;
  if (v5 != -1)
  {
    dispatch_once(&parametersFromFile__onceToken, v10);
  }

  v7 = parametersFromFile__allParameters;
  v8 = parametersFromFile__allParameters;

  return v7;
}

+ (id)allNamespaceNames
{
  v3 = +[_DPStrings namespaceParametersPath];
  v4 = [self parametersFromFile:v3];

  allKeys = [v4 allKeys];

  return allKeys;
}

@end