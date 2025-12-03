@interface ICSynapseLinkPreviewLoadingOperation
- (ICSynapseLinkPreviewLoadingOperation)initWithSynapseItem:(id)item;
- (void)linkPreviewDidFinishLoading:(id)loading;
- (void)loadPreviewWithCompletionBlock:(id)block;
@end

@implementation ICSynapseLinkPreviewLoadingOperation

- (ICSynapseLinkPreviewLoadingOperation)initWithSynapseItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = ICSynapseLinkPreviewLoadingOperation;
  v5 = [(ICSynapseLinkPreviewLoadingOperation *)&v10 init];
  if (v5)
  {
    v6 = [itemCopy copy];
    synapseItem = v5->_synapseItem;
    v5->_synapseItem = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_linkPreviewDidFinishLoading_ name:*MEMORY[0x277D6B7F8] object:v5->_synapseItem];
  }

  return v5;
}

- (void)loadPreviewWithCompletionBlock:(id)block
{
  v4 = [block copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  synapseItem = self->_synapseItem;

  [(SYContentItem *)synapseItem loadFullPreviewIfNeeded];
}

- (void)linkPreviewDidFinishLoading:(id)loading
{
  loadingCopy = loading;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICSynapseLinkPreviewLoadingOperation linkPreviewDidFinishLoading:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (self->_completionBlock)
  {
    synapseItem = self->_synapseItem;
    object = [loadingCopy object];

    if (synapseItem == object)
    {
      (*(self->_completionBlock + 2))();
    }
  }
}

@end