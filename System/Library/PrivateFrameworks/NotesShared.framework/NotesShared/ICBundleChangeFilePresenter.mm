@interface ICBundleChangeFilePresenter
- (ICBundleChangeFilePresenter)initWithObjectID:(id)d url:(id)url managedObjectContext:(id)context;
- (void)applyChanges;
- (void)presentedItemDidChange;
@end

@implementation ICBundleChangeFilePresenter

- (ICBundleChangeFilePresenter)initWithObjectID:(id)d url:(id)url managedObjectContext:(id)context
{
  dCopy = d;
  urlCopy = url;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = ICBundleChangeFilePresenter;
  v11 = [(ICBundleChangeFilePresenter *)&v21 init];
  if (v11)
  {
    v12 = [dCopy copy];
    objectID = v11->_objectID;
    v11->_objectID = v12;

    v14 = [urlCopy copy];
    url = v11->_url;
    v11->_url = v14;

    objc_storeStrong(&v11->_managedObjectContext, context);
    v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v11->_operationQueue;
    v11->_operationQueue = v16;

    [(NSOperationQueue *)v11->_operationQueue setName:@"com.apple.notes.bundle-change-file-presenter"];
    [(NSOperationQueue *)v11->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v11->_operationQueue setQualityOfService:17];
    v18 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:v11 selector:sel_applyChanges delay:1 waitToFireUntilRequestsStop:0 callOnMainThread:2.0];
    applyChangesSelectorDelayer = v11->_applyChangesSelectorDelayer;
    v11->_applyChangesSelectorDelayer = v18;
  }

  return v11;
}

- (void)presentedItemDidChange
{
  applyChangesSelectorDelayer = [(ICBundleChangeFilePresenter *)self applyChangesSelectorDelayer];
  [applyChangesSelectorDelayer requestFire];
}

- (void)applyChanges
{
  managedObjectContext = [(ICBundleChangeFilePresenter *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__ICBundleChangeFilePresenter_applyChanges__block_invoke;
  v4[3] = &unk_278194B00;
  v4[4] = self;
  [managedObjectContext performBlock:v4];
}

void __43__ICBundleChangeFilePresenter_applyChanges__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 32) objectID];
  v4 = [v2 ic_existingObjectWithID:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    if ([v5 attachmentType] == 13)
    {
      [v5 setPreviewUpdateDate:0];
    }
  }

  [v4 updateChangeCountWithReason:@"Applied changes from bundle"];
  v6 = [*(a1 + 32) managedObjectContext];
  [v6 ic_save];

  performBlockOnMainThread();
}

void __43__ICBundleChangeFilePresenter_applyChanges__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedItemDidApplyChanges];

  if (v2)
  {
    v3 = [*(a1 + 32) presentedItemDidApplyChanges];
    v3[2](v3, 1);
  }
}

@end