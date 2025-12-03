@interface _DPDataTypeParameters
+ (id)allDataTypeNames;
+ (id)dataTypeParametersFromDictionary:(id)dictionary;
+ (id)initParametersForDataType:(id)type;
+ (id)parametersFromFile:(id)file;
- (_DPDataTypeParameters)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation _DPDataTypeParameters

- (_DPDataTypeParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _DPDataTypeParameters;
  v5 = [(_DPDataTypeParameters *)&v14 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"LocalPrivacyBudget"];
  v7 = v6;
  if (v6)
  {
    [(_DPDataTypeParameters *)v6 floatValue];
    v5->_localPrivacyBudget = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"BudgetKeyName"];
    if (v9)
    {
      v10 = v9;
      v11 = [_DPPrivacyBudget budgetWithName:v9];
      if (v11)
      {
        budget = v5->_budget;
        v5->_budget = v11;

LABEL_6:
        v7 = v5;
        goto LABEL_9;
      }
    }

    v7 = 0;
  }

LABEL_9:

  return v7;
}

+ (id)dataTypeParametersFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

+ (id)initParametersForDataType:(id)type
{
  typeCopy = type;
  v5 = +[_DPStrings dataTypeParametersPath];
  v6 = [self parametersFromFile:v5];

  v7 = [v6 objectForKeyedSubscript:typeCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_DPPrivacyBudget *)self->_budget description];
  v7 = [v3 stringWithFormat:@"%@: %@, localPrivacyBudget=%f}", v5, v6, self->_localPrivacyBudget];

  return v7;
}

+ (id)parametersFromFile:(id)file
{
  fileCopy = file;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44___DPDataTypeParameters_parametersFromFile___block_invoke;
  v10[3] = &unk_27858ABB8;
  v11 = fileCopy;
  selfCopy = self;
  v5 = parametersFromFile__onceToken_1;
  v6 = fileCopy;
  if (v5 != -1)
  {
    dispatch_once(&parametersFromFile__onceToken_1, v10);
  }

  v7 = parametersFromFile__allParameters_0;
  v8 = parametersFromFile__allParameters_0;

  return v7;
}

+ (id)allDataTypeNames
{
  v3 = +[_DPStrings dataTypeParametersPath];
  v4 = [self parametersFromFile:v3];

  allKeys = [v4 allKeys];

  return allKeys;
}

@end