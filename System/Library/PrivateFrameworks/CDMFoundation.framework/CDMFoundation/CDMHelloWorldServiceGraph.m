@interface CDMHelloWorldServiceGraph
+ (id)getAssetsForSetup:(id)a3;
+ (id)requiredDAGServices;
- (void)buildGraph;
@end

@implementation CDMHelloWorldServiceGraph

+ (id)requiredDAGServices
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11[0] = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v2 setWithArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getAssetsForSetup:(id)a3
{
  v3 = objc_alloc_init(CDMAssetsInfo);

  return v3;
}

- (void)buildGraph
{
  objc_initWeak(location, self);
  v3 = [(CDMServiceGraph *)self getGraphInput];
  v4 = [v3 siriNLUTypeObj];
  v5 = [(CDMServiceGraph *)self validateRequest:v4];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__6456;
  v17[4] = __Block_byref_object_dispose__6457;
  v18 = [v5 utterance];
  v6 = [v4 requestId];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__CDMHelloWorldServiceGraph_buildGraph__block_invoke;
  v16[3] = &unk_1E862F468;
  v16[4] = v17;
  v7 = [(CDMServiceGraph *)self addNodeWithName:@"doDummyTokenize" requestId:v6 block:v16];

  v8 = [v4 requestId];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__CDMHelloWorldServiceGraph_buildGraph__block_invoke_590;
  v14[3] = &unk_1E862F490;
  v14[4] = v17;
  objc_copyWeak(&v15, location);
  v9 = [(CDMServiceGraph *)self addNodeWithName:@"mockErrorInGraph" requestId:v8 block:v14];

  v10 = [v4 requestId];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__CDMHelloWorldServiceGraph_buildGraph__block_invoke_2;
  v12[3] = &unk_1E862F490;
  v12[4] = v17;
  objc_copyWeak(&v13, location);
  v11 = [(CDMServiceGraph *)self addNodeWithName:@"doDummyPostProcess" requestId:v10 block:v12];

  [v11 addDependency:v9];
  [v11 addDependency:v7];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);

  _Block_object_dispose(v17, 8);
  objc_destroyWeak(location);
}

void __39__CDMHelloWorldServiceGraph_buildGraph__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v5 = 136315394;
    v6 = "[CDMHelloWorldServiceGraph buildGraph]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1DC287000, v2, OS_LOG_TYPE_INFO, "%s Dummy tokenize step as an example, utterance=%@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __39__CDMHelloWorldServiceGraph_buildGraph__block_invoke_590(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([@"hello world: COVID happened 😢" isEqualToString:*(*(*(a1 + 32) + 8) + 40)])
  {
    v2 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A578];
    v8[0] = @"Testing that CDMHelloWorldServiceGraph produced error";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v4 = [v2 errorWithDomain:@"mock error domain" code:23 userInfo:v3];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setError:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __39__CDMHelloWorldServiceGraph_buildGraph__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[CDMHelloWorldServiceGraph buildGraph]_block_invoke_2";
    _os_log_impl(&dword_1DC287000, v2, OS_LOG_TYPE_INFO, "%s Dummy postProcess step which creates a dummy SIRINLUEXTERNALCDMNluResponse", &v9, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D11C0]);
  [v3 setIdA:@"✋ Welcome to this dummy Hello World service graph. Have a nice day! ✅"];
  [v3 setConnectionId:*(*(*(a1 + 32) + 8) + 40)];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v5 = objc_alloc_init(MEMORY[0x1E69D1158]);
  [v5 setRequestId:v3];
  [v5 setParses:v4];
  v6 = [[CDMAssistantNLUResponse alloc] initWithNLUResponse:v5 requestId:@"✋ Welcome to this dummy Hello World service graph. Have a nice day! ✅"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setGraphOutput:v6];

  v8 = *MEMORY[0x1E69E9840];
}

@end