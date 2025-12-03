@interface LNActionExecutorPassthroughDelegate
- (BOOL)executor:(id)executor shouldRunShowOutputAction:(id)action;
- (LNActionExecutorDelegate)delegate;
- (LNActionExecutorPassthroughDelegate)initWithShowOutputActionDelegate:(id)delegate performCompletionHandler:(id)handler;
- (void)executor:(id)executor continueInAppWithRequest:(id)request;
- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error;
- (void)executor:(id)executor didFinishWithResult:(id)result error:(id)error;
- (void)executor:(id)executor didPerformActionWithResult:(id)result error:(id)error;
- (void)executor:(id)executor environmentForViewSnippetWithCompletion:(id)completion;
- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsAppProtectionUnlockWithCompletionHandler:(id)handler;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
- (void)executor:(id)executor preferredContentSizeForViewSnippetWithCompletion:(id)completion;
@end

@implementation LNActionExecutorPassthroughDelegate

- (LNActionExecutorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)executor:(id)executor continueInAppWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    [delegate2 executor:executorCopy needsContinueInAppWithRequest:requestCopy];
  }

  else
  {
    delegate2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [requestCopy respondWithError:delegate2];
  }
}

- (void)executor:(id)executor preferredContentSizeForViewSnippetWithCompletion:(id)completion
{
  executorCopy = executor;
  completionCopy = completion;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    [delegate2 executor:executorCopy preferredContentSizeForViewSnippetWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)executor:(id)executor environmentForViewSnippetWithCompletion:(id)completion
{
  executorCopy = executor;
  completionCopy = completion;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    [delegate2 executor:executorCopy environmentForViewSnippetWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)executor:(id)executor shouldRunShowOutputAction:(id)action
{
  executorCopy = executor;
  actionCopy = action;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    v11 = [delegate2 executor:executorCopy shouldRunShowOutputAction:actionCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  errorCopy = error;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    [delegate2 executor:executorCopy didCompleteExecutionWithResult:resultCopy error:errorCopy];
  }
}

- (void)executor:(id)executor didFinishWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  errorCopy = error;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    [delegate2 executor:executorCopy didFinishWithResult:resultCopy error:errorCopy];
  }
}

- (void)executor:(id)executor didPerformActionWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  errorCopy = error;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    [delegate2 executor:executorCopy didPerformActionWithResult:resultCopy error:errorCopy];
  }

  completionHandler = [(LNActionExecutorPassthroughDelegate *)self completionHandler];
  (completionHandler)[2](completionHandler, resultCopy, errorCopy);
}

- (void)executor:(id)executor needsAppProtectionUnlockWithCompletionHandler:(id)handler
{
  executorCopy = executor;
  handlerCopy = handler;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    [delegate2 executor:executorCopy needsAppProtectionUnlockWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(LNActionExecutorPassthroughDelegate *)self delegate];
    [delegate2 executor:executorCopy needsActionConfirmationWithRequest:requestCopy];
  }

  else
  {
    [requestCopy respondWithConfirmation:1];
  }
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  requestCopy = request;
  executorCopy = executor;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  [delegate executor:executorCopy needsValueWithRequest:requestCopy];
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  requestCopy = request;
  executorCopy = executor;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  [delegate executor:executorCopy needsDisambiguationWithRequest:requestCopy];
}

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  requestCopy = request;
  executorCopy = executor;
  delegate = [(LNActionExecutorPassthroughDelegate *)self delegate];
  [delegate executor:executorCopy needsConfirmationWithRequest:requestCopy];
}

- (LNActionExecutorPassthroughDelegate)initWithShowOutputActionDelegate:(id)delegate performCompletionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = LNActionExecutorPassthroughDelegate;
  v8 = [(LNActionExecutorPassthroughDelegate *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = _Block_copy(handlerCopy);
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v10;

    v12 = v9;
  }

  return v9;
}

@end