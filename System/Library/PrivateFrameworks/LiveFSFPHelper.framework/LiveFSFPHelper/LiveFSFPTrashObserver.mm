@interface LiveFSFPTrashObserver
+ (id)newWithCompletionHandler:(id)a3;
- (LiveFSFPTrashObserver)initWithCompletionHandler:(id)a3;
- (void)didEnumerateItems:(id)a3;
- (void)finishEnumeratingUpToPage:(id)a3;
- (void)finishEnumeratingWithError:(id)a3;
@end

@implementation LiveFSFPTrashObserver

- (LiveFSFPTrashObserver)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LiveFSFPTrashObserver;
  v5 = [(LiveFSFPTrashObserver *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    items = v5->_items;
    v5->_items = v6;

    v8 = MEMORY[0x259C563F0](v4);
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v8;
  }

  return v5;
}

+ (id)newWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [[LiveFSFPTrashObserver alloc] initWithCompletionHandler:v3];

  return v4;
}

- (void)didEnumerateItems:(id)a3
{
  v4 = MEMORY[0x277CCABB8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__LiveFSFPTrashObserver_didEnumerateItems___block_invoke;
  v8[3] = &unk_27981A808;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __43__LiveFSFPTrashObserver_didEnumerateItems___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 filename];
  v4 = [*(a1 + 32) numberFromString:v3];
  if (v4)
  {
    v5 = [*(a1 + 40) items];
    v6 = [v7 itemIdentifier];
    [v5 addObject:v6];
  }
}

- (void)finishEnumeratingUpToPage:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_lastPage, a3);
  v5 = v7;
  if (!v7)
  {
    items = self->_items;
    (*(self->_completionHandler + 2))();
    v5 = 0;
  }
}

- (void)finishEnumeratingWithError:(id)a3
{
  lastPage = self->_lastPage;
  self->_lastPage = 0;
  v5 = a3;

  (*(self->_completionHandler + 2))();
}

@end