@interface SUUIEditorialCardCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (SUUIEditorialCardCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setPerspectiveTargetView:(id)a3;
@end

@implementation SUUIEditorialCardCollectionViewCell

- (SUUIEditorialCardCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUIEditorialCardCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allLockupViews = v3->_allLockupViews;
    v3->_allLockupViews = v4;

    [(SUUIViewReuseCollectionViewCell *)v3 registerClass:objc_opt_class() forViewWithReuseIdentifier:@"editorialCardLockup"];
  }

  return v3;
}

- (void)setPerspectiveTargetView:(id)a3
{
  primaryLockupView = self->_primaryLockupView;
  v4 = a3;
  [(SUUIVerticalLockupView *)primaryLockupView setPerspectiveTargetView:v4];
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__SUUIEditorialCardCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2798F5E50;
  v14 = a4;
  v9 = v8;
  v12 = v9;
  v13 = &v15;
  [v7 enumerateChildrenUsingBlock:v11];
  LOBYTE(a4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a4;
}

void __86__SUUIEditorialCardCollectionViewCell_prefetchResourcesForViewElement_reason_context___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 66)
  {
    *(*(a1[5] + 8) + 24) = (*(*(a1[5] + 8) + 24) | [SUUIVerticalLockupView prefetchResourcesForViewElement:v3 reason:a1[6] context:a1[4]]) & 1;
  }
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[SUUIEditorialCardLayout alloc] initWithCard:v8 width:v7 context:a4];

  v10 = [(SUUIEditorialCardLayout *)v9 primaryLockup];
  if (v10)
  {
    [(SUUIEditorialCardLayout *)v9 primaryLockupSize];
    [SUUIVerticalLockupView requestLayoutForViewElement:v10 width:v7 context:?];
  }

  [(SUUIEditorialCardLayout *)v9 secondaryLockupWidth];
  v12 = v11;
  v13 = [(SUUIEditorialCardLayout *)v9 allLockups];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__SUUIEditorialCardCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v16[3] = &unk_2798FCEB0;
  v19 = v12;
  v17 = v10;
  v18 = v7;
  v14 = v7;
  v15 = v10;
  [v13 enumerateObjectsUsingBlock:v16];
}

uint64_t __81__SUUIEditorialCardCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    return [SUUIVerticalLockupView requestLayoutForViewElement:a2 width:*(result + 40) context:*(result + 48)];
  }

  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3010000000;
  v29 = "";
  v30 = a3;
  v31 = 0;
  v9 = [[SUUIEditorialCardLayout alloc] initWithCard:v7 width:v8 context:a3];
  v10 = [(SUUIEditorialCardLayout *)v9 primaryLockup];
  if (v10)
  {
    [(SUUIEditorialCardLayout *)v9 primaryLockupSize];
    *(v27 + 5) = v11;
  }

  [(SUUIEditorialCardLayout *)v9 secondaryLockupWidth];
  v13 = v12;
  v14 = [(SUUIEditorialCardLayout *)v9 allLockups];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__SUUIEditorialCardCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v21[3] = &unk_2798FCED8;
  v15 = v10;
  v22 = v15;
  v25 = v13;
  v16 = v8;
  v23 = v16;
  v24 = &v26;
  [v14 enumerateObjectsUsingBlock:v21];

  v17 = v27[4];
  v18 = v27[5];

  _Block_object_dispose(&v26, 8);
  v19 = v17;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

uint64_t __77__SUUIEditorialCardCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    v2 = result;
    result = [SUUIVerticalLockupView sizeThatFitsWidth:a2 viewElement:*(v2 + 40) context:*(v2 + 56)];
    v4 = *(*(v2 + 48) + 8);
    v5 = *(v4 + 40);
    if (v5 < v3)
    {
      v5 = v3;
    }

    *(v4 + 40) = v5;
  }

  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[SUUIEditorialCardLayout alloc] initWithCard:v8 width:v9 context:a4];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__83;
  v30 = __Block_byref_object_dispose__83;
  v31 = 0;
  [(NSMutableArray *)self->_allLockupViews removeAllObjects];
  primaryLockupView = self->_primaryLockupView;
  self->_primaryLockupView = 0;

  [(SUUIEditorialCardLayout *)v10 primaryLockupSize];
  self->_primaryLockupSize.width = v12;
  self->_primaryLockupSize.height = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __75__SUUIEditorialCardCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v21 = &unk_2798FCF28;
  v14 = v10;
  v22 = v14;
  v15 = v9;
  v23 = v15;
  v24 = self;
  v25 = &v26;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:&v18];
  v16 = v27[5];
  if (v16)
  {
    v17 = [v16 superview];
    [v17 bringSubviewToFront:v27[5]];
  }

  _Block_object_dispose(&v26, 8);
}

void __75__SUUIEditorialCardCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) primaryLockup];
  [*(a1 + 32) secondaryLockupWidth];
  v6 = v5;
  v7 = [*(a1 + 32) allLockups];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SUUIEditorialCardCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v10[3] = &unk_2798FCF00;
  v11 = v3;
  v12 = v4;
  v15 = v6;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v8 = v4;
  v9 = v3;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __75__SUUIEditorialCardCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) addReusableViewWithReuseIdentifier:@"editorialCardLockup"];
  [v3 setSizingStyle:0];
  if (*(a1 + 40) == v5)
  {
    [v3 reloadWithViewElement:*(*(a1 + 56) + 840) width:? context:?];
    objc_storeStrong((*(a1 + 56) + 832), v3);
  }

  else
  {
    [v3 reloadWithViewElement:*(a1 + 72) width:? context:?];
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = [v5 firstChildForElementType:13];

    if (v4)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
    }
  }

  [*(*(a1 + 56) + 824) addObject:v3];
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_allLockupViews;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 |= [*(*(&v18 + 1) + 8 * i) setImage:v8 forArtworkRequest:v9 context:{v10, v18}];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_allLockupViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 |= [*(*(&v17 + 1) + 8 * i) updateWithItemState:v8 context:v9 animated:{v5, v17}];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

- (id)viewForElementIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_allLockupViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) viewForElementIdentifier:{v4, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)layoutSubviews
{
  v51 = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = SUUIEditorialCardCollectionViewCell;
  [(SUUICollectionViewCell *)&v49 layoutSubviews];
  v3 = [(NSMutableArray *)self->_allLockupViews count];
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    v5 = v3;
    v6 = [(SUUIEditorialCardCollectionViewCell *)self contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SUUIViewReuseCollectionViewCell *)self contentInset];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v12 - (v17 + v21);

    v23 = v4;
    v24 = v22 - v4 * 15.0;
    v25 = floorf(v24);
    if (self->_primaryLockupView)
    {
      v25 = v25 - self->_primaryLockupSize.width;
    }

    else
    {
      v23 = v5;
    }

    v26 = v25 / v23;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = self->_allLockupViews;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = v8 + v18;
      v31 = v10 + v16;
      v32 = v14 - (v16 + v20);
      v33 = v26;
      v34 = floorf(v33);
      v35 = *v46;
      do
      {
        v36 = 0;
        do
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v27);
          }

          v37 = *(*(&v45 + 1) + 8 * v36);
          height = v32;
          width = v34;
          if (v37 == self->_primaryLockupView)
          {
            width = self->_primaryLockupSize.width;
            height = self->_primaryLockupSize.height;
          }

          v40 = [(SUUIEditorialCardCollectionViewCell *)self contentView];
          [v40 bounds];
          [(SUUIVerticalLockupView *)v37 setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v30, v31, width, height, v41, v42, v43, v44)];

          v52.origin.x = v30;
          v52.origin.y = v31;
          v52.size.width = width;
          v52.size.height = height;
          v30 = CGRectGetMaxX(v52) + 15.0;
          ++v36;
        }

        while (v29 != v36);
        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v29);
    }
  }
}

@end