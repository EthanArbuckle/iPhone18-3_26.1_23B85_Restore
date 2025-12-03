@interface SUUIIndexBarEntryListViewElement
- (NSArray)childIndexBarEntryElements;
- (SUUIIndexBarEntryListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIIndexBarEntryListViewElement

- (SUUIIndexBarEntryListViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v17.receiver = self;
  v17.super_class = SUUIIndexBarEntryListViewElement;
  v9 = [(SUUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"targetIndexBarEntryID"];
    if ([v10 length])
    {
      objc_storeStrong(&v9->_targetIndexBarEntryID, v10);
    }

    v11 = [elementCopy getAttribute:@"type"];
    if ([v11 isEqualToString:@"dynamicElement"])
    {
      v12 = 1;
    }

    else
    {
      v13 = [v11 isEqualToString:@"localeStandard"];
      v12 = 2;
      if (!v13)
      {
        v12 = 0;
      }
    }

    v9->_entryListElementType = v12;

    v14 = [elementCopy getAttribute:@"indexBarHiddenWhenEmpty"];
    v9->_indexBarHiddenWhenEmpty = [v14 BOOLValue];

    v15 = [elementCopy getAttribute:@"minimumEntityCount"];
    v9->_minimumEntityCount = [v15 integerValue];
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIIndexBarEntryListViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_entryListElementType = [(SUUIIndexBarEntryListViewElement *)elementCopy entryListElementType];
    self->_indexBarHiddenWhenEmpty = [(SUUIIndexBarEntryListViewElement *)elementCopy isIndexBarHiddenWhenEmpty];
    self->_minimumEntityCount = [(SUUIIndexBarEntryListViewElement *)elementCopy minimumEntityCount];
    targetIndexBarEntryID = [(SUUIIndexBarEntryListViewElement *)elementCopy targetIndexBarEntryID];
    targetIndexBarEntryID = self->_targetIndexBarEntryID;
    self->_targetIndexBarEntryID = targetIndexBarEntryID;
  }

  return v6;
}

- (NSArray)childIndexBarEntryElements
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SUUIIndexBarEntryListViewElement_childIndexBarEntryElements__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __62__SUUIIndexBarEntryListViewElement_childIndexBarEntryElements__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 elementType] == 54)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

@end