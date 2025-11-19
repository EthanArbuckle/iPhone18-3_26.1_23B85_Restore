@interface SUUIPhysicalCirclesTemplateViewElement
+ (id)supportedFeatures;
- (NSArray)circleItemElements;
- (SUUILabelViewElement)subtitleElement;
- (SUUILabelViewElement)titleElement;
- (SUUIPhysicalCirclesTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (void)dispatchRemovedEventWithChildViewElement:(id)a3;
@end

@implementation SUUIPhysicalCirclesTemplateViewElement

- (SUUIPhysicalCirclesTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v10.receiver = self;
  v10.super_class = SUUIPhysicalCirclesTemplateViewElement;
  v5 = [(SUUIViewElement *)&v10 initWithDOMElement:a3 parent:a4 elementFactory:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(SUUIViewElement *)v5 featureWithName:0x286AFC860];
    scriptInterface = v6->_scriptInterface;
    v6->_scriptInterface = v7;
  }

  return v6;
}

- (NSArray)circleItemElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SUUIPhysicalCirclesTemplateViewElement_circleItemElements__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = v3;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __60__SUUIPhysicalCirclesTemplateViewElement_circleItemElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 59)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)dispatchRemovedEventWithChildViewElement:(id)a3
{
  v4 = a3;
  v5 = [(SUUIPhysicalCirclesTemplateDOMFeature *)self->_scriptInterface appContext];
  v6 = [(SUUIPhysicalCirclesTemplateViewElement *)self appDocument];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SUUIPhysicalCirclesTemplateViewElement_dispatchRemovedEventWithChildViewElement___block_invoke;
  v10[3] = &unk_2798FD500;
  v7 = v6;
  v11 = v7;
  v8 = v4;
  v12 = v8;
  v9 = v5;
  v13 = v9;
  objc_copyWeak(&v14, &location);
  [v9 evaluate:v10 completionBlock:0];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __83__SUUIPhysicalCirclesTemplateViewElement_dispatchRemovedEventWithChildViewElement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) retrieveJSElementForViewElement:*(a1 + 40) jsContext:v3];
  if (v4)
  {
    v5 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__SUUIPhysicalCirclesTemplateViewElement_dispatchRemovedEventWithChildViewElement___block_invoke_2;
    v6[3] = &unk_2798FD4D8;
    objc_copyWeak(&v8, (a1 + 56));
    v7 = v4;
    [v5 evaluateDelegateBlockSync:v6];

    objc_destroyWeak(&v8);
  }
}

void __83__SUUIPhysicalCirclesTemplateViewElement_dispatchRemovedEventWithChildViewElement___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = @"removed";
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [WeakRetained dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v4 completionBlock:0];
}

- (SUUILabelViewElement)subtitleElement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__90;
  v9 = __Block_byref_object_dispose__90;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SUUIPhysicalCirclesTemplateViewElement_subtitleElement__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __57__SUUIPhysicalCirclesTemplateViewElement_subtitleElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (SUUILabelViewElement)titleElement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__90;
  v9 = __Block_byref_object_dispose__90;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SUUIPhysicalCirclesTemplateViewElement_titleElement__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __54__SUUIPhysicalCirclesTemplateViewElement_titleElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)supportedFeatures
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x286AFC860;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end