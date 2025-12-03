@interface ICExtensionSafeAPIShims
+ (id)openURLHandler;
+ (int64_t)applicationState;
+ (void)openURL:(id)l originatingView:(id)view completionHandler:(id)handler;
+ (void)setOpenURLHandler:(id)handler;
@end

@implementation ICExtensionSafeAPIShims

+ (int64_t)applicationState
{
  if (_UIApplicationIsExtension())
  {
    return 0;
  }

  v3 = *MEMORY[0x277D76620];

  return [v3 applicationState];
}

+ (void)openURL:(id)l originatingView:(id)view completionHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  lCopy = l;
  openURLHandler = [self openURLHandler];
  v11 = openURLHandler;
  if (openURLHandler)
  {
    (*(openURLHandler + 16))(openURLHandler, lCopy, handlerCopy);
  }

  else
  {
    [*MEMORY[0x277D76620] _openURL:lCopy originatingView:viewCopy completionHandler:handlerCopy];
  }
}

+ (id)openURLHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ICExtensionSafeAPIShims_openURLHandler__block_invoke;
  v4[3] = &unk_2781ADBC8;
  v4[4] = &v5;
  ICWithOpenURLHandlerLock(v4);
  v2 = _Block_copy(v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__ICExtensionSafeAPIShims_openURLHandler__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(_openURLHandler);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (void)setOpenURLHandler:(id)handler
{
  handlerCopy = handler;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ICExtensionSafeAPIShims_setOpenURLHandler___block_invoke;
  v5[3] = &unk_2781AC7D8;
  v6 = handlerCopy;
  v4 = handlerCopy;
  ICWithOpenURLHandlerLock(v5);
}

void __45__ICExtensionSafeAPIShims_setOpenURLHandler___block_invoke(uint64_t a1)
{
  v1 = _Block_copy(*(a1 + 32));
  v2 = _openURLHandler;
  _openURLHandler = v1;
}

@end