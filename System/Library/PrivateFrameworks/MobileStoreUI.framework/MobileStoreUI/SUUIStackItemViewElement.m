@interface SUUIStackItemViewElement
- (NSArray)imageElements;
@end

@implementation SUUIStackItemViewElement

- (NSArray)imageElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SUUIStackItemViewElement_imageElements__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = v3;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __41__SUUIStackItemViewElement_imageElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 49)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end