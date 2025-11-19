@interface SUUISectionHeaderView
+ (CGSize)_sizeForViewElement:(id)a3 width:(double)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_linesForViewElement:(id)a3 width:(double)a4 buttonSize:(CGSize)a5 context:(id)a6;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUISectionHeaderView)initWithFrame:(CGRect)a3;
- (void)_buttonAction:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SUUISectionHeaderView

- (SUUISectionHeaderView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUISectionHeaderView;
  v3 = [(SUUIViewReuseView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    views = v3->_views;
    v3->_views = v4;
  }

  return v3;
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
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 labelLayoutCache];
  v28 = [v8 button];
  v29 = v8;
  v11 = [v8 titleLabels];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [a1 _attributedStringForLabel:v16 context:v9];
        [v10 requestLayoutForLabel:v16 attributedString:v17 width:a4];
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  if (v28)
  {
    v18 = a4 * 0.3;
    v19 = vcvtps_s32_f32(v18);
    v20 = [v28 style];
    if ([v20 elementAlignment] == 1)
    {
      v21 = [v11 count];

      if (!v21)
      {
        v22 = [v29 style];
        [v22 elementPadding];
        v24 = v23;
        v26 = v25;

        v19 = (a4 - (v26 + v24));
      }
    }

    else
    {
    }

    v27 = [a1 _attributedStringForButton:v28 context:v9];
    [v10 requestLayoutForButton:v28 attributedString:v27 width:v19];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [v8 button];
  if (v10)
  {
    v11 = a3 * 0.3;
    [a1 _sizeForViewElement:v10 width:v9 context:vcvtps_s32_f32(v11)];
    v13 = v12;
    v15 = v14 + 10.0;
  }

  else
  {
    v15 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v16 = [v8 titleLabels];
  v17 = v16;
  if (a3 <= 600.0)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v32 = [v16 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v51;
      v22 = 0.0;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v51 != v34)
          {
            objc_enumerationMutation(v17);
          }

          [a1 _sizeForViewElement:*(*(&v50 + 1) + 8 * i) width:v9 context:a3];
          v22 = v22 + v36;
        }

        v33 = [v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v33);
    }

    else
    {
      v22 = 0.0;
    }
  }

  else
  {
    v39 = v16;
    v40 = v10;
    v41 = v8;
    v18 = [a1 _linesForViewElement:v8 width:v9 buttonSize:a3 context:{v15, v13}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      v22 = 0.0;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v46 + 1) + 8 * j);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v25 = v24;
          v26 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v43;
            v29 = 0.0;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v43 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [a1 _sizeForViewElement:*(*(&v42 + 1) + 8 * k) width:v9 context:a3];
                if (v29 < v31)
                {
                  v29 = v31;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
            }

            while (v27);
          }

          else
          {
            v29 = 0.0;
          }

          v22 = v22 + v29;
        }

        v20 = [v18 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 0.0;
    }

    v10 = v40;
    v8 = v41;
    v17 = v39;
  }

  if (v22 >= v13)
  {
    v13 = v22;
  }

  v37 = a3;
  v38 = v13;
  result.height = v38;
  result.width = v37;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  objc_storeStrong(&self->_header, a3);
  [objc_opt_class() sizeThatFitsWidth:v9 viewElement:v10 context:a4];
  self->_lastFitSize.width = v11;
  self->_lastFitSize.height = v12;
  [(NSMapTable *)self->_views removeAllObjects];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3010000000;
  v26 = "";
  v27 = *MEMORY[0x277CBF3A8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SUUISectionHeaderView_reloadWithViewElement_width_context___block_invoke;
  v17[3] = &unk_2798FBDE8;
  v13 = v9;
  v22 = a4;
  v18 = v13;
  v19 = self;
  v14 = v10;
  v20 = v14;
  v21 = &v23;
  [(SUUIViewReuseView *)self modifyUsingBlock:v17];
  if (a4 <= 600.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = [objc_opt_class() _linesForViewElement:self->_header width:v14 buttonSize:a4 context:{v24[4], v24[5]}];
  }

  lines = self->_lines;
  self->_lines = v15;

  _Block_object_dispose(&v23, 8);
}

void __61__SUUISectionHeaderView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) button];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 64) * 0.3;
  v7 = vcvtps_s32_f32(v6);
  v8 = [v4 style];
  if ([v8 elementAlignment] != 1)
  {

    goto LABEL_6;
  }

  v9 = [*(*(a1 + 40) + 480) titleLabels];
  v10 = [v9 count];

  if (v10)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v11 = [*(a1 + 32) style];
  [v11 elementPadding];
  v13 = v12;
  v15 = v14;

  v7 = (*(a1 + 64) - (v13 + v15));
  v16 = 1;
