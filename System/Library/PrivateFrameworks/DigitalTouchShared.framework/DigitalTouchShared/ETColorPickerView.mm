@interface ETColorPickerView
- (BOOL)_isCenterCircle:(unint64_t)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (ETColorPickerView)initWithFrame:(CGRect)a3 collapsedFrame:(CGRect)a4;
- (ETColorPickerViewDelegate)presentationDelegate;
- (id)paletteCircleAnimationPairs;
- (void)_addRotationAnimationFromAngle:(double)a3 toAngle:(double)a4;
- (void)_dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)animateOffscreen;
- (void)animateOnscreen;
- (void)animateToGray;
- (void)animateToSelectedColor;
- (void)colorWheel:(id)a3 didPickColor:(id)a4;
- (void)colorWheel:(id)a3 willPickColor:(id)a4;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)fadeinPaletteCircle:(id)a3 delay:(double)a4;
- (void)fadeinPaletterCirclesInPairs;
- (void)fadeoutPaletteCircle:(id)a3 delay:(double)a4;
- (void)fadeoutPaletterCirclesInPairs;
- (void)layoutPaletteCircles;
- (void)movePalettCircleToOriginalLayoutPosition:(id)a3;
- (void)movePaletteCircleTowardsViewCenter:(id)a3 distance:(double)a4;
- (void)paletteCircleTapped:(id)a3;
- (void)presentAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentTapReceived:(id)a3;
- (void)setDimmed:(BOOL)a3;
- (void)showColorWheel;
- (void)transformPickerCircleToSelectionMarkerWithCompletion:(id)a3;
- (void)transformSelectionMarkerToPickerCircleWithCompletion:(id)a3;
@end

@implementation ETColorPickerView

- (ETColorPickerView)initWithFrame:(CGRect)a3 collapsedFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v27.receiver = self;
  v27.super_class = ETColorPickerView;
  v12 = [(DTSColorPicker *)&v27 initWithFrame:?];
  if (v12)
  {
    if (SetupSpecValuesIfNeeded_onceToken != -1)
    {
      [ETColorPickerView initWithFrame:collapsedFrame:];
    }

    v12->_expandedFrame.origin.x = v11;
    v12->_expandedFrame.origin.y = v10;
    v12->_expandedFrame.size.width = v9;
    v12->_expandedFrame.size.height = v8;
    v12->_collapsedFrame.origin.x = x;
    v12->_collapsedFrame.origin.y = y;
    v12->_collapsedFrame.size.width = width;
    v12->_collapsedFrame.size.height = height;
    v13 = objc_alloc(MEMORY[0x277D75D18]);
    [(ETColorPickerView *)v12 bounds];
    v14 = [v13 initWithFrame:?];
    contentView = v12->_contentView;
    v12->_contentView = v14;

    [(ETColorPickerView *)v12 addSubview:v12->_contentView];
    v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel_presentTapReceived_];
    presentTapGestureRecognizer = v12->_presentTapGestureRecognizer;
    v12->_presentTapGestureRecognizer = v16;

    [(ETColorPickerView *)v12 addGestureRecognizer:v12->_presentTapGestureRecognizer];
    [(DTSColorPicker *)v12 createPaletteCirclesWithParentView:v12->_contentView];
    [(ETColorPickerView *)v12 layoutPaletteCircles];
    [(UIView *)v12->_contentView bounds];
    v18 = v28.origin.x;
    v19 = v28.origin.y;
    v20 = v28.size.width;
    v21 = v28.size.height;
    v22 = CGRectGetWidth(v28);
    v23 = [[ETColorWheelView alloc] initWithFrame:0.0, 0.0, v22, v22];
    colorWheelView = v12->_colorWheelView;
    v12->_colorWheelView = v23;

    [(DTSColorWheel *)v12->_colorWheelView setDelegate:v12];
    v29.origin.x = v18;
    v29.origin.y = v19;
    v29.size.width = v20;
    v29.size.height = v21;
    MidX = CGRectGetMidX(v29);
    v30.origin.x = v18;
    v30.origin.y = v19;
    v30.size.width = v20;
    v30.size.height = v21;
    [(ETColorWheelView *)v12->_colorWheelView setCenter:MidX, CGRectGetMidY(v30)];
    [(UIView *)v12->_contentView addSubview:v12->_colorWheelView];
    [(ETColorPickerView *)v12 _dismissAnimated:0 completion:0];
  }

  return v12;
}

