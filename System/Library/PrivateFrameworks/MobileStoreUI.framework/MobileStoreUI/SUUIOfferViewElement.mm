@interface SUUIOfferViewElement
- (BOOL)isCompactModeEnabled;
- (BOOL)isSimpleOffer;
- (void)enumerateChildrenUsingBlock:(id)a3;
@end

@implementation SUUIOfferViewElement

- (BOOL)isSimpleOffer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__SUUIOfferViewElement_isSimpleOffer__block_invoke;
  v4[3] = &unk_2798F5FB8;
  v4[4] = &v5;
  [(SUUIOfferViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __37__SUUIOfferViewElement_isSimpleOffer__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 elementType] == 138 && objc_msgSend(v5, "labelViewStyle") != 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (BOOL)isCompactModeEnabled
{
  v2 = [(SUUIOfferViewElement *)self attributes];
  v3 = [v2 objectForKey:@"compact"];

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enumerateChildrenUsingBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SUUIOfferViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2798F6008;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SUUIOfferViewElement;
  v5 = v4;
  [(SUUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __52__SUUIOfferViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = v3 > 0x32 || ((1 << v3) & 0x4000000003000) == 0;
  if (!v4 || v3 == 141 || v3 == 138)
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end