LABEL_7:
  v17 = [v3 addButtonWithElement:v5 width:*(a1 + 48) context:v7];
  [v17 addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
  LODWORD(v18) = -0.5;
  [v17 setCharge:v18];
  [*(*(a1 + 40) + 488) setObject:v17 forKey:v5];
  [v17 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v19 = *(*(a1 + 56) + 8);
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  if ((v16 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 32) = *(*(*(a1 + 56) + 8) + 32) + 10.0;
  }

LABEL_10:
  v22 = [*(a1 + 32) titleLabels];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v29 + 1) + 8 * i);
        v28 = [v3 addLabelViewWithElement:v27 width:*(a1 + 48) context:*(a1 + 64)];
        [*(*(a1 + 40) + 488) setObject:v28 forKey:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v24);
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SUUISectionHeaderView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUISectionHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SUUIHeaderViewElement *)self->_header button];
  v12 = [v11 style];
  if ([v12 elementAlignment] == 1)
  {
    v13 = [(SUUIHeaderViewElement *)self->_header titleLabels];
    v14 = [v13 count] == 0;
  }

  else
  {
    v14 = 0;
  }

  v51 = v4;
  if (v11)
  {
    v15 = [(NSMapTable *)self->_views objectForKey:v11];
    [v15 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v17 = v16;
    v19 = v18;
    if (v14)
    {
      v20 = [v11 style];
      [v20 elementPadding];
      v22 = v21;
      v24 = v23;

      v25 = v24 + self->_contentInset.left;
      top = v22 + self->_contentInset.top;
    }

    else
    {
      v84.origin.x = v4;
      v84.origin.y = v6;
      v84.size.width = v8;
      v84.size.height = v10;
      v25 = CGRectGetMaxX(v84) - self->_contentInset.right - v17;
      top = self->_contentInset.top;
    }

    v34 = v17;
    v35 = v19;
    v85 = CGRectIntegral(*&v25);
    x = v85.origin.x;
    y = v85.origin.y;
    width = v85.size.width;
    height = v85.size.height;
    v36 = v4;
    v27 = v6;
    v37 = v6;
    v28 = v8;
    [v15 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v85.origin.x, v85.origin.y, v85.size.width, v85.size.height, v36, v37, v8, v10)}];
    v29 = v10;
    if (!v14)
    {
      x = x + -10.0;
      width = width + 10.0;
    }
  }

  else
  {
    v27 = v6;
    v28 = v8;
    v29 = v10;
    v15 = 0;
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v38 = [(SUUIHeaderViewElement *)self->_header titleLabels];
  if (self->_lastFitSize.width <= 600.0)
  {
    v76 = 0;
    v77 = &v76;
    v41 = self->_contentInset.top;
    v78 = 0x2020000000;
    v79 = v41;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __39__SUUISectionHeaderView_layoutSubviews__block_invoke;
    v64[3] = &unk_2798FBE10;
    v64[4] = self;
    v66 = &v76;
    v68 = v51;
    v69 = v27;
    v70 = v28;
    v71 = v29;
    v72 = x;
    v73 = y;
    v74 = width;
    v75 = height;
    v65 = v11;
    v67 = &v80;
    [v38 enumerateObjectsUsingBlock:v64];

    _Block_object_dispose(&v76, 8);
  }

  else
  {
    v76 = 0;
    v77 = &v76;
    v39 = self->_contentInset.top;
    v78 = 0x2020000000;
    v79 = v39;
    lines = self->_lines;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __39__SUUISectionHeaderView_layoutSubviews__block_invoke_2;
    v52[3] = &unk_2798FBE38;
    v52[4] = self;
    v56 = v51;
    v57 = v27;
    v58 = v28;
    v59 = v29;
    v53 = v11;
    v54 = &v76;
    v60 = x;
    v61 = y;
    v62 = width;
    v63 = height;
    v55 = &v80;
    [(NSArray *)lines enumerateObjectsUsingBlock:v52];

    _Block_object_dispose(&v76, 8);
  }

  if (v15 != 0 && !v14)
  {
    [v15 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = self->_contentInset.top;
    v49 = v81[3];
    [v15 baselineOffset];
    *&v50 = v48 + v49 - v50;
    [v15 setFrame:{v43, roundf(*&v50), v45, v47}];
  }

  _Block_object_dispose(&v80, 8);
}

void __39__SUUISectionHeaderView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v5 = [*(*(a1 + 32) + 488) objectForKey:?];
  [v5 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v8 = v7;
  v9 = v6;
  v10 = *(*(*(a1 + 48) + 8) + 24);
  v11 = *(*(a1 + 32) + 432);
  v12 = *(a1 + 80) - *(*(a1 + 32) + 448);
  v13 = v12 - v11;
  if (*(a1 + 40))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v15 = v12 - v11;
    v16 = v6;
    if (CGRectIntersectsRect(*(a1 + 96), *&v11))
    {
      v12 = *(a1 + 96);
    }
  }

  v17 = *(*(a1 + 32) + 432);
  v18 = v12 - v17;
  if (v8 >= v12 - v17)
  {
    v8 = v12 - v17;
  }

  v19 = [v31 style];
  v20 = SUUIViewElementAlignmentForStyle(v19);

  if (v20 > 5)
  {
    v21 = *MEMORY[0x277CBF3A0];
  }

  else if (((1 << v20) & 0x33) != 0)
  {
    v21 = *(*(a1 + 32) + 432);
  }

  else if (v20 == 2)
  {
    v27 = *(*(a1 + 32) + 432);
    v28 = (v13 - v8) * 0.5;
    v29 = floorf(v28);
    v21 = v27 + v29;
    if (*(a1 + 40))
    {
      v36.origin.x = v27 + v29;
      v36.origin.y = v10;
      v36.size.width = v8;
      v36.size.height = v9;
      if (CGRectIntersectsRect(v36, *(a1 + 96)))
      {
        v30 = (v18 - v8) * 0.5;
        v21 = *(*(a1 + 32) + 432) + floorf(v30);
      }
    }
  }

  else
  {
    v21 = v12 - v8;
  }

  v33.origin.x = v21;
  v33.origin.y = v10;
  v33.size.width = v8;
  v33.size.height = v9;
  v34 = CGRectIntegral(v33);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  [v5 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v34.origin.x, v34.origin.y, v34.size.width, v34.size.height, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88))}];
  if (!a3)
  {
    [v5 baselineOffset];
    *(*(*(a1 + 56) + 8) + 24) = v26;
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  *(*(*(a1 + 48) + 8) + 24) = CGRectGetMaxY(v35);
}

