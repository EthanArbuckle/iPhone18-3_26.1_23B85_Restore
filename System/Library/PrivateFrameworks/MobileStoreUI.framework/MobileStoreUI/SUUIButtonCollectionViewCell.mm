@interface SUUIButtonCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringWithButton:(id)button context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)_usesBackgroundWithAlpha;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (void)_buttonAction:(id)action;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUIButtonCollectionViewCell

- (void)dealloc
{
  [(UIControl *)self->_button removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIButtonCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v3 dealloc];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  elementType = [elementCopy elementType];
  if (elementType == 141 || elementType == 12)
  {
    v10 = [self _attributedStringWithButton:elementCopy context:contextCopy];
    labelLayoutCache = [contextCopy labelLayoutCache];
    [labelLayoutCache requestLayoutForButton:elementCopy attributedString:v10 width:width];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [context sizeForViewElement:element width:?];
  widthCopy = width;
  result.height = v6;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __68__SUUIButtonCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v24 = &unk_2798F5EF0;
  v11 = elementCopy;
  v25 = v11;
  selfCopy = self;
  widthCopy = width;
  v12 = contextCopy;
  v27 = v12;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:&v21];
  v13 = [v12 imageResourceCacheKeyForViewElement:{v11, v21, v22, v23, v24}];
  buttonImageResourceCacheKey = self->_buttonImageResourceCacheKey;
  self->_buttonImageResourceCacheKey = v13;

  style = [v11 style];
  viewElementStyle = self->_viewElementStyle;
  self->_viewElementStyle = style;

  buyButtonDescriptor = [v11 buyButtonDescriptor];
  buyButtonDescriptor = self->_buyButtonDescriptor;
  self->_buyButtonDescriptor = buyButtonDescriptor;

  objc_storeStrong(&self->_viewElement, element);
  if ([(SUUIButtonCollectionViewCell *)self _usesBackgroundWithAlpha])
  {
    button = self->_button;
    if (button)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIControl *)button setBackgroundColor:clearColor];
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

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = SUUIButtonCollectionViewCell;
  [(SUUIViewReuseCollectionViewCell *)&v6 setBackgroundColor:color];
  if ([(SUUIButtonCollectionViewCell *)self _usesBackgroundWithAlpha])
  {
    button = self->_button;
    if (button)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [(UIControl *)button setBackgroundColor:clearColor];
    }
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  imageCopy = image;
  requestCopy = request;
  v10 = [context requestIdentifierForResourceCacheKey:self->_buttonImageResourceCacheKey];
  if (v10 && (v11 = [requestCopy requestIdentifier], v11 == objc_msgSend(v10, "unsignedIntegerValue")))
  {
    imageView = [(UIControl *)self->_button imageView];
    [imageView setImage:imageCopy];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  contextCopy = context;
  v10 = [(SUUIBuyButtonDescriptor *)self->_buyButtonDescriptor canPersonalizeUsingItemState:stateCopy];
  if (v10)
  {
    button = self->_button;
    buyButtonDescriptor = self->_buyButtonDescriptor;
    clientContext = [contextCopy clientContext];
    [(UIControl *)button setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:stateCopy clientContext:clientContext animated:animatedCopy];
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
    contentView = [(SUUIButtonCollectionViewCell *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;

    [(SUUIViewReuseCollectionViewCell *)self contentInset];
    v9 = v8;
    v11 = v10;
    v12 = v5 - v8 - v10;
    v13 = self->_viewElementStyle;
    textAlignment = [(IKViewElementStyle *)v13 textAlignment];
    if (!textAlignment)
    {
      textAlignment = [(IKViewElementStyle *)v13 elementAlignment];
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
    if (textAlignment <= 5)
    {
      if (((1 << textAlignment) & 0x35) != 0)
      {
        v24 = (v5 - v21) * 0.5;
        v15 = floorf(v24);
      }

      else if (textAlignment == 1)
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

- (void)_buttonAction:(id)action
{
  v8 = SUUICollectionViewForView(self);
  delegate = [v8 delegate];
  v5 = objc_opt_respondsToSelector();
  viewElement = self->_viewElement;
  if (v5)
  {
    v7 = [v8 indexPathForCell:self];
    [delegate collectionView:v8 didConfirmButtonElement:viewElement withClickInfo:0 forItemAtIndexPath:v7];
  }

  else
  {
    [(SUUIButtonViewElement *)self->_viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

+ (id)_attributedStringWithButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v8 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v10 = style;

  v11 = SUUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  }

  tintColor = [contextCopy tintColor];
  blackColor = SUUIViewElementPlainColorWithStyle(v10, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
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

  buttonText = [buttonCopy buttonText];
  v17 = [buttonText attributedStringWithDefaultFont:v11 foregroundColor:blackColor textAlignment:v15 style:v10];

  return v17;
}

- (BOOL)_usesBackgroundWithAlpha
{
  v7 = 0;
  v8 = 0;
  v5 = 0.0;
  v6 = 0;
  backgroundColor = [(SUUIButtonCollectionViewCell *)self backgroundColor];
  v3 = [backgroundColor getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];

  return v3 && v5 < 1.0 && v5 != 0.0;
}

@end