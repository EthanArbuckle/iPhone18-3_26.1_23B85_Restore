@interface CKEffectPickerStandardView
- (CGRect)_updateBalloonViewOrigin:(CGRect)a3 forButtonFrame:(CGRect)a4;
- (double)marginBetweenPickerDotButtons;
- (void)activateTextSizeDependentConstraintsForSendButtonFrame:(CGRect)a3;
- (void)setCloseButtonYPosition:(double)a3;
@end

@implementation CKEffectPickerStandardView

- (void)activateTextSizeDependentConstraintsForSendButtonFrame:(CGRect)a3
{
  y = a3.origin.y;
  v15.receiver = self;
  v15.super_class = CKEffectPickerStandardView;
  [(CKEffectPickerView *)&v15 activateTextSizeDependentConstraintsForSendButtonFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = MEMORY[0x1E696ACD8];
  v6 = [(CKEffectPickerView *)self closeButton];
  v7 = [v5 constraintWithItem:v6 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:y];

  [(CKEffectPickerStandardView *)self addConstraint:v7];
  [(CKEffectPickerView *)self setCloseButtonBottomConstraint:v7];
  v8 = MEMORY[0x1E696ACD8];
  v9 = [(CKEffectPickerView *)self roundedContainerView];
  v10 = [(CKEffectPickerView *)self closeButton];
  v11 = [v8 constraintWithItem:v9 attribute:4 relatedBy:0 toItem:v10 attribute:3 multiplier:1.0 constant:-25.0];

  [(CKEffectPickerStandardView *)self addConstraint:v11];
  v12 = MEMORY[0x1E696ACD8];
  v13 = [(CKEffectPickerView *)self sendMomentButton];
  v14 = [v12 constraintWithItem:v13 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:y + -60.0];

  [(CKEffectPickerStandardView *)self addConstraint:v14];
}

- (void)setCloseButtonYPosition:(double)a3
{
  v4 = [(CKEffectPickerView *)self closeButtonBottomConstraint];
  [v4 setConstant:a3];
}

- (double)marginBetweenPickerDotButtons
{
  v2 = [objc_opt_class() shouldUseLargeScreenDimension];
  result = 36.0;
  if (v2)
  {
    return 48.0;
  }

  return result;
}

- (CGRect)_updateBalloonViewOrigin:(CGRect)a3 forButtonFrame:(CGRect)a4
{
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  width = a3.size.width;
  v27.receiver = self;
  v27.super_class = CKEffectPickerStandardView;
  [(CKEffectPickerView *)&v27 _updateBalloonViewOrigin:a3.origin.x forButtonFrame:a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v10 = [v9 isEntryViewRefreshEnabled];

  v11 = width + 20.0;
  if (v10)
  {
    v12 = [(CKEffectPickerStandardView *)self stylingMetrics];
    [v12 roundTrackPadding];
    v11 = v11 + v13;
  }

  v14 = x - v11;
  v15 = [(CKEffectPickerView *)self closeButton];
  [v15 frame];
  v17 = v16;
  v28.origin.x = v14;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxY = CGRectGetMaxY(v28);

  if (v17 >= MaxY || height < 40.0)
  {
    v23 = y + -13.0;
  }

  else
  {
    v20 = [(CKEffectPickerView *)self effectLabelFont];
    [v20 _scaledValueForValue:1 useLanguageAwareScaling:20.0];
    v22 = v21;

    v23 = y - fmin(20.0 - (v22 + -20.0), 20.0);
  }

  v24 = v14;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v23;
  result.origin.x = v24;
  return result;
}

@end