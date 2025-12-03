@interface SUUIInfoViewElement
- (NSArray)valueElements;
- (SUUILabelViewElement)titleElement;
@end

@implementation SUUIInfoViewElement

- (SUUILabelViewElement)titleElement
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__32;
  v9 = __Block_byref_object_dispose__32;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SUUIInfoViewElement_titleElement__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __35__SUUIInfoViewElement_titleElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 138 && objc_msgSend(v6, "labelViewStyle") == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)valueElements
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SUUIInfoViewElement_valueElements__block_invoke;
  v6[3] = &unk_2798F5B20;
  v4 = array;
  v7 = v4;
  [(SUUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __36__SUUIInfoViewElement_valueElements__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = v3 > 0x3E || ((1 << v3) & 0x4006004100001100) == 0;
  if (!v4 || v3 - 135 <= 0x11 && (((1 << (v3 + 121)) & 0x20241) != 0 || v3 == 138 && [v5 labelViewStyle] != 5))
  {
    [*(a1 + 32) addObject:v5];
  }
}

@end