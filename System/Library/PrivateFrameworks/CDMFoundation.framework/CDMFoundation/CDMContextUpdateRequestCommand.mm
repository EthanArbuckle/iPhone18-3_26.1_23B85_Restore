@interface CDMContextUpdateRequestCommand
- (CDMContextUpdateRequestCommand)initWithCtxUpdateRequest:(id)request;
@end

@implementation CDMContextUpdateRequestCommand

- (CDMContextUpdateRequestCommand)initWithCtxUpdateRequest:(id)request
{
  requestCopy = request;
  v6 = [(CDMBaseCommand *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ctxUpdateRequest, request);
  }

  return v7;
}

@end