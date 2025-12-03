@interface FIUIWorkoutCompletionPercentageRingViewCell
+ (double)rowHeightForWorkout:(id)workout width:(double)width;
- (FIUIWorkoutCompletionPercentageRingViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier ringsViewRenderer:(id)renderer;
- (void)animateRingWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setWorkout:(id)workout fillRing:(BOOL)ring;
@end

@implementation FIUIWorkoutCompletionPercentageRingViewCell

- (void)layoutSubviews
{
  v96.receiver = self;
  v96.super_class = FIUIWorkoutCompletionPercentageRingViewCell;
  [(FIUIWorkoutCompletionPercentageRingViewCell *)&v96 layoutSubviews];
  contentView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [objc_opt_class() _ringTopPadding];
  v13 = v12;
  [objc_opt_class() _ringDiameter];
  v15 = v14;
  [objc_opt_class() _ringDiameter];
  *&v92 = 5.5;
  v93 = v13;
  v94 = v15;
  v95 = v16;
  v86 = v7;
  v87 = v5;
  rect = v11;
  FIUIFlipFrameRightToLeftIfNeeded(&v92, v5, v7, v9, v11);
  v17 = *&v92;
  v18 = v93;
  v20 = v94;
  v19 = v95;
  ringsView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [ringsView setFrame:{v17, v18, v20, v19}];

  v22 = *&v92;
  v23 = v93;
  v24 = v94;
  v25 = v95;
  gradientBackgroundImageView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self gradientBackgroundImageView];
  [gradientBackgroundImageView setFrame:{v22, v23, v24, v25}];

  iconImageView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
  [iconImageView sizeToFit];

  ringsView2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [ringsView2 center];
  v30 = v29;
  v32 = v31;
  iconImageView2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
  [iconImageView2 setCenter:{v30, v32}];

  if (FIUILocaleIsRightToLeft())
  {
    CGAffineTransformMakeScale(&v91, -1.0, 1.0);
    iconImageView3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
    v35 = iconImageView3;
    v88 = *&v91.a;
    v89 = *&v91.c;
    v36 = *&v91.tx;
  }

  else
  {
    iconImageView3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
    v35 = iconImageView3;
    v37 = *(MEMORY[0x1E695EFD0] + 16);
    v88 = *MEMORY[0x1E695EFD0];
    v89 = v37;
    v36 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v90 = v36;
  [iconImageView3 setTransform:&v88];

  typeLabel = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [typeLabel sizeThatFits:{v9 + 5.5 * -2.0, 1.79769313e308}];
  v40 = v39;

  typeLabel2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [typeLabel2 setFrame:{5.5, 0.0, v9 + 5.5 * -2.0, v40}];

  ringsView3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [ringsView3 frame];
  MaxY = CGRectGetMaxY(v97);
  typeLabel3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  font = [typeLabel3 font];
  [objc_opt_class() _ringToTypeSpacing];
  [font _scaledValueForValue:?];
  v47 = MaxY + v46;
  typeLabel4 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [typeLabel4 _setFirstLineBaselineFrameOriginY:v47];

  typeLabel5 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [typeLabel5 frame];
  contentView2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self contentView];
  v51 = FIUIRoundFrameToViewScale(contentView2);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  typeLabel6 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [typeLabel6 setFrame:{v51, v53, v55, v57}];

  secondaryLabel = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [secondaryLabel sizeThatFits:{v9 + 5.5 * -2.0, 1.79769313e308}];
  v61 = v60;

  secondaryLabel2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [secondaryLabel2 setFrame:{5.5, 0.0, v9 + 5.5 * -2.0, v61}];

  typeLabel7 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [typeLabel7 _lastLineBaselineFrameOriginY];
  v65 = v64;
  [objc_opt_class() _typeToSecondaryLabelSpacing];
  v67 = v65 + v66;
  secondaryLabel3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [secondaryLabel3 _setFirstLineBaselineFrameOriginY:v67];

  secondaryLabel4 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [secondaryLabel4 frame];
  contentView3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self contentView];
  v71 = FIUIRoundFrameToViewScale(contentView3);
  v73 = v72;
  v75 = v74;
  v77 = v76;
  secondaryLabel5 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [secondaryLabel5 setFrame:{v71, v73, v75, v77}];

  v79 = v9 + 5.5 * -2.0;
  separatorView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self separatorView];
  [separatorView sizeThatFits:{v79, 1.79769313e308}];
  v82 = v81;

  v98.origin.y = v86;
  v98.origin.x = v87;
  v98.size.width = v9;
  v98.size.height = rect;
  v83 = CGRectGetMaxY(v98) - v82;
  separatorView2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self separatorView];
  [separatorView2 setFrame:{5.5, v83, v79, v82}];
}

+ (double)rowHeightForWorkout:(id)workout width:(double)width
{
  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDCF8];
  workoutCopy = workout;
  v9 = [v6 defaultFontForTextStyle:v7];
  [self _ringTopPadding];
  v11 = v10;
  [self _ringDiameter];
  v13 = v11 + v12;
  v14 = _TypeLabel();
  fiui_activityType = [workoutCopy fiui_activityType];

  localizedName = [fiui_activityType localizedName];
  [v14 setText:localizedName];

  [v14 sizeThatFits:{width + 5.5 * -2.0, 1.79769313e308}];
  [v14 frame];
  [v14 setFrame:?];
  font = [v14 font];
  [self _ringToTypeSpacing];
  [font _scaledValueForValue:?];
  [v14 _setFirstLineBaselineFrameOriginY:v13 + v18];

  [v14 _lastLineBaselineFrameOriginY];
  v20 = v19;
  [self _typeToSecondaryLabelSpacing];
  v22 = v21;
  [self _secondaryLabelToSeparatorSpacing];
  [v9 _scaledValueForValue:?];
  v24 = v23;
  if (FIUIOnePixel_onceToken_0 != -1)
  {
    +[FIUIWorkoutCompletionPercentageRingViewCell rowHeightForWorkout:width:];
  }

  v25 = v20 + v22 + v24 + *&FIUIOnePixel_onePixel_0;

  return v25;
}

- (FIUIWorkoutCompletionPercentageRingViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier ringsViewRenderer:(id)renderer
{
  rendererCopy = renderer;
  v42.receiver = self;
  v42.super_class = FIUIWorkoutCompletionPercentageRingViewCell;
  v9 = [(FIUIWorkoutCompletionPercentageRingViewCell *)&v42 initWithStyle:style reuseIdentifier:identifier];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E6989B38]) initWithNumberOfRings:1];
    [objc_opt_class() _ringDiameter];
    *&v11 = v11;
    [v10 setRingDiameter:v11];
    HIDWORD(v12) = 1075052544;
    *&v12 = 5.0;
    [v10 setRingThickness:v12];
    v13 = [objc_alloc(MEMORY[0x1E6989B48]) initWithRingGroupController:v10 renderer:rendererCopy];
    ringsView = v9->_ringsView;
    v9->_ringsView = v13;

    [(ARUIRingsView *)v9->_ringsView setPreferredFramesPerSecond:30];
    [(ARUIRingsView *)v9->_ringsView setPaused:1];
    [(ARUIRingsView *)v9->_ringsView setEmptyRingAlpha:0.2];
    [objc_opt_class() _ringDiameter];
    v16 = FIUICircularWorkoutGradientImage(v15);
    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v16];
    gradientBackgroundImageView = v9->_gradientBackgroundImageView;
    v9->_gradientBackgroundImageView = v17;

    v19 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v22 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
    v24 = [v19 initWithFrame:{*MEMORY[0x1E695F058], v21, v22, v23}];
    iconImageView = v9->_iconImageView;
    v9->_iconImageView = v24;

    v26 = v9->_ringsView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(ARUIRingsView *)v26 setBackgroundColor:clearColor];

    [(ARUIRingsView *)v9->_ringsView setOpaque:0];
    [(ARUIRingsView *)v9->_ringsView setMaskView:0];
    v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v20, v21, v22, v23}];
    secondaryLabel = v9->_secondaryLabel;
    v9->_secondaryLabel = v28;

    v30 = _LabelFont();
    [(UILabel *)v9->_secondaryLabel setFont:v30];

    v31 = _TypeLabel();
    typeLabel = v9->_typeLabel;
    v9->_typeLabel = v31;

    v33 = [[FIUIDividerView alloc] initWithFrame:v20, v21, v22, v23];
    separatorView = v9->_separatorView;
    v9->_separatorView = v33;

    contentView = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [contentView addSubview:v9->_ringsView];

    contentView2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [contentView2 addSubview:v9->_gradientBackgroundImageView];

    contentView3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [contentView3 addSubview:v9->_iconImageView];

    contentView4 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [contentView4 addSubview:v9->_typeLabel];

    contentView5 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [contentView5 addSubview:v9->_secondaryLabel];

    contentView6 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [contentView6 addSubview:v9->_separatorView];
  }

  return v9;
}

- (void)setWorkout:(id)workout fillRing:(BOOL)ring
{
  ringCopy = ring;
  workoutCopy = workout;
  objc_storeStrong(&self->_workout, workout);
  _goalType = [(HKWorkout *)self->_workout _goalType];
  v8 = _goalType != 0;
  v9 = _goalType == 0;
  ringsView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [ringsView setHidden:v9];

  gradientBackgroundImageView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self gradientBackgroundImageView];
  [gradientBackgroundImageView setHidden:v8];

  v12 = [MEMORY[0x1E6989B18] metricColorsForGoalTypeIdentifier:{-[HKWorkout _goalType](self->_workout, "_goalType")}];
  ringsView2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  ringGroupController = [ringsView2 ringGroupController];
  gradientDarkColor = [v12 gradientDarkColor];
  gradientLightColor = [v12 gradientLightColor];
  [ringGroupController setTopColor:gradientDarkColor bottomColor:gradientLightColor ofRingAtIndex:0];

  if (ringCopy)
  {
    workout = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
    [workout fiui_completionFactor];
    [(FIUIWorkoutCompletionPercentageRingViewCell *)self setCurrentCompletionFactor:?];

    ringsView3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
    ringGroupController2 = [ringsView3 ringGroupController];
    workout2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
    [workout2 fiui_completionFactor];
    [ringGroupController2 setPercentage:0 ofRingAtIndex:0 animated:?];
  }

  fiui_connectedGymBrandName = [(HKWorkout *)self->_workout fiui_connectedGymBrandName];
  if (fiui_connectedGymBrandName)
  {
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    secondaryLabel = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
    [secondaryLabel setTextColor:grayColor];

    secondaryLabel2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
    [secondaryLabel2 setText:fiui_connectedGymBrandName];
  }

  else
  {
    nonGradientTextColor = [v12 nonGradientTextColor];
    secondaryLabel3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
    [secondaryLabel3 setTextColor:nonGradientTextColor];

    if ([workoutCopy _goalType])
    {
      workout3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
      [workout3 fiui_completionFactor];
      v29 = v28;

      v30 = MEMORY[0x1E696AEC0];
      secondaryLabel2 = FIUIBundle();
      v31 = [secondaryLabel2 localizedStringForKey:@"%@_PERCENTAGE_COMPLETE_FORMAT" value:&stru_1F5F88F90 table:@"Localizable"];
      v32 = [MEMORY[0x1E696AD98] numberWithDouble:round(v29 * 100.0) / 100.0];
      v33 = [FIUIFormattingManager percentStringWithNumber:v32];
      v34 = [v30 stringWithFormat:v31, v33];
      secondaryLabel4 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
      [secondaryLabel4 setText:v34];
    }

    else
    {
      secondaryLabel2 = FIUIBundle();
      v31 = [secondaryLabel2 localizedStringForKey:@"WORKOUT_OPEN_GOAL" value:&stru_1F5F88F90 table:@"Localizable"];
      secondaryLabel5 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
      [secondaryLabel5 setText:v31];
    }
  }

  workout4 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
  fiui_activityType = [workout4 fiui_activityType];
  localizedName = [fiui_activityType localizedName];
  typeLabel = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [typeLabel setText:localizedName];

  v41 = [FIUIWorkoutActivityType activityTypeWithWorkout:self->_workout];
  v42 = FIUIStaticWorkoutIconImage(v41, 4);
  v43 = [v42 imageWithRenderingMode:2];
  iconImageView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
  [iconImageView setImage:v43];

  nonGradientTextColor2 = [v12 nonGradientTextColor];
  iconImageView2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
  [iconImageView2 setTintColor:nonGradientTextColor2];

  [(FIUIWorkoutCompletionPercentageRingViewCell *)self setNeedsLayout];
}

- (void)animateRingWithCompletion:(id)completion
{
  ringsView = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [ringsView setPaused:0];

  ringsView2 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  ringGroupController = [ringsView2 ringGroupController];
  workout = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
  [workout fiui_completionFactor];
  [ringGroupController setPercentage:0 ofRingAtIndex:0 animated:?];
}

@end