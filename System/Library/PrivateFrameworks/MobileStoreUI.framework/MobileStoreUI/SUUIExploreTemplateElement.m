@interface SUUIExploreTemplateElement
- (NSArray)childViewElements;
- (SUUIExploreTemplateElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (SUUIViewElement)leftSplit;
- (SUUIViewElement)rightSplit;
- (void)_getLeftSplit:(id *)a3 rightSplit:(id *)a4;
@end

@implementation SUUIExploreTemplateElement

- (SUUIExploreTemplateElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SUUIExploreTemplateElement;
  v9 = [(SUUIViewElement *)&v12 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 childElementsByTagName:@"split"];
    v9->_usesSplits = [v10 count] == 2;
  }

  return v9;
}

- (NSArray)childViewElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = self;
  v5 = v4;
  if (v4->_usesSplits)
  {
    v6 = [(SUUIExploreTemplateElement *)v4 leftSplit];

    v5 = v6;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SUUIExploreTemplateElement_childViewElements__block_invoke;
  v9[3] = &unk_2798F5B20;
  v7 = v3;
  v10 = v7;
  [v5 enumerateChildrenUsingBlock:v9];

  return v7;
}

void __47__SUUIExploreTemplateElement_childViewElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (SUUIViewElement)leftSplit
{
  if (self->_usesSplits)
  {
    v6[1] = v2;
    v7 = v3;
    v6[0] = 0;
    [(SUUIExploreTemplateElement *)self _getLeftSplit:v6 rightSplit:0];
    v4 = v6[0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SUUIViewElement)rightSplit
{
  if (self->_usesSplits)
  {
    v6[1] = v2;
    v7 = v3;
    v6[0] = 0;
    [(SUUIExploreTemplateElement *)self _getLeftSplit:0 rightSplit:v6];
    v4 = v6[0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_getLeftSplit:(id *)a3 rightSplit:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__11;
  v12 = __Block_byref_object_dispose__11;
  v13 = 0;
  v6 = [(SUUIExploreTemplateElement *)self children];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SUUIExploreTemplateElement__getLeftSplit_rightSplit___block_invoke;
  v7[3] = &unk_2798F6D58;
  v7[4] = &v14;
  v7[5] = &v8;
  [v6 enumerateObjectsUsingBlock:v7];

  if (a3)
  {
    *a3 = v15[5];
  }

  if (a4)
  {
    *a4 = v9[5];
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void __55__SUUIExploreTemplateElement__getLeftSplit_rightSplit___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 elementType] == 128)
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }

    else
    {
      objc_storeStrong(v8, a2);
    }
  }
}

@end