- (void)layoutPaletteCircles
{
  [(UIView *)self->_contentView bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MidY = CGRectGetMidY(v26);
  v9 = +[ETColorStore defaultStore];
  v10 = [v9 colors];
  v11 = [v10 count];

  v12 = v11 - 1;
  v23 = [(DTSColorPicker *)self paletteCircles];
  if (v11 != 1)
  {
    v13 = 0;
    do
    {
      +[ETPaletteCircleView paletteCircleDiameter];
      v14 = +[ETColorStore defaultStore];
      v15 = [v14 colors];
      v16 = [v15 count];

      __sincos_stret(v13 * (6.28318531 / (v16 - 1)) + -1.57079633);
      UIRoundToViewScale();
      v18 = v17;
      UIRoundToViewScale();
      v20 = v19;
      v21 = [v23 objectAtIndexedSubscript:v13];
      [v21 setCenter:{v18, v20}];

      ++v13;
    }

    while (v12 != v13);
  }

  v22 = [v23 lastObject];
  [v22 setCenter:{MidX, MidY}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(ETColorPickerView *)self bounds];
  v11 = CGRectInset(v10, -12.0, -12.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)presentTapReceived:(id)a3
{
  v4 = [(ETColorPickerView *)self presentationDelegate];
  [v4 colorPickerViewWillPresent:self duration:0.3];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ETColorPickerView_presentTapReceived___block_invoke;
  v5[3] = &unk_278F79ED0;
  v5[4] = self;
  [(ETColorPickerView *)self presentAnimated:1 completion:v5];
}

void __40__ETColorPickerView_presentTapReceived___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationDelegate];
  [v2 colorPickerViewDidPresent:*(a1 + 32)];
}

- (void)presentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(UITapGestureRecognizer *)self->_presentTapGestureRecognizer setEnabled:0];
  [(ETColorPickerView *)self setIsExpanded:1];
  if (v4)
  {
    v7 = 0.3;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__ETColorPickerView_presentAnimated_completion___block_invoke;
  v12[3] = &unk_278F79ED0;
  v12[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ETColorPickerView_presentAnimated_completion___block_invoke_2;
  v10[3] = &unk_278F79EA8;
  v11 = v6;
  v9 = v6;
  [v8 animateWithDuration:4 delay:v12 options:v10 animations:v7 completion:0.0];
}

void __48__ETColorPickerView_presentAnimated_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 464) removeFromSuperview];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 456)];
  [*(a1 + 32) setFrame:{*(*(a1 + 32) + 480), *(*(a1 + 32) + 488), *(*(a1 + 32) + 496), *(*(a1 + 32) + 504)}];
  v2 = [*(a1 + 32) paletteCircles];
  v3 = [*(a1 + 32) selectedCircle];
  if (([*(a1 + 32) _isCenterCircle:{objc_msgSend(v2, "indexOfObject:", v3)}] & 1) == 0)
  {
    [*(a1 + 32) _addRotationAnimationFromAngle:*(*(a1 + 32) + 560) toAngle:0.0];
  }

  v4 = *(*(a1 + 32) + 456);
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v18[0] = *MEMORY[0x277CBF2C0];
  v18[1] = v5;
  v18[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v4 setTransform:v18];
  [*(*(a1 + 32) + 456) frame];
  [*(*(a1 + 32) + 456) setCenter:{v6 * 0.5, v7 * 0.5}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (v13 != v3)
        {
          [v13 setAlpha:{1.0, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }
}

uint64_t __48__ETColorPickerView_presentAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(ETColorPickerView *)self isExpanded])
  {
    v7 = [(ETColorPickerView *)self presentationDelegate];
    [v7 colorPickerView:self willDismissAnimated:v4 duration:0.3];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__ETColorPickerView_dismissAnimated_completion___block_invoke;
    v8[3] = &unk_278F79F38;
    v8[4] = self;
    v9 = v6;
    [(ETColorPickerView *)self _dismissAnimated:v4 completion:v8];
  }
}

