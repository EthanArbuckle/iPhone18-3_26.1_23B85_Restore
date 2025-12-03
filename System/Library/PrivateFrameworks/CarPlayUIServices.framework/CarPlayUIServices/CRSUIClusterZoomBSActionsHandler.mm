@interface CRSUIClusterZoomBSActionsHandler
- (CRSUIClusterZoomActionDelegate)delegate;
- (CRSUIClusterZoomBSActionsHandler)initWithDelegate:(id)delegate;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation CRSUIClusterZoomBSActionsHandler

- (CRSUIClusterZoomBSActionsHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CRSUIClusterZoomBSActionsHandler;
  v5 = [(CRSUIClusterZoomBSActionsHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  actionsCopy = actions;
  iSceneCopy = iScene;
  v10 = [actionsCopy objectsPassingTest:&__block_literal_global_6];
  if ([v10 count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __98__CRSUIClusterZoomBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2;
      v18[3] = &unk_278DA0D88;
      v18[4] = self;
      [v10 enumerateObjectsUsingBlock:v18];
    }

    else if ([iSceneCopy conformsToProtocol:&unk_285602540])
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __98__CRSUIClusterZoomBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_3;
      v16 = &unk_278DA0D88;
      v17 = iSceneCopy;
      [v10 enumerateObjectsUsingBlock:&v13];
    }
  }

  v11 = [actionsCopy mutableCopy];
  [v11 minusSet:v10];

  return v11;
}

uint64_t __98__CRSUIClusterZoomBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __98__CRSUIClusterZoomBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 delegate];
  v4 = [v3 zoomDirection];

  [v5 handleZoomInDirection:v4];
}

uint64_t __98__CRSUIClusterZoomBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoomDirection];

  return [v2 handleZoomInDirection:v3];
}

- (CRSUIClusterZoomActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end