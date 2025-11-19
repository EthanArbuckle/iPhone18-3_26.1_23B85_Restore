@interface CKEffectPickerLargeTextView
- (CGRect)_updateBalloonViewOrigin:(CGRect)a3 forButtonFrame:(CGRect)a4;
- (CKEffectPickerLargeTextView)initWithFrame:(CGRect)a3 sendButtonFrame:(CGRect)a4 balloonViewOrigin:(CGPoint)a5 composition:(id)a6 color:(char)a7 gradientReferenceView:(id)a8;
- (double)marginBetweenPickerDotButtons;
- (double)offsetYForLabelAtIndex:(int64_t)a3 withInitialY:(double)a4;
- (void)_touchUpInsideDotButton:(id)a3;
- (void)activateTextSizeDependentConstraintsForSendButtonFrame:(CGRect)a3;
- (void)addEffect:(id)a3 withDescriptiveText:(id)a4 withIdentifier:(id)a5;
- (void)cancelImpactSelection;
- (void)effectTypeDidChange:(id)a3;
@end

@implementation CKEffectPickerLargeTextView

- (CKEffectPickerLargeTextView)initWithFrame:(CGRect)a3 sendButtonFrame:(CGRect)a4 balloonViewOrigin:(CGPoint)a5 composition:(id)a6 color:(char)a7 gradientReferenceView:(id)a8
{
  v9.receiver = self;
  v9.super_class = CKEffectPickerLargeTextView;
  result = [(CKEffectPickerView *)&v9 initWithFrame:*&a5.x sendButtonFrame:*&a5.y balloonViewOrigin:a6 composition:a7 color:a8 gradientReferenceView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, v10, v11];
  if (result)
  {
    result->_finishedInitializing = 1;
  }

  return result;
}

- (void)activateTextSizeDependentConstraintsForSendButtonFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = CKEffectPickerLargeTextView;
  [(CKEffectPickerView *)&v21 activateTextSizeDependentConstraintsForSendButtonFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = MEMORY[0x1E696ACD8];
  v5 = [(CKEffectPickerView *)self closeButton];
  v6 = [v4 constraintWithItem:v5 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-20.0];

  [(CKEffectPickerLargeTextView *)self addConstraint:v6];
  [(CKEffectPickerView *)self setCloseButtonBottomConstraint:v6];
  v7 = [(CKEffectPickerView *)self balloonView];
  [v7 frame];
  v9 = v8;
  v10 = [(CKEffectPickerView *)self closeButton];
  [v10 frame];
  v12 = -(v9 - v11);

  v13 = MEMORY[0x1E696ACD8];
  v14 = [(CKEffectPickerView *)self roundedContainerView];
  v15 = [(CKEffectPickerView *)self closeButton];
  v16 = [v13 constraintWithItem:v14 attribute:4 relatedBy:0 toItem:v15 attribute:3 multiplier:1.0 constant:v12];

  [(CKEffectPickerLargeTextView *)self addConstraint:v16];
  v17 = MEMORY[0x1E696ACD8];
  v18 = [(CKEffectPickerView *)self sendMomentButton];
  v19 = [(CKEffectPickerView *)self closeButton];
  v20 = [v17 constraintWithItem:v18 attribute:4 relatedBy:0 toItem:v19 attribute:3 multiplier:1.0 constant:-36.0];

  [(CKEffectPickerLargeTextView *)self addConstraint:v20];
}

- (void)addEffect:(id)a3 withDescriptiveText:(id)a4 withIdentifier:(id)a5
{
  v11.receiver = self;
  v11.super_class = CKEffectPickerLargeTextView;
  v8 = a3;
  [(CKEffectPickerView *)&v11 addEffect:v8 withDescriptiveText:a4 withIdentifier:a5];
  v9 = [(CKEffectPickerView *)self effectDescriptiveLabels:v11.receiver];
  v10 = [v9 lastObject];

  [v10 setText:v8];
}

- (double)marginBetweenPickerDotButtons
{
  v2 = [(CKEffectPickerView *)self effectLabelFont];
  [v2 lineHeight];
  v4 = v3 * 1.75;

  return v4;
}

- (CGRect)_updateBalloonViewOrigin:(CGRect)a3 forButtonFrame:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  v6 = a3.size.height;
  width = a3.size.width;
  v9 = [(CKEffectPickerView *)self closeButton:a3.origin.x];
  [v9 frame];
  v11 = v10;

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isEntryViewRefreshEnabled];

  v14 = width + 20.0;
  if (v13)
  {
    v15 = [(CKEffectPickerLargeTextView *)self stylingMetrics];
    [v15 roundTrackPadding];
    v14 = v14 + v16;
  }

  v17 = [(CKEffectPickerView *)self typeSegmentedControl];
  v18 = [v17 selectedSegmentIndex];

  if (v18)
  {
    v19 = [(CKEffectPickerView *)self sendMomentButton];
    [v19 frame];
    v21 = v20;
    v23 = v22;

    y = v21 + v23 + 24.0 - v6;
  }

  else if ([(CKEffectPickerView *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    y = y - (v6 - height);
  }

  else if ([(CKEffectPickerView *)self selectedIndex])
  {
    v24 = [(CKEffectPickerView *)self selectedIndex];
    v25 = [(CKEffectPickerView *)self effectLabels];
    v26 = [v25 count] - 1;

    if (v24 != v26)
    {
      v27 = [(CKEffectPickerView *)self effectDescriptiveLabels];
      v28 = [v27 objectAtIndex:{-[CKEffectPickerView selectedIndex](self, "selectedIndex")}];

      [v28 bounds];
      [v28 frame];
      UIRoundToViewScale();
      y = v29;
    }
  }

  else
  {
    v30 = [(CKEffectPickerView *)self closeButton];
    [v30 frame];
    y = v31 + -14.0 - v6;
  }

  v32 = v11 - v14;
  v33 = y;
  v34 = width;
  v35 = v6;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)cancelImpactSelection
{
  v4.receiver = self;
  v4.super_class = CKEffectPickerLargeTextView;
  [(CKEffectPickerView *)&v4 cancelImpactSelection];
  [(CKEffectPickerView *)self resetDotConstraintsToDefault];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__CKEffectPickerLargeTextView_cancelImpactSelection__block_invoke;
  v3[3] = &unk_1E72EBA18;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.25];
}

- (void)_touchUpInsideDotButton:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKEffectPickerView *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(CKEffectPickerView *)self closeButton];
    [v5 frame];
    v7 = v6 + -28.0;
    v8 = [(CKEffectPickerView *)self roundedContainerView];
    [v8 frame];
    v10 = v7 - v9;
  }

  else
  {
    v5 = [(CKEffectPickerView *)self roundedContainerView];
    [v5 bounds];
    v10 = v11;
  }

  [(CKEffectPickerView *)self resetDotConstraintsToDefault];
  v12 = [(CKEffectPickerView *)self effectIdentifiers];
  v13 = [(CKEffectPickerView *)self effectDotButtons];
  v14 = [v12 objectAtIndex:{objc_msgSend(v13, "indexOfObject:", v4)}];

  v15 = [(CKEffectPickerView *)self effectDotConstraintsThatChange];
  v16 = [v15 objectForKey:v14];

  v17 = [(CKEffectPickerView *)self effectLabels];
  v18 = [v17 count];

  if ([v16 count] == 1)
  {
    [(CKEffectPickerLargeTextView *)self marginBetweenPickerDotButtons];
    v20 = v19 + v19 + (v18 + 1) * 9.0;
    v21 = [(CKEffectPickerLargeTextView *)self stylingMetrics];
    [v21 roundTrackPadding];
    v23 = v10 - round(v20 + v22 * 2.0);
  }

  else
  {
    [(CKEffectPickerLargeTextView *)self marginBetweenPickerDotButtons];
    v25 = v24 + v18 * 9.0;
    v21 = [(CKEffectPickerLargeTextView *)self stylingMetrics];
    [v21 roundTrackPadding];
    v23 = (v10 - round(v25 + v26 * 2.0)) * 0.5;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = v16;
  v28 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    v31 = -v23;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v35 + 1) + 8 * i) setConstant:v31];
      }

      v29 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v29);
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __55__CKEffectPickerLargeTextView__touchUpInsideDotButton___block_invoke;
  v34[3] = &unk_1E72EBA18;
  v34[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v34 animations:0.25];
  v33.receiver = self;
  v33.super_class = CKEffectPickerLargeTextView;
  [(CKEffectPickerView *)&v33 _touchUpInsideDotButton:v4];
}

- (double)offsetYForLabelAtIndex:(int64_t)a3 withInitialY:(double)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v6 = [v7 objectAtIndex:a3];

    if (!a3)
    {
      v17 = [(CKEffectPickerView *)self closeButton];
      [v17 frame];
      v18 = [(CKEffectPickerView *)self balloonView];
      [v18 frame];
      [v6 bounds];

      goto LABEL_8;
    }
  }

  v8 = [(CKEffectPickerView *)self effectLabels];
  v9 = [v8 count] - 1;

  if (v9 == a3)
  {
    v10 = [(CKEffectPickerView *)self roundedContainerView];
    v11 = [(CKEffectPickerView *)self effectSendButtons];
    v12 = [v11 objectAtIndex:a3];
    [v12 frame];
    [v10 convertRect:self toView:?];
  }

  else
  {
    v13 = [(CKEffectPickerView *)self balloonView];
    [v13 frame];
    [v6 bounds];
  }

  [v6 bounds];
LABEL_8:
  UIRoundToViewScale();
  v15 = v14;

  return v15;
}

- (void)effectTypeDidChange:(id)a3
{
  v4 = a3;
  if ([(CKEffectPickerLargeTextView *)self finishedInitializing])
  {
    if ([v4 selectedSegmentIndex])
    {
      if ([v4 selectedSegmentIndex] != 1)
      {
LABEL_7:
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __51__CKEffectPickerLargeTextView_effectTypeDidChange___block_invoke;
        v8[3] = &unk_1E72EBA18;
        v8[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.25];
        goto LABEL_8;
      }

      v5 = -178.0;
    }

    else
    {
      v5 = -20.0;
    }

    v6 = [(CKEffectPickerView *)self closeButtonBottomConstraint];
    [v6 setConstant:v5];

    goto LABEL_7;
  }

LABEL_8:
  v7.receiver = self;
  v7.super_class = CKEffectPickerLargeTextView;
  [(CKEffectPickerView *)&v7 effectTypeDidChange:v4];
}

@end