@interface LiveFSFPTrashObserver
+ (id)newWithCompletionHandler:(id)handler;
- (LiveFSFPTrashObserver)initWithCompletionHandler:(id)handler;
- (void)didEnumerateItems:(id)items;
- (void)finishEnumeratingUpToPage:(id)page;
- (void)finishEnumeratingWithError:(id)error;
@end

@implementation LiveFSFPTrashObserver

- (LiveFSFPTrashObserver)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = LiveFSFPTrashObserver;
  v5 = [(LiveFSFPTrashObserver *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    items = v5->_items;
    v5->_items = v6;

    v8 = MEMORY[0x259C563F0](handlerCopy);
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v8;
  }

  return v5;
}

+ (id)newWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [[LiveFSFPTrashObserver alloc] initWithCompletionHandler:handlerCopy];

  return v4;
}

- (void)didEnumerateItems:(id)items
{
  v4 = MEMORY[0x277CCABB8];
  itemsCopy = items;
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__LiveFSFPTrashObserver_didEnumerateItems___block_invoke;
  v8[3] = &unk_27981A808;
  v9 = v6;
  selfCopy = self;
  v7 = v6;
  [itemsCopy enumerateObjectsUsingBlock:v8];
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

- (void)finishEnumeratingUpToPage:(id)page
{
  pageCopy = page;
  objc_storeStrong(&self->_lastPage, page);
  v5 = pageCopy;
  if (!pageCopy)
  {
    items = self->_items;
    (*(self->_completionHandler + 2))();
    v5 = 0;
  }
}

- (void)finishEnumeratingWithError:(id)error
{
  lastPage = self->_lastPage;
  self->_lastPage = 0;
  errorCopy = error;

  (*(self->_completionHandler + 2))();
}

@end