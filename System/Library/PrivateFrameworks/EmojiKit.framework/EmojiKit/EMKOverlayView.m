@interface EMKOverlayView
- (EMKOverlayView)initWithView:(id)a3 anchorRect:(CGRect)a4 emojiTokenList:(id)a5 selectionHandler:(id)a6;
- (void)dismissWithSelectedEmojiToken:(id)a3;
- (void)drawBackground:(CGRect)a3;
- (void)drawForeground:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)selectWithEvent:(id)a3;
- (void)setView:(id)a3 anchorRect:(CGRect)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation EMKOverlayView

- (EMKOverlayView)initWithView:(id)a3 anchorRect:(CGRect)a4 emojiTokenList:(id)a5 selectionHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = v13;
  v17 = [v16 superview];

  v18 = v16;
  if (v17)
  {
    v19 = v16;
    do
    {
      v18 = [v19 superview];

      v20 = [v18 superview];

      v19 = v18;
    }

    while (v20);
  }

  [v18 convertRect:v16 fromView:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if ([v14 count])
  {
    [v18 bounds];
    v43.receiver = self;
    v43.super_class = EMKOverlayView;
    v29 = [(EMKOverlayView *)&v43 initWithFrame:?];
    self = v29;
    if (v29)
    {
      [(EMKOverlayView *)v29 bounds];
      v31 = v30;
      v32 = [v14 count];
      v33 = vcvtmd_u64_f64((v31 + -4.0 + -20.0 + -32.0) / 40.0);
      if (v32 * 36.0 + 20.0 + (v32 + 1) * 4.0 + 32.0 <= v31)
      {
        v33 = v32;
      }

      if (v33 <= 1)
      {
        v33 = 1;
      }

      if (v33 >= v32)
      {
        v33 = v32;
      }

      if (v33 >= 8)
      {
        v33 = 8;
      }

      self->_numEmojiToShow = v33;
      v34 = [v14 copy];
      emojiTokenList = self->_emojiTokenList;
      self->_emojiTokenList = v34;

      self->_overlayRect.origin.x = overlayRectRelativeToRect(self->_numEmojiToShow, v22, v24, v26, v28, v31);
      self->_overlayRect.origin.y = v36;
      self->_overlayRect.size.width = v37;
      self->_overlayRect.size.height = v38;
      self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
      v39 = [v15 copy];
      selectionHandler = self->_selectionHandler;
      self->_selectionHandler = v39;

      v41 = [v16 traitCollection];
      self->_interfaceStyle = [v41 userInterfaceStyle];

      [(EMKOverlayView *)self setOpaque:0];
      [v18 addSubview:self];
      [v18 bringSubviewToFront:self];
    }
  }

  return self;
}

- (void)setView:(id)a3 anchorRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v23 = [(EMKOverlayView *)self superview];
  [v23 convertRect:v9 fromView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v23 bounds];
  [(EMKOverlayView *)self setFrame:?];
  numEmojiToShow = self->_numEmojiToShow;
  [(EMKOverlayView *)self bounds];
  self->_overlayRect.origin.x = overlayRectRelativeToRect(numEmojiToShow, v11, v13, v15, v17, v19);
  self->_overlayRect.origin.y = v20;
  self->_overlayRect.size.width = v21;
  self->_overlayRect.size.height = v22;
  [(EMKOverlayView *)self setNeedsDisplay];
}

- (void)drawBackground:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:self->_overlayRect.origin.x cornerRadius:{self->_overlayRect.origin.y, self->_overlayRect.size.width, self->_overlayRect.size.height, 9.0}];
  [v9 setLineWidth:0.2];
  v11.width = 0.0;
  v11.height = 5.0;
  CGContextSetShadow(CurrentContext, v11, 7.0);
  if (self->_interfaceStyle == 2)
  {
    darkBackgroundColor();
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;
  [v5 set];

  [v9 fill];
  v12.width = 0.0;
  v12.height = 0.0;
  CGContextSetShadowWithColor(CurrentContext, v12, 0.0, 0);
  if (self->_interfaceStyle == 2)
  {
    darkBackgroundColor();
  }

  else
  {
    [MEMORY[0x277D75348] lightGrayColor];
  }
  v6 = ;
  [v6 set];

  [v9 stroke];
  selectedIndex = self->_selectedIndex;
  if (selectedIndex < self->_numEmojiToShow)
  {
    v8 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:selectedIndex * 36.0 + 10.0 + (selectedIndex + 1) * 4.0 + self->_overlayRect.origin.x cornerRadius:{self->_overlayRect.origin.y + 6.0, 36.0, 43.0, 6.0}];
    if (selectionColor_onceToken != -1)
    {
      [EMKOverlayView drawBackground:];
    }

    [selectionColor_color set];
    [v8 fill];
  }
}

- (void)drawForeground:(CGRect)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:{32.0, a3.origin.y, a3.size.width, a3.size.height}];
  v14[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v6 = [MEMORY[0x277D75348] blackColor];
  [v6 set];

  if (self->_numEmojiToShow)
  {
    v7 = 0;
    do
    {
      v8 = v7 + 1;
      v9 = v7 * 36.0 + 10.0 + (v7 + 1) * 4.0 + self->_overlayRect.origin.x + 1.0;
      v10 = self->_overlayRect.origin.y + 6.0 + 2.0;
      v11 = [(EMKEmojiTokenList *)self->_emojiTokenList emojiTokenAtIndex:?];
      v12 = [v11 string];
      [v12 drawInRect:v5 withAttributes:{v9, v10, 36.0, 43.0}];

      v7 = v8;
    }

    while (v8 < self->_numEmojiToShow);
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(EMKOverlayView *)self drawBackground:?];

  [(EMKOverlayView *)self drawForeground:x, y, width, height];
}

- (void)dismissWithSelectedEmojiToken:(id)a3
{
  (*(self->_selectionHandler + 2))();

  [(EMKOverlayView *)self removeFromSuperview];
}

- (void)selectWithEvent:(id)a3
{
  v4 = [a3 touchesForView:self];
  v10 = [v4 anyObject];

  v5 = v10;
  if (v10)
  {
    [v10 locationInView:self];
    v7 = v6;
    v12.y = v8;
    self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v12.x = v6;
    if (CGRectContainsPoint(self->_overlayRect, v12))
    {
      v9 = vcvtmd_u64_f64((v7 - self->_overlayRect.origin.x + -10.0 + -2.0) / 40.0);
      if ((v9 & 0x8000000000000000) == 0 && self->_numEmojiToShow > v9)
      {
        self->_selectedIndex = v9;
      }
    }

    [(EMKOverlayView *)self setNeedsDisplay];
    v5 = v10;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a4 touchesForView:self];
  v11 = [v5 anyObject];

  [v11 locationInView:self];
  v7 = v6;
  v13.y = v8;
  v13.x = v6;
  if (!CGRectContainsPoint(self->_overlayRect, v13) || (v9 = vcvtmd_u64_f64((v7 - self->_overlayRect.origin.x + -10.0 + -2.0) / 40.0), (v9 & 0x8000000000000000) != 0) || self->_numEmojiToShow <= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(EMKEmojiTokenList *)self->_emojiTokenList emojiTokenAtIndex:?];
  }

  [(EMKOverlayView *)self dismissWithSelectedEmojiToken:v10];
}

@end