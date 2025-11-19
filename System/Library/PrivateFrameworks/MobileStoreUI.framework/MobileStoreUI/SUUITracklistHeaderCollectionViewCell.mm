@interface SUUITracklistHeaderCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeForHeaderTitleLabel:(id)a3;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (SUUITracklistHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUITracklistHeaderCollectionViewCell

- (SUUITracklistHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = SUUITracklistHeaderCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    columnViews = v3->_columnViews;
    v3->_columnViews = v4;

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomSeparatorView = v3->_bottomSeparatorView;
    v3->_bottomSeparatorView = v6;

    v8 = v3->_bottomSeparatorView;
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v8 setBackgroundColor:v9];

    v10 = [(SUUITracklistHeaderCollectionViewCell *)v3 contentView];
    [v10 addSubview:v3->_bottomSeparatorView];

    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    topSeparatorView = v3->_topSeparatorView;
    v3->_topSeparatorView = v11;

    v13 = v3->_topSeparatorView;
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v13 setBackgroundColor:v14];

    v15 = [(SUUITracklistHeaderCollectionViewCell *)v3 contentView];
    [v15 addSubview:v3->_topSeparatorView];
  }

  return v3;
}

+ (CGSize)sizeForHeaderTitleLabel:(id)a3
{
  v3 = [a1 _attributedStringForLabel:a3 context:0];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 aggregateValueForKey:0x286AF1940];
  v10 = [v7 labelLayoutCache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SUUITracklistHeaderCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v13[3] = &unk_2798F78D8;
  v15 = v10;
  v16 = a1;
  v14 = v7;
  v11 = v10;
  v12 = v7;
  [v9 enumerateColumnsForHeader:v8 usingBlock:v13];
}

void __83__SUUITracklistHeaderCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = a2;
  v12 = [v5 _attributedStringForLabel:v7 context:v6];
  v9 = a1[5];
  [v8 width];
  v11 = v10;

  [v9 requestLayoutForLabel:v7 attributedString:v12 width:v11];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v19 = 0;
  v20 = &v19;
  v22 = "";
  v21 = 0x3010000000;
  v24 = *(MEMORY[0x277CBF3A8] + 8);
  v23 = a3;
  v9 = [v8 aggregateValueForKey:0x286AF1940];
  v10 = [v8 labelLayoutCache];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__SUUITracklistHeaderCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v16[3] = &unk_2798F7900;
  v11 = v10;
  v17 = v11;
  v18 = &v19;
  [v9 enumerateColumnsForHeader:v7 usingBlock:v16];
  v12 = v20[4];
  v13 = v20[5] + 6.0;
  v20[5] = v13;

  _Block_object_dispose(&v19, 8);
  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

void __79__SUUITracklistHeaderCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 width];
  [v5 estimatedSizeForLabel:v6 width:?];
  v8 = v7;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  if (v10 < v8)
  {
    v10 = v8;
  }

  *(v9 + 40) = v10;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 aggregateValueForKey:0x286AF1940];
  columnData = self->_columnData;
  self->_columnData = v9;

  [(NSMutableDictionary *)self->_columnViews removeAllObjects];
  v11 = [v7 style];
  v12 = [v11 ikBorderColor];
  v13 = [v12 color];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  v15 = v14;
  [(UIView *)self->_bottomSeparatorView setBackgroundColor:v14];
  [(UIView *)self->_topSeparatorView setBackgroundColor:v15];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SUUITracklistHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v18[3] = &unk_2798F7950;
  v18[4] = self;
  v19 = v7;
  v20 = v8;
  v16 = v8;
  v17 = v7;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v18];
}

void __77__SUUITracklistHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 832);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SUUITracklistHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_2798F7928;
  v10 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v5 enumerateColumnsForHeader:v4 usingBlock:v9];
}

void __77__SUUITracklistHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = a2;
  v14 = [[v7 alloc] initWithUnsignedInteger:a4];
  v10 = a1[4];
  [v9 width];
  v12 = v11;

  v13 = [v10 addLabelViewWithElement:v8 width:a1[5] context:v12];

  [*(a1[6] + 840) setObject:v13 forKey:v14];
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = SUUITracklistHeaderCollectionViewCell;
  [(SUUICollectionViewCell *)&v34 layoutSubviews];
  v3 = [(SUUITracklistHeaderCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SUUITracklistColumnData *)self->_columnData interColumnSpacing];
  v13 = v12;
  v14 = [(SUUITracklistHeaderCollectionViewCell *)self contentView];
  v15 = [v14 effectiveUserInterfaceLayoutDirection];

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  [(SUUITracklistColumnData *)self->_columnData leftEdgeInset];
  v33[3] = v16;
  v17 = [(SUUITracklistColumnData *)self->_columnData columns];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __55__SUUITracklistHeaderCollectionViewCell_layoutSubviews__block_invoke;
  v24 = &unk_2798F7978;
  v27 = v5;
  v28 = v7;
  v29 = v9;
  v30 = v11;
  v25 = self;
  v26 = v33;
  v32 = v15 == 1;
  v31 = v13;
  [v17 enumerateObjectsUsingBlock:&v21];

  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 scale];
  v20 = 1.0 / v19;

  [(UIView *)self->_bottomSeparatorView setFrame:0.0, v11 - v20, v9, v20];
  [(UIView *)self->_topSeparatorView setFrame:0.0, 0.0, v9, v20];
  _Block_object_dispose(v33, 8);
}

void __55__SUUITracklistHeaderCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  v6 = [*(*(a1 + 32) + 840) objectForKey:v5];
  [v21 width];
  v8 = v7;
  if (!v6)
  {
    goto LABEL_14;
  }

  v9 = *MEMORY[0x277CBF3A0];
  [v6 sizeThatFits:{v7, *(a1 + 72)}];
  v11 = v10;
  v13 = v12;
  *&v10 = (*(a1 + 72) - v12) * 0.5;
  v14 = floorf(*&v10);
  v15 = [v21 headerAlignment];
  if (v15 > 2)
  {
    if ((v15 - 3) >= 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    v9 = *(*(*(a1 + 40) + 8) + 24);
    goto LABEL_11;
  }

  switch(v15)
  {
    case 0:
      goto LABEL_8;
    case 1:
      v16 = (v8 - v11) * 0.5 + *(*(*(a1 + 40) + 8) + 24);
      goto LABEL_10;
    case 2:
      v16 = v8 + *(*(*(a1 + 40) + 8) + 24) - v11;
LABEL_10:
      v17 = v16;
      v9 = floorf(v17);
      break;
  }

LABEL_11:
  v18 = v14;
  if (*(a1 + 88) == 1)
  {
    v9 = CGRectWithFlippedOriginRelativeToBoundingRect(v9, v18, v11, v13, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
    v11 = v19;
    v13 = v20;
  }

  [v6 setFrame:{v9, v18, v11, v13}];
LABEL_14:
  *(*(*(a1 + 40) + 8) + 24) = v8 + *(a1 + 80) + *(*(*(a1 + 40) + 8) + 24);
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SUUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v9 = [v6 clientContext];
    v10 = SUUIUserInterfaceIdiom(v9);

    v11 = 10.0;
    if (v10 == 1)
    {
      v11 = 11.0;
    }

    v8 = [MEMORY[0x277D74300] systemFontOfSize:v11];
  }

  v12 = [v6 tintColor];
  v13 = SUUIViewElementPlainColorWithStyle(v7, v12);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v14 = [v5 text];
  v15 = [v14 attributedStringWithDefaultFont:v8 foregroundColor:v13 style:v7];

  return v15;
}

@end