uint64_t __48__ETColorPickerView_dismissAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationDelegate];
  [v2 colorPickerViewDidDismiss:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 32) + 552) = 0;
  return result;
}

- (void)_addRotationAnimationFromAngle:(double)a3 toAngle:(double)a4
{
  v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
  [v7 setDuration:0.3];
  [v7 setAdditive:1];
  [v7 setRemovedOnCompletion:0];
  [v7 setFillMode:*MEMORY[0x277CDA238]];
  *&v8 = a3;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v7 setFromValue:v9];

  *&v10 = a4;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  [v7 setToValue:v11];

  v12 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v7 setTimingFunction:v12];

  [MEMORY[0x277CD9FF0] begin];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__ETColorPickerView__addRotationAnimationFromAngle_toAngle___block_invoke;
  v14[3] = &unk_278F79ED0;
  v14[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v14];
  v13 = [(UIView *)self->_contentView layer];
  [v13 addAnimation:v7 forKey:@"ColorPickerRotationAnimationKey"];

  [MEMORY[0x277CD9FF0] commit];
}

void __60__ETColorPickerView__addRotationAnimationFromAngle_toAngle___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 456) layer];
  [v1 removeAnimationForKey:@"ColorPickerRotationAnimationKey"];
}

- (void)_dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (([(ETColorWheelView *)self->_colorWheelView isHidden]& 1) == 0)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__ETColorPickerView__dismissAnimated_completion___block_invoke;
    v20[3] = &unk_278F79ED0;
    v20[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v20];
  }

  if (v4)
  {
    v7 = 0.3;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(DTSColorPicker *)self paletteCircles];
  v9 = [(DTSColorPicker *)self selectedCircle];
  v10 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__ETColorPickerView__dismissAnimated_completion___block_invoke_2;
  v17[3] = &unk_278F79F60;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__ETColorPickerView__dismissAnimated_completion___block_invoke_3;
  v14[3] = &unk_278F79F88;
  v14[4] = self;
  v15 = v19;
  v16 = v6;
  v11 = v6;
  v12 = v19;
  v13 = v8;
  [v10 animateWithDuration:4 delay:v17 options:v14 animations:v7 completion:0.0];
}

void __49__ETColorPickerView__dismissAnimated_completion___block_invoke_2(id *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  [a1[4] setFrame:{*(a1[4] + 64), *(a1[4] + 65), *(a1[4] + 66), *(a1[4] + 67)}];
  v2 = [a1[5] indexOfObject:a1[6]];
  if (([a1[4] _isCenterCircle:v2] & 1) == 0)
  {
    v3 = v2;
    v4 = +[ETColorStore defaultStore];
    v5 = [v4 colors];
    v6 = [v5 count];

    *(a1[4] + 70) = -(v3 * (6.28318531 / (v6 - 1)) + -1.57079633 + 1.57079633);
    [a1[4] _addRotationAnimationFromAngle:0.0 toAngle:*(a1[4] + 70)];
  }

  [*(a1[4] + 57) frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([a1[4] _shouldReverseLayoutDirection])
  {
    v53.origin.x = v8;
    v53.origin.y = v10;
    v53.size.width = v12;
    v53.size.height = v14;
    v15 = CGRectGetWidth(v53) * -0.5;
    v16 = CGRectGetMinX(*(a1[4] + 16)) + v15;
  }

  else
  {
    v16 = CGRectGetMidX(*(a1[4] + 16)) * -0.5;
  }

  [*(a1[4] + 57) setFrame:{v16, v10, v12, v14}];
  [a1[6] frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  Width = CGRectGetWidth(*(a1[4] + 16));
  v54.origin.x = v18;
  v54.origin.y = v20;
  v54.size.width = v22;
  v54.size.height = v24;
  v26 = Width / CGRectGetWidth(v54);
  Height = CGRectGetHeight(*(a1[4] + 16));
  v55.origin.x = v18;
  v55.origin.y = v20;
  v55.size.width = v22;
  v55.size.height = v24;
  memset(&v50, 0, sizeof(v50));
  v28 = Height / CGRectGetHeight(v55);
  CGAffineTransformMakeScale(&v50, v26, v28);
  v29 = *(a1[4] + 57);
  v49 = v50;
  [v29 setTransform:&v49];
  [*(a1[4] + 57) frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a1[6];
  v37 = [a1[5] lastObject];

  v38 = -13.0;
  if (v36 == v37)
  {
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v24;
    v38 = -CGRectGetMinY(v56);
  }

  [*(a1[4] + 57) setFrame:{v31, v28 * v38, v33, v35}];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v39 = a1[5];
  v40 = [v39 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v46;
    do
    {
      v43 = 0;
      do
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v45 + 1) + 8 * v43);
        if (v44 != a1[6])
        {
          [v44 setAlpha:{0.0, v45}];
        }

        ++v43;
      }

      while (v41 != v43);
      v41 = [v39 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v41);
  }
}

uint64_t __49__ETColorPickerView__dismissAnimated_completion___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 456) removeFromSuperview];
  v2 = [ETPaletteCircleView alloc];
  Width = CGRectGetWidth(*(*(a1 + 32) + 512));
  v4 = [(ETPaletteCircleView *)v2 initWithFrame:0.0, 0.0, Width, CGRectGetHeight(*(*(a1 + 32) + 512))];
  v5 = *(a1 + 32);
  v6 = *(v5 + 464);
  *(v5 + 464) = v4;

  v7 = *(*(a1 + 32) + 464);
  v8 = [*(a1 + 40) backgroundColor];
  [v7 setBackgroundColor:v8];

  [*(*(a1 + 32) + 464) setSelected:1];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 464)];
  [*(a1 + 32) setIsExpanded:0];
  [*(*(a1 + 32) + 472) setEnabled:1];
  result = *(a1 + 48);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

