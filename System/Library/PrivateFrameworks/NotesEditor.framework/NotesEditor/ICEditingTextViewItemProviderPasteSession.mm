@interface ICEditingTextViewItemProviderPasteSession
- (ICEditingTextViewItemProviderPasteSession)initWithNoteObjectID:(id)a3;
- (ICNote)workerNote;
- (NSSet)errorCodes;
- (unint64_t)numberOfAttachmentsAttemptedAdded;
- (void)addErrorWithCode:(int64_t)a3;
- (void)incrementNumberOfAttachmentsAttemptedAdded;
- (void)performBlockAndWait:(id)a3;
- (void)saveWorkerContext;
@end

@implementation ICEditingTextViewItemProviderPasteSession

- (ICEditingTextViewItemProviderPasteSession)initWithNoteObjectID:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ICEditingTextViewItemProviderPasteSession;
  v6 = [(ICEditingTextViewItemProviderPasteSession *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteObjectID, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    mutableErrorCodes = v7->_mutableErrorCodes;
    v7->_mutableErrorCodes = v8;

    v10 = [MEMORY[0x277D35F30] sharedContext];
    v11 = [v10 snapshotManagedObjectContext];
    workerContext = v7->_workerContext;
    v7->_workerContext = v11;
  }

  return v7;
}

- (ICNote)workerNote
{
  v3 = MEMORY[0x277D35F28];
  v4 = [(ICEditingTextViewItemProviderPasteSession *)self noteObjectID];
  v5 = [(ICEditingTextViewItemProviderPasteSession *)self workerContext];
  v6 = [v3 ic_existingObjectWithID:v4 context:v5];

  return v6;
}

- (void)addErrorWithCode:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(ICEditingTextViewItemProviderPasteSession *)obj mutableErrorCodes];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v4 addObject:v5];

  objc_sync_exit(obj);
}

- (void)incrementNumberOfAttachmentsAttemptedAdded
{
  obj = self;
  objc_sync_enter(obj);
  [(ICEditingTextViewItemProviderPasteSession *)obj setNumberOfAttachmentsAttemptedAdded:[(ICEditingTextViewItemProviderPasteSession *)obj numberOfAttachmentsAttemptedAdded]+ 1];
  objc_sync_exit(obj);
}

- (unint64_t)numberOfAttachmentsAttemptedAdded
{
  v2 = self;
  objc_sync_enter(v2);
  numberOfAttachmentsAttemptedAdded = v2->_numberOfAttachmentsAttemptedAdded;
  objc_sync_exit(v2);

  return numberOfAttachmentsAttemptedAdded;
}

- (NSSet)errorCodes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICEditingTextViewItemProviderPasteSession *)v2 mutableErrorCodes];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (void)performBlockAndWait:(id)a3
{
  v4 = a3;
  v5 = [(ICEditingTextViewItemProviderPasteSession *)self workerContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ICEditingTextViewItemProviderPasteSession_performBlockAndWait___block_invoke;
  v7[3] = &unk_2781AEEC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

void __65__ICEditingTextViewItemProviderPasteSession_performBlockAndWait___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) workerNote];
  (*(v1 + 16))(v1, v2);
}

- (void)saveWorkerContext
{
  v3 = [(ICEditingTextViewItemProviderPasteSession *)self workerContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ICEditingTextViewItemProviderPasteSession_saveWorkerContext__block_invoke;
  v4[3] = &unk_2781ABCF8;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

void __62__ICEditingTextViewItemProviderPasteSession_saveWorkerContext__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D35CD0];
  v4 = [*(a1 + 32) noteObjectID];
  [v2 postNotificationName:v3 object:v4];

  v5 = [*(a1 + 32) workerContext];
  [v5 ic_save];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D35CC8];
  v7 = [*(a1 + 32) noteObjectID];
  [v8 postNotificationName:v6 object:v7];
}

@end