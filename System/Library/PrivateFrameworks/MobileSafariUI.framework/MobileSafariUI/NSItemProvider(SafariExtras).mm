@interface NSItemProvider(SafariExtras)
+ (id)safari_itemProviderForTab:()SafariExtras browserController:;
+ (id)safari_itemProviderForTabDocument:()SafariExtras;
+ (id)safari_timeoutQueue;
- (void)safari_registerLinkMetadata:()SafariExtras;
@end

@implementation NSItemProvider(SafariExtras)

+ (id)safari_timeoutQueue
{
  if (safari_timeoutQueue_onceToken != -1)
  {
    +[NSItemProvider(SafariExtras) safari_timeoutQueue];
  }

  v1 = safari_timeoutQueue_queue;

  return v1;
}

+ (id)safari_itemProviderForTabDocument:()SafariExtras
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAA88]);
  v5 = MEMORY[0x277CC1EF0];
  uuid = [v3 uuid];
  browserController = [v3 browserController];
  uUID = [browserController UUID];
  v9 = [v5 _sf_windowCreationActivityWithTabUUID:uuid tabGroupUUID:0 browserControllerUUID:uUID];

  [v4 registerObject:v9 visibility:0];
  if ([v3 hasQuickLookContent])
  {
    quickLookDocument = [v3 quickLookDocument];
    [v4 safari_registerFileRepresentationForQuickLookDocument:quickLookDocument];
  }

  urlForSharing = [v3 urlForSharing];
  [v4 registerObject:urlForSharing visibility:0];

  return v4;
}

+ (id)safari_itemProviderForTab:()SafariExtras browserController:
{
  v5 = MEMORY[0x277CCAA88];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = MEMORY[0x277CC1EF0];
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [v7 uuid];
  v12 = [v10 initWithUUIDString:uuid];
  uUID = [v6 UUID];

  v14 = [v9 _sf_windowCreationActivityWithTabUUID:v12 tabGroupUUID:0 browserControllerUUID:uUID];

  [v8 registerObject:v14 visibility:0];
  v15 = [v7 url];

  [v8 registerObject:v15 visibility:0];

  return v8;
}

- (void)safari_registerLinkMetadata:()SafariExtras
{
  v4 = a3;
  v5 = *MEMORY[0x277CD4680];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke;
  v7[3] = &unk_2781D94C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [self registerDataRepresentationForTypeIdentifier:v5 visibility:0 loadHandler:v7];
}

@end