- (BOOL)_isCenterCircle:(unint64_t)a3
{
  v4 = [(DTSColorPicker *)self paletteCircles];
  LOBYTE(a3) = [v4 count] - 1 == a3;

  return a3;
}

- (void)setDimmed:(BOOL)a3
{
  v3 = a3;
  if ([(DTSColorPicker *)self isDimmed]!= a3)
  {
    v5.receiver = self;
    v5.super_class = ETColorPickerView;
    [(DTSColorPicker *)&v5 setDimmed:v3];
    if (v3)
    {
      [(ETColorPickerView *)self animateToGray];
    }

    else
    {
      [(ETColorPickerView *)self animateToSelectedColor];
    }

    [(ETColorPickerView *)self setUserInteractionEnabled:v3 ^ 1];
  }
}

- (void)animateToGray
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__ETColorPickerView_animateToGray__block_invoke;
  v2[3] = &unk_278F79ED0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v2 options:0 animations:0.4 completion:0.0];
}

void __34__ETColorPickerView_animateToGray__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.121568627 alpha:1.0];
  [*(*(a1 + 32) + 464) setBackgroundColor:v2];
}

- (void)animateToSelectedColor
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__ETColorPickerView_animateToSelectedColor__block_invoke;
  v2[3] = &unk_278F79ED0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v2 options:0 animations:0.4 completion:0.0];
}

void __43__ETColorPickerView_animateToSelectedColor__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) selectedCircle];
  v2 = [v3 backgroundColor];
  [*(*(a1 + 32) + 464) setBackgroundColor:v2];
}

- (void)animateOffscreen
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__ETColorPickerView_animateOffscreen__block_invoke;
  v4[3] = &unk_278F79ED0;
  v4[4] = self;
  v3 = MEMORY[0x24C1E9BB0](v4, a2);
  if ([(ETColorPickerView *)self isExpanded])
  {
    [(ETColorPickerView *)self dismissAnimated:1 completion:v3];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __37__ETColorPickerView_animateOffscreen__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__ETColorPickerView_animateOffscreen__block_invoke_2;
  v2[3] = &unk_278F79ED0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.4];
}

- (void)animateOnscreen
{
  if (![(ETColorPickerView *)self isExpanded])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __36__ETColorPickerView_animateOnscreen__block_invoke;
    v3[3] = &unk_278F79ED0;
    v3[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0 completion:0.4];
  }
}

