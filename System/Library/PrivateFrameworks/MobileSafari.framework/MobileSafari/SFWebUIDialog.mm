@interface SFWebUIDialog
- (SFWebUIDialog)initWithAlert:(id)alert completionHandler:(id)handler;
- (id)newViewControllerRepresentationWithCompletionHandler:(id)handler;
- (void)didCompleteWithResponse:(id)response;
@end

@implementation SFWebUIDialog

- (SFWebUIDialog)initWithAlert:(id)alert completionHandler:(id)handler
{
  alertCopy = alert;
  v15.receiver = self;
  v15.super_class = SFWebUIDialog;
  handlerCopy = handler;
  v8 = [(SFWebUIDialog *)&v15 init];
  alert = v8->_alert;
  v8->_alert = alertCopy;
  v10 = alertCopy;

  v8->_finalAction = 0;
  v11 = _Block_copy(handlerCopy);

  completionHandler = v8->_completionHandler;
  v8->_completionHandler = v11;

  v13 = [(WebUIAlert *)v10 identities:v15.receiver];

  v8->_shouldIgnoreGlobalModalUIDisplayPolicy = [v13 count] != 0;
  return v8;
}

- (id)newViewControllerRepresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x1E69E30B0];
  alert = self->_alert;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__SFWebUIDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E721DC38;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [v5 alertControllerForAlert:alert automaticallyDismiss:0 withCompletionHandler:v10];

  return v8;
}

void __70__SFWebUIDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)didCompleteWithResponse:(id)response
{
  if (response)
  {
    [response integerValue];
  }

  else
  {
    [(WebUIAlert *)self->_alert hideAction];
  }

  v4 = *(self->_completionHandler + 2);

  v4();
}

@end