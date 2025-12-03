@interface CKEffectPickerLargeTextView
- (CGRect)_updateBalloonViewOrigin:(CGRect)origin forButtonFrame:(CGRect)frame;
- (CKEffectPickerLargeTextView)initWithFrame:(CGRect)frame sendButtonFrame:(CGRect)buttonFrame balloonViewOrigin:(CGPoint)origin composition:(id)composition color:(char)color gradientReferenceView:(id)view;
- (double)marginBetweenPickerDotButtons;
- (double)offsetYForLabelAtIndex:(int64_t)index withInitialY:(double)y;
- (void)_touchUpInsideDotButton:(id)button;
- (void)activateTextSizeDependentConstraintsForSendButtonFrame:(CGRect)frame;
- (void)addEffect:(id)effect withDescriptiveText:(id)text withIdentifier:(id)identifier;
- (void)cancelImpactSelection;
- (void)effectTypeDidChange:(id)change;
@end

@implementation CKEffectPickerLargeTextView

- (CKEffectPickerLargeTextView)initWithFrame:(CGRect)frame sendButtonFrame:(CGRect)buttonFrame balloonViewOrigin:(CGPoint)origin composition:(id)composition color:(char)color gradientReferenceView:(id)view
{
  v9.receiver = self;
  v9.super_class = CKEffectPickerLargeTextView;
  result = [(CKEffectPickerView *)&v9 initWithFrame:*&origin.x sendButtonFrame:*&origin.y balloonViewOrigin:composition composition:color color:view gradientReferenceView:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, buttonFrame.origin.x, buttonFrame.origin.y, buttonFrame.size.width, buttonFrame.size.height, v10, v11];
  if (result)
  {
    result->_finishedInitializing = 1;
  }

  return result;
}

- (void)activateTextSizeDependentConstraintsForSendButtonFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = CKEffectPickerLargeTextView;
  [(CKEffectPickerView *)&v21 activateTextSizeDependentConstraintsForSendButtonFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = MEMORY[0x1E696ACD8];
  closeButton = [(CKEffectPickerView *)self closeButton];
  v6 = [v4 constraintWithItem:closeButton attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-20.0];

  [(CKEffectPickerLargeTextView *)self addConstraint:v6];
  [(CKEffectPickerView *)self setCloseButtonBottomConstraint:v6];
  balloonView = [(CKEffectPickerView *)self balloonView];
  [balloonView frame];
  v9 = v8;
  closeButton2 = [(CKEffectPickerView *)self closeButton];
  [closeButton2 frame];
  v12 = -(v9 - v11);

  v13 = MEMORY[0x1E696ACD8];
  roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
  closeButton3 = [(CKEffectPickerView *)self closeButton];
  v16 = [v13 constraintWithItem:roundedContainerView attribute:4 relatedBy:0 toItem:closeButton3 attribute:3 multiplier:1.0 constant:v12];

  [(CKEffectPickerLargeTextView *)self addConstraint:v16];
  v17 = MEMORY[0x1E696ACD8];
  sendMomentButton = [(CKEffectPickerView *)self sendMomentButton];
  closeButton4 = [(CKEffectPickerView *)self closeButton];
  v20 = [v17 constraintWithItem:sendMomentButton attribute:4 relatedBy:0 toItem:closeButton4 attribute:3 multiplier:1.0 constant:-36.0];

  [(CKEffectPickerLargeTextView *)self addConstraint:v20];
}

- (void)addEffect:(id)effect withDescriptiveText:(id)text withIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = CKEffectPickerLargeTextView;
  effectCopy = effect;
  [(CKEffectPickerView *)&v11 addEffect:effectCopy withDescriptiveText:text withIdentifier:identifier];
  v9 = [(CKEffectPickerView *)self effectDescriptiveLabels:v11.receiver];
  lastObject = [v9 lastObject];

  [lastObject setText:effectCopy];
}

- (double)marginBetweenPickerDotButtons
{
  effectLabelFont = [(CKEffectPickerView *)self effectLabelFont];
  [effectLabelFont lineHeight];
  v4 = v3 * 1.75;

  return v4;
}

- (CGRect)_updateBalloonViewOrigin:(CGRect)origin forButtonFrame:(CGRect)frame
{
  height = frame.size.height;
  y = frame.origin.y;
  v6 = origin.size.height;
  width = origin.size.width;
  v9 = [(CKEffectPickerView *)self closeButton:origin.origin.x];
  [v9 frame];
  v11 = v10;

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  v14 = width + 20.0;
  if (isEntryViewRefreshEnabled)
  {
    stylingMetrics = [(CKEffectPickerLargeTextView *)self stylingMetrics];
    [stylingMetrics roundTrackPadding];
    v14 = v14 + v16;
  }

  typeSegmentedControl = [(CKEffectPickerView *)self typeSegmentedControl];
  selectedSegmentIndex = [typeSegmentedControl selectedSegmentIndex];

  if (selectedSegmentIndex)
  {
    sendMomentButton = [(CKEffectPickerView *)self sendMomentButton];
    [sendMomentButton frame];
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
    selectedIndex = [(CKEffectPickerView *)self selectedIndex];
    effectLabels = [(CKEffectPickerView *)self effectLabels];
    v26 = [effectLabels count] - 1;

    if (selectedIndex != v26)
    {
      effectDescriptiveLabels = [(CKEffectPickerView *)self effectDescriptiveLabels];
      v28 = [effectDescriptiveLabels objectAtIndex:{-[CKEffectPickerView selectedIndex](self, "selectedIndex")}];

      [v28 bounds];
      [v28 frame];
      UIRoundToViewScale();
      y = v29;
    }
  }

  else
  {
    closeButton = [(CKEffectPickerView *)self closeButton];
    [closeButton frame];
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

- (void)_touchUpInsideDotButton:(id)button
{
  v40 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  if ([(CKEffectPickerView *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    closeButton = [(CKEffectPickerView *)self closeButton];
    [closeButton frame];
    v7 = v6 + -28.0;
    roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
    [roundedContainerView frame];
    v10 = v7 - v9;
  }

  else
  {
    closeButton = [(CKEffectPickerView *)self roundedContainerView];
    [closeButton bounds];
    v10 = v11;
  }

  [(CKEffectPickerView *)self resetDotConstraintsToDefault];
  effectIdentifiers = [(CKEffectPickerView *)self effectIdentifiers];
  effectDotButtons = [(CKEffectPickerView *)self effectDotButtons];
  v14 = [effectIdentifiers objectAtIndex:{objc_msgSend(effectDotButtons, "indexOfObject:", buttonCopy)}];

  effectDotConstraintsThatChange = [(CKEffectPickerView *)self effectDotConstraintsThatChange];
  v16 = [effectDotConstraintsThatChange objectForKey:v14];

  effectLabels = [(CKEffectPickerView *)self effectLabels];
  v18 = [effectLabels count];

  if ([v16 count] == 1)
  {
    [(CKEffectPickerLargeTextView *)self marginBetweenPickerDotButtons];
    v20 = v19 + v19 + (v18 + 1) * 9.0;
    stylingMetrics = [(CKEffectPickerLargeTextView *)self stylingMetrics];
    [stylingMetrics roundTrackPadding];
    v23 = v10 - round(v20 + v22 * 2.0);
  }

  else
  {
    [(CKEffectPickerLargeTextView *)self marginBetweenPickerDotButtons];
    v25 = v24 + v18 * 9.0;
    stylingMetrics = [(CKEffectPickerLargeTextView *)self stylingMetrics];
    [stylingMetrics roundTrackPadding];
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
  [(CKEffectPickerView *)&v33 _touchUpInsideDotButton:buttonCopy];
}

- (double)offsetYForLabelAtIndex:(int64_t)index withInitialY:(double)y
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    effectDescriptiveLabels = [(CKEffectPickerView *)self effectDescriptiveLabels];
    v6 = [effectDescriptiveLabels objectAtIndex:index];

    if (!index)
    {
      closeButton = [(CKEffectPickerView *)self closeButton];
      [closeButton frame];
      balloonView = [(CKEffectPickerView *)self balloonView];
      [balloonView frame];
      [v6 bounds];

      goto LABEL_8;
    }
  }

  effectLabels = [(CKEffectPickerView *)self effectLabels];
  v9 = [effectLabels count] - 1;

  if (v9 == index)
  {
    roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
    effectSendButtons = [(CKEffectPickerView *)self effectSendButtons];
    v12 = [effectSendButtons objectAtIndex:index];
    [v12 frame];
    [roundedContainerView convertRect:self toView:?];
  }

  else
  {
    balloonView2 = [(CKEffectPickerView *)self balloonView];
    [balloonView2 frame];
    [v6 bounds];
  }

  [v6 bounds];
LABEL_8:
  UIRoundToViewScale();
  v15 = v14;

  return v15;
}

- (void)effectTypeDidChange:(id)change
{
  changeCopy = change;
  if ([(CKEffectPickerLargeTextView *)self finishedInitializing])
  {
    if ([changeCopy selectedSegmentIndex])
    {
      if ([changeCopy selectedSegmentIndex] != 1)
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

    closeButtonBottomConstraint = [(CKEffectPickerView *)self closeButtonBottomConstraint];
    [closeButtonBottomConstraint setConstant:v5];

    goto LABEL_7;
  }

LABEL_8:
  v7.receiver = self;
  v7.super_class = CKEffectPickerLargeTextView;
  [(CKEffectPickerView *)&v7 effectTypeDidChange:changeCopy];
}

@end