@interface SUUIResponseView
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForSubtitleLabel:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIResponseView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIResponseView

- (SUUIResponseView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUIResponseView;
  v3 = [(SUUIViewReuseView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = SUUIBundle();
    v6 = [v4 imageNamed:@"Reply" inBundle:v5];

    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    replyImageView = v3->_replyImageView;
    v3->_replyImageView = v7;

    [(SUUIResponseView *)v3 addSubview:v3->_replyImageView];
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
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__SUUIResponseView_requestLayoutForViewElement_width_context___block_invoke;
  v10[3] = &unk_2798F75D8;
  v12 = a4;
  v11 = v8;
  v13 = a1;
  v9 = v8;
  [a3 enumerateChildrenUsingBlock:v10];
}

void __62__SUUIResponseView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 elementType];
  if (v3 != 138)
  {
    v4 = v3 == 105;
    v5 = v10;
    if (!v4)
    {
      goto LABEL_11;
    }

    [SUUIReviewListTitleView requestLayoutForViewElement:v10 width:*(a1 + 32) context:*(a1 + 40)];
LABEL_10:
    v5 = v10;
    goto LABEL_11;
  }

  v6 = [v10 labelViewStyle];
  if (v6 == 4)
  {
    v8 = [*(a1 + 48) _attributedStringForSubtitleLabel:v10 context:*(a1 + 32)];
    v9 = [*(a1 + 32) labelLayoutCache];
    [v9 requestLayoutForLabel:v10 attributedString:v8 width:(*(a1 + 40) + -17.5)];

    goto LABEL_10;
  }

  v4 = v6 == 1;
  v5 = v10;
  if (v4)
  {
    v7 = [*(a1 + 32) editorialLayoutForLabelElement:v10 width:*(a1 + 40) + -17.5];
    [v7 enqueueLayoutRequests];

    goto LABEL_10;
  }

LABEL_11:
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = "";
  v26 = *MEMORY[0x277CBF3A8];
  *&v26 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SUUIResponseView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v14[3] = &unk_2798F7600;
  v19 = a3;
  v9 = v8;
  v15 = v9;
  v16 = &v22;
  v17 = v21;
  v18 = v20;
  [v7 enumerateChildrenUsingBlock:v14];
  v10 = v23[4];
  v11 = v23[5];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

void __58__SUUIResponseView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 elementType] == 105)
  {
    [SUUIReviewListTitleView sizeThatFitsWidth:v10 viewElement:*(a1 + 32) context:*(a1 + 64)];
    v3 = v10;
    *(*(*(a1 + 40) + 8) + 40) = v4 + 3.0 + *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    [*(a1 + 32) sizeForViewElement:v10 width:*(a1 + 64) + -17.5];
    *(*(*(a1 + 40) + 8) + 40) = v5 + *(*(*(a1 + 40) + 8) + 40);
    v6 = [*(a1 + 32) textPropertiesForViewElement:v10 width:*(a1 + 64) + -17.5];
    v7 = v6;
    if (*(*(*(a1 + 48) + 8) + 24) >= 1)
    {
      [v6 desiredOffsetTop];
      *&v8 = v8 - *(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + fmax(roundf(*&v8), 0.0);
    }

    [v7 baselineOffsetFromBottom];
    *(*(*(a1 + 56) + 8) + 24) = v9;

    v3 = v10;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SUUIResponseView_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2798F5EF0;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(SUUIViewReuseView *)self modifyUsingBlock:v12];
}

void __56__SUUIResponseView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allViewTextProperties];
  [*(a1 + 32) setAllViewTextProperties:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SUUIResponseView_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_2798F7628;
  v10 = v3;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v5 enumerateChildrenUsingBlock:v9];
}

void __56__SUUIResponseView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 elementType];
  if (v3 != 138)
  {
    if (v3 != 105)
    {
      goto LABEL_9;
    }

    v4 = [*(a1 + 32) addReviewListTitleViewWithViewElement:v7 width:*(a1 + 40) context:*(a1 + 56)];
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v6 = [*(a1 + 40) textPropertiesForViewElement:v7 width:*(a1 + 56) + -17.5];
    [*(a1 + 32) setTextProperties:v6 forView:v4];

    goto LABEL_9;
  }

  v5 = [v7 labelViewStyle];
  if (v5 == 4)
  {
    v4 = [*(a1 + 32) addLabelViewWithElement:v7 width:*(a1 + 40) context:*(a1 + 56) + -17.5];
    [*(a1 + 48) setSubtitleView:v4];
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v4 = [*(a1 + 32) addTextViewWithElement:v7 width:*(a1 + 40) context:*(a1 + 56) + -17.5];
    [*(a1 + 48) setDescriptionView:v4];
    if (v4)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(SUUIResponseView *)self contentInset:a3.width];
  v6 = v5;
  v9 = width - (v7 + 17.5) - v8;
  v10 = [(SUUIViewReuseView *)self allExistingViews];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__SUUIResponseView_sizeThatFits___block_invoke;
  v14[3] = &unk_2798F7650;
  v14[4] = self;
  v14[5] = &v15;
  v14[6] = v19;
  *&v14[7] = v9;
  [v10 enumerateObjectsUsingBlock:v14];
  v11 = v16[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

void __33__SUUIResponseView_sizeThatFits___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v5 = [*(a1 + 32) allViewTextProperties];
  v6 = [v5 objectForKey:v20];

  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (a3)
  {
    [v6 desiredOffsetTop];
    *&v8 = v8 - *(*(*(a1 + 48) + 8) + 24);
    v7 = v7 + fmax(roundf(*&v8), 0.0);
  }

  [v20 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
  v11 = v10;
  if (v9 >= *(a1 + 56))
  {
    v12 = *(a1 + 56);
  }

  else
  {
    v12 = v9;
  }

  v13 = 0;
  v14 = v7;
  v22 = CGRectIntegral(*(&v11 - 3));
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  [v6 baselineOffsetFromBottom];
  *(*(*(a1 + 48) + 8) + 24) = v19;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v23);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 3.0;
  }
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = SUUIResponseView;
  [(SUUIResponseView *)&v29 layoutSubviews];
  v3 = storeShouldReverseLayoutDirection() ^ 1;
  [(SUUIResponseView *)self bounds];
  v24 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SUUIResponseView *)self contentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17 + 17.5;
  v19 = v8 - (v17 + 17.5) - v15;
  v20 = [(SUUIViewReuseView *)self allExistingViews];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  *&v27[3] = v12;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __34__SUUIResponseView_layoutSubviews__block_invoke;
  v25[3] = &unk_2798F7678;
  v25[4] = self;
  v25[5] = v27;
  v25[6] = v28;
  v26 = v3;
  *&v25[7] = v19;
  *&v25[8] = v12;
  *&v25[9] = v18;
  v25[10] = v14;
  *&v25[11] = v16;
  v25[12] = v24;
  v25[13] = v6;
  *&v25[14] = v8;
  v25[15] = v10;
  [v20 enumerateObjectsUsingBlock:v25];
  v21 = [(SUUIResponseView *)self replyImageView];
  [v21 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [v21 setFrame:{0.0, v12, v22, v23}];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
}

void __34__SUUIResponseView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a2;
  v5 = [*(a1 + 32) allViewTextProperties];
  v6 = [v5 objectForKey:v29];

  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (a3)
  {
    [v6 desiredOffsetTop];
    *&v8 = v8 - *(*(*(a1 + 48) + 8) + 24);
    v7 = v7 + fmax(roundf(*&v8), 0.0);
  }

  v9 = [*(a1 + 32) subtitleView];

  if (v9 == v29)
  {
    v7 = v7 + -2.0;
    v14 = [*(a1 + 32) subtitleView];
    v15 = [v14 layout];
    [v15 boundingSize];
    v11 = v16;
    v18 = v17;

    v13 = v18 + 2.0;
  }

  else
  {
    [v29 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
    v11 = v10;
    v13 = v12;
  }

  if (v11 >= *(a1 + 56))
  {
    v11 = *(a1 + 56);
  }

  if (*(a1 + 128) == 1)
  {
    v19 = *(a1 + 72);
  }

  else
  {
    Width = CGRectGetWidth(*(a1 + 96));
    v31.origin.x = 0.0;
    v31.origin.y = v7;
    v31.size.width = v11;
    v31.size.height = v13;
    v19 = Width - CGRectGetWidth(v31) - *(a1 + 72);
  }

  v21 = v7;
  v22 = v11;
  v23 = v13;
  v32 = CGRectIntegral(*&v19);
  x = v32.origin.x;
  y = v32.origin.y;
  v26 = v32.size.width;
  height = v32.size.height;
  [v29 setFrame:?];
  [v6 baselineOffsetFromBottom];
  *(*(*(a1 + 48) + 8) + 24) = v28;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = v26;
  v33.size.height = height;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v33);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 3.0;
  }
}

+ (id)_attributedStringForSubtitleLabel:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SUUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = SUUIFontPreferredFontForTextStyle(21);
  }

  v9 = [v6 tintColor];
  v10 = SUUIViewElementPlainColorWithStyle(v7, v9);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  }

  v11 = [v5 text];
  v12 = [v11 attributedStringWithDefaultFont:v8 foregroundColor:v10 style:v7];

  return v12;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end