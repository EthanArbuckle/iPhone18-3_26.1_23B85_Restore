@interface _SFSavedAccountTouchIconCache
- (BOOL)canHandleRequest:(id)request;
- (id)_operationWithRequest:(id)request completionHandler:(id)handler;
@end

@implementation _SFSavedAccountTouchIconCache

- (id)_operationWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v7 = [(WBSTouchIconFetchOperation *)[_SFTouchIconFetchOperation alloc] initWithRequest:requestCopy allowFetchingOverCellularNetwork:0 completionHandler:handlerCopy];

  return v7;
}

- (BOOL)canHandleRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end