- (void)paletteCircleTapped:(id)a3
{
  if (!self->_dismissingColorPicker)
  {
    self->_dismissingColorPicker = 1;
    v4 = [a3 view];
    v5 = [(DTSColorPicker *)self selectedCircle];

    if (v5 == v4)
    {
      [(ETColorPickerView *)self dismissAnimated:1 completion:0];
    }

    else
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __41__ETColorPickerView_paletteCircleTapped___block_invoke;
      v7[3] = &unk_278F79ED0;
      v7[4] = self;
      [(DTSColorPicker *)self selectCircle:v4 completion:v7];
    }

    v6 = [(DTSColorPicker *)self delegate];
    [v6 colorPickerSelectedColorDidChange:self];
  }
}

- (void)showColorWheel
{
  v3 = [(DTSColorPicker *)self longPressRecognizer];
  [v3 setEnabled:0];

  v4 = [(DTSColorPicker *)self selectedCircle];
  v5 = [(DTSColorPicker *)self paletteCircles];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__ETColorPickerView_showColorWheel__block_invoke;
  v8[3] = &unk_278F79F60;
  v9 = v5;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = v5;
  [(ETColorPickerView *)self transformSelectionMarkerToPickerCircleWithCompletion:v8];
}

uint64_t __35__ETColorPickerView_showColorWheel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexOfObject:*(a1 + 40)];
  v3 = +[ETColorStore defaultStore];
  v4 = [v3 colors];
  v5 = [v4 count];

  [*(*(a1 + 48) + 544) showColorWheelFromPaletteCircle:*(a1 + 40) rotation:v2 * (6.28318531 / (v5 - 1)) + -1.57079633];
  v6 = *(a1 + 48);

  return [v6 fadeoutPaletterCirclesInPairs];
}

- (void)transformSelectionMarkerToPickerCircleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DTSColorPicker *)self selectedCircle];
  v6 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ETColorPickerView_transformSelectionMarkerToPickerCircleWithCompletion___block_invoke;
  v12[3] = &unk_278F79FB0;
  v13 = v5;
  v14 = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__ETColorPickerView_transformSelectionMarkerToPickerCircleWithCompletion___block_invoke_2;
  v9[3] = &unk_278F79FD8;
  v10 = v13;
  v11 = v4;
  v7 = v4;
  v8 = v13;
  [v6 animateWithDuration:v12 animations:v9 completion:0.15];
}

void __74__ETColorPickerView_transformSelectionMarkerToPickerCircleWithCompletion___block_invoke(uint64_t a1)
{
  +[ETColorWheelView colorWheelWidth];
  v3 = v2;
  [*(a1 + 32) frame];
  v4 = v3 / CGRectGetWidth(v24);
  CGAffineTransformMakeScale(&v23, v4, v4);
  v5 = *(a1 + 32);
  v22 = v23;
  [v5 setTransform:&v22];
  +[ETPaletteCircleView paletteCircleDiameter];
  v7 = v6 + 2.0;
  [*(*(a1 + 40) + 456) bounds];
  Width = CGRectGetWidth(v25);
  +[ETColorWheelView colorWheelWidth];
  [*(a1 + 40) movePaletteCircleTowardsViewCenter:*(a1 + 32) distance:v7 + (Width - v9) * -0.5 + 1.0];
  v10 = [*(a1 + 32) selectionMarker];
  +[ETColorWheelView pickerDiameter];
  v12 = v11;
  +[ETPaletteCircleView selectionMarkerDiameter];
  v14 = v12 / v13 / v4;
  CGAffineTransformMakeScale(&v21, v14, v14);
  v22 = v21;
  [v10 setTransform:&v22];
  v15 = [*(a1 + 32) backgroundColor];
  [v10 setBackgroundColor:v15];

  +[ETColorWheelView pickerWidth];
  v17 = v16 / v14;
  v18 = [v10 layer];
  [v18 setBorderWidth:v17];

  v19 = +[ETColorWheelView pickerBorderColor];
  v20 = [v10 layer];
  [v20 setBorderColor:v19];
}

