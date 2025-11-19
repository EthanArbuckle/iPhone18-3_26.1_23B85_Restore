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
  v7 = [v6 BOOLErrorCompletionHandlerAdapter];
  [a1 canSaveAccount:v5 withCompletionHandler:v7];

  v8 = [v6 future];

  return v8;
}

- (id)_cn_saveVerifiedAccount:()DACardDAV
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v6 BOOLErrorCompletionHandlerAdapter];
  [a1 saveVerifiedAccount:v5 withCompletionHandler:v7];

  v8 = [v6 future];

  return v8;
}

- (id)_cn_removeAccount:()DACardDAV
{
  v4 = MEMORY[0x277CFBE90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v6 BOOLErrorCompletionHandlerAdapter];
  [a1 removeAccount:v5 withCompletionHandler:v7];

  v8 = [v6 future];

  return v8;
}

@end