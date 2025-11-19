@interface ICNoteEditorToolbarPlusView
+ (id)newCircleMaskWithBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (ICNoteEditorToolbarPlusView)initWithFrame:(CGRect)a3;
- (id)backgroundColor;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setCloseState:(BOOL)a3;
- (void)updateGradientLayerColors;
@end

@implementation ICNoteEditorToolbarPlusView

- (ICNoteEditorToolbarPlusView)initWithFrame:(CGRect)a3
{
  v36.receiver = self;
  v36.super_class = ICNoteEditorToolbarPlusView;
  v3 = [(ICNoteEditorToolbarPlusView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v9 = [(ICNoteEditorToolbarPlusView *)v3 gradientView];
    v10 = [v9 layer];
    [v10 addSublayer:v4];

    v11 = [(ICNoteEditorToolbarPlusView *)v3 gradientView];
    [(ICNoteEditorToolbarPlusView *)v3 addSubview:v11];

    v12 = objc_alloc(MEMORY[0x277D75D18]);
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v13 = [v12 initWithFrame:?];
    [(ICNoteEditorToolbarPlusView *)v3 setPlainView:v13];

    v14 = objc_opt_class();
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v15 = [v14 newCircleMaskWithBounds:?];
    v16 = [(ICNoteEditorToolbarPlusView *)v3 plainView];
    v17 = [v16 layer];
    [v17 setMask:v15];

    v18 = [(ICNoteEditorToolbarPlusView *)v3 plainView];
    [v18 setBackgroundColor:0];

    v19 = [(ICNoteEditorToolbarPlusView *)v3 plainView];
    [(ICNoteEditorToolbarPlusView *)v3 addSubview:v19];

    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v21 = v20 * 0.5;
    v22 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v23 = v21 + -1.0;
    v24 = v21 + -8.0;
    [v22 setFrame:{v23, v24, 2.0, 16.0}];
    [v22 setCornerRadius:1.0];
    v25 = [(ICNoteEditorToolbarPlusView *)v3 itemColor];
    [v22 setBackgroundColor:{objc_msgSend(v25, "CGColor")}];

    v26 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [v26 setFrame:{v24, v23, 16.0, 2.0}];
    [v26 setCornerRadius:1.0];
    v27 = [(ICNoteEditorToolbarPlusView *)v3 itemColor];
    [v26 setBackgroundColor:{objc_msgSend(v27, "CGColor")}];

    v28 = objc_alloc(MEMORY[0x277D75D18]);
    [(ICNoteEditorToolbarPlusView *)v3 bounds];
    v29 = [v28 initWithFrame:?];
    [(ICNoteEditorToolbarPlusView *)v3 setPlusView:v29];

    v30 = [(ICNoteEditorToolbarPlusView *)v3 plusView];
    v31 = [v30 layer];
    [v31 addSublayer:v26];

    v32 = [(ICNoteEditorToolbarPlusView *)v3 plusView];
    v33 = [v32 layer];
    [v33 addSublayer:v22];

    v34 = [(ICNoteEditorToolbarPlusView *)v3 plusView];
    [(ICNoteEditorToolbarPlusView *)v3 addSubview:v34];

    v3->_closeState = 1;
    [(ICNoteEditorToolbarPlusView *)v3 setCloseState:0];
  }

  return v3;
}

- (id)backgroundColor
{
  v2 = [MEMORY[0x277D75348] systemFillColor];
  v3 = [v2 colorWithAlphaComponent:0.8];

  return v3;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorToolbarPlusView;
  [(ICNoteEditorToolbarPlusView *)&v7 _dynamicUserInterfaceTraitDidChange];
  v3 = [(ICNoteEditorToolbarPlusView *)self plusView];
  v4 = [v3 layer];
  v5 = [v4 sublayers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ICNoteEditorToolbarPlusView__dynamicUserInterfaceTraitDidChange__block_invoke;
  v6[3] = &unk_2781AD8E8;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];

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
  v6 = [(ICNoteEditorToolbarPlusView *)self gradientLayer];
  [v6 setColors:v5];
}

+ (id)newCircleMaskWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [v7 setFrame:{x, y, width, height}];
  v8 = [MEMORY[0x277D75348] blackColor];
  [v7 setFillColor:{objc_msgSend(v8, "CGColor")}];

  v9 = [MEMORY[0x277D75348] clearColor];
  [v7 setStrokeColor:{objc_msgSend(v9, "CGColor")}];

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

- (void)setCloseState:(BOOL)a3
{
  if (self->_closeState != a3)
  {
    v4 = a3;
    self->_closeState = a3;
    v6 = [(ICNoteEditorToolbarPlusView *)self plusView];
    v7 = v6;
    if (v4)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    if (v4)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    [v6 setAlpha:v8];

    v10 = [(ICNoteEditorToolbarPlusView *)self plainView];
    [v10 setAlpha:v9];

    v11 = [(ICNoteEditorToolbarPlusView *)self gradientView];
    [v11 setAlpha:v8];
  }
}

@end