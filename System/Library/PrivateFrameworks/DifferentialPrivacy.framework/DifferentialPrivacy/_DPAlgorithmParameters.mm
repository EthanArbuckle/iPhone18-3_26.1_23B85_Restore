@interface _DPAlgorithmParameters
+ (BOOL)allowDPMechanismNone:(id)none;
+ (id)algorithmParametersForKey:(id)key;
+ (id)algorithmParametersFromDictionary:(id)dictionary;
+ (id)allAlgorithmNames;
+ (id)parametersFromFile:(id)file;
- (_DPAlgorithmParameters)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation _DPAlgorithmParameters

- (_DPAlgorithmParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _DPAlgorithmParameters;
  v6 = [(_DPAlgorithmParameters *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!dictionaryCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_parameterDictionary, dictionary);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

+ (id)algorithmParametersFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

+ (id)algorithmParametersForKey:(id)key
{
  keyCopy = key;
  v5 = +[_DPStrings algorithmParametersPath];
  v6 = [self parametersFromFile:v5];

  v7 = [v6 objectForKeyedSubscript:keyCopy];

  parameterDictionary = [v7 parameterDictionary];

  return parameterDictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { parametersDictionary=%@ }", v5, self->_parameterDictionary];

  return v6;
}

+ (id)parametersFromFile:(id)file
{
  fileCopy = file;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45___DPAlgorithmParameters_parametersFromFile___block_invoke;
  v10[3] = &unk_27858ABB8;
  v11 = fileCopy;
  selfCopy = self;
  v5 = parametersFromFile__onceToken_0;
  v6 = fileCopy;
  if (v5 != -1)
  {
    dispatch_once(&parametersFromFile__onceToken_0, v10);
  }

  v7 = allParameters;
  v8 = allParameters;

  return v7;
}

+ (id)allAlgorithmNames
{
  v3 = +[_DPStrings keyNamesPath];
  v4 = [self parametersFromFile:v3];

  allKeys = [v4 allKeys];

  return allKeys;
}

+ (BOOL)allowDPMechanismNone:(id)none
{
  v3 = [none objectForKeyedSubscript:@"DPMechanismNoneAllowed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end