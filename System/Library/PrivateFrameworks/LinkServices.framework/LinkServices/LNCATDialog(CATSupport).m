@interface LNCATDialog(CATSupport)
- (void)getResultWithCompletionHandler:()CATSupport;
@end

@implementation LNCATDialog(CATSupport)

- (void)getResultWithCompletionHandler:()CATSupport
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"LNCATDialog+CATSupport.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v6 = [a1 parameters];
  v7 = [v6 if_compactMap:&__block_literal_global_5384];

  v27 = @"locale";
  v8 = [a1 localeIdentifier];
  v28[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  v10 = [a1 templateDirectoryURL];
  [v10 startAccessingSecurityScopedResource];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v11 = getCATClass_softClass_5386;
  v26 = getCATClass_softClass_5386;
  if (!getCATClass_softClass_5386)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getCATClass_block_invoke_5387;
    v22[3] = &unk_1E74B26D0;
    v22[4] = &v23;
    __getCATClass_block_invoke_5387(v22);
    v11 = v24[3];
  }

  v12 = v11;
  _Block_object_dispose(&v23, 8);
  v13 = [a1 templateDirectoryURL];
  v14 = [a1 identifier];
  v15 = [a1 defaultCATOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__LNCATDialog_CATSupport__getResultWithCompletionHandler___block_invoke_2;
  v20[3] = &unk_1E74B10B8;
  v20[4] = a1;
  v21 = v5;
  v16 = v5;
  LODWORD(v19) = v15;
  [v11 execute:0 templateDir:v13 catId:v14 parameters:v7 globals:v9 callback:0 options:v19 completion:v20];

  v17 = *MEMORY[0x1E69E9840];
}

@end