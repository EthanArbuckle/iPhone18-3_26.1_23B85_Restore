@interface WFiWorkPDFConverter
+ (BOOL)canHandleFile:(id)file;
- (void)convertToPDF:(WFFileRepresentation *)f completionHandler:(id)handler;
- (void)executor:(id)executor didPerformActionWithResult:(id)result error:(id)error;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
@end

@implementation WFiWorkPDFConverter

+ (BOOL)canHandleFile:(id)file
{
  fileCopy = file;
  v4 = static WFiWorkPDFConverter.canHandleFile(_:)(fileCopy);

  return v4;
}

- (void)convertToPDF:(WFFileRepresentation *)f completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = f;
  v7[3] = v6;
  v7[4] = self;
  fCopy = f;
  selfCopy = self;

  sub_21E1C66A4(&unk_21E3524D8, v7);
}

- (void)executor:(id)executor didPerformActionWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  WFiWorkPDFConverter.executor(_:didPerformActionWith:error:)(errorCopy, result, error);
}

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  WFiWorkPDFConverter.executor(_:needsConfirmationWith:)(selfCopy, v8);
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  WFiWorkPDFConverter.executor(_:needsDisambiguationWith:)(selfCopy, v8);
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  WFiWorkPDFConverter.executor(_:needsValueWith:)(selfCopy, v8);
}

@end