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
  v2 = [a1 fullString];
  v3 = [v2 parametersForCAT];
  v4 = [a1 supportingString];
  v5 = [v4 parametersForCAT];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = [v3 if_dictionaryByAddingEntriesFromDictionary:v7];

  return v8;
}

- (id)parameterDefinitions
{
  v2 = [a1 fullString];
  v3 = [v2 parameterDefinitions];
  v4 = [a1 supportingString];
  v5 = [v4 parameterDefinitions];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)parametersXML
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 parameterDefinitions];
  v3 = [v2 componentsJoinedByString:@"\n"];
  v4 = [v1 stringWithFormat:@"<cat xmlns=urn:apple:names:siri:cat:1.0>\n<parameters>\n%@\n</parameters>\n</cat>\n", v3];

  return v4;
}

- (id)localeXML
{
  v2 = [a1 fullString];
  v3 = [v2 localizedKeyWithParameters];

  v4 = [a1 supportingString];
  v5 = [v4 localizedKeyWithParameters];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<full>%@</full><supporting>%@</supporting>", v3, v5];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [a1 localeIdentifier];
  v10 = [v8 stringWithFormat:@"<?xml version=1.0 encoding=UTF-8 standalone=no?>\n<cat xmlns=urn:apple:names:siri:cat:1.0 locale=%@>\n<all>\n<dialog>%@</dialog>\n</all>\n</cat>\n", v9, v7];

  return v10;
}

- (void)getResultWithCompletionHandler:()CATSupport
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"LNBasicDialog+CATSupport.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v25 = @"locale";
  v6 = [a1 localeIdentifier];
  v26[0] = v6;
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
  v10 = [a1 parametersXML];
  v11 = [a1 localeXML];
  v12 = [a1 parameters];
  v13 = [a1 defaultCATOptions];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__LNBasicDialog_CATSupport__getResultWithCompletionHandler___block_invoke;
  v18[3] = &unk_1E74B13B0;
  v19 = v5;
  v14 = v5;
  LODWORD(v17) = v13;
  [v8 execute:0 paramsXML:v10 localeXML:v11 parameters:v12 globals:v7 callback:0 options:v17 completion:v18];

  v15 = *MEMORY[0x1E69E9840];
}

@end