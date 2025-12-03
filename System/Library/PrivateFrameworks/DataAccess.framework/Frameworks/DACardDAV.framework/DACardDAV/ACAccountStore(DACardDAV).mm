@interface ACAccountStore(DACardDAV)
- (id)_cn_canSaveAccount:()DACardDAV;
- (id)_cn_removeAccount:()DACardDAV;
- (id)_cn_saveVerifiedAccount:()DACardDAV;
@end

@implementation ACAccountStore(DACardDAV)

- (id)_cn_canSaveAccount:()DACardDAV
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  bOOLErrorCompletionHandlerAdapter = [v6 BOOLErrorCompletionHandlerAdapter];
  [self canSaveAccount:v5 withCompletionHandler:bOOLErrorCompletionHandlerAdapter];

  future = [v6 future];

  return future;
}

- (id)_cn_saveVerifiedAccount:()DACardDAV
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  bOOLErrorCompletionHandlerAdapter = [v6 BOOLErrorCompletionHandlerAdapter];
  [self saveVerifiedAccount:v5 withCompletionHandler:bOOLErrorCompletionHandlerAdapter];

  future = [v6 future];

  return future;
}

- (id)_cn_removeAccount:()DACardDAV
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  bOOLErrorCompletionHandlerAdapter = [v6 BOOLErrorCompletionHandlerAdapter];
  [self removeAccount:v5 withCompletionHandler:bOOLErrorCompletionHandlerAdapter];

  future = [v6 future];

  return future;
}

@end