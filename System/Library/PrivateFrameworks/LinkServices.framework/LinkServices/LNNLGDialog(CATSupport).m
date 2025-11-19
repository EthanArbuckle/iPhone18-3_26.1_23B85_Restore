@interface LNNLGDialog(CATSupport)
- (id)localeXML;
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNNLGDialog(CATSupport)

- (id)localeXML
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = [MEMORY[0x1E695DF70] array];
  v2 = [a1 fallbackDialog];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = [a1 fallbackDialog];
  v5 = v4;
  if (isKindOfClass)
  {
    v6 = [v4 fullString];
    v7 = [a1 localeIdentifier];
    v8 = [v6 localizedStringForLocaleIdentifier:v7];
    v31 = [v8 ln_stringByEscapingForXML];
  }

  else
  {
    v31 = [v4 identifier];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [a1 nlgParams];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v13 type];
        v15 = [v13 title];
        v16 = a1;
        v17 = [a1 localeIdentifier];
        v18 = [v15 localizedStringForLocaleIdentifier:v17];
        v19 = [v18 ln_stringByEscapingForXML];

        v20 = [v13 format];
        v21 = [v13 value];

        if (v21)
        {
          v22 = [v13 value];
        }

        else
        {
          v22 = 0;
        }

        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type: %@, title: %@, value: %@, format: %@", v14, v19, v22, v20];
        [v33 addObject:v23];

        a1 = v16;
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  v24 = [v33 componentsJoinedByString:{@", "}];
  v25 = [v24 ln_stringByEscapingForXML];

  v26 = MEMORY[0x1E696AEC0];
  v27 = [a1 localeIdentifier];
  v28 = [v26 stringWithFormat:@"<?xml version=1.0 encoding=UTF-8 standalone=no?>\n<cat xmlns=urn:apple:names:siri:cat:1.0 locale=%@>\n<all>\n<dialog>nlgParams: %@</dialog>\n<dialog>fallback: %@</dialog>\n</all>\n</cat>\n", v27, v25, v31];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)getResultWithCompletionHandler:()CATSupport
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"LNNLGDialog+CATSupport.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v24 = @"locale";
  v6 = [a1 localeIdentifier];
  v25[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = getCATClass_softClass_5953;
  v23 = getCATClass_softClass_5953;
  if (!getCATClass_softClass_5953)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __getCATClass_block_invoke_5954;
    v19[3] = &unk_1E74B26D0;
    v19[4] = &v20;
    __getCATClass_block_invoke_5954(v19);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = [a1 parametersXML];
  v11 = [a1 localeXML];
  v12 = [a1 defaultCATOptions];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__LNNLGDialog_CATSupport__getResultWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E74B13B0;
  v18 = v5;
  v13 = v5;
  LODWORD(v16) = v12;
  [v8 execute:0 paramsXML:v10 localeXML:v11 parameters:MEMORY[0x1E695E0F8] globals:v7 callback:0 options:v16 completion:v17];

  v14 = *MEMORY[0x1E69E9840];
}

@end