@interface ICNoteEditorToolbarPlusView
+ (id)newCircleMaskWithBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (ICNoteEditorToolbarPlusView)initWithFrame:(CGRect)frame;
- (id)backgroundColor;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setCloseState:(BOOL)state;
- (void)updateGradientLayerColors;
@end

@implementation ICNoteEditorToolbarPlusView

- (ICNoteEditorToolbarPlusView)initWithFrame:(CGRect)frame
{
  v36.receiver = self;
  v36.super_class = ICNoteEditorToolbarPlusView;
  v3 = [(ICNoteEditorToolbarPlusView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    [v4 setFrame:?];
    v5 = objc_opt_class();
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v6 = [v5 newCircleMaskWithBounds:?];
    [v4 setMask:v6];

    [v4 setStartPoint:{0.0, 0.0}];
    [v4 setEndPoint:{0.0, 1.0}];
    [(ICNoteEditorToolbarPlusView *)v3 setGradientLayer:v4];
    [(ICNoteEditorToolbarPlusView *)v3 updateGradientLayerColors];
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    [(ICNoteEditorToolbarPlusView *)v3 setGradientView:v8];

    gradientView = [(ICNoteEditorToolbarPlusView *)v3 gradientView];
    layer = [gradientView layer];
    [layer addSublayer:v4];

    gradientView2 = [(ICNoteEditorToolbarPlusView *)v3 gradientView];
    [(ICNoteEditorToolbarPlusView *)v3 addSubview:gradientView2];

    v12 = objc_alloc(MEMORY[0x277D75D18]);
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v13 = [v12 initWithFrame:?];
    [(ICNoteEditorToolbarPlusView *)v3 setPlainView:v13];

    v14 = objc_opt_class();
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v15 = [v14 newCircleMaskWithBounds:?];
    plainView = [(ICNoteEditorToolbarPlusView *)v3 plainView];
    layer2 = [plainView layer];
    [layer2 setMask:v15];

    plainView2 = [(ICNoteEditorToolbarPlusView *)v3 plainView];
    [plainView2 setBackgroundColor:0];

    plainView3 = [(ICNoteEditorToolbarPlusView *)v3 plainView];
    [(ICNoteEditorToolbarPlusView *)v3 addSubview:plainView3];

    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v21 = v20 * 0.5;
    v22 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v23 = v21 + -1.0;
    v24 = v21 + -8.0;
    [v22 setFrame:{v23, v24, 2.0, 16.0}];
    [v22 setCornerRadius:1.0];
    itemColor = [(ICNoteEditorToolbarPlusView *)v3 itemColor];
    [v22 setBackgroundColor:{objc_msgSend(itemColor, "CGColor")}];

    v26 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [v26 setFrame:{v24, v23, 16.0, 2.0}];
    [v26 setCornerRadius:1.0];
    itemColor2 = [(ICNoteEditorToolbarPlusView *)v3 itemColor];
    [v26 setBackgroundColor:{objc_msgSend(itemColor2, "CGColor")}];

    v28 = objc_alloc(MEMORY[0x277D75D18]);
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v29 = [v28 initWithFrame:?];
    [(ICNoteEditorToolbarPlusView *)v3 setPlusView:v29];

    plusView = [(ICNoteEditorToolbarPlusView *)v3 plusView];
    layer3 = [plusView layer];
    [layer3 addSublayer:v26];

    plusView2 = [(ICNoteEditorToolbarPlusView *)v3 plusView];
    layer4 = [plusView2 layer];
    [layer4 addSublayer:v22];

    plusView3 = [(ICNoteEditorToolbarPlusView *)v3 plusView];
    [(ICNoteEditorToolbarPlusView *)v3 addSubview:plusView3];

    v3->_closeState = 1;
    [(ICNoteEditorToolbarPlusView *)v3 setCloseState:0];
  }

  return v3;
}

- (id)backgroundColor
{
  systemFillColor = [MEMORY[0x277D75348] systemFillColor];
  v3 = [systemFillColor colorWithAlphaComponent:0.8];

  return v3;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorToolbarPlusView;
  [(ICNoteEditorToolbarPlusView *)&v7 _dynamicUserInterfaceTraitDidChange];
  plusView = [(ICNoteEditorToolbarPlusView *)self plusView];
  layer = [plusView layer];
  sublayers = [layer sublayers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ICNoteEditorToolbarPlusView__dynamicUserInterfaceTraitDidChange__block_invoke;
  v6[3] = &unk_2781AD8E8;
  v6[4] = self;
  [sublayers enumerateObjectsUsingBlock:v6];

  [(ICNoteEditorToolbarPlusView *)self updateGradientLayerColors];
}

void __66__ICNoteEditorToolbarPlusView__dynamicUserInterfaceTraitDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 itemColor];
  v4 = v5;
  [v3 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
}

- (void)updateGradientLayerColors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] colorNamed:@"notes_format_plus_button_gradient_top"];
  v4 = [MEMORY[0x277D75348] colorNamed:@"notes_format_plus_button_gradient_bottom"];
  v7[0] = [v3 CGColor];
  v7[1] = [v4 CGColor];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  gradientLayer = [(ICNoteEditorToolbarPlusView *)self gradientLayer];
  [gradientLayer setColors:v5];
}

+ (id)newCircleMaskWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [v7 setFrame:{x, y, width, height}];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v7 setFillColor:{objc_msgSend(blackColor, "CGColor")}];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setStrokeColor:{objc_msgSend(clearColor, "CGColor")}];

  Mutable = CGPathCreateMutable();
  [v7 bounds];
  CGPathAddEllipseInRect(Mutable, 0, v12);
  [v7 setPath:Mutable];
  CGPathRelease(Mutable);
  return v7;
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setCloseState:(BOOL)state
{
  if (self->_closeState != state)
  {
    stateCopy = state;
    self->_closeState = state;
    plusView = [(ICNoteEditorToolbarPlusView *)self plusView];
    v7 = plusView;
    if (stateCopy)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    if (stateCopy)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    [plusView setAlpha:v8];

    plainView = [(ICNoteEditorToolbarPlusView *)self plainView];
    [plainView setAlpha:v9];

    gradientView = [(ICNoteEditorToolbarPlusView *)self gradientView];
    [gradientView setAlpha:v8];
  }
}

@end