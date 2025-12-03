@interface BSKWebClip
+ (void)fetchWebClipsURLWithCompletionHandler:(id)handler;
+ (void)fetchWebClipsUUIDWithCompletionHandler:(id)handler;
+ (void)getWebClipWithIdentifier:(id)identifier completionHandler:(id)handler;
- (id)_initWithWebClip:(id)clip manifest:(id)manifest;
@end

@implementation BSKWebClip

+ (void)fetchWebClipsUUIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  CPSWebClipServiceClass = getCPSWebClipServiceClass();
  if (objc_opt_respondsToSelector())
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [CPSWebClipServiceClass fetchWebClipsUUIDForClientBundleID:bundleIdentifier completion:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

+ (void)fetchWebClipsURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  CPSWebClipServiceClass = getCPSWebClipServiceClass();
  if (objc_opt_respondsToSelector())
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [CPSWebClipServiceClass fetchWebClipsURLForClientBundleID:bundleIdentifier completion:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

+ (void)getWebClipWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  CPSWebClipServiceClass = getCPSWebClipServiceClass();
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__BSKWebClip_getWebClipWithIdentifier_completionHandler___block_invoke;
    v8[3] = &unk_278D29AF0;
    v9 = handlerCopy;
    [CPSWebClipServiceClass getWebClipDictionaryWithIdentifier:identifierCopy completion:v8];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __57__BSKWebClip_getWebClipWithIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2 || !v5)
  {
    v9 = *(*(a1 + 32) + 16);
LABEL_9:
    v9();
    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  v6 = [MEMORY[0x277D75D70] webClipWithDictionaryRepresentation:v11];
  if (v6)
  {
    v7 = [v11 objectForKeyedSubscript:@"DictionaryRepresentationManifest"];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
    }

    else
    {
      v8 = 0;
    }

    v10 = [[BSKWebClip alloc] _initWithWebClip:v6 manifest:v8];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

LABEL_14:
}

- (id)_initWithWebClip:(id)clip manifest:(id)manifest
{
  clipCopy = clip;
  manifestCopy = manifest;
  v13.receiver = self;
  v13.super_class = BSKWebClip;
  v9 = [(BSKWebClip *)&v13 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_webClip, clip);
    objc_storeStrong(p_isa + 2, manifest);
    v11 = p_isa;
  }

  return p_isa;
}

@end