@interface SUUIJSPhysicalCirclesTemplate
- (SUUIJSPhysicalCirclesTemplate)initWithAppContext:(id)context DOMFeature:(id)feature;
- (void)_performAnimationWithType:(int64_t)type callback:(id)callback;
- (void)afterDOMUpdate:(id)update;
@end

@implementation SUUIJSPhysicalCirclesTemplate

- (SUUIJSPhysicalCirclesTemplate)initWithAppContext:(id)context DOMFeature:(id)feature
{
  contextCopy = context;
  objc_initWeak(&location, feature);
  v10.receiver = self;
  v10.super_class = SUUIJSPhysicalCirclesTemplate;
  v7 = [(IKJSObject *)&v10 initWithAppContext:contextCopy];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_feature, v8);
  }

  objc_destroyWeak(&location);

  return v7;
}

- (void)afterDOMUpdate:(id)update
{
  v4 = MEMORY[0x277CD4650];
  updateCopy = update;
  v6 = [v4 managedValueWithValue:updateCopy];
  context = [updateCopy context];

  virtualMachine = [context virtualMachine];

  [virtualMachine addManagedReference:v6 withOwner:self];
  appContext = [(IKJSObject *)self appContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SUUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke;
  v12[3] = &unk_2798FA810;
  v12[4] = self;
  v13 = v6;
  v14 = virtualMachine;
  v10 = virtualMachine;
  v11 = v6;
  [appContext evaluateDelegateBlockSync:v12];
}

void __48__SUUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SUUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke_2;
  v8[3] = &unk_2798F70E0;
  v9 = v3;
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  [WeakRetained _addDOMUpdateBlock:v8];
}

void __48__SUUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SUUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke_3;
  v5[3] = &unk_2798F86C8;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [v2 evaluate:v5 completionBlock:0];
}

uint64_t __48__SUUIJSPhysicalCirclesTemplate_afterDOMUpdate___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) value];
  v3 = [v2 callWithArguments:0];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v4 removeManagedReference:v5 withOwner:v6];
}

- (void)_performAnimationWithType:(int64_t)type callback:(id)callback
{
  callbackCopy = callback;
  appContext = [(IKJSObject *)self appContext];
  v8 = objc_alloc_init(SUUIPhysicalCirclesAnimationRequest);
  [(SUUIPhysicalCirclesAnimationRequest *)v8 setAnimationType:type];
  if (callbackCopy)
  {
    v9 = [MEMORY[0x277CD4650] managedValueWithValue:callbackCopy];
    context = [callbackCopy context];
    virtualMachine = [context virtualMachine];

    [virtualMachine addManagedReference:v9 withOwner:self];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__SUUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke;
    v17[3] = &unk_2798F70E0;
    v18 = appContext;
    v19 = v9;
    v20 = virtualMachine;
    selfCopy = self;
    v12 = virtualMachine;
    v13 = v9;
    [(SUUIPhysicalCirclesAnimationRequest *)v8 _setCompletionBlock:v17];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__SUUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke_3;
  v15[3] = &unk_2798FB6C8;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [appContext evaluateDelegateBlockSync:v15];
}

void __68__SUUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SUUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke_2;
  v5[3] = &unk_2798F86C8;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [v2 evaluate:v5 completionBlock:0];
}

void *__68__SUUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke_2(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = [result value];
    v4 = [v3 callWithArguments:0];

    v6 = a1[4];
    v5 = a1[5];
    v7 = a1[6];

    return [v5 removeManagedReference:v6 withOwner:v7];
  }

  return result;
}

void __68__SUUIJSPhysicalCirclesTemplate__performAnimationWithType_callback___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained _requestAnimation:*(a1 + 40)];
}

@end