uint64_t __74__ETColorPickerView_transformSelectionMarkerToPickerCircleWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)transformPickerCircleToSelectionMarkerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DTSColorPicker *)self selectedCircle];
  v6 = [v5 selectionMarker];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  v18[0] = *MEMORY[0x277CBF2C0];
  v18[1] = v7;
  v18[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v6 setTransform:v18];
  v8 = +[ETPaletteCircleView selectionMarkerColor];
  [v6 setBackgroundColor:v8];

  v9 = [v6 layer];
  [v9 setBorderWidth:0.0];

  [(UIView *)self->_contentView addSubview:v5];
  [(UIView *)self->_contentView sendSubviewToBack:v5];
  v10 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__ETColorPickerView_transformPickerCircleToSelectionMarkerWithCompletion___block_invoke;
  v15[3] = &unk_278F79FB0;
  v16 = v5;
  v17 = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__ETColorPickerView_transformPickerCircleToSelectionMarkerWithCompletion___block_invoke_2;
  v13[3] = &unk_278F79EA8;
  v14 = v4;
  v11 = v4;
  v12 = v5;
  [v10 animateWithDuration:0x20000 delay:v15 options:v13 animations:0.15 completion:0.0];
}

uint64_t __74__ETColorPickerView_transformPickerCircleToSelectionMarkerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 40) movePalettCircleToOriginalLayoutPosition:*(a1 + 32)];
}

uint64_t __74__ETColorPickerView_transformPickerCircleToSelectionMarkerWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fadeoutPaletterCirclesInPairs
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(ETColorPickerView *)self paletteCircleAnimationPairs];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 objectAtIndexedSubscript:0];
        [(ETColorPickerView *)self fadeoutPaletteCircle:v10 delay:v6 * 0.0875];
        v11 = [v9 objectAtIndexedSubscript:1];
        if (v11 != v10)
        {
          [(ETColorPickerView *)self fadeoutPaletteCircle:v11 delay:v6 * 0.0875];
        }

        ++v6;
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  v12 = [(DTSColorPicker *)self paletteCircles];
  v13 = [v12 lastObject];

  v14 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__ETColorPickerView_fadeoutPaletterCirclesInPairs__block_invoke;
  v22[3] = &unk_278F79ED0;
  v15 = v13;
  v23 = v15;
  [v14 animateWithDuration:0 delay:v22 options:0 animations:0.15 completion:0.0];
  v16 = MEMORY[0x277D75D18];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__ETColorPickerView_fadeoutPaletterCirclesInPairs__block_invoke_2;
  v20[3] = &unk_278F79ED0;
  v21 = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__ETColorPickerView_fadeoutPaletterCirclesInPairs__block_invoke_3;
  v18[3] = &unk_278F7A000;
  v19 = v21;
  v17 = v21;
  [v16 animateWithDuration:0 delay:v20 options:v18 animations:0.25 completion:0.0];
}

uint64_t __50__ETColorPickerView_fadeoutPaletterCirclesInPairs__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.7, 0.7);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

- (void)fadeinPaletterCirclesInPairs
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(ETColorPickerView *)self paletteCircleAnimationPairs];
  v4 = [v3 count];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        --v4;
        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 objectAtIndexedSubscript:0];
        [(ETColorPickerView *)self fadeinPaletteCircle:v11 delay:v4 * 0.0875];
        v12 = [v10 objectAtIndexedSubscript:1];
        if (v12 != v11)
        {
          [(ETColorPickerView *)self fadeinPaletteCircle:v12 delay:v4 * 0.0875];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v13 = [(DTSColorPicker *)self paletteCircles];
  v14 = [v13 lastObject];

  [(UIView *)self->_contentView addSubview:v14];
  v15 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__ETColorPickerView_fadeinPaletterCirclesInPairs__block_invoke;
  v21[3] = &unk_278F79ED0;
  v16 = v14;
  v22 = v16;
  [v15 animateWithDuration:0 delay:v21 options:0 animations:0.25 completion:0.0];
  v17 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __49__ETColorPickerView_fadeinPaletterCirclesInPairs__block_invoke_2;
  v19[3] = &unk_278F79ED0;
  v20 = v16;
  v18 = v16;
  [v17 animateWithDuration:0 delay:v19 options:0 animations:0.15 completion:0.0];
}

uint64_t __49__ETColorPickerView_fadeinPaletterCirclesInPairs__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (void)fadeoutPaletteCircle:(id)a3 delay:(double)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ETColorPickerView_fadeoutPaletteCircle_delay___block_invoke;
  v11[3] = &unk_278F79FB0;
  v12 = v6;
  v13 = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__ETColorPickerView_fadeoutPaletteCircle_delay___block_invoke_2;
  v9[3] = &unk_278F7A000;
  v10 = v12;
  v8 = v12;
  [v7 animateWithDuration:0 delay:v11 options:v9 animations:0.25 completion:a4];
}

