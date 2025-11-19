@interface CRSUIClusterPressBSActionsHandler
- (CRSUIClusterPressBSActionActionDelegate)delegate;
- (CRSUIClusterPressBSActionsHandler)initWithDelegate:(id)a3;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation CRSUIClusterPressBSActionsHandler

- (CRSUIClusterPressBSActionsHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRSUIClusterPressBSActionsHandler;
  v5 = [(CRSUIClusterPressBSActionsHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v7 = a3;
  v8 = [v7 objectsPassingTest:&__block_literal_global_13];
  if ([v8 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __99__CRSUIClusterPressBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2;
    v11[3] = &unk_278DA1190;
    v11[4] = self;
    [v8 enumerateObjectsUsingBlock:v11];
  }

  v9 = [v7 mutableCopy];
  [v9 minusSet:v8];

  return v9;
}

uint64_t __99__CRSUIClusterPressBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __99__CRSUIClusterPressBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 delegate];
  v4 = [v3 actionType];

  [v5 selectButtonPressedWithType:v4];
}

- (CRSUIClusterPressBSActionActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end