@interface DESRecipeEvaluationSession
- (id)_initWithResumptionURL:(id)l recordSet:(id)set protocolClass:(Class)class error:(id *)error;
- (void)completeWithError:(id)error completionHandler:(id)handler;
- (void)completeWithJSONResult:(id)result binaryResult:(id)binaryResult completionHandler:(id)handler;
- (void)downloadAttachmentsWithConfiguration:(id)configuration completion:(id)completion;
@end

@implementation DESRecipeEvaluationSession

- (id)_initWithResumptionURL:(id)l recordSet:(id)set protocolClass:(Class)class error:(id *)error
{
  DESLogAndSetSunsetError(error);

  return 0;
}

- (void)downloadAttachmentsWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v6 = DESLogAndReturnSunsetError();
  (*(completion + 2))(completionCopy, v6);
}

- (void)completeWithJSONResult:(id)result binaryResult:(id)binaryResult completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = DESLogAndReturnSunsetError();
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v6 = handlerCopy;
  }
}

- (void)completeWithError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = DESLogAndReturnSunsetError();
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v5 = handlerCopy;
  }
}

@end