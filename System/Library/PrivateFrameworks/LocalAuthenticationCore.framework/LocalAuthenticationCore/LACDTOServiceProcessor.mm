@interface LACDTOServiceProcessor
- (BOOL)canProcessRequest:(id)a3;
- (LACDTOServiceProcessor)initWithSubprocessors:(id)a3;
- (id)_entitlementsForRequest:(id)a3;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACDTOServiceProcessor

- (LACDTOServiceProcessor)initWithSubprocessors:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LACDTOServiceProcessor;
  v5 = [(LACDTOServiceProcessor *)&v9 init];
  if (v5)
  {
    v6 = [LACEvaluationRequestProcessorFactory makeProcessorWithSubprocessors:v4];
    compoundProcessor = v5->_compoundProcessor;
    v5->_compoundProcessor = v6;
  }

  return v5;
}

- (BOOL)canProcessRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 policy];
  v5 = [v3 options];

  v6 = [LACPolicyUtilities isDTOPolicy:v4 options:v5];
  return v6;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = a4;
  v9 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(LACDTOServiceProcessor *)self _entitlementsForRequest:v8];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        v16 = [v8 client];
        v17 = [v16 checkEntitlement:v15];

        if ((v17 & 1) == 0)
        {
          v19 = [LACError missingEntitlementError:v15];
          v20 = [LACEvaluationResult resultWithFailure:v19];
          v9[2](v9, v20);

          v18 = v22;
          goto LABEL_11;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = v22;
  [(LACEvaluationRequestProcessor *)self->_compoundProcessor processRequest:v8 configuration:v22 completion:v9];
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v11 = a3;
  compoundProcessor = self->_compoundProcessor;
  v9 = a5;
  v10 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(LACEvaluationRequestProcessor *)self->_compoundProcessor postProcessRequest:v11 result:v10 completion:v9];
  }

  else
  {
    v9[2](v9, v10);
  }
}

- (id)_entitlementsForRequest:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v18[0] = @"com.apple.private.CoreAuthentication.SPI";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v6 = [v4 initWithArray:v5];

  if ([v3 policy] == 1026)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO"];
  }

  v7 = [v3 options];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:1061];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO.ShortExpiration"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
  v11 = [v7 objectForKeyedSubscript:v10];

  if (v11)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO.FallbackToNoAuth"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:1068];
  v13 = [v7 objectForKeyedSubscript:v12];

  if (v13)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO.FallbackToNoAuth"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:1085];
  v15 = [v7 objectForKeyedSubscript:v14];

  if (v15)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO.AllowUnapprovedSensor"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

@end