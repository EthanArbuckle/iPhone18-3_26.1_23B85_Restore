@interface CDMContextUpdateRequestCommand
- (CDMContextUpdateRequestCommand)initWithCtxUpdateRequest:(id)a3;
@end

@implementation CDMContextUpdateRequestCommand

- (CDMContextUpdateRequestCommand)initWithCtxUpdateRequest:(id)a3
{
  v5 = a3;
  v6 = [(CDMBaseCommand *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ctxUpdateRequest, a3);
  }

  return v7;
}

@end