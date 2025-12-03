@interface SUUIReviewListViewElement
- (NSArray)items;
@end

@implementation SUUIReviewListViewElement

- (NSArray)items
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SUUIReviewListViewElement_items__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = array;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __34__SUUIReviewListViewElement_items__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 103 || objc_msgSend(v3, "elementType") == 102)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end