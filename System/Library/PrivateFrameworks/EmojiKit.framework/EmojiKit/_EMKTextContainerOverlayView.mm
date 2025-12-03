@interface _EMKTextContainerOverlayView
- (_EMKTextContainerOverlayView)initWithFrame:(CGRect)frame rippler:(id)rippler;
- (id)_newFragmentViewForFragment:(id)fragment;
- (void)_layoutFragmentView:(id)view;
- (void)layoutSubviews;
- (void)prepareWithTextView:(id)view;
- (void)startAnimation;
- (void)updateAnimationAndGetFinished:(BOOL *)finished;
@end

@implementation _EMKTextContainerOverlayView

- (_EMKTextContainerOverlayView)initWithFrame:(CGRect)frame rippler:(id)rippler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ripplerCopy = rippler;
  v19.receiver = self;
  v19.super_class = _EMKTextContainerOverlayView;
  height = [(_EMKTextContainerOverlayView *)&v19 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = objc_opt_new();
    textEnumerator = height->_textEnumerator;
    height->_textEnumerator = v12;

    textView = height->_textView;
    height->_textView = 0;

    objc_storeStrong(&height->_rippler, rippler);
    height->_timeIndex = 0;
    v15 = objc_opt_new();
    fragmentViews = height->_fragmentViews;
    height->_fragmentViews = v15;

    [(_EMKTextContainerOverlayView *)height setUserInteractionEnabled:1];
    layer = [(_EMKTextContainerOverlayView *)height layer];
    [layer setMasksToBounds:1];

    [(_EMKTextContainerOverlayView *)height setClipsToBounds:1];
  }

  return height;
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

- (void)prepareWithTextView:(id)view
{
  fragmentViews = self->_fragmentViews;
  viewCopy = view;
  [(NSMutableArray *)fragmentViews makeObjectsPerformSelector:sel_removeFromSuperview];
  fragmentViews = [(_EMKTextContainerOverlayView *)self fragmentViews];
  [fragmentViews removeAllObjects];

  [(_EMKTextContainerOverlayView *)self setTextView:viewCopy];
  textView = [(_EMKTextContainerOverlayView *)self textView];
  textLayoutManager = [textView textLayoutManager];

  documentRange = [textLayoutManager documentRange];
  location = [documentRange location];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52___EMKTextContainerOverlayView_prepareWithTextView___block_invoke;
  v12[3] = &unk_2781C2098;
  v12[4] = self;
  v11 = [textLayoutManager enumerateTextLayoutFragmentsFromLocation:location options:4 usingBlock:v12];

  [(_EMKTextContainerOverlayView *)self setNeedsLayout];
}

- (void)startAnimation
{
  v18 = *MEMORY[0x277D85DE8];
  textLayoutManager = [(UITextView *)self->_textView textLayoutManager];
  animatingGlyphCount_emk = [textLayoutManager animatingGlyphCount_emk];

  if (animatingGlyphCount_emk)
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
          [v11 startAnimationWithRippler:self->_rippler animatingGlyphCount:animatingGlyphCount_emk animatingGlyphCountBefore:{v8, v13}];
          layoutFragment = [v11 layoutFragment];
          v8 += [layoutFragment animatingGlyphCount_emk];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)updateAnimationAndGetFinished:(BOOL *)finished
{
  v19 = *MEMORY[0x277D85DE8];
  textLayoutManager = [(UITextView *)self->_textView textLayoutManager];
  animatingGlyphCount_emk = [textLayoutManager animatingGlyphCount_emk];

  currentTimeIndex = [(EMKGlyphRippler *)self->_rippler currentTimeIndex];
  self->_timeIndex = currentTimeIndex;
  v8 = [(EMKGlyphRippler *)self->_rippler finishedForGlyphIndex:animatingGlyphCount_emk - 1 numberOfGlyphs:animatingGlyphCount_emk timeIndex:currentTimeIndex];
  if (!v8)
  {
    [(_EMKTextContainerOverlayView *)self setNeedsDisplay];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMutableArray *)self->_fragmentViews objectEnumerator];
  v10 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v14 + 1) + 8 * v13++) updateWithTimeIndex:self->_timeIndex];
      }

      while (v11 != v13);
      v11 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  *finished = v8;
}

- (void)_layoutFragmentView:(id)view
{
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *MEMORY[0x277CBF3A0];
  v10 = v4;
  v7 = v9;
  v8 = v4;
  viewCopy = view;
  layoutFragment = [viewCopy layoutFragment];
  [(UITextView *)self->_textView textContainerInset];
  [layoutFragment _emk_getFragmentViewFrame:&v9 getBounds:&v7 textContainerInset:?];

  [viewCopy setFrame:{v9, v10}];
  [viewCopy setBounds:{v7, v8}];
}

- (id)_newFragmentViewForFragment:(id)fragment
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *MEMORY[0x277CBF3A0];
  v12 = v3;
  v9 = v11;
  v10 = v3;
  textView = self->_textView;
  fragmentCopy = fragment;
  [(UITextView *)textView textContainerInset];
  [fragmentCopy _emk_getFragmentViewFrame:&v11 getBounds:&v9 textContainerInset:?];
  v6 = [_EMKTextLayoutFragmentView alloc];
  v7 = [(_EMKTextLayoutFragmentView *)v6 initWithFrame:fragmentCopy layoutFragment:v11, v12];

  [(_EMKTextLayoutFragmentView *)v7 setBounds:v9, v10];
  return v7;
}

@end