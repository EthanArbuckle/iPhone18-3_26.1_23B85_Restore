@interface ICTableAttachmentProvider
+ (NSMapTable)mergeNotificationRegister;
+ (NSMapTable)providerMapping;
+ (id)defaultBackgroundManagedObjectContext;
+ (id)sharedProviderForAttachment:(id)attachment;
+ (void)notifyProviderForRefreshToAttachment:(id)attachment;
+ (void)saveAttachmentOnMainThread:(id)thread;
- (BOOL)isBeingEditedLocallyOnDevice;
- (ICAttachment)attachment;
- (ICTable)table;
- (ICTableAttachmentProviderDelegate)delegate;
- (NSManagedObjectContext)overriddenBackgroundMOC;
- (id)backgroundManagedObjectContext;
- (void)didRefreshBackgroundTableAttachment:(id)attachment;
- (void)notifyDelegateTableAttachmentDidMerge;
- (void)notifyDelegateTableAttachmentWillMerge;
- (void)refreshBackgroundAttachment;
- (void)setAttachment:(id)attachment;
- (void)setIsBeingEditedLocallyOnDevice:(BOOL)device;
- (void)setOverriddenBackgroundMOC:(id)c;
- (void)setTableFromDocument:(id)document;
- (void)updateTableFromMOC;
@end

@implementation ICTableAttachmentProvider

+ (NSMapTable)providerMapping
{
  if (providerMapping_onceToken != -1)
  {
    +[ICTableAttachmentProvider providerMapping];
  }

  v3 = providerMapping_providerMapping;

  return v3;
}

void __44__ICTableAttachmentProvider_providerMapping__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v1 = providerMapping_providerMapping;
  providerMapping_providerMapping = v0;
}

+ (NSMapTable)mergeNotificationRegister
{
  if (mergeNotificationRegister_onceToken != -1)
  {
    +[ICTableAttachmentProvider mergeNotificationRegister];
  }

  v3 = mergeNotificationRegister_mergeNotificationRegisterMapping;

  return v3;
}

void __54__ICTableAttachmentProvider_mergeNotificationRegister__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
  v1 = mergeNotificationRegister_mergeNotificationRegisterMapping;
  mergeNotificationRegister_mergeNotificationRegisterMapping = v0;
}

+ (id)sharedProviderForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = +[ICTableAttachmentProvider providerMapping];
  v5 = [v4 objectForKey:attachmentCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(ICTableAttachmentProvider);
    [(ICTableAttachmentProvider *)v5 setAttachment:attachmentCopy];
    v6 = +[ICTableAttachmentProvider providerMapping];
    [v6 setObject:v5 forKey:attachmentCopy];
  }

  return v5;
}

+ (void)notifyProviderForRefreshToAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = +[ICTableAttachmentProvider providerMapping];
  v5 = [v4 objectForKey:attachmentCopy];

  if (v5)
  {
    backgroundAttachment = [v5 backgroundAttachment];
    managedObjectContext = [backgroundAttachment managedObjectContext];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __66__ICTableAttachmentProvider_notifyProviderForRefreshToAttachment___block_invoke;
    v15 = &unk_278194AD8;
    v16 = backgroundAttachment;
    v17 = managedObjectContext;
    v8 = managedObjectContext;
    v9 = backgroundAttachment;
    [v8 performBlock:&v12];
  }

  v10 = [ICTableAttachmentProvider mergeNotificationRegister:v12];
  v11 = [v10 objectForKey:attachmentCopy];

  if (v11)
  {
    [v11 didRefreshBackgroundTableAttachment:attachmentCopy];
  }
}

uint64_t __66__ICTableAttachmentProvider_notifyProviderForRefreshToAttachment___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPasswordProtected])
  {
    v2 = [*(a1 + 32) hasChanges];
  }

  else
  {
    v2 = 1;
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 ic_refreshObject:v4 mergeChanges:v2];
}

