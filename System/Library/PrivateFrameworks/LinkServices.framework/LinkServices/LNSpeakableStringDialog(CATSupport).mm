@interface LNSpeakableStringDialog(CATSupport)
- (id)localeXML;
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNSpeakableStringDialog(CATSupport)

- (id)localeXML
{
  v2 = [a1 fullSpeakableString];
  v3 = [v2 printed];
  v4 = [a1 localeIdentifier];
  v5 = [v3 localizedStringForLocaleIdentifier:v4];
  v6 = [v5 ln_stringByEscapingForXML];

  v7 = [a1 fullSpeakableString];
  v8 = [v7 spoken];
  v9 = [a1 localeIdentifier];
  v10 = [v8 localizedStringForLocaleIdentifier:v9];
  v11 = [v10 ln_stringByEscapingForXML];

  v12 = [a1 supportingSpeakableString];
  v13 = [v12 printed];
  v14 = [a1 localeIdentifier];
  v15 = [v13 localizedStringForLocaleIdentifier:v14];
  v16 = [v15 ln_stringByEscapingForXML];

  v17 = [a1 supportingSpeakableString];
  v18 = [v17 spoken];
  v19 = [a1 localeIdentifier];
  v20 = [v18 localizedStringForLocaleIdentifier:v19];
  v21 = [v20 ln_stringByEscapingForXML];

  if (v16)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<full><print>%@</print><speak>%@</speak></full><supporting><print>%@</print><speak>%@</speak></supporting>", v6, v11, v16, v21];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<print>%@</print><speak>%@</speak>", v6, v11, v27, v28];
  }
  v22 = ;
  v23 = MEMORY[0x1E696AEC0];
  v24 = [a1 localeIdentifier];
  v25 = [v23 stringWithFormat:@"<?xml version=1.0 encoding=UTF-8 standalone=no?>\n<cat xmlns=urn:apple:names:siri:cat:1.0 locale=%@>\n<all>\n<dialog>%@</dialog>\n</all>\n</cat>\n", v24, v22];

  return v25;
}

- (void)getResultWithCompletionHandler:()CATSupport
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"LNSpeakableStringDialog+CATSupport.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v24 = @"locale";
  v6 = [a1 localeIdentifier];
  v25[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = getCATClass_softClass_690;
  v23 = getCATClass_softClass_690;
  if (!getCATClass_softClass_690)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __getCATClass_block_invoke_691;
    v19[3] = &unk_1E74B26D0;
    v19[4] = &v20;
    __getCATClass_block_invoke_691(v19);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = [a1 parametersXML];
  v11 = [a1 localeXML];
  v12 = [a1 defaultCATOptions];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__LNSpeakableStringDialog_CATSupport__getResultWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E74B13B0;
  v18 = v5;
  v13 = v5;
  LODWORD(v16) = v12;
  [v8 execute:0 paramsXML:v10 localeXML:v11 parameters:MEMORY[0x1E695E0F8] globals:v7 callback:0 options:v16 completion:v17];

  v14 = *MEMORY[0x1E69E9840];
}

@end