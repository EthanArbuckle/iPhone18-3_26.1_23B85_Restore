@interface ICSynapseLinkPreviewLoadingOperation
- (ICSynapseLinkPreviewLoadingOperation)initWithSynapseItem:(id)a3;
- (void)linkPreviewDidFinishLoading:(id)a3;
- (void)loadPreviewWithCompletionBlock:(id)a3;
@end

@implementation ICSynapseLinkPreviewLoadingOperation

- (ICSynapseLinkPreviewLoadingOperation)initWithSynapseItem:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICSynapseLinkPreviewLoadingOperation;
  v5 = [(ICSynapseLinkPreviewLoadingOperation *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    synapseItem = v5->_synapseItem;
    v5->_synapseItem = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v5 selector:sel_linkPreviewDidFinishLoading_ name:*MEMORY[0x277D6B7F8] object:v5->_synapseItem];
  }

  return v5;
}

- (void)loadPreviewWithCompletionBlock:(id)a3
{
  v4 = [a3 copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  synapseItem = self->_synapseItem;

  [(SYContentItem *)synapseItem loadFullPreviewIfNeeded];
}

- (void)linkPreviewDidFinishLoading:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICSynapseLinkPreviewLoadingOperation linkPreviewDidFinishLoading:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if (self->_completionBlock)
  {
    synapseItem = self->_synapseItem;
    v5 = [v6 object];

    if (synapseItem == v5)
    {
      (*(self->_completionBlock + 2))();
    }
  }
}

@end