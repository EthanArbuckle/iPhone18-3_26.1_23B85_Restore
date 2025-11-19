@interface CRSUIClimateQuickControlRequestActionHandler
- (CRSUIClimateQuickControlRequestActionDelegate)delegate;
- (CRSUIClimateQuickControlRequestActionHandler)initWithDelegate:(id)a3;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation CRSUIClimateQuickControlRequestActionHandler

- (CRSUIClimateQuickControlRequestActionHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRSUIClimateQuickControlRequestActionHandler;
  v5 = [(CRSUIClimateQuickControlRequestActionHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 objectsPassingTest:&__block_literal_global_5];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __110__CRSUIClimateQuickControlRequestActionHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2;
  v17 = &unk_278DA0D60;
  v18 = v8;
  v19 = self;
  v11 = v8;
  [v10 enumerateObjectsUsingBlock:&v14];
  v12 = [v9 mutableCopy];

  [v12 minusSet:v10];

  return v12;
}

uint64_t __110__CRSUIClimateQuickControlRequestActionHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __110__CRSUIClimateQuickControlRequestActionHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v6 = [v3 objectForSetting:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [*(a1 + 40) delegate];
      [v5 requestQuickControl:v6];
    }

    else
    {
      [*(a1 + 32) requestQuickControl:v6];
    }
  }
}

- (CRSUIClimateQuickControlRequestActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end