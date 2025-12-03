@interface SUUIPhysicalCirclesTemplateDOMFeature
+ (id)makeFeatureJSObjectForFeature:(id)feature;
- (IKAppContext)appContext;
- (SUUIPhysicalCirclesTemplateDOMFeature)initWithDOMNode:(id)node featureName:(id)name;
- (SUUIPhysicalCirclesTemplateDelegate)delegate;
- (id)popPendingAnimationRequests;
- (void)_addDOMUpdateBlock:(id)block;
- (void)_requestAnimation:(id)animation;
- (void)finishDOMUpdates;
@end

@implementation SUUIPhysicalCirclesTemplateDOMFeature

- (SUUIPhysicalCirclesTemplateDOMFeature)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = SUUIPhysicalCirclesTemplateDOMFeature;
  v8 = [(SUUIPhysicalCirclesTemplateDOMFeature *)&v13 init];
  if (v8)
  {
    appContext = [nodeCopy appContext];
    objc_storeWeak(&v8->_appContext, appContext);

    v10 = [nameCopy copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;
  }

  return v8;
}

- (void)finishDOMUpdates
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_domUpdateBlocks copy];
  domUpdateBlocks = self->_domUpdateBlocks;
  self->_domUpdateBlocks = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)popPendingAnimationRequests
{
  v3 = [(NSMutableArray *)self->_pendingAnimationRequests copy];
  pendingAnimationRequests = self->_pendingAnimationRequests;
  self->_pendingAnimationRequests = 0;

  return v3;
}

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [SUUIJSPhysicalCirclesTemplate alloc];
  appContext = [featureCopy appContext];
  v6 = [(SUUIJSPhysicalCirclesTemplate *)v4 initWithAppContext:appContext DOMFeature:featureCopy];

  return v6;
}

- (void)_addDOMUpdateBlock:(id)block
{
  blockCopy = block;
  v10 = blockCopy;
  if (!self->_domUpdateBlocks)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    domUpdateBlocks = self->_domUpdateBlocks;
    self->_domUpdateBlocks = v5;

    blockCopy = v10;
  }

  v7 = [blockCopy copy];
  v8 = self->_domUpdateBlocks;
  v9 = _Block_copy(v7);
  [(NSMutableArray *)v8 addObject:v9];
}

- (void)_requestAnimation:(id)animation
{
  animationCopy = animation;
  delegate = [(SUUIPhysicalCirclesTemplateDOMFeature *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate physicalCirclesDOMFeature:self didRequestAnimation:animationCopy];
  }

  else
  {
    pendingAnimationRequests = self->_pendingAnimationRequests;
    if (!pendingAnimationRequests)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_pendingAnimationRequests;
      self->_pendingAnimationRequests = v6;

      pendingAnimationRequests = self->_pendingAnimationRequests;
    }

    [(NSMutableArray *)pendingAnimationRequests addObject:animationCopy];
  }
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (SUUIPhysicalCirclesTemplateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end