uint64_t __48__ETColorPickerView_fadeoutPaletteCircle_delay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  CGAffineTransformMakeScale(&v5, 0.7, 0.7);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 40) movePaletteCircleTowardsViewCenter:*(a1 + 32) distance:10.0];
}

- (void)fadeinPaletteCircle:(id)a3 delay:(double)a4
{
  v6 = a3;
  [(UIView *)self->_contentView addSubview:v6];
  [(UIView *)self->_contentView sendSubviewToBack:v6];
  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__ETColorPickerView_fadeinPaletteCircle_delay___block_invoke;
  v9[3] = &unk_278F79FB0;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 animateWithDuration:0 delay:v9 options:0 animations:0.25 completion:a4];
}

uint64_t __47__ETColorPickerView_fadeinPaletteCircle_delay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 40) movePalettCircleToOriginalLayoutPosition:*(a1 + 32)];
}

- (void)movePaletteCircleTowardsViewCenter:(id)a3 distance:(double)a4
{
  contentView = self->_contentView;
  v19 = a3;
  [(UIView *)contentView bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidY = CGRectGetMidY(v22);
  [v19 center];
  v13 = v12;
  v15 = v14;
  v16 = MidX - v12;
  v17 = MidY - v14;
  +[ETPaletteCircleView paletteCircleDiameter];
  [v19 setCenter:{v13 + v16 / (v18 + 2.0) * a4, v15 + v17 / (v18 + 2.0) * a4}];
}

- (void)movePalettCircleToOriginalLayoutPosition:(id)a3
{
  contentView = self->_contentView;
  v18 = a3;
  [(UIView *)contentView bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetMidY(v21);
  v9 = [(DTSColorPicker *)self paletteCircles];
  v10 = [v9 indexOfObject:v18];

  +[ETPaletteCircleView paletteCircleDiameter];
  v11 = v10;
  v12 = +[ETColorStore defaultStore];
  v13 = [v12 colors];
  v14 = [v13 count];

  __sincos_stret(v11 * (6.28318531 / (v14 - 1)) + -1.57079633);
  UIRoundToViewScale();
  v16 = v15;
  UIRoundToViewScale();
  [v18 setCenter:{v16, v17}];
}

- (id)paletteCircleAnimationPairs
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [(DTSColorPicker *)self paletteCircles];
  v4 = [(DTSColorPicker *)self selectedCircle];
  v5 = [v3 indexOfObject:v4];

  v6 = +[ETColorStore defaultStore];
  v7 = [v6 colors];
  v8 = [v7 count];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = v8 - 2;
  if (v8 != 2)
  {
    v11 = v8 - 1;
    v12 = 1;
    do
    {
      v13 = [v3 objectAtIndexedSubscript:(v5 + v10) % v11];
      v17[0] = v13;
      v14 = [v3 objectAtIndexedSubscript:(v5 + v12) % v11];
      v17[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      [v9 addObject:v15];

      ++v12;
      --v10;
    }

    while (v12 <= v10);
  }

  return v9;
}

- (void)colorWheel:(id)a3 willPickColor:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [(DTSColorPicker *)self selectedCircle];
    [v6 setBackgroundColor:v5];
  }

  [(ETColorPickerView *)self fadeinPaletterCirclesInPairs];
}

- (void)colorWheel:(id)a3 didPickColor:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ETColorPickerView_colorWheel_didPickColor___block_invoke;
  v7[3] = &unk_278F79FB0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(ETColorPickerView *)self transformPickerCircleToSelectionMarkerWithCompletion:v7];
}

void __45__ETColorPickerView_colorWheel_didPickColor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) longPressRecognizer];
  [v2 setEnabled:1];

  if (*(a1 + 40))
  {
    v6 = +[ETColorStore defaultStore];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) paletteCircles];
    v5 = [*(a1 + 32) selectedCircle];
    [v6 saveColor:v3 forIndex:{objc_msgSend(v4, "indexOfObject:", v5)}];
  }
}

- (ETColorPickerViewDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end