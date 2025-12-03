@interface SUUIEditorialLinkView
- (CGSize)sizeThatFits:(CGSize)result;
- (SUUIEditorialLinkView)initWithFrame:(CGRect)frame;
- (SUUIEditorialLinkViewDelegate)delegate;
- (id)_newButton;
- (void)_linkButtonAction:(id)action;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setHorizontalAlignment:(int64_t)alignment;
- (void)setLinkLayout:(id)layout;
- (void)tintColorDidChange;
@end

@implementation SUUIEditorialLinkView

- (SUUIEditorialLinkView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SUUIEditorialLinkView;
  v3 = [(SUUIEditorialLinkView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    buttons = v3->_buttons;
    v3->_buttons = v4;

    _newButton = [(SUUIEditorialLinkView *)v3 _newButton];
    [(SUUIEditorialLinkView *)v3 addSubview:_newButton];
    [(NSMutableArray *)v3->_buttons addObject:_newButton];

    _newButton2 = [(SUUIEditorialLinkView *)v3 _newButton];
    [(SUUIEditorialLinkView *)v3 addSubview:_newButton2];
    [(NSMutableArray *)v3->_buttons addObject:_newButton2];
  }

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_buttons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SUUIEditorialLinkView;
  [(SUUIEditorialLinkView *)&v8 dealloc];
}

- (void)setColoringWithColorScheme:(id)scheme
{
  v23 = *MEMORY[0x277D85DE8];
  schemeCopy = scheme;
  v5 = schemeCopy;
  if (schemeCopy)
  {
    highlightedTextColor = [schemeCopy highlightedTextColor];
  }

  else
  {
    highlightedTextColor = 0;
  }

  objc_storeStrong(&self->_highlightedTextColor, highlightedTextColor);
  if (v5)
  {

    secondaryTextColor = [v5 secondaryTextColor];
  }

  else
  {
    secondaryTextColor = 0;
  }

  objc_storeStrong(&self->_textColor, secondaryTextColor);
  if (v5)
  {
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_buttons;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        textColor = self->_textColor;
        if (textColor)
        {
          [*(*(&v18 + 1) + 8 * i) setTitleColor:textColor forState:0];
        }

        else
        {
          tintColor = [(SUUIEditorialLinkView *)self tintColor];
          [v13 setTitleColor:tintColor forState:0];
        }

        highlightedTextColor = self->_highlightedTextColor;
        if (highlightedTextColor)
        {
          [v13 setTitleColor:highlightedTextColor forState:1];
        }

        else
        {
          tintColor2 = [(SUUIEditorialLinkView *)self tintColor];
          [v13 setTitleColor:tintColor2 forState:1];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)setHorizontalAlignment:(int64_t)alignment
{
  if (self->_horizontalAlignment != alignment)
  {
    self->_horizontalAlignment = alignment;
  }
}

- (void)setLinkLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_layout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_layout, layout);
    [(SUUIEditorialLinkView *)self setNeedsLayout];
    layoutCopy = v6;
  }
}

