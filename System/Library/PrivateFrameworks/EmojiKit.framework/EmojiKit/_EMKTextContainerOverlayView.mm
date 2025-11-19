@interface _EMKTextContainerOverlayView
- (_EMKTextContainerOverlayView)initWithFrame:(CGRect)a3 rippler:(id)a4;
- (id)_newFragmentViewForFragment:(id)a3;
- (void)_layoutFragmentView:(id)a3;
- (void)layoutSubviews;
- (void)prepareWithTextView:(id)a3;
- (void)startAnimation;
- (void)updateAnimationAndGetFinished:(BOOL *)a3;
@end

@implementation _EMKTextContainerOverlayView

- (_EMKTextContainerOverlayView)initWithFrame:(CGRect)a3 rippler:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = _EMKTextContainerOverlayView;
  v11 = [(_EMKTextContainerOverlayView *)&v19 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = objc_opt_new();
    textEnumerator = v11->_textEnumerator;
    v11->_textEnumerator = v12;

    textView = v11->_textView;
    v11->_textView = 0;

    objc_storeStrong(&v11->_rippler, a4);
    v11->_timeIndex = 0;
    v15 = objc_opt_new();
    fragmentViews = v11->_fragmentViews;
    v11->_fragmentViews = v15;

    [(_EMKTextContainerOverlayView *)v11 setUserInteractionEnabled:1];
    v17 = [(_EMKTextContainerOverlayView *)v11 layer];
    [v17 setMasksToBounds:1];

    [(_EMKTextContainerOverlayView *)v11 setClipsToBounds:1];
  }

  return v11;
}

- (void)layoutSubviews
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = _EMKTextContainerOverlayView;
  [(_EMKTextContainerOverlayView *)&v12 layoutSubviews];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_fragmentViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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

        [(_EMKTextContainerOverlayView *)self _layoutFragmentView:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)prepareWithTextView:(id)a3
{
  fragmentViews = self->_fragmentViews;
  v5 = a3;
  [(NSMutableArray *)fragmentViews makeObjectsPerformSelector:sel_removeFromSuperview];
  v6 = [(_EMKTextContainerOverlayView *)self fragmentViews];
  [v6 removeAllObjects];

  [(_EMKTextContainerOverlayView *)self setTextView:v5];
  v7 = [(_EMKTextContainerOverlayView *)self textView];
  v8 = [v7 textLayoutManager];

  v9 = [v8 documentRange];
  v10 = [v9 location];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52___EMKTextContainerOverlayView_prepareWithTextView___block_invoke;
  v12[3] = &unk_2781C2098;
  v12[4] = self;
  v11 = [v8 enumerateTextLayoutFragmentsFromLocation:v10 options:4 usingBlock:v12];

  [(_EMKTextContainerOverlayView *)self setNeedsLayout];
}

- (void)startAnimation
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(UITextView *)self->_textView textLayoutManager];
  v4 = [v3 animatingGlyphCount_emk];

  if (v4)
  {
    self->_timeIndex = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_fragmentViews;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          [v11 startAnimationWithRippler:self->_rippler animatingGlyphCount:v4 animatingGlyphCountBefore:{v8, v13}];
          v12 = [v11 layoutFragment];
          v8 += [v12 animatingGlyphCount_emk];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)updateAnimationAndGetFinished:(BOOL *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(UITextView *)self->_textView textLayoutManager];
  v6 = [v5 animatingGlyphCount_emk];

  v7 = [(EMKGlyphRippler *)self->_rippler currentTimeIndex];
  self->_timeIndex = v7;
  v8 = [(EMKGlyphRippler *)self->_rippler finishedForGlyphIndex:v6 - 1 numberOfGlyphs:v6 timeIndex:v7];
  if (!v8)
  {
    [(_EMKTextContainerOverlayView *)self setNeedsDisplay];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(NSMutableArray *)self->_fragmentViews objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) updateWithTimeIndex:self->_timeIndex];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  *a3 = v8;
}

- (void)_layoutFragmentView:(id)a3
{
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *MEMORY[0x277CBF3A0];
  v10 = v4;
  v7 = v9;
  v8 = v4;
  v5 = a3;
  v6 = [v5 layoutFragment];
  [(UITextView *)self->_textView textContainerInset];
  [v6 _emk_getFragmentViewFrame:&v9 getBounds:&v7 textContainerInset:?];

  [v5 setFrame:{v9, v10}];
  [v5 setBounds:{v7, v8}];
}

- (id)_newFragmentViewForFragment:(id)a3
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *MEMORY[0x277CBF3A0];
  v12 = v3;
  v9 = v11;
  v10 = v3;
  textView = self->_textView;
  v5 = a3;
  [(UITextView *)textView textContainerInset];
  [v5 _emk_getFragmentViewFrame:&v11 getBounds:&v9 textContainerInset:?];
  v6 = [_EMKTextLayoutFragmentView alloc];
  v7 = [(_EMKTextLayoutFragmentView *)v6 initWithFrame:v5 layoutFragment:v11, v12];

  [(_EMKTextLayoutFragmentView *)v7 setBounds:v9, v10];
  return v7;
}

@end