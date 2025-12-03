@interface LNNLGDialog(CATSupport)
- (id)localeXML;
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNNLGDialog(CATSupport)

- (id)localeXML
{
  v39 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  fallbackDialog = [self fallbackDialog];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  fallbackDialog2 = [self fallbackDialog];
  v5 = fallbackDialog2;
  if (isKindOfClass)
  {
    fullString = [fallbackDialog2 fullString];
    localeIdentifier = [self localeIdentifier];
    v8 = [fullString localizedStringForLocaleIdentifier:localeIdentifier];
    ln_stringByEscapingForXML = [v8 ln_stringByEscapingForXML];
  }

  else
  {
    ln_stringByEscapingForXML = [fallbackDialog2 identifier];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [self nlgParams];
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
        type = [v13 type];
        title = [v13 title];
        selfCopy = self;
        localeIdentifier2 = [self localeIdentifier];
        v18 = [title localizedStringForLocaleIdentifier:localeIdentifier2];
        ln_stringByEscapingForXML2 = [v18 ln_stringByEscapingForXML];

        format = [v13 format];
        value = [v13 value];

        if (value)
        {
          value2 = [v13 value];
        }

        else
        {
          value2 = 0;
        }

        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type: %@, title: %@, value: %@, format: %@", type, ln_stringByEscapingForXML2, value2, format];
        [array addObject:v23];

        self = selfCopy;
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v10);
  }

  v24 = [array componentsJoinedByString:{@", "}];
  ln_stringByEscapingForXML3 = [v24 ln_stringByEscapingForXML];

  v26 = MEMORY[0x1E696AEC0];
  localeIdentifier3 = [self localeIdentifier];
  v28 = [v26 stringWithFormat:@"<?xml version=1.0 encoding=UTF-8 standalone=no?>\n<cat xmlns=urn:apple:names:siri:cat:1.0 locale=%@>\n<all>\n<dialog>nlgParams: %@</dialog>\n<dialog>fallback: %@</dialog>\n</all>\n</cat>\n", localeIdentifier3, ln_stringByEscapingForXML3, ln_stringByEscapingForXML];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)getResultWithCompletionHandler:()CATSupport
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNNLGDialog+CATSupport.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v24 = @"locale";
  localeIdentifier = [self localeIdentifier];
  v25[0] = localeIdentifier;
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
  parametersXML = [self parametersXML];
  localeXML = [self localeXML];
  defaultCATOptions = [self defaultCATOptions];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__LNNLGDialog_CATSupport__getResultWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E74B13B0;
  v18 = v5;
  v13 = v5;
  LODWORD(v16) = defaultCATOptions;
  [v8 execute:0 paramsXML:parametersXML localeXML:localeXML parameters:MEMORY[0x1E695E0F8] globals:v7 callback:0 options:v16 completion:v17];

  v14 = *MEMORY[0x1E69E9840];
}

@end