- (void)layoutSubviews
{
  if (self->_layout)
  {
    [(SUUIEditorialLinkView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    links = [(SUUIEditorialLinkLayout *)self->_layout links];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    layout = self->_layout;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__SUUIEditorialLinkView_layoutSubviews__block_invoke;
    v17[3] = &unk_2798FCFA0;
    v20 = v4;
    v21 = v6;
    v22 = v8;
    v23 = v10;
    v17[4] = self;
    v19 = v24;
    v13 = links;
    v18 = v13;
    [(SUUIEditorialLinkLayout *)layout enumerateLinesUsingBlock:v17];
    v14 = [(NSMutableArray *)self->_buttons count];
    v15 = [v13 count];
    if (v15 < v14)
    {
      do
      {
        v16 = [(NSMutableArray *)self->_buttons objectAtIndex:v15];
        [v16 setHidden:1];

        ++v15;
      }

      while (v14 != v15);
    }

    _Block_object_dispose(v24, 8);
  }
}

double __39__SUUIEditorialLinkView_layoutSubviews__block_invoke(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v6 = a2 + a3;
  v7 = 0.0;
  if (a2 < a2 + a3)
  {
    v8 = a3;
    v9 = a2;
    do
    {
      [*(*(a1 + 32) + 440) sizeForLinkAtIndex:v9];
      v7 = v7 + v10;
      ++v9;
      --v8;
    }

    while (v8);
  }

  if (v3 > 1)
  {
    v7 = v7 + ((v3 - 1) * 15.0);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 432);
  if (v12 == 3)
  {
    v13 = *(a1 + 72) - v7;
  }

  else
  {
    v13 = 0.0;
    if (v12 == 2)
    {
      v14 = (*(a1 + 72) - v7) * 0.5;
      v13 = floorf(v14);
    }
  }

  if (a2 < v6)
  {
    v15 = a2;
    do
    {
      v16 = [*(*(a1 + 32) + 408) count];
      v17 = *(a1 + 32);
      if (v15 >= v16)
      {
        v18 = [v17 _newButton];
        [*(a1 + 32) addSubview:v18];
        [*(*(a1 + 32) + 408) addObject:v18];
      }

      else
      {
        v18 = [v17[51] objectAtIndex:v15];
      }

      [v18 frame];
      v19 = *(*(*(a1 + 48) + 8) + 24);
      [*(*(a1 + 32) + 440) sizeForLinkAtIndex:v15];
      v22 = v21;
      if (v20 >= *(a1 + 72))
      {
        v23 = *(a1 + 72);
      }

      else
      {
        v23 = v20;
      }

      [v18 setFrame:{v13, v19, v23, v21}];
      v24 = [*(a1 + 40) objectAtIndex:v15];
      v25 = [v24 title];
      [v18 setTitle:v25 forState:0];

      [v18 setHidden:0];
      v29.origin.x = v13;
      v29.origin.y = v19;
      v29.size.width = v23;
      v29.size.height = v22;
      v13 = CGRectGetMaxX(v29) + 15.0;

      ++v15;
      --v3;
    }

    while (v3);
    v11 = *(a1 + 32);
  }

  [*(v11 + 440) sizeForLinkAtIndex:a2];
  v27 = *(*(a1 + 48) + 8);
  result = v26 + 8.0 + *(v27 + 24);
  *(v27 + 24) = result;
  return result;
}

- (void)setBackgroundColor:(id)color
{
  buttons = self->_buttons;
  colorCopy = color;
  [(NSMutableArray *)buttons makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIEditorialLinkView;
  [(SUUIEditorialLinkView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  layout = self->_layout;
  if (layout)
  {
    [(SUUIEditorialLinkLayout *)layout totalSize:result.width];
  }

  return result;
}

- (void)tintColorDidChange
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SUUIEditorialLinkView;
  [(SUUIEditorialLinkView *)&v17 tintColorDidChange];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_buttons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        textColor = self->_textColor;
        if (textColor)
        {
          [*(*(&v13 + 1) + 8 * i) setTitleColor:textColor forState:0];
        }

        else
        {
          tintColor = [(SUUIEditorialLinkView *)self tintColor];
          [v8 setTitleColor:tintColor forState:0];
        }

        highlightedTextColor = self->_highlightedTextColor;
        if (highlightedTextColor)
        {
          [v8 setTitleColor:highlightedTextColor forState:1];
        }

        else
        {
          tintColor2 = [(SUUIEditorialLinkView *)self tintColor];
          [v8 setTitleColor:tintColor2 forState:1];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_linkButtonAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NSMutableArray *)self->_buttons indexOfObjectIdenticalTo:actionCopy];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      links = [(SUUIEditorialLinkLayout *)self->_layout links];
      v9 = [links objectAtIndex:v7];

      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 editorialLinkView:self didSelectLink:v9];
    }
  }
}

- (id)_newButton
{
  v3 = [[SUUILinkButton alloc] initWithArrowStyle:1];
  [(SUUILinkButton *)v3 addTarget:self action:sel__linkButtonAction_ forControlEvents:64];
  LODWORD(v4) = -1.0;
  [(SUUILinkButton *)v3 setCharge:v4];
  textColor = self->_textColor;
  if (textColor)
  {
    [(SUUILinkButton *)v3 setTitleColor:textColor forState:0];
  }

  else
  {
    tintColor = [(SUUIEditorialLinkView *)self tintColor];
    [(SUUILinkButton *)v3 setTitleColor:tintColor forState:0];
  }

  highlightedTextColor = self->_highlightedTextColor;
  if (highlightedTextColor)
  {
    [(SUUILinkButton *)v3 setTitleColor:highlightedTextColor forState:1];
  }

  else
  {
    tintColor2 = [(SUUIEditorialLinkView *)self tintColor];
    [(SUUILinkButton *)v3 setTitleColor:tintColor2 forState:1];
  }

  titleLabel = [(SUUILinkButton *)v3 titleLabel];
  v10 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [titleLabel setFont:v10];

  return v3;
}

- (SUUIEditorialLinkViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end