@interface MSMediaIntentExecutor
- (void)executor:(id)executor didPerformActionWithResult:(id)result error:(id)error;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
@end

@implementation MSMediaIntentExecutor

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_22C9D5380();
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_22C9D5570();
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_22C9D5760();
}

- (void)executor:(id)executor didPerformActionWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_22C9D5950(errorCopy, result);
}

@end