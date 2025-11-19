@interface _DPAlgorithmParameters
+ (BOOL)allowDPMechanismNone:(id)a3;
+ (id)algorithmParametersForKey:(id)a3;
+ (id)algorithmParametersFromDictionary:(id)a3;
+ (id)allAlgorithmNames;
+ (id)parametersFromFile:(id)a3;
- (_DPAlgorithmParameters)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation _DPAlgorithmParameters

- (_DPAlgorithmParameters)initWithDictionary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _DPAlgorithmParameters;
  v6 = [(_DPAlgorithmParameters *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_parameterDictionary, a3);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

+ (id)algorithmParametersFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

+ (id)algorithmParametersForKey:(id)a3
{
  v4 = a3;
  v5 = +[_DPStrings algorithmParametersPath];
  v6 = [a1 parametersFromFile:v5];

  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 parameterDictionary];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { parametersDictionary=%@ }", v5, self->_parameterDictionary];

  return v6;
}

+ (id)parametersFromFile:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45___DPAlgorithmParameters_parametersFromFile___block_invoke;
  v10[3] = &unk_27858ABB8;
  v11 = v4;
  v12 = a1;
  v5 = parametersFromFile__onceToken_0;
  v6 = v4;
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
  v4 = [a1 parametersFromFile:v3];

  v5 = [v4 allKeys];

  return v5;
}

+ (BOOL)allowDPMechanismNone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"DPMechanismNoneAllowed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end