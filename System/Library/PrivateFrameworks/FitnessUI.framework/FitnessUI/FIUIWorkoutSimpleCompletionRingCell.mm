@interface FIUIWorkoutSimpleCompletionRingCell
+ (double)preferredHeightForActivityType:(id)a3 fittingWidth:(double)a4 plural:(BOOL)a5;
+ (double)preferredHeightForLocalizedName:(id)a3 fittingWidth:(double)a4;
+ (double)preferredHeightForWorkout:(id)a3 fittingWidth:(double)a4;
- (FIUIWorkoutSimpleCompletionRingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configurePluralViewWithWorkoutActivityType:(id)a3;
- (void)configureWithWorkout:(id)a3;
- (void)layoutSubviews;
@end

@implementation FIUIWorkoutSimpleCompletionRingCell

+ (double)preferredHeightForWorkout:(id)a3 fittingWidth:(double)a4
{
  v5 = [a3 fiui_activityType];
  [FIUIWorkoutSimpleCompletionRingCell preferredHeightForActivityType:v5 fittingWidth:0 plural:a4];
  v7 = v6;

  return v7;
}

+ (double)preferredHeightForActivityType:(id)a3 fittingWidth:(double)a4 plural:(BOOL)a5
{
  if (a5)
  {
    v6 = [a3 workoutActivityType];
    v7 = [v6 localizedNamePlural];
  }

  else
  {
    v7 = [a3 localizedName];
  }

  [FIUIWorkoutSimpleCompletionRingCell preferredHeightForLocalizedName:v7 fittingWidth:a4];
  v9 = v8;

  return v9;
}

+ (double)preferredHeightForLocalizedName:(id)a3 fittingWidth:(double)a4
{
  v5 = preferredHeightForLocalizedName_fittingWidth__onceToken;
  v6 = a3;
  if (v5 != -1)
  {
    +[FIUIWorkoutSimpleCompletionRingCell preferredHeightForLocalizedName:fittingWidth:];
  }

  [preferredHeightForLocalizedName_fittingWidth__sizingLabel setText:v6];

  [preferredHeightForLocalizedName_fittingWidth__sizingLabel sizeThatFits:{a4 + 5.5 * -2.0, 1.79769313e308}];
  v8 = v7;
  [preferredHeightForLocalizedName_fittingWidth__sizingLabel _firstLineBaselineOffsetFromBoundsTop];
  return v8 - v9 + 5.5 + 40.0 + 20.0;
}

void __84__FIUIWorkoutSimpleCompletionRingCell_preferredHeightForLocalizedName_fittingWidth___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69DCC10]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v2 = preferredHeightForLocalizedName_fittingWidth__sizingLabel;
  preferredHeightForLocalizedName_fittingWidth__sizingLabel = v1;

  [preferredHeightForLocalizedName_fittingWidth__sizingLabel setNumberOfLines:0];
  v3 = _Font();
  [preferredHeightForLocalizedName_fittingWidth__sizingLabel setFont:v3];
}

- (FIUIWorkoutSimpleCompletionRingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v25.receiver = self;
  v25.super_class = FIUIWorkoutSimpleCompletionRingCell;
  v4 = [(FIUIWorkoutSimpleCompletionRingCell *)&v25 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E6989B38]) initWithNumberOfRings:1];
    HIDWORD(v6) = 1078198272;
    *&v6 = 40.0;
    [v5 setRingDiameter:v6];
    HIDWORD(v7) = 1075052544;
    *&v7 = 5.0;
    [v5 setRingThickness:v7];
    v8 = [objc_alloc(MEMORY[0x1E6989B48]) initWithRingGroupController:v5];
    ringsView = v4->_ringsView;
    v4->_ringsView = v8;

    v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
    ringImageView = v4->_ringImageView;
    v4->_ringImageView = v15;

    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v11, v12, v13, v14}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v17;

    v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    typeLabel = v4->_typeLabel;
    v4->_typeLabel = v19;

    [(UILabel *)v4->_typeLabel setNumberOfLines:0];
    v21 = _Font();
    [(UILabel *)v4->_typeLabel setFont:v21];

    v22 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_typeLabel setTextColor:v22];

    v23 = [(FIUIWorkoutSimpleCompletionRingCell *)v4 contentView];
    [v23 addSubview:v4->_ringImageView];
    [v23 addSubview:v4->_iconImageView];
    [v23 addSubview:v4->_typeLabel];
  }

  return v4;
}

- (void)configureWithWorkout:(id)a3
{
  v22 = a3;
  v4 = [MEMORY[0x1E6989B18] metricColorsForGoalTypeIdentifier:{objc_msgSend(v22, "_goalType")}];
  if ([v22 _goalType])
  {
    v5 = MEMORY[0x1E6989B40];
    v6 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringsView];
    [v22 fiui_completionFactor];
    v8 = v7;
    v9 = [v4 gradientLightColor];
    v10 = [v4 gradientDarkColor];
    v11 = [v5 renderSingleRingUsingRingsView:v6 forPercentage:v9 withDiameter:v10 thickness:v8 topColor:40.0 bottomColor:5.0];
    v12 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
    [v12 setImage:v11];
  }

  else
  {
    v6 = FIUICircularWorkoutGradientImage(40.0);
    v9 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
    [v9 setImage:v6];
  }

  v13 = [FIUIWorkoutActivityType activityTypeWithWorkout:v22];
  v14 = FIUIStaticWorkoutIconImage(v13, 2);
  v15 = [v14 imageWithRenderingMode:2];
  v16 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [v16 setImage:v15];

  v17 = [v4 nonGradientTextColor];
  v18 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [v18 setTintColor:v17];

  v19 = [v22 fiui_activityType];
  v20 = [v19 localizedName];
  v21 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [v21 setText:v20];
}

- (void)configurePluralViewWithWorkoutActivityType:(id)a3
{
  v4 = a3;
  v5 = FIUICircularWorkoutGradientImage(40.0);
  v6 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [v6 setImage:v5];

  v7 = FIUIStaticWorkoutIconImage(v4, 2);
  v8 = [v7 imageWithRenderingMode:2];
  v9 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [v9 setImage:v8];

  v10 = [MEMORY[0x1E6989B18] noMetricColors];
  v11 = [v10 nonGradientTextColor];
  v12 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [v12 setTintColor:v11];

  v15 = [v4 workoutActivityType];

  v13 = [v15 localizedNamePlural];
  v14 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [v14 setText:v13];
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = FIUIWorkoutSimpleCompletionRingCell;
  [(FIUIWorkoutSimpleCompletionRingCell *)&v36 layoutSubviews];
  v3 = [(FIUIWorkoutSimpleCompletionRingCell *)self contentView];
  v4 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [v4 setFrame:{5.5, 5.5, 40.0, 40.0}];

  v5 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [v5 setFrame:{5.5, 5.5, 28.0, 28.0}];

  v6 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [v6 center];
  v8 = v7;
  v10 = v9;
  v11 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [v11 setCenter:{v8, v10}];

  v12 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [v3 frame];
  [v12 sizeThatFits:{v13 + 5.5 * -2.0, 1.79769313e308}];
  v15 = v14;
  v17 = v16;

  v18 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [v18 setFrame:{5.5, 0.0, v15, v17}];

  v19 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  v20 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [v20 frame];
  [v19 _setFirstLineBaselineFrameOriginY:CGRectGetMaxY(v37) + 20.0];

  v21 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [v3 bounds];
  FIUIFlipViewRightToLeftIfNeeded(v21, v22, v23, v24, v25);

  v26 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [v3 bounds];
  FIUIFlipViewRightToLeftIfNeeded(v26, v27, v28, v29, v30);

  v31 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [v3 bounds];
  FIUIFlipViewRightToLeftIfNeeded(v31, v32, v33, v34, v35);
}

@end