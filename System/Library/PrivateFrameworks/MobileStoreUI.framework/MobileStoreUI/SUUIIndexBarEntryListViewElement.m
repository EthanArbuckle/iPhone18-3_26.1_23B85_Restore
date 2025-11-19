@interface SUUIIndexBarEntryListViewElement
- (NSArray)childIndexBarEntryElements;
- (SUUIIndexBarEntryListViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIIndexBarEntryListViewElement

- (SUUIIndexBarEntryListViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v17.receiver = self;
  v17.super_class = SUUIIndexBarEntryListViewElement;
  v9 = [(SUUIViewElement *)&v17 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"targetIndexBarEntryID"];
    if ([v10 length])
    {
      objc_storeStrong(&v9->_targetIndexBarEntryID, v10);
    }

    v11 = [v8 getAttribute:@"type"];
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

    v14 = [v8 getAttribute:@"indexBarHiddenWhenEmpty"];
    v9->_indexBarHiddenWhenEmpty = [v14 BOOLValue];

    v15 = [v8 getAttribute:@"minimumEntityCount"];
    v9->_minimumEntityCount = [v15 integerValue];
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIIndexBarEntryListViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_entryListElementType = [(SUUIIndexBarEntryListViewElement *)v4 entryListElementType];
    self->_indexBarHiddenWhenEmpty = [(SUUIIndexBarEntryListViewElement *)v4 isIndexBarHiddenWhenEmpty];
    self->_minimumEntityCount = [(SUUIIndexBarEntryListViewElement *)v4 minimumEntityCount];
    v7 = [(SUUIIndexBarEntryListViewElement *)v4 targetIndexBarEntryID];
    targetIndexBarEntryID = self->_targetIndexBarEntryID;
    self->_targetIndexBarEntryID = v7;
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