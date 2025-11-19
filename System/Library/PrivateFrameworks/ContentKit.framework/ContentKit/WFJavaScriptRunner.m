@interface WFJavaScriptRunner
- (WFJavaScriptRunner)initWithItemProvider:(id)a3;
- (void)runJavaScript:(id)a3 completionHandler:(id)a4;
@end

@implementation WFJavaScriptRunner

- (void)runJavaScript:(id)a3 completionHandler:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v17 = a3;
  v18 = @"extraArguments";
  v16 = @"WFJavaScriptToRun";
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v11 = [(WFJavaScriptRunner *)self itemProvider];
  v12 = [*MEMORY[0x277CE1E38] identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__WFJavaScriptRunner_runJavaScript_completionHandler___block_invoke;
  v14[3] = &unk_278348288;
  v15 = v6;
  v13 = v6;
  [v11 loadItemForTypeIdentifier:v12 options:v10 completionHandler:v14];
}

void __54__WFJavaScriptRunner_runJavaScript_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_opt_class();
    v6 = WFEnforceClass(v10, v5);
    v7 = [v6 objectForKey:*MEMORY[0x277CCA0F0]];
    v8 = objc_opt_class();
    v9 = WFEnforceClass(v7, v8);

    (*(*(a1 + 32) + 16))();
  }
}

- (WFJavaScriptRunner)initWithItemProvider:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFJavaScriptRunner.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"itemProvider"}];
  }

  v7 = WFJavaScriptRunnerHostProtocolXPCInterface();
  v12.receiver = self;
  v12.super_class = WFJavaScriptRunner;
  v8 = [(WFSingleConnectionXPCListener *)&v12 initWithExportedObject:self exportedInterface:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_itemProvider, a3);
    v9 = v8;
  }

  return v8;
}

@end