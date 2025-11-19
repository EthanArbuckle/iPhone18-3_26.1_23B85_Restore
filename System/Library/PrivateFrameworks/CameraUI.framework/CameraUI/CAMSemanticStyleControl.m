@interface CAMSemanticStyleControl
- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)canBecomeFirstResponder;
- (CAMSemanticStyleControl)initWithFrame:(CGRect)a3;
- (id)_createSliderForIndex:(unint64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_handleReset;
- (void)_handleResetButtonReleased:(id)a3;
- (void)_handleSliderDidChangeValue:(id)a3;
- (void)_showResetConfirmation;
- (void)_updateSlidersAnimated:(BOOL)a3;
- (void)_updateSubviewsVisibilityWithDuration:(double)a3 delay:(double)a4;
- (void)layoutSubviews;
- (void)setGradientInsets:(id)a3;
- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4;
- (void)sliderWillExpand:(id)a3;
@end

@implementation CAMSemanticStyleControl

- (CAMSemanticStyleControl)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = CAMSemanticStyleControl;
  v3 = [(CAMSemanticStyleControl *)&v29 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v3)
  {
    v4 = [[CAMSemanticStyle alloc] initWithPresetType:0];
    semanticStyle = v3->_semanticStyle;
    v3->_semanticStyle = v4;

    v3->_shouldConfirmBeforeResetting = 1;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v7 = [(CAMSemanticStyleControl *)v3 _createSliderForIndex:[(NSArray *)v6 count]];
    if (v7)
    {
      v8 = v7;
      do
      {
        [(CAMSemanticStyleControl *)v3 addSubview:v8];
        [(NSArray *)v6 addObject:v8];

        v8 = [(CAMSemanticStyleControl *)v3 _createSliderForIndex:[(NSArray *)v6 count]];
      }

      while (v8);
    }

    allSliders = v3->__allSliders;
    v3->__allSliders = v6;
    v10 = v6;

    v11 = objc_alloc_init(MEMORY[0x1E69DC738]);
    resetButton = v3->__resetButton;
    v3->__resetButton = v11;

    [(UIButton *)v3->__resetButton addTarget:v3 action:sel__handleResetButtonReleased_ forControlEvents:64];
    v13 = v3->__resetButton;
    v14 = MEMORY[0x1E69DCAB8];
    v15 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    v16 = [v14 systemImageNamed:@"arrow.trianglehead.counterclockwise" withConfiguration:v15];
    [(UIButton *)v13 setImage:v16 forState:0];

    v17 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v3->__resetButton setTintColor:v17];

    [(CAMSemanticStyleControl *)v3 addSubview:v3->__resetButton];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    descriptionLabel = v3->__descriptionLabel;
    v3->__descriptionLabel = v18;

    v20 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_CONTROL_DESCRIPTION", 0);
    [(UILabel *)v3->__descriptionLabel setText:v20];

    [(UILabel *)v3->__descriptionLabel setTextAlignment:1];
    [(UILabel *)v3->__descriptionLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->__descriptionLabel setNumberOfLines:1];
    v21 = CEKFontOfSizeAndStyle();
    [(UILabel *)v3->__descriptionLabel setFont:v21];

    v22 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v3->__descriptionLabel setTextColor:v22];

    [(CAMSemanticStyleControl *)v3 addSubview:v3->__descriptionLabel];
    v23 = objc_alloc_init(MEMORY[0x1E69DD250]);
    gradientContainer = v3->__gradientContainer;
    v3->__gradientContainer = v23;

    v25 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v3->__gradientContainer setBackgroundColor:v25];

    [(UIView *)v3->__gradientContainer setUserInteractionEnabled:0];
    v26 = objc_alloc_init(MEMORY[0x1E6993848]);
    edgeGradients = v3->__edgeGradients;
    v3->__edgeGradients = v26;

    [(CEKEdgeGradientView *)v3->__edgeGradients setUserInteractionEnabled:0];
    [(CEKEdgeGradientView *)v3->__edgeGradients setEdgeGradientStyleMask];
    [(UIView *)v3->__gradientContainer addSubview:v3->__edgeGradients];
    [(CAMSemanticStyleControl *)v3 setMaskView:v3->__gradientContainer];

    [(CAMSemanticStyleControl *)v3 _updateSubviewsVisibilityWithDuration:0.0 delay:0.0];
  }

  return v3;
}

- (id)_createSliderForIndex:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_9;
    }

    v4 = @"SEMANTIC_STYLES_CONTROL_WARMTH";
  }

  else
  {
    v4 = @"SEMANTIC_STYLES_CONTROL_TONE";
  }

  v5 = CAMLocalizedFrameworkString(v4, 0);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 cam_uppercaseStringWithPreferredLocale];

    v6 = [objc_alloc(MEMORY[0x1E6993850]) initWithTitle:v7];
    [v6 setTitleAlpha:0.7];
    [v6 setDelegate:self];
    [v6 addTarget:self action:sel__handleSliderDidChangeValue_ forControlEvents:4096];
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v6;
}

- (void)layoutSubviews
{
  v52 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = CAMSemanticStyleControl;
  [(CAMSemanticStyleControl *)&v50 layoutSubviews];
  [(CAMSemanticStyleControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  +[CAMControlDrawerButton buttonSize];
  v12 = v11;
  v45 = v13;
  v14 = [(CAMSemanticStyleControl *)self _allSliders];
  v15 = [v14 firstObject];
  [v15 intrinsicContentSize];
  v17 = v16;

  v44 = v12;
  v18 = v12 + 20.0;
  v19 = [(CAMSemanticStyleControl *)self _allSliders];
  v20 = [v19 count];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = (v8 + (v12 + 20.0) * -2.0 - v17 * v20) / (v20 + 1);
    v25 = v17 * 0.5 + v18 + v24;
    v26 = *v47;
    v27 = v17 + v24;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v29 = *(*(&v46 + 1) + 8 * i);
        [v29 setFrame:{v4, v6, v8, v10}];
        UIRoundToViewScale();
        [v29 setCollapsedCenterX:?];
        v25 = v27 + v25;
      }

      v23 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v23);
  }

  v53.origin.x = v4;
  v53.origin.y = v6;
  v53.size.width = v8;
  v53.size.height = v10;
  CGRectGetMidY(v53);
  UIRoundToViewScale();
  v31 = v30;
  v32 = [(CAMSemanticStyleControl *)self _descriptionLabel];
  [v32 setFrame:{v18, v31, v8 + v18 * -2.0, 17.0}];

  v54.origin.x = v4;
  v54.origin.y = v6;
  v54.size.width = v8;
  v54.size.height = v10;
  CGRectGetMidY(v54);
  UIRoundToViewScale();
  v34 = v33;
  v35 = [(CAMSemanticStyleControl *)self _resetButton];
  [v35 setFrame:{v8 - v18, v34, v44, v45}];

  v36 = [(CAMSemanticStyleControl *)self _gradientContainer];
  [v36 setFrame:{v4, v6, v8, v10}];

  v37 = [(CAMSemanticStyleControl *)self _edgeGradients];
  [v37 setFrame:{v4, v6, v8, v10}];

  v38 = [(CAMSemanticStyleControl *)self _edgeGradients];
  [v38 setContentInsets:{28.0, 0.0, 0.0, 0.0}];

  [(CAMSemanticStyleControl *)self gradientInsets];
  v40 = v39;
  [(CAMSemanticStyleControl *)self gradientInsets];
  v42 = v41;
  v43 = [(CAMSemanticStyleControl *)self _edgeGradients];
  [v43 setGradientDimensions:{v40, v8 * 0.1, v8 * 0.1, v42}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CAMSemanticStyleControl;
  v5 = [(CAMSemanticStyleControl *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (![(CAMSemanticStyle *)self->_semanticStyle isEqualToSemanticStyle:?])
  {
    objc_storeStrong(&self->_semanticStyle, a3);
    [(CAMSemanticStyleControl *)self _updateSlidersAnimated:v4];
    v7 = 0.3;
    if (!v4)
    {
      v7 = 0.0;
    }

    [(CAMSemanticStyleControl *)self _updateSubviewsVisibilityWithDuration:v7 delay:?];
  }
}

- (void)_updateSlidersAnimated:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(CAMSemanticStyleControl *)self semanticStyle];
  v6 = [(CAMSemanticStyleControl *)self _allSliders];
  v7 = [v5 isCustomizable];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v23 + 1) + 8 * v12++) setUserInteractionEnabled:{v7, v23}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v13 = [(CAMSemanticStyleControl *)self _resetButton];
  [v13 setUserInteractionEnabled:v7];

  if (v7)
  {
    v14 = -[CAMSemanticStyle initWithPresetType:]([CAMSemanticStyle alloc], "initWithPresetType:", [v5 presetType]);
    v15 = [v8 objectAtIndexedSubscript:0];
    [v5 sceneBias];
    [v15 setValue:v3 animated:?];

    v16 = [v8 objectAtIndexedSubscript:1];
    [v5 warmthBias];
    [v16 setValue:v3 animated:?];

    [(CAMSemanticStyle *)v14 sceneBias];
    v18 = v17;
    v19 = [v8 objectAtIndexedSubscript:0];
    [v19 setMarkedValue:v18];

    [(CAMSemanticStyle *)v14 warmthBias];
    v21 = v20;
    v22 = [v8 objectAtIndexedSubscript:1];
    [v22 setMarkedValue:v21];
  }
}

- (void)setGradientInsets:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  p_gradientInsets = &self->_gradientInsets;
  if ((CEKEdgeInsetsEqualToInsets() & 1) == 0)
  {
    p_gradientInsets->startInset = var0;
    p_gradientInsets->endInset = var1;

    [(CAMSemanticStyleControl *)self setNeedsLayout];
  }
}

- (void)_updateSubviewsVisibilityWithDuration:(double)a3 delay:(double)a4
{
  v7 = [(CAMSemanticStyleControl *)self semanticStyle];
  v8 = [v7 isCustomizable];

  v9 = [(CAMSemanticStyleControl *)self _allSliders];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __71__CAMSemanticStyleControl__updateSubviewsVisibilityWithDuration_delay___block_invoke;
  v22[3] = &unk_1E76F8828;
  v22[4] = &v23;
  [v9 enumerateObjectsUsingBlock:v22];
  v10 = [(CAMSemanticStyleControl *)self semanticStyle];
  v11 = v8 ^ 1;
  if ([v10 isCustomized])
  {
    v12 = *(v24 + 24) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CAMSemanticStyleControl__updateSubviewsVisibilityWithDuration_delay___block_invoke_2;
  aBlock[3] = &unk_1E76F8850;
  v13 = v9;
  v18 = self;
  v19 = &v23;
  v20 = v11;
  v17 = v13;
  v21 = v12 & 1;
  v14 = _Block_copy(aBlock);
  v15 = v14;
  if (a3 == 0.0 && a4 == 0.0)
  {
    (*(v14 + 2))(v14);
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v14 options:0 animations:a3 completion:a4];
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __71__CAMSemanticStyleControl__updateSubviewsVisibilityWithDuration_delay___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 expanded];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __71__CAMSemanticStyleControl__updateSubviewsVisibilityWithDuration_delay___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if (*(*(*(a1 + 48) + 8) + 24) != 1 || (v8 = [*(*(&v16 + 1) + 8 * i) expanded], v9 = 0.0, v8))
        {
          if (*(a1 + 56))
          {
            v9 = 0.0;
          }

          else
          {
            v9 = 1.0;
          }
        }

        [v7 setAlpha:{v9, v16}];
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  if (*(a1 + 57))
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [*(a1 + 40) _resetButton];
  [v11 setAlpha:v10];

  if (*(a1 + 56))
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [*(a1 + 40) _descriptionLabel];
  [v13 setAlpha:v12];

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v14 = ;
  v15 = [*(a1 + 40) _gradientContainer];
  [v15 setBackgroundColor:v14];
}

- (void)_handleSliderDidChangeValue:(id)a3
{
  v13 = [(CAMSemanticStyleControl *)self _allSliders];
  v4 = [CAMSemanticStyle alloc];
  v5 = [(CAMSemanticStyleControl *)self semanticStyle];
  v6 = [v5 presetType];
  v7 = [v13 objectAtIndexedSubscript:0];
  [v7 value];
  v9 = v8;
  v10 = [v13 objectAtIndexedSubscript:1];
  [v10 value];
  v12 = [(CAMSemanticStyle *)v4 initWithPresetType:v6 sceneBias:v9 warmthBias:v11];
  [(CAMSemanticStyleControl *)self setSemanticStyle:v12];

  [(CAMSemanticStyleControl *)self sendActionsForControlEvents:4096];
}

- (void)_handleResetButtonReleased:(id)a3
{
  if ([(CAMSemanticStyleControl *)self shouldConfirmBeforeResetting])
  {

    [(CAMSemanticStyleControl *)self _showResetConfirmation];
  }

  else
  {

    [(CAMSemanticStyleControl *)self _handleReset];
  }
}

- (void)_showResetConfirmation
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(CAMSemanticStyleControl *)self _resetButton];
  v4 = CAMLocalizedFrameworkString(@"SEMANTIC_STYLES_CONTROL_RESET_CONFIRM_FORMAT", 0);
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(CAMSemanticStyleControl *)self semanticStyle];
  v7 = [v6 presetDisplayName];
  v8 = [v5 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, v7];

  [(CAMSemanticStyleControl *)self becomeFirstResponder];
  v9 = [MEMORY[0x1E69DCC68] sharedMenuController];
  v10 = [objc_alloc(MEMORY[0x1E69DCC80]) initWithTitle:v8 action:sel__handleReset];
  v13[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v9 setMenuItems:v11];

  v12 = [v3 imageView];
  [v12 frame];
  [v9 showMenuFromView:v3 rect:?];
}

- (void)_handleReset
{
  v3 = [CAMSemanticStyle alloc];
  v4 = [(CAMSemanticStyleControl *)self semanticStyle];
  v5 = -[CAMSemanticStyle initWithPresetType:](v3, "initWithPresetType:", [v4 presetType]);

  [(CAMSemanticStyleControl *)self setSemanticStyle:v5 animated:1];
  [(CAMSemanticStyleControl *)self sendActionsForControlEvents:4096];
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(CAMSemanticStyleControl *)self semanticStyle];
  v3 = [v2 isCustomized];

  return v3;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = MEMORY[0x1E69DCC68];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedMenuController];
  [v9 hideMenu];

  v11.receiver = self;
  v11.super_class = CAMSemanticStyleControl;
  LOBYTE(self) = [(CAMSemanticStyleControl *)&v11 beginTrackingWithTouch:v8 withEvent:v7];

  return self;
}

- (void)sliderWillExpand:(id)a3
{
  [(CAMSemanticStyleControl *)self _updateSubviewsVisibilityWithDuration:a3 delay:0.2, 0.0];
  v3 = [MEMORY[0x1E69DCC68] sharedMenuController];
  [v3 hideMenu];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)gradientInsets
{
  startInset = self->_gradientInsets.startInset;
  endInset = self->_gradientInsets.endInset;
  result.var1 = endInset;
  result.var0 = startInset;
  return result;
}

@end