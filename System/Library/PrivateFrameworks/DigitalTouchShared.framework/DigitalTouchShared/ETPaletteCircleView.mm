@interface ETPaletteCircleView
+ (double)paletteCircleDiameter;
+ (double)selectionMarkerDiameter;
- (ETPaletteCircleView)initWithFrame:(CGRect)frame;
- (void)_updateSelectionMarkerFrame;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated completion:(id)completion;
@end

@implementation ETPaletteCircleView

+ (double)paletteCircleDiameter
{
  if (SetupSpecValuesIfNeeded_onceToken_1 != -1)
  {
    +[ETPaletteCircleView paletteCircleDiameter];
  }

  return 26.0;
}

+ (double)selectionMarkerDiameter
{
  if (SetupSpecValuesIfNeeded_onceToken_1 != -1)
  {
    +[ETPaletteCircleView paletteCircleDiameter];
  }

  return 9.0;
}

- (ETPaletteCircleView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = ETPaletteCircleView;
  v3 = [(ETPaletteCircleView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3 && SetupSpecValuesIfNeeded_onceToken_1 != -1)
  {
    [ETPaletteCircleView initWithFrame:];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ETPaletteCircleView;
  [(ETPaletteCircleView *)&v4 layoutSubviews];
  layer = [(ETPaletteCircleView *)self layer];
  [(ETPaletteCircleView *)self bounds];
  [layer setCornerRadius:CGRectGetWidth(v5) * 0.5];

  [(ETPaletteCircleView *)self _updateSelectionMarkerFrame];
}

- (void)_updateSelectionMarkerFrame
{
  [(ETPaletteCircleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(ETPaletteCircleView *)self bounds];
  v11 = CGRectGetWidth(v17) * 0.34722;
  UIRoundToViewScale();
  v13 = v12;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v14 = CGRectGetMidX(v18) - v13;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  [(UIView *)self->_selectionMarker setFrame:v14, CGRectGetMidY(v19) - v13, v11, v11];
  layer = [(UIView *)self->_selectionMarker layer];
  [layer setCornerRadius:v13];
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    if (selected)
    {
      v4 = objc_alloc_init(MEMORY[0x277D75D18]);
      selectionMarker = self->_selectionMarker;
      self->_selectionMarker = v4;

      v6 = self->_selectionMarker;
      v7 = +[ETPaletteCircleView selectionMarkerColor];
      [(UIView *)v6 setBackgroundColor:v7];

      [(ETPaletteCircleView *)self addSubview:self->_selectionMarker];

      [(ETPaletteCircleView *)self _updateSelectionMarkerFrame];
    }

    else
    {
      [(UIView *)self->_selectionMarker removeFromSuperview];
      v8 = self->_selectionMarker;
      self->_selectionMarker = 0;
    }
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  selectedCopy = selected;
  completionCopy = completion;
  if (animatedCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__ETPaletteCircleView_setSelected_animated_completion___block_invoke;
    v16[3] = &unk_278F79ED0;
    v16[4] = self;
    v9 = MEMORY[0x24C1E9BB0](v16);
    if (selectedCopy)
    {
      [(ETPaletteCircleView *)self setSelected:1];
      v9[2](v9);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__ETPaletteCircleView_setSelected_animated_completion___block_invoke_2;
      v15[3] = &unk_278F79ED0;
      v15[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v15 animations:completionCopy completion:0.3];
    }

    else
    {
      [(ETPaletteCircleView *)self setSelected:0];
      [(ETPaletteCircleView *)self addSubview:self->_selectionMarker];
      v10 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__ETPaletteCircleView_setSelected_animated_completion___block_invoke_3;
      v13[3] = &unk_278F7A248;
      v14 = v9;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __55__ETPaletteCircleView_setSelected_animated_completion___block_invoke_4;
      v11[3] = &unk_278F79FD8;
      v11[4] = self;
      v12 = completionCopy;
      [v10 animateWithDuration:v13 animations:v11 completion:0.3];
    }
  }

  else
  {
    [(ETPaletteCircleView *)self setSelected:selectedCopy];
  }
}

uint64_t __55__ETPaletteCircleView_setSelected_animated_completion___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.01, 0.01);
  v2 = *(*(a1 + 32) + 408);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __55__ETPaletteCircleView_setSelected_animated_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __55__ETPaletteCircleView_setSelected_animated_completion___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 408) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end