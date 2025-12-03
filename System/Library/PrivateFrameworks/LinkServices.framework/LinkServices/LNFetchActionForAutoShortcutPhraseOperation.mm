@interface LNFetchActionForAutoShortcutPhraseOperation
- (LNFetchActionForAutoShortcutPhraseOperation)initWithConnectionInterface:(id)interface autoShortcutPhrase:(id)phrase queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchActionForAutoShortcutPhraseOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchActionForAutoShortcutPhraseOperation *)self completionHandler];

  if (completionHandler)
  {
    result = [(LNFetchActionForAutoShortcutPhraseOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:result error:errorCopy];

    completionHandler2 = [(LNFetchActionForAutoShortcutPhraseOperation *)self completionHandler];
    result2 = [(LNFetchActionForAutoShortcutPhraseOperation *)self result];
    (completionHandler2)[2](completionHandler2, result2, v7);

    [(LNFetchActionForAutoShortcutPhraseOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchActionForAutoShortcutPhraseOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = LNFetchActionForAutoShortcutPhraseOperation;
  [(LNConnectionOperation *)&v9 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    autoShortcutPhrase = [(LNFetchActionForAutoShortcutPhraseOperation *)self autoShortcutPhrase];
    *buf = 138412290;
    v11 = autoShortcutPhrase;
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  autoShortcutPhrase2 = [(LNFetchActionForAutoShortcutPhraseOperation *)self autoShortcutPhrase];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__LNFetchActionForAutoShortcutPhraseOperation_start__block_invoke;
  v8[3] = &unk_1E74B1958;
  v8[4] = self;
  [connectionInterface fetchActionForAutoShortcutPhrase:autoShortcutPhrase2 completionHandler:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __52__LNFetchActionForAutoShortcutPhraseOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchActionForAutoShortcutPhraseOperation)initWithConnectionInterface:(id)interface autoShortcutPhrase:(id)phrase queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  phraseCopy = phrase;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (phraseCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchActionForAutoShortcutPhraseOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"autoShortcutPhrase"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchActionForAutoShortcutPhraseOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!phraseCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNFetchActionForAutoShortcutPhraseOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v26.receiver = self;
  v26.super_class = LNFetchActionForAutoShortcutPhraseOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v26 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_9185];

  if (v16)
  {
    v17 = [phraseCopy copy];
    autoShortcutPhrase = v16->_autoShortcutPhrase;
    v16->_autoShortcutPhrase = v17;

    v19 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v19;

    v21 = v16;
  }

  return v16;
}

os_activity_t __118__LNFetchActionForAutoShortcutPhraseOperation_initWithConnectionInterface_autoShortcutPhrase_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch action for appshortcut phrase", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end