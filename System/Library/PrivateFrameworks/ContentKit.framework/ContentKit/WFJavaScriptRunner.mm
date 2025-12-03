@interface WFJavaScriptRunner
- (WFJavaScriptRunner)initWithItemProvider:(id)provider;
- (void)runJavaScript:(id)script completionHandler:(id)handler;
@end

@implementation WFJavaScriptRunner

- (void)runJavaScript:(id)script completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  scriptCopy = script;
  v18 = @"extraArguments";
  v16 = @"WFJavaScriptToRun";
  v7 = MEMORY[0x277CBEAC0];
  scriptCopy2 = script;
  v9 = [v7 dictionaryWithObjects:&scriptCopy forKeys:&v16 count:1];
  v19[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  itemProvider = [(WFJavaScriptRunner *)self itemProvider];
  identifier = [*MEMORY[0x277CE1E38] identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__WFJavaScriptRunner_runJavaScript_completionHandler___block_invoke;
  v14[3] = &unk_278348288;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [itemProvider loadItemForTypeIdentifier:identifier options:v10 completionHandler:v14];
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

- (WFJavaScriptRunner)initWithItemProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFJavaScriptRunner.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"itemProvider"}];
  }

  v7 = WFJavaScriptRunnerHostProtocolXPCInterface();
  v12.receiver = self;
  v12.super_class = WFJavaScriptRunner;
  v8 = [(WFSingleConnectionXPCListener *)&v12 initWithExportedObject:self exportedInterface:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_itemProvider, provider);
    v9 = v8;
  }

  return v8;
}

@end