+ (void)saveAttachmentOnMainThread:(id)thread
{
  threadCopy = thread;
  v4 = +[ICTableAttachmentProvider providerMapping];
  v6 = [v4 objectForKey:threadCopy];

  delegate = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tableAttachmentSaveOnMainThread];
  }
}

- (void)setOverriddenBackgroundMOC:(id)c
{
  objc_storeWeak(&self->_overriddenBackgroundMOC, c);

  [(ICTableAttachmentProvider *)self refreshBackgroundAttachment];
}

- (id)backgroundManagedObjectContext
{
  WeakRetained = objc_loadWeakRetained(&self->_overriddenBackgroundMOC);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  else
  {
    v4 = +[ICTableAttachmentProvider defaultBackgroundManagedObjectContext];
  }

  v5 = v4;

  return v5;
}

+ (id)defaultBackgroundManagedObjectContext
{
  if (defaultBackgroundManagedObjectContext_once != -1)
  {
    +[ICTableAttachmentProvider defaultBackgroundManagedObjectContext];
  }

  v3 = defaultBackgroundManagedObjectContext_backgroundContext;

  return v3;
}

void __66__ICTableAttachmentProvider_defaultBackgroundManagedObjectContext__block_invoke()
{
  v2 = +[ICNoteContext sharedContext];
  v0 = [v2 workerManagedObjectContext];
  v1 = defaultBackgroundManagedObjectContext_backgroundContext;
  defaultBackgroundManagedObjectContext_backgroundContext = v0;
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_storeWeak(&self->_attachment, attachmentCopy);
  [attachmentCopy ic_obtainPermanentObjectIDIfNecessary];

  [(ICTableAttachmentProvider *)self refreshBackgroundAttachment];
}

- (void)refreshBackgroundAttachment
{
  backgroundManagedObjectContext = [(ICTableAttachmentProvider *)self backgroundManagedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ICTableAttachmentProvider_refreshBackgroundAttachment__block_invoke;
  v5[3] = &unk_278194AD8;
  v5[4] = self;
  v6 = backgroundManagedObjectContext;
  v4 = backgroundManagedObjectContext;
  [v4 performBlockAndWait:v5];
}

void __56__ICTableAttachmentProvider_refreshBackgroundAttachment__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 objectID];
  v5 = [ICAttachment ic_existingObjectWithID:v3 context:*(a1 + 40)];

  v4 = +[ICTableAttachmentProvider mergeNotificationRegister];
  [v4 setObject:*(a1 + 32) forKey:v5];

  [*(a1 + 32) setBackgroundAttachment:v5];
}

- (void)setTableFromDocument:(id)document
{
  objc_storeStrong(&self->_tableDoc, document);
  documentCopy = document;
  rootObject = [documentCopy rootObject];
  table = self->_table;
  self->_table = rootObject;
}

- (ICTable)table
{
  if (!self->_table)
  {
    attachment = [(ICTableAttachmentProvider *)self attachment];
    isPasswordProtectedAndLocked = [attachment isPasswordProtectedAndLocked];

    if ((isPasswordProtectedAndLocked & 1) == 0)
    {
      attachment2 = [(ICTableAttachmentProvider *)self attachment];
      currentReplicaID = [attachment2 currentReplicaID];
      v7 = currentReplicaID;
      if (currentReplicaID)
      {
        uUID = currentReplicaID;
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
      }

      v9 = uUID;

      backgroundAttachment = [(ICTableAttachmentProvider *)self backgroundAttachment];
      managedObjectContext = [backgroundAttachment managedObjectContext];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __34__ICTableAttachmentProvider_table__block_invoke;
      v15[3] = &unk_278194AD8;
      v15[4] = self;
      v16 = v9;
      v12 = v9;
      [managedObjectContext performBlockAndWait:v15];
    }
  }

  table = self->_table;

  return table;
}

void __34__ICTableAttachmentProvider_table__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundAttachment];
  v3 = [v2 attachmentModel];
  v4 = [v3 table];
  v5 = [v4 copyIntoNewDocumentWithReplicaID:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = [*(*(a1 + 32) + 32) rootObject];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v8;

  v11 = [*(a1 + 32) delegate];
  [*(*(a1 + 32) + 24) setDelegate:v11];
}

- (BOOL)isBeingEditedLocallyOnDevice
{
  attachment = [(ICTableAttachmentProvider *)self attachment];
  isBeingEditedLocallyOnDevice = [attachment isBeingEditedLocallyOnDevice];

  return isBeingEditedLocallyOnDevice;
}

- (void)setIsBeingEditedLocallyOnDevice:(BOOL)device
{
  deviceCopy = device;
  attachment = [(ICTableAttachmentProvider *)self attachment];
  [attachment setIsBeingEditedLocallyOnDevice:deviceCopy];
}

- (void)didRefreshBackgroundTableAttachment:(id)attachment
{
  attachmentCopy = attachment;
  [(ICTableAttachmentProvider *)self setNeedsToUpdateTableFromBackgroundAttachment:1];
  [(ICTableAttachmentProvider *)self updateTableFromMOC];
  backgroundAttachment = [(ICTableAttachmentProvider *)self backgroundAttachment];

  if (backgroundAttachment != attachmentCopy)
  {
    v6 = MEMORY[0x277D36198];

    [v6 handleFailedAssertWithCondition:"attachment == self.backgroundAttachment" functionName:"-[ICTableAttachmentProvider didRefreshBackgroundTableAttachment:]" simulateCrash:1 showAlert:0 format:@"didRefreshBackgroundTableAttachment: sent to wrong table attachment provider."];
  }
}

- (void)updateTableFromMOC
{
  if ([(ICTableAttachmentProvider *)self needsToUpdateTableFromBackgroundAttachment])
  {
    v5[5] = MEMORY[0x277D85DD0];
    v5[6] = 3221225472;
    v5[7] = __47__ICTableAttachmentProvider_updateTableFromMOC__block_invoke;
    v5[8] = &unk_278194B00;
    v5[9] = self;
    performBlockOnMainThread();
    backgroundAttachment = [(ICTableAttachmentProvider *)self backgroundAttachment];
    managedObjectContext = [backgroundAttachment managedObjectContext];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__ICTableAttachmentProvider_updateTableFromMOC__block_invoke_2;
    v5[3] = &unk_278194B00;
    v5[4] = self;
    [managedObjectContext performBlock:v5];
  }
}

void __47__ICTableAttachmentProvider_updateTableFromMOC__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundAttachment];
  v3 = [v2 isPasswordProtectedAndLocked];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) backgroundAttachment];
    v5 = [v4 attachmentModel];
    v6 = [v5 table];
    v7 = [v6 document];
    v8 = [v7 archivedData];

    v10 = MEMORY[0x277D85DD0];
    v11 = *(a1 + 32);
    v9 = v8;
    performBlockOnMainThread();
    [*(a1 + 32) setNeedsToUpdateTableFromBackgroundAttachment:{0, v10, 3221225472, __47__ICTableAttachmentProvider_updateTableFromMOC__block_invoke_3, &unk_278194AD8, v11}];
  }
}

uint64_t __47__ICTableAttachmentProvider_updateTableFromMOC__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) tableDoc];
  [v2 mergeWithData:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 notifyDelegateTableAttachmentDidMerge];
}

- (void)notifyDelegateTableAttachmentWillMerge
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICTableAttachmentProviderWillMergeTable" object:self];
}

- (void)notifyDelegateTableAttachmentDidMerge
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICTableAttachmentProviderDidMergeTable" object:self];
}

- (ICTableAttachmentProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSManagedObjectContext)overriddenBackgroundMOC
{
  WeakRetained = objc_loadWeakRetained(&self->_overriddenBackgroundMOC);

  return WeakRetained;
}

@end