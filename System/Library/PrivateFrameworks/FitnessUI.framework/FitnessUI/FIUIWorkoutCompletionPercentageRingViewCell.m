@interface FIUIWorkoutCompletionPercentageRingViewCell
+ (double)rowHeightForWorkout:(id)a3 width:(double)a4;
- (FIUIWorkoutCompletionPercentageRingViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 ringsViewRenderer:(id)a5;
- (void)animateRingWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)setWorkout:(id)a3 fillRing:(BOOL)a4;
@end

@implementation FIUIWorkoutCompletionPercentageRingViewCell

- (void)layoutSubviews
{
  v96.receiver = self;
  v96.super_class = FIUIWorkoutCompletionPercentageRingViewCell;
  [(FIUIWorkoutCompletionPercentageRingViewCell *)&v96 layoutSubviews];
  v3 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self contentView];
  [v3 bounds];
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
  v21 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [v21 setFrame:{v17, v18, v20, v19}];

  v22 = *&v92;
  v23 = v93;
  v24 = v94;
  v25 = v95;
  v26 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self gradientBackgroundImageView];
  [v26 setFrame:{v22, v23, v24, v25}];

  v27 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
  [v27 sizeToFit];

  v28 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [v28 center];
  v30 = v29;
  v32 = v31;
  v33 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
  [v33 setCenter:{v30, v32}];

  if (FIUILocaleIsRightToLeft())
  {
    CGAffineTransformMakeScale(&v91, -1.0, 1.0);
    v34 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
    v35 = v34;
    v88 = *&v91.a;
    v89 = *&v91.c;
    v36 = *&v91.tx;
  }

  else
  {
    v34 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
    v35 = v34;
    v37 = *(MEMORY[0x1E695EFD0] + 16);
    v88 = *MEMORY[0x1E695EFD0];
    v89 = v37;
    v36 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v90 = v36;
  [v34 setTransform:&v88];

  v38 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [v38 sizeThatFits:{v9 + 5.5 * -2.0, 1.79769313e308}];
  v40 = v39;

  v41 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [v41 setFrame:{5.5, 0.0, v9 + 5.5 * -2.0, v40}];

  v42 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [v42 frame];
  MaxY = CGRectGetMaxY(v97);
  v44 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  v45 = [v44 font];
  [objc_opt_class() _ringToTypeSpacing];
  [v45 _scaledValueForValue:?];
  v47 = MaxY + v46;
  v48 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [v48 _setFirstLineBaselineFrameOriginY:v47];

  v49 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [v49 frame];
  v50 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self contentView];
  v51 = FIUIRoundFrameToViewScale(v50);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [v58 setFrame:{v51, v53, v55, v57}];

  v59 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [v59 sizeThatFits:{v9 + 5.5 * -2.0, 1.79769313e308}];
  v61 = v60;

  v62 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [v62 setFrame:{5.5, 0.0, v9 + 5.5 * -2.0, v61}];

  v63 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [v63 _lastLineBaselineFrameOriginY];
  v65 = v64;
  [objc_opt_class() _typeToSecondaryLabelSpacing];
  v67 = v65 + v66;
  v68 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [v68 _setFirstLineBaselineFrameOriginY:v67];

  v69 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [v69 frame];
  v70 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self contentView];
  v71 = FIUIRoundFrameToViewScale(v70);
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
  [v78 setFrame:{v71, v73, v75, v77}];

  v79 = v9 + 5.5 * -2.0;
  v80 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self separatorView];
  [v80 sizeThatFits:{v79, 1.79769313e308}];
  v82 = v81;

  v98.origin.y = v86;
  v98.origin.x = v87;
  v98.size.width = v9;
  v98.size.height = rect;
  v83 = CGRectGetMaxY(v98) - v82;
  v84 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self separatorView];
  [v84 setFrame:{5.5, v83, v79, v82}];
}

+ (double)rowHeightForWorkout:(id)a3 width:(double)a4
{
  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = a3;
  v9 = [v6 defaultFontForTextStyle:v7];
  [a1 _ringTopPadding];
  v11 = v10;
  [a1 _ringDiameter];
  v13 = v11 + v12;
  v14 = _TypeLabel();
  v15 = [v8 fiui_activityType];

  v16 = [v15 localizedName];
  [v14 setText:v16];

  [v14 sizeThatFits:{a4 + 5.5 * -2.0, 1.79769313e308}];
  [v14 frame];
  [v14 setFrame:?];
  v17 = [v14 font];
  [a1 _ringToTypeSpacing];
  [v17 _scaledValueForValue:?];
  [v14 _setFirstLineBaselineFrameOriginY:v13 + v18];

  [v14 _lastLineBaselineFrameOriginY];
  v20 = v19;
  [a1 _typeToSecondaryLabelSpacing];
  v22 = v21;
  [a1 _secondaryLabelToSeparatorSpacing];
  [v9 _scaledValueForValue:?];
  v24 = v23;
  if (FIUIOnePixel_onceToken_0 != -1)
  {
    +[FIUIWorkoutCompletionPercentageRingViewCell rowHeightForWorkout:width:];
  }

  v25 = v20 + v22 + v24 + *&FIUIOnePixel_onePixel_0;

  return v25;
}

- (FIUIWorkoutCompletionPercentageRingViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 ringsViewRenderer:(id)a5
{
  v8 = a5;
  v42.receiver = self;
  v42.super_class = FIUIWorkoutCompletionPercentageRingViewCell;
  v9 = [(FIUIWorkoutCompletionPercentageRingViewCell *)&v42 initWithStyle:a3 reuseIdentifier:a4];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E6989B38]) initWithNumberOfRings:1];
    [objc_opt_class() _ringDiameter];
    *&v11 = v11;
    [v10 setRingDiameter:v11];
    HIDWORD(v12) = 1075052544;
    *&v12 = 5.0;
    [v10 setRingThickness:v12];
    v13 = [objc_alloc(MEMORY[0x1E6989B48]) initWithRingGroupController:v10 renderer:v8];
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
    v27 = [MEMORY[0x1E69DC888] clearColor];
    [(ARUIRingsView *)v26 setBackgroundColor:v27];

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

    v35 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [v35 addSubview:v9->_ringsView];

    v36 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [v36 addSubview:v9->_gradientBackgroundImageView];

    v37 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [v37 addSubview:v9->_iconImageView];

    v38 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [v38 addSubview:v9->_typeLabel];

    v39 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [v39 addSubview:v9->_secondaryLabel];

    v40 = [(FIUIWorkoutCompletionPercentageRingViewCell *)v9 contentView];
    [v40 addSubview:v9->_separatorView];
  }

  return v9;
}

- (void)setWorkout:(id)a3 fillRing:(BOOL)a4
{
  v4 = a4;
  v47 = a3;
  objc_storeStrong(&self->_workout, a3);
  v7 = [(HKWorkout *)self->_workout _goalType];
  v8 = v7 != 0;
  v9 = v7 == 0;
  v10 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [v10 setHidden:v9];

  v11 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self gradientBackgroundImageView];
  [v11 setHidden:v8];

  v12 = [MEMORY[0x1E6989B18] metricColorsForGoalTypeIdentifier:{-[HKWorkout _goalType](self->_workout, "_goalType")}];
  v13 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  v14 = [v13 ringGroupController];
  v15 = [v12 gradientDarkColor];
  v16 = [v12 gradientLightColor];
  [v14 setTopColor:v15 bottomColor:v16 ofRingAtIndex:0];

  if (v4)
  {
    v17 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
    [v17 fiui_completionFactor];
    [(FIUIWorkoutCompletionPercentageRingViewCell *)self setCurrentCompletionFactor:?];

    v18 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
    v19 = [v18 ringGroupController];
    v20 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
    [v20 fiui_completionFactor];
    [v19 setPercentage:0 ofRingAtIndex:0 animated:?];
  }

  v21 = [(HKWorkout *)self->_workout fiui_connectedGymBrandName];
  if (v21)
  {
    v22 = [MEMORY[0x1E69DC888] grayColor];
    v23 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
    [v23 setTextColor:v22];

    v24 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
    [v24 setText:v21];
  }

  else
  {
    v25 = [v12 nonGradientTextColor];
    v26 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
    [v26 setTextColor:v25];

    if ([v47 _goalType])
    {
      v27 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
      [v27 fiui_completionFactor];
      v29 = v28;

      v30 = MEMORY[0x1E696AEC0];
      v24 = FIUIBundle();
      v31 = [v24 localizedStringForKey:@"%@_PERCENTAGE_COMPLETE_FORMAT" value:&stru_1F5F88F90 table:@"Localizable"];
      v32 = [MEMORY[0x1E696AD98] numberWithDouble:round(v29 * 100.0) / 100.0];
      v33 = [FIUIFormattingManager percentStringWithNumber:v32];
      v34 = [v30 stringWithFormat:v31, v33];
      v35 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
      [v35 setText:v34];
    }

    else
    {
      v24 = FIUIBundle();
      v31 = [v24 localizedStringForKey:@"WORKOUT_OPEN_GOAL" value:&stru_1F5F88F90 table:@"Localizable"];
      v36 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self secondaryLabel];
      [v36 setText:v31];
    }
  }

  v37 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
  v38 = [v37 fiui_activityType];
  v39 = [v38 localizedName];
  v40 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self typeLabel];
  [v40 setText:v39];

  v41 = [FIUIWorkoutActivityType activityTypeWithWorkout:self->_workout];
  v42 = FIUIStaticWorkoutIconImage(v41, 4);
  v43 = [v42 imageWithRenderingMode:2];
  v44 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
  [v44 setImage:v43];

  v45 = [v12 nonGradientTextColor];
  v46 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self iconImageView];
  [v46 setTintColor:v45];

  [(FIUIWorkoutCompletionPercentageRingViewCell *)self setNeedsLayout];
}

- (void)animateRingWithCompletion:(id)a3
{
  v4 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  [v4 setPaused:0];

  v7 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self ringsView];
  v5 = [v7 ringGroupController];
  v6 = [(FIUIWorkoutCompletionPercentageRingViewCell *)self workout];
  [v6 fiui_completionFactor];
  [v5 setPercentage:0 ofRingAtIndex:0 animated:?];
}

@end