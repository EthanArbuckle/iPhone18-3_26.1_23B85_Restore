@interface SUUICardLayout
+ (id)layoutWithCardViewElement:(id)a3 context:(id)a4;
- (CGSize)sizeForViewElement:(id)a3 width:(double)a4;
- (double)bottomInsetForLastViewElement:(id)a3 width:(double)a4;
- (double)topInsetForViewElement:(id)a3 previousViewElement:(id)a4 width:(double)a5;
@end

@implementation SUUICardLayout

+ (id)layoutWithCardViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v21 = 0;
  v7 = [v5 style];
  v8 = [v7 cardType];
  v9 = [v8 isEqualToString:@"programmed"];

  if (v9)
  {
    v10 = objc_opt_class();
    v19[3] = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_5:
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__SUUICardLayout_layoutWithCardViewElement_context___block_invoke;
    v17[3] = &unk_2798F5FB8;
    v17[4] = &v18;
    [v5 enumerateChildrenUsingBlock:v17];
    if (v19[3])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v19[3])
  {
    goto LABEL_5;
  }

LABEL_6:
  v19[3] = objc_opt_class();
LABEL_7:
  v11 = [v5 firstChildForElementType:7];

  v12 = objc_alloc_init(v19[3]);
  v13 = v12[1];
  v12[1] = v5;
  v14 = v5;

  v15 = v12[2];
  v12[2] = v6;

  *(v12 + 24) = v11 != 0;
  _Block_object_dispose(&v18, 8);

  return v12;
}

uint64_t __52__SUUICardLayout_layoutWithCardViewElement_context___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(*(*(a1 + 32) + 8) + 24) allowsViewElement:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (double)bottomInsetForLastViewElement:(id)a3 width:(double)a4
{
  result = 0.0;
  if (self->_hasBackground)
  {
    return 15.0;
  }

  return result;
}

- (CGSize)sizeForViewElement:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [v6 elementType];
  if (v7 <= 65)
  {
    if (v7 == 7)
    {
      v15 = [v6 firstChildForElementType:49];
      [(SUUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:v15 width:a4];
      v13 = v16;
      v14 = v17;

      goto LABEL_17;
    }

    if (v7 == 50 && [(SUUICardViewElement *)self->_cardViewElement isAdCard])
    {
      v8 = [MEMORY[0x277D75418] currentDevice];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_16:
        v13 = 0.0;
        v14 = 5.0;
        goto LABEL_17;
      }

      v9 = [MEMORY[0x277D75418] currentDevice];
      v10 = [v9 userInterfaceIdiom];

      if (!v10)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_11;
  }

  if (v7 == 108)
  {
    v13 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_17;
  }

  if (v7 != 66)
  {
LABEL_11:
    [(SUUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:v6 width:a4];
    goto LABEL_12;
  }

  [SUUIHorizontalLockupView sizeThatFitsWidth:v6 viewElement:self->_layoutContext context:a4];
LABEL_12:
  v13 = v11;
  v14 = v12;
LABEL_17:

  v18 = v13;
  v19 = v14;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)topInsetForViewElement:(id)a3 previousViewElement:(id)a4 width:(double)a5
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = 12.0;
    if ([v7 elementType] != 131)
    {
      if ([v8 elementType] == 131)
      {
        v9 = 12.0;
      }

      else
      {
        v9 = 10.0;
      }
    }
  }

  else if (self->_hasBackground)
  {
    v9 = 15.0;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end