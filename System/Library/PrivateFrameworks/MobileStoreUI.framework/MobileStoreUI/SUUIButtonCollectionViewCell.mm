@interface SUUIButtonCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringWithButton:(id)a3 context:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)_usesBackgroundWithAlpha;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (void)_buttonAction:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUIButtonCollectionViewCell

- (void)dealloc
{
  [(UIControl *)self->_button removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIButtonCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v3 dealloc];
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
  v12 = a3;
  v8 = a5;
  v9 = [v12 elementType];
  if (v9 == 141 || v9 == 12)
  {
    v10 = [a1 _attributedStringWithButton:v12 context:v8];
    v11 = [v8 labelLayoutCache];
    [v11 requestLayoutForButton:v12 attributedString:v10 width:a4];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [a5 sizeForViewElement:a4 width:?];
  v7 = a3;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __68__SUUIButtonCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v24 = &unk_2798F5EF0;
  v11 = v9;
  v25 = v11;
  v26 = self;
  v28 = a4;
  v12 = v10;
  v27 = v12;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:&v21];
  v13 = [v12 imageResourceCacheKeyForViewElement:{v11, v21, v22, v23, v24}];
  buttonImageResourceCacheKey = self->_buttonImageResourceCacheKey;
  self->_buttonImageResourceCacheKey = v13;

  v15 = [v11 style];
  viewElementStyle = self->_viewElementStyle;
  self->_viewElementStyle = v15;

  v17 = [v11 buyButtonDescriptor];
  buyButtonDescriptor = self->_buyButtonDescriptor;
  self->_buyButtonDescriptor = v17;

  objc_storeStrong(&self->_viewElement, a3);
  if ([(SUUIButtonCollectionViewCell *)self _usesBackgroundWithAlpha])
  {
    button = self->_button;
    if (button)
    {
      v20 = [MEMORY[0x277D75348] clearColor];
      [(UIControl *)button setBackgroundColor:v20];
    }
  }
}

void __68__SUUIButtonCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) elementType];
  if (v3 == 12 || v3 == 141 || v3 == 50)
  {
    v4 = [v7 addButtonWithElement:*(a1 + 32) width:*(a1 + 48) context:*(a1 + 56)];
    v5 = *(a1 + 40);
    v6 = *(v5 + 824);
    *(v5 + 824) = v4;

    [*(*(a1 + 40) + 824) addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIButtonCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v6 setBackgroundColor:a3];
  if ([(SUUIButtonCollectionViewCell *)self _usesBackgroundWithAlpha])
  {
    button = self->_button;
    if (button)
    {
      v5 = [MEMORY[0x277D75348] clearColor];
      [(UIControl *)button setBackgroundColor:v5];
    }
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 requestIdentifierForResourceCacheKey:self->_buttonImageResourceCacheKey];
  if (v10 && (v11 = [v9 requestIdentifier], v11 == objc_msgSend(v10, "unsignedIntegerValue")))
  {
    v12 = [(UIControl *)self->_button imageView];
    [v12 setImage:v8];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SUUIBuyButtonDescriptor *)self->_buyButtonDescriptor canPersonalizeUsingItemState:v8];
  if (v10)
  {
    button = self->_button;
    buyButtonDescriptor = self->_buyButtonDescriptor;
    v13 = [v9 clientContext];
    [(UIControl *)button setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:v8 clientContext:v13 animated:v5];
  }

  return v10;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SUUIButtonCollectionViewCell;
  [(SUUICollectionViewCell *)&v25 layoutSubviews];
  if (self->_button)
  {
    v3 = [(SUUIButtonCollectionViewCell *)self contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    [(SUUIViewReuseCollectionViewCell *)self contentInset];
    v9 = v8;
    v11 = v10;
    v12 = v5 - v8 - v10;
    v13 = self->_viewElementStyle;
    v14 = [(IKViewElementStyle *)v13 textAlignment];
    if (!v14)
    {
      v14 = [(IKViewElementStyle *)v13 elementAlignment];
    }

    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    [(UIControl *)self->_button sizeThatFits:v12, 1.79769313e308];
    v26.size.width = v17;
    v19 = v18;
    v26.origin.x = v15;
    v26.origin.y = v16;
    v26.size.height = v19;
    [SUUIViewElementLayoutContext itemWidthForElement:self->_viewElement withDefaultWidth:CGRectGetWidth(v26) fitWidth:v12];
    if (v20 >= v12)
    {
      v21 = v12;
    }

    else
    {
      v21 = v20;
    }

    v22 = (v7 - v19) * 0.5;
    v23 = floorf(v22);
    if (v14 <= 5)
    {
      if (((1 << v14) & 0x35) != 0)
      {
        v24 = (v5 - v21) * 0.5;
        v15 = floorf(v24);
      }

      else if (v14 == 1)
      {
        v15 = v9;
      }

      else
      {
        v15 = v5 - v11 - v21;
      }
    }

    [(UIControl *)self->_button setFrame:v15, v23];
  }
}

- (void)_buttonAction:(id)a3
{
  v8 = SUUICollectionViewForView(self);
  v4 = [v8 delegate];
  v5 = objc_opt_respondsToSelector();
  viewElement = self->_viewElement;
  if (v5)
  {
    v7 = [v8 indexPathForCell:self];
    [v4 collectionView:v8 didConfirmButtonElement:viewElement withClickInfo:0 forItemAtIndexPath:v7];
  }

  else
  {
    [(SUUIButtonViewElement *)self->_viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (id)_attributedStringWithButton:(id)a3 context:(id)a4
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
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  }

  v12 = [v6 tintColor];
  v13 = SUUIViewElementPlainColorWithStyle(v10, v12);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] blackColor];
  }

  v14 = SUUIViewElementAlignmentForStyle(v10);
  if (v14)
  {
    v15 = SUUIViewElementNSTextAlignmentForIKElementAlignment(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v5 buttonText];
  v17 = [v16 attributedStringWithDefaultFont:v11 foregroundColor:v13 textAlignment:v15 style:v10];

  return v17;
}

- (BOOL)_usesBackgroundWithAlpha
{
  v7 = 0;
  v8 = 0;
  v5 = 0.0;
  v6 = 0;
  v2 = [(SUUIButtonCollectionViewCell *)self backgroundColor];
  v3 = [v2 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];

  return v3 && v5 < 1.0 && v5 != 0.0;
}

@end