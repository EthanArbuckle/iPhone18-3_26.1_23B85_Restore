@interface SUUIHeaderViewElement
- (NSArray)titleLabels;
- (SUUIButtonViewElement)button;
- (SUUIHeaderViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUIHeaderViewElement

- (SUUIHeaderViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  if (v11 == objc_opt_class() && ([v8 getAttribute:@"type"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"browse"), v12, v13))
  {
    v14 = v9;
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      do
      {
        v17 = [v16 parent];

        v16 = v17;
      }

      while (v17);
    }

    v18 = [(SUUIHeaderViewElement *)[SUUIBrowseHeaderViewElement alloc] initWithDOMElement:v8 parent:v15 elementFactory:v10];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = SUUIHeaderViewElement;
    v18 = [(SUUIViewElement *)&v21 initWithDOMElement:v8 parent:v9 elementFactory:v10];
    self = &v18->super;
  }

  p_super = &v18->super;

  return p_super;
}

- (SUUIButtonViewElement)button
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__99;
  v9 = __Block_byref_object_dispose__99;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SUUIHeaderViewElement_button__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __31__SUUIHeaderViewElement_button__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (SUUIIKViewElementTypeIsButton([v6 elementType]))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)titleLabels
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SUUIHeaderViewElement_titleLabels__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = v3;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __36__SUUIHeaderViewElement_titleLabels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 138)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end