@interface CKEffectPickerStandardView
- (CGRect)_updateBalloonViewOrigin:(CGRect)origin forButtonFrame:(CGRect)frame;
- (double)marginBetweenPickerDotButtons;
- (void)activateTextSizeDependentConstraintsForSendButtonFrame:(CGRect)frame;
- (void)setCloseButtonYPosition:(double)position;
@end

@implementation CKEffectPickerStandardView

- (void)activateTextSizeDependentConstraintsForSendButtonFrame:(CGRect)frame
{
  y = frame.origin.y;
  v15.receiver = self;
  v15.super_class = CKEffectPickerStandardView;
  [(CKEffectPickerView *)&v15 activateTextSizeDependentConstraintsForSendButtonFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = MEMORY[0x1E696ACD8];
  closeButton = [(CKEffectPickerView *)self closeButton];
  v7 = [v5 constraintWithItem:closeButton attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:y];

  [(CKEffectPickerStandardView *)self addConstraint:v7];
  [(CKEffectPickerView *)self setCloseButtonBottomConstraint:v7];
  v8 = MEMORY[0x1E696ACD8];
  roundedContainerView = [(CKEffectPickerView *)self roundedContainerView];
  closeButton2 = [(CKEffectPickerView *)self closeButton];
  v11 = [v8 constraintWithItem:roundedContainerView attribute:4 relatedBy:0 toItem:closeButton2 attribute:3 multiplier:1.0 constant:-25.0];

  [(CKEffectPickerStandardView *)self addConstraint:v11];
  v12 = MEMORY[0x1E696ACD8];
  sendMomentButton = [(CKEffectPickerView *)self sendMomentButton];
  v14 = [v12 constraintWithItem:sendMomentButton attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:y + -60.0];

  [(CKEffectPickerStandardView *)self addConstraint:v14];
}

- (void)setCloseButtonYPosition:(double)position
{
  closeButtonBottomConstraint = [(CKEffectPickerView *)self closeButtonBottomConstraint];
  [closeButtonBottomConstraint setConstant:position];
}

- (double)marginBetweenPickerDotButtons
{
  shouldUseLargeScreenDimension = [objc_opt_class() shouldUseLargeScreenDimension];
  result = 36.0;
  if (shouldUseLargeScreenDimension)
  {
    return 48.0;
  }

  return result;
}

- (CGRect)_updateBalloonViewOrigin:(CGRect)origin forButtonFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  height = origin.size.height;
  width = origin.size.width;
  v27.receiver = self;
  v27.super_class = CKEffectPickerStandardView;
  [(CKEffectPickerView *)&v27 _updateBalloonViewOrigin:origin.origin.x forButtonFrame:origin.origin.y, origin.size.width, origin.size.height, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  v11 = width + 20.0;
  if (isEntryViewRefreshEnabled)
  {
    stylingMetrics = [(CKEffectPickerStandardView *)self stylingMetrics];
    [stylingMetrics roundTrackPadding];
    v11 = v11 + v13;
  }

  v14 = x - v11;
  closeButton = [(CKEffectPickerView *)self closeButton];
  [closeButton frame];
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
    effectLabelFont = [(CKEffectPickerView *)self effectLabelFont];
    [effectLabelFont _scaledValueForValue:1 useLanguageAwareScaling:20.0];
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