void __39__SUUISectionHeaderView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 32) + 432);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF390] + 16);
    v13 = *(MEMORY[0x277CBF390] + 24);
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v17 = [*(*(a1 + 32) + 488) objectForKey:*(*(&v40 + 1) + 8 * i)];
        [v17 sizeThatFits:{v12, v13}];
        v47.size.width = v18;
        v47.size.height = v19;
        v47.origin.x = v10;
        v47.origin.y = v11;
        v48 = CGRectIntegral(v47);
        height = v48.size.height;
        [v17 setFrame:{v48.origin.x, v48.origin.y, v48.size.width}];
        [v17 baselineOffset];
        if (v14 < v21)
        {
          v14 = v21;
        }

        if (v15 < height)
        {
          v15 = height;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v8);
  }

  else
  {
    v14 = 0.0;
    v15 = 0.0;
  }

  v22 = *(a1 + 80) - *(*(a1 + 32) + 448);
  if (*(a1 + 40))
  {
    v50.origin.x = *(*(a1 + 32) + 432);
    v50.size.width = v22 - v50.origin.x;
    v50.origin.y = *(*(*(a1 + 48) + 8) + 24);
    v50.size.height = v15;
    if (CGRectIntersectsRect(*(a1 + 96), v50))
    {
      v22 = *(a1 + 96);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(a1 + 32) + 488) objectForKey:{*(*(&v36 + 1) + 8 * j), v36}];
        [v28 frame];
        v30 = v29;
        v32 = v31;
        v33 = v14 + *(*(*(a1 + 48) + 8) + 24);
        [v28 baselineOffset];
        *&v34 = v33 - v34;
        v35 = roundf(*&v34);
        if (v30 >= v22 - v6)
        {
          v30 = v22 - v6;
        }

        [v28 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v6, v35, v30, v32, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88))}];
        v49.origin.x = v6;
        v49.origin.y = v35;
        v49.size.width = v30;
        v49.size.height = v32;
        v6 = CGRectGetMaxX(v49) + 10.0;
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v25);
  }

  if (!a3)
  {
    *(*(*(a1 + 56) + 8) + 24) = v14;
  }

  *(*(*(a1 + 48) + 8) + 24) = v15 + *(*(*(a1 + 48) + 8) + 24);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_lastFitSize.width;
  height = self->_lastFitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_buttonAction:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = 488;
  v6 = self->_views;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v21 = *v24;
    do
    {
      v10 = 0;
      v22 = v8;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = [*(&self->super.super.super.super.isa + v5) objectForKey:v11];

        if (v12 == v4)
        {
          v13 = SUUICollectionViewCellForView(self);
          v14 = SUUICollectionViewForView(v13);
          v15 = [v14 delegate];
          if (objc_opt_respondsToSelector())
          {
            [v14 indexPathForCell:v13];
            v16 = self;
            v17 = v6;
            v18 = v5;
            v20 = v19 = v4;
            [v15 collectionView:v14 didConfirmButtonElement:v11 withClickInfo:0 forItemAtIndexPath:v20];

            v4 = v19;
            v5 = v18;
            v6 = v17;
            self = v16;
            v9 = v21;
          }

          else
          {
            [v11 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
          }

          v8 = v22;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 buttonTitleStyle];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 style];
  }

  v10 = v9;

  v11 = SUUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v12 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] addingSymbolicTraits:2 options:0];
    v11 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
  }

  v13 = [v6 tintColor];
  v14 = SUUIViewElementPlainColorWithStyle(v10, v13);

  if (!v14)
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  }

  v15 = [v5 buttonText];
  v16 = [v15 attributedStringWithDefaultFont:v11 foregroundColor:v14 style:v10];

  return v16;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = [v6 aggregateValueForKey:@"SUUISectionHeaderStyleKey"];
  v9 = [v8 integerValue];

  v10 = SUUIViewElementFontWithStyle(v7);
  v11 = [v6 tintColor];

  v12 = SUUIViewElementPlainColorWithStyle(v7, v11);

  v13 = [v5 labelViewStyle];
  if (v13 > 5)
  {
    goto LABEL_17;
  }

  if (((1 << v13) & 0x1B) == 0)
  {
    if (!v10)
    {
      if (v9 != 1)
      {
        v10 = SUUIFontPreferredFontForTextStyle(1);
        if (v12)
        {
          goto LABEL_17;
        }

LABEL_11:
        v17 = [MEMORY[0x277D75348] labelColor];
LABEL_16:
        v12 = v17;
        goto LABEL_17;
      }

      v16 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] addingSymbolicTraits:2 options:0];
      v10 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:0.0];
    }

    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if (v9 == 1)
  {
    v10 = SUUIFontPreferredFontForTextStyle(8);
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v10 = SUUIFontPreferredFontForTextStyle(21);
  if (!v12)
  {
LABEL_5:
    if (v9 != 1)
    {
      v14 = MEMORY[0x277D75348];
      v15 = 0.6;
LABEL_15:
      v17 = [v14 colorWithWhite:0.0 alpha:v15];
      goto LABEL_16;
    }

LABEL_14:
    v14 = MEMORY[0x277D75348];
    v15 = 0.8;
    goto LABEL_15;
  }

LABEL_17:
  v18 = SUUIViewElementAlignmentForStyle(v7);
  v19 = SUUIViewElementNSTextAlignmentForIKElementAlignment(v18);
  v20 = [v5 text];
  v21 = [v20 attributedStringWithDefaultFont:v10 foregroundColor:v12 textAlignment:v19 style:v7];

  return v21;
}

+ (id)_linesForViewElement:(id)a3 width:(double)a4 buttonSize:(CGSize)a5 context:(id)a6
{
  width = a5.width;
  v10 = a6;
  v11 = a3;
  v12 = objc_alloc_init(SUUIViewElementHorizontalLayout);
  [(SUUIViewElementHorizontalLayout *)v12 setElementSpacing:10.0];
  [(SUUIViewElementHorizontalLayout *)v12 setLayoutWidth:a4 - width];
  v13 = [v11 titleLabels];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SUUISectionHeaderView__linesForViewElement_width_buttonSize_context___block_invoke;
  v17[3] = &unk_2798F8130;
  v20 = a4;
  v18 = v10;
  v19 = a1;
  v14 = v10;
  v15 = [(SUUIViewElementHorizontalLayout *)v12 layoutViewElements:v13 usingSizingBlock:v17];

  return v15;
}

+ (CGSize)_sizeForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  [a5 sizeForViewElement:a3 width:a4];
  result.height = v6;
  result.width = v5;
  return result;
}

@end