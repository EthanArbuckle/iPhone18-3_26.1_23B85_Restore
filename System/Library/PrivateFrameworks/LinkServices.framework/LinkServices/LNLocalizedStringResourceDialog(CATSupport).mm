@interface LNLocalizedStringResourceDialog(CATSupport)
- (id)localeXML;
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNLocalizedStringResourceDialog(CATSupport)

- (id)localeXML
{
  fullString = [self fullString];
  localeIdentifier = [self localeIdentifier];
  v4 = [fullString localizedStringForLocaleIdentifier:localeIdentifier];
  ln_stringByEscapingForXML = [v4 ln_stringByEscapingForXML];

  supportingString = [self supportingString];
  localeIdentifier2 = [self localeIdentifier];
  v8 = [supportingString localizedStringForLocaleIdentifier:localeIdentifier2];
  ln_stringByEscapingForXML2 = [v8 ln_stringByEscapingForXML];

  if (ln_stringByEscapingForXML2)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<full>%@</full><supporting>%@</supporting>", ln_stringByEscapingForXML, ln_stringByEscapingForXML2];
  }

  else
  {
    v10 = ln_stringByEscapingForXML;
  }

  v11 = v10;
  v12 = MEMORY[0x1E696AEC0];
  localeIdentifier3 = [self localeIdentifier];
  v14 = [v12 stringWithFormat:@"<?xml version=1.0 encoding=UTF-8 standalone=no?>\n<cat xmlns=urn:apple:names:siri:cat:1.0 locale=%@>\n<all>\n<dialog>%@</dialog>\n</all>\n</cat>\n", localeIdentifier3, v11];

  return v14;
}

- (void)getResultWithCompletionHandler:()CATSupport
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNLocalizedStringResourceDialog+CATSupport.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v24 = @"locale";
  localeIdentifier = [self localeIdentifier];
  v25[0] = localeIdentifier;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = getCATClass_softClass_7284;
  v23 = getCATClass_softClass_7284;
  if (!getCATClass_softClass_7284)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __getCATClass_block_invoke_7285;
    v19[3] = &unk_1E74B26D0;
    v19[4] = &v20;
    __getCATClass_block_invoke_7285(v19);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  parametersXML = [self parametersXML];
  localeXML = [self localeXML];
  defaultCATOptions = [self defaultCATOptions];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__LNLocalizedStringResourceDialog_CATSupport__getResultWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E74B13B0;
  v18 = v5;
  v13 = v5;
  LODWORD(v16) = defaultCATOptions;
  [v8 execute:0 paramsXML:parametersXML localeXML:localeXML parameters:MEMORY[0x1E695E0F8] globals:v7 callback:0 options:v16 completion:v17];

  v14 = *MEMORY[0x1E69E9840];
}

@end