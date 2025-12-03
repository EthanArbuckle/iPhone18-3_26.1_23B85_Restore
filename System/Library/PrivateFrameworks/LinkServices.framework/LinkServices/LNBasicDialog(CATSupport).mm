@interface LNBasicDialog(CATSupport)
- (id)localeXML;
- (id)parameterDefinitions;
- (id)parameters;
- (id)parametersXML;
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNBasicDialog(CATSupport)

- (id)parameters
{
  fullString = [self fullString];
  parametersForCAT = [fullString parametersForCAT];
  supportingString = [self supportingString];
  parametersForCAT2 = [supportingString parametersForCAT];
  v6 = parametersForCAT2;
  if (parametersForCAT2)
  {
    v7 = parametersForCAT2;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = [parametersForCAT if_dictionaryByAddingEntriesFromDictionary:v7];

  return v8;
}

- (id)parameterDefinitions
{
  fullString = [self fullString];
  parameterDefinitions = [fullString parameterDefinitions];
  supportingString = [self supportingString];
  parameterDefinitions2 = [supportingString parameterDefinitions];
  v6 = parameterDefinitions2;
  if (parameterDefinitions2)
  {
    v7 = parameterDefinitions2;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [parameterDefinitions arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)parametersXML
{
  v1 = MEMORY[0x1E696AEC0];
  parameterDefinitions = [self parameterDefinitions];
  v3 = [parameterDefinitions componentsJoinedByString:@"\n"];
  v4 = [v1 stringWithFormat:@"<cat xmlns=urn:apple:names:siri:cat:1.0>\n<parameters>\n%@\n</parameters>\n</cat>\n", v3];

  return v4;
}

- (id)localeXML
{
  fullString = [self fullString];
  localizedKeyWithParameters = [fullString localizedKeyWithParameters];

  supportingString = [self supportingString];
  localizedKeyWithParameters2 = [supportingString localizedKeyWithParameters];

  if (localizedKeyWithParameters2)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<full>%@</full><supporting>%@</supporting>", localizedKeyWithParameters, localizedKeyWithParameters2];
  }

  else
  {
    v6 = localizedKeyWithParameters;
  }

  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  localeIdentifier = [self localeIdentifier];
  v10 = [v8 stringWithFormat:@"<?xml version=1.0 encoding=UTF-8 standalone=no?>\n<cat xmlns=urn:apple:names:siri:cat:1.0 locale=%@>\n<all>\n<dialog>%@</dialog>\n</all>\n</cat>\n", localeIdentifier, v7];

  return v10;
}

- (void)getResultWithCompletionHandler:()CATSupport
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNBasicDialog+CATSupport.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v25 = @"locale";
  localeIdentifier = [self localeIdentifier];
  v26[0] = localeIdentifier;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v8 = getCATClass_softClass;
  v24 = getCATClass_softClass;
  if (!getCATClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getCATClass_block_invoke;
    v20[3] = &unk_1E74B26D0;
    v20[4] = &v21;
    __getCATClass_block_invoke(v20);
    v8 = v22[3];
  }

  v9 = v8;
  _Block_object_dispose(&v21, 8);
  parametersXML = [self parametersXML];
  localeXML = [self localeXML];
  parameters = [self parameters];
  defaultCATOptions = [self defaultCATOptions];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__LNBasicDialog_CATSupport__getResultWithCompletionHandler___block_invoke;
  v18[3] = &unk_1E74B13B0;
  v19 = v5;
  v14 = v5;
  LODWORD(v17) = defaultCATOptions;
  [v8 execute:0 paramsXML:parametersXML localeXML:localeXML parameters:parameters globals:v7 callback:0 options:v17 completion:v18];

  v15 = *MEMORY[0x1E69E9840];
}

@end