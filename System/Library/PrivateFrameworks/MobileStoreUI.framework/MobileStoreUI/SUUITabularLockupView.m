@interface SUUITabularLockupView
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (void)_requestLayoutForViewElements:(id)a3 width:(double)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)_sizeViewsForColumn:(id)a3 toFitWidth:(double)a4;
- (SUUITabularLockupView)initWithFrame:(CGRect)a3;
- (void)_layoutSubviewsForColumn:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUITabularLockupView

- (SUUITabularLockupView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUITabularLockupView;
  v3 = [(SUUIViewReuseView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v3->_viewElementViews;
    v3->_viewElementViews = v4;
  }

  return v3;
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
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [[SUUITabularLockupLayout alloc] initWithLockup:v8 context:v9];
  [(SUUITabularLockupLayout *)v10 sizeColumnsToFitWidth:v9 context:a4];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(SUUITabularLockupLayout *)v10 columns];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        [v16 size];
        v18 = v17;
        v19 = [v16 childViewElements];
        [a1 _requestLayoutForViewElements:v19 width:v9 context:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  viewElementViews = self->_viewElementViews;
  v10 = a3;
  [(NSMapTable *)viewElementViews removeAllObjects];
  v11 = [[SUUITabularLockupLayout alloc] initWithLockup:v10 context:v8];

  layout = self->_layout;
  self->_layout = v11;

  [(SUUITabularLockupLayout *)self->_layout sizeColumnsToFitWidth:v8 context:a4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SUUITabularLockupView_reloadWithViewElement_width_context___block_invoke;
  v14[3] = &unk_2798F7740;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [(SUUIViewReuseView *)self modifyUsingBlock:v14];
}

void __61__SUUITabularLockupView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 424) columns];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SUUITabularLockupView_reloadWithViewElement_width_context___block_invoke_2;
  v6[3] = &unk_2798F7718;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __61__SUUITabularLockupView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 size];
  v5 = v4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v3 childViewElements];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 elementType] == 138)
        {
          v12 = *(a1 + 32);
          v13 = v11;
          v14 = [*(a1 + 40) addLabelViewWithElement:v13 width:*(a1 + 32) context:{objc_msgSend(v12, "maxWidthForElement:withDefaultWidth:", v13, v5)}];

          if (v14)
          {
            [*(*(a1 + 48) + 432) setObject:v14 forKey:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)layoutSubviews
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SUUITabularLockupView;
  [(SUUITabularLockupView *)&v12 layoutSubviews];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(SUUITabularLockupLayout *)self->_layout columns];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SUUITabularLockupView *)self _layoutSubviewsForColumn:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [SUUITabularLockupLayout fontForLabelViewElement:v5 context:v6];
  v8 = [v5 style];
  v9 = [v6 tintColor];

  v10 = SUUIViewElementPlainColorWithStyle(v8, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] blackColor];
  }

  v11 = [v5 text];
  v12 = [v5 style];
  v13 = [v11 attributedStringWithDefaultFont:v7 foregroundColor:v10 style:v12];

  return v13;
}

+ (void)_requestLayoutForViewElements:(id)a3 width:(double)a4 context:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v8 labelLayoutCache];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 elementType] == 138)
        {
          v16 = v15;
          v17 = [v8 maxWidthForElement:v16 withDefaultWidth:a4];
          v18 = [a1 _attributedStringForLabel:v16 context:v8];
          [v9 requestLayoutForLabel:v16 attributedString:v18 width:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_layoutSubviewsForColumn:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  [(SUUITabularLockupView *)self bounds];
  v30 = v7;
  v31 = v6;
  v28 = v9;
  v29 = v8;
  [(SUUITabularLockupView *)self bounds];
  [(SUUITabularLockupView *)self _sizeViewsForColumn:v4 toFitWidth:CGRectGetWidth(v39)];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [v4 childViewElements];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMapTable *)self->_viewElementViews objectForKey:*(*(&v33 + 1) + 8 * v14)];
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        rect = v18;
        switch(v5)
        {
          case 2:
            v42.origin.y = v30;
            v42.origin.x = v31;
            v42.size.height = v28;
            v42.size.width = v29;
            Width = CGRectGetWidth(v42);
            v43.origin.x = v17;
            v43.origin.y = v19;
            v43.size.width = v21;
            v43.size.height = v23;
            v17 = Width - CGRectGetWidth(v43);
            break;
          case 1:
            v40.origin.y = v30;
            v40.origin.x = v31;
            v40.size.height = v28;
            v40.size.width = v29;
            v24 = CGRectGetWidth(v40);
            v41.origin.x = v17;
            v41.origin.y = v19;
            v41.size.width = v21;
            v41.size.height = v23;
            v17 = floor((v24 - CGRectGetWidth(v41)) * 0.5);
            break;
          case 0:
            v17 = 0.0;
            break;
        }

        v44.origin.x = v31;
        v44.origin.y = v30;
        v44.size.width = v29;
        v44.size.height = v28;
        Height = CGRectGetHeight(v44);
        v45.origin.x = v17;
        v45.origin.y = rect;
        v45.size.width = v21;
        v45.size.height = v23;
        v27 = CGRectGetHeight(v45);
        [v15 setFrame:{SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(v17, floor((Height - v27) * 0.5), v21, v23, v31, v30, v29, v28)}];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }
}

- (CGSize)_sizeViewsForColumn:(id)a3 toFitWidth:(double)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = "";
  v17 = *MEMORY[0x277CBF3A8];
  v7 = [v6 childViewElements];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SUUITabularLockupView__sizeViewsForColumn_toFitWidth___block_invoke;
  v12[3] = &unk_2798F7768;
  *&v12[6] = a4;
  v12[4] = self;
  v12[5] = &v13;
  [v7 enumerateObjectsUsingBlock:v12];
  v8 = v14[4];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);
  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

void __56__SUUITabularLockupView__sizeViewsForColumn_toFitWidth___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = [*(*(a1 + 32) + 432) objectForKey:a2];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [v15 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
  v7 = v6;
  if (v5 >= *(a1 + 48))
  {
    v8 = *(a1 + 48);
  }

  else
  {
    v8 = v5;
  }

  v9 = v3;
  v10 = v4;
  v17 = CGRectIntegral(*(&v7 - 3));
  width = v17.size.width;
  height = v17.size.height;
  [v15 setFrame:{v17.origin.x, v17.origin.y}];
  *(*(*(a1 + 40) + 8) + 40) = height + *(*(*(a1 + 40) + 8) + 40);
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 32);
  if (v14 < width)
  {
    v14 = width;
  }

  *(v13 + 32) = v14;
}

@end