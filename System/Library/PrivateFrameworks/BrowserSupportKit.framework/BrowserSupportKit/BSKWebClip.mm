@interface BSKWebClip
+ (void)fetchWebClipsURLWithCompletionHandler:(id)a3;
+ (void)fetchWebClipsUUIDWithCompletionHandler:(id)a3;
+ (void)getWebClipWithIdentifier:(id)a3 completionHandler:(id)a4;
- (id)_initWithWebClip:(id)a3 manifest:(id)a4;
@end

@implementation BSKWebClip

+ (void)fetchWebClipsUUIDWithCompletionHandler:(id)a3
{
  v6 = a3;
  CPSWebClipServiceClass = getCPSWebClipServiceClass();
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    [CPSWebClipServiceClass fetchWebClipsUUIDForClientBundleID:v5 completion:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

+ (void)fetchWebClipsURLWithCompletionHandler:(id)a3
{
  v6 = a3;
  CPSWebClipServiceClass = getCPSWebClipServiceClass();
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    [CPSWebClipServiceClass fetchWebClipsURLForClientBundleID:v5 completion:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

+ (void)getWebClipWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  CPSWebClipServiceClass = getCPSWebClipServiceClass();
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__BSKWebClip_getWebClipWithIdentifier_completionHandler___block_invoke;
    v8[3] = &unk_278D29AF0;
    v9 = v6;
    [CPSWebClipServiceClass getWebClipDictionaryWithIdentifier:v5 completion:v8];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
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

- (id)_initWithWebClip:(id)a3 manifest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = BSKWebClip;
  v9 = [(BSKWebClip *)&v13 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_webClip, a3);
    objc_storeStrong(p_isa + 2, a4);
    v11 = p_isa;
  }

  return p_isa;
}

@end