@interface SUUITrendingSearchTemplateElement
- (NSArray)buttons;
- (SUUILabelViewElement)titleLabel;
@end

@implementation SUUITrendingSearchTemplateElement

- (NSArray)buttons
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SUUITrendingSearchTemplateElement_buttons__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = v3;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __44__SUUITrendingSearchTemplateElement_buttons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SUUIIKViewElementTypeIsButton([v3 elementType]))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (SUUILabelViewElement)titleLabel
{
  v3 = [(SUUIViewElement *)self firstChildForElementType:138];
  if (!v3)
  {
    v4 = [(SUUIViewElement *)self firstChildForElementType:48];
    v5 = [v4 titleLabels];
    v3 = [v5 firstObject];
  }

  return v3;
}

@end