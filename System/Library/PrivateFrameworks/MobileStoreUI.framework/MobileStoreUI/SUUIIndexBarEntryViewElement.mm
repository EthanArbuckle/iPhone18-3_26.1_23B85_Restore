@interface SUUIIndexBarEntryViewElement
- (SUUIIndexBarEntryViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SUUIViewElement)childElement;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIIndexBarEntryViewElement

- (SUUIIndexBarEntryViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = SUUIIndexBarEntryViewElement;
  v9 = [(SUUIViewElement *)&v15 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"targetIndexBarEntryID"];
    if ([v10 length])
    {
      objc_storeStrong(&v9->_targetIndexBarEntryID, v10);
    }

    v11 = [elementCopy getAttribute:@"visibility"];
    v12 = [v11 isEqualToString:@"required"];
    v13 = 1000;
    if (!v12)
    {
      v13 = 0;
    }

    v9->_visibilityPriority = v13;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIIndexBarEntryViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    targetIndexBarEntryID = [(SUUIIndexBarEntryViewElement *)elementCopy targetIndexBarEntryID];
    targetIndexBarEntryID = self->_targetIndexBarEntryID;
    self->_targetIndexBarEntryID = targetIndexBarEntryID;

    self->_visibilityPriority = [(SUUIIndexBarEntryViewElement *)elementCopy visibilityPriority];
  }

  return v6;
}

- (SUUIViewElement)childElement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__57;
  v9 = __Block_byref_object_dispose__57;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SUUIIndexBarEntryViewElement_childElement__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end