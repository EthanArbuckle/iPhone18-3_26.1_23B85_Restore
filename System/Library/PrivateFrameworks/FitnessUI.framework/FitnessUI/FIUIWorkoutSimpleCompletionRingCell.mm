@interface FIUIWorkoutSimpleCompletionRingCell
+ (double)preferredHeightForActivityType:(id)type fittingWidth:(double)width plural:(BOOL)plural;
+ (double)preferredHeightForLocalizedName:(id)name fittingWidth:(double)width;
+ (double)preferredHeightForWorkout:(id)workout fittingWidth:(double)width;
- (FIUIWorkoutSimpleCompletionRingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configurePluralViewWithWorkoutActivityType:(id)type;
- (void)configureWithWorkout:(id)workout;
- (void)layoutSubviews;
@end

@implementation FIUIWorkoutSimpleCompletionRingCell

+ (double)preferredHeightForWorkout:(id)workout fittingWidth:(double)width
{
  fiui_activityType = [workout fiui_activityType];
  [FIUIWorkoutSimpleCompletionRingCell preferredHeightForActivityType:fiui_activityType fittingWidth:0 plural:width];
  v7 = v6;

  return v7;
}

+ (double)preferredHeightForActivityType:(id)type fittingWidth:(double)width plural:(BOOL)plural
{
  if (plural)
  {
    workoutActivityType = [type workoutActivityType];
    localizedNamePlural = [workoutActivityType localizedNamePlural];
  }

  else
  {
    localizedNamePlural = [type localizedName];
  }

  [FIUIWorkoutSimpleCompletionRingCell preferredHeightForLocalizedName:localizedNamePlural fittingWidth:width];
  v9 = v8;

  return v9;
}

+ (double)preferredHeightForLocalizedName:(id)name fittingWidth:(double)width
{
  v5 = preferredHeightForLocalizedName_fittingWidth__onceToken;
  nameCopy = name;
  if (v5 != -1)
  {
    +[FIUIWorkoutSimpleCompletionRingCell preferredHeightForLocalizedName:fittingWidth:];
  }

  [preferredHeightForLocalizedName_fittingWidth__sizingLabel setText:nameCopy];

  [preferredHeightForLocalizedName_fittingWidth__sizingLabel sizeThatFits:{width + 5.5 * -2.0, 1.79769313e308}];
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

- (FIUIWorkoutSimpleCompletionRingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v25.receiver = self;
  v25.super_class = FIUIWorkoutSimpleCompletionRingCell;
  v4 = [(FIUIWorkoutSimpleCompletionRingCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
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

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v4->_typeLabel setTextColor:whiteColor];

    contentView = [(FIUIWorkoutSimpleCompletionRingCell *)v4 contentView];
    [contentView addSubview:v4->_ringImageView];
    [contentView addSubview:v4->_iconImageView];
    [contentView addSubview:v4->_typeLabel];
  }

  return v4;
}

- (void)configureWithWorkout:(id)workout
{
  workoutCopy = workout;
  v4 = [MEMORY[0x1E6989B18] metricColorsForGoalTypeIdentifier:{objc_msgSend(workoutCopy, "_goalType")}];
  if ([workoutCopy _goalType])
  {
    v5 = MEMORY[0x1E6989B40];
    ringsView = [(FIUIWorkoutSimpleCompletionRingCell *)self ringsView];
    [workoutCopy fiui_completionFactor];
    v8 = v7;
    gradientLightColor = [v4 gradientLightColor];
    gradientDarkColor = [v4 gradientDarkColor];
    v11 = [v5 renderSingleRingUsingRingsView:ringsView forPercentage:gradientLightColor withDiameter:gradientDarkColor thickness:v8 topColor:40.0 bottomColor:5.0];
    ringImageView = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
    [ringImageView setImage:v11];
  }

  else
  {
    ringsView = FIUICircularWorkoutGradientImage(40.0);
    gradientLightColor = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
    [gradientLightColor setImage:ringsView];
  }

  v13 = [FIUIWorkoutActivityType activityTypeWithWorkout:workoutCopy];
  v14 = FIUIStaticWorkoutIconImage(v13, 2);
  v15 = [v14 imageWithRenderingMode:2];
  iconImageView = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [iconImageView setImage:v15];

  nonGradientTextColor = [v4 nonGradientTextColor];
  iconImageView2 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [iconImageView2 setTintColor:nonGradientTextColor];

  fiui_activityType = [workoutCopy fiui_activityType];
  localizedName = [fiui_activityType localizedName];
  typeLabel = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [typeLabel setText:localizedName];
}

- (void)configurePluralViewWithWorkoutActivityType:(id)type
{
  typeCopy = type;
  v5 = FIUICircularWorkoutGradientImage(40.0);
  ringImageView = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [ringImageView setImage:v5];

  v7 = FIUIStaticWorkoutIconImage(typeCopy, 2);
  v8 = [v7 imageWithRenderingMode:2];
  iconImageView = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [iconImageView setImage:v8];

  noMetricColors = [MEMORY[0x1E6989B18] noMetricColors];
  nonGradientTextColor = [noMetricColors nonGradientTextColor];
  iconImageView2 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [iconImageView2 setTintColor:nonGradientTextColor];

  workoutActivityType = [typeCopy workoutActivityType];

  localizedNamePlural = [workoutActivityType localizedNamePlural];
  typeLabel = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [typeLabel setText:localizedNamePlural];
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = FIUIWorkoutSimpleCompletionRingCell;
  [(FIUIWorkoutSimpleCompletionRingCell *)&v36 layoutSubviews];
  contentView = [(FIUIWorkoutSimpleCompletionRingCell *)self contentView];
  ringImageView = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [ringImageView setFrame:{5.5, 5.5, 40.0, 40.0}];

  iconImageView = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [iconImageView setFrame:{5.5, 5.5, 28.0, 28.0}];

  ringImageView2 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [ringImageView2 center];
  v8 = v7;
  v10 = v9;
  iconImageView2 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [iconImageView2 setCenter:{v8, v10}];

  typeLabel = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [contentView frame];
  [typeLabel sizeThatFits:{v13 + 5.5 * -2.0, 1.79769313e308}];
  v15 = v14;
  v17 = v16;

  typeLabel2 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [typeLabel2 setFrame:{5.5, 0.0, v15, v17}];

  typeLabel3 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  ringImageView3 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [ringImageView3 frame];
  [typeLabel3 _setFirstLineBaselineFrameOriginY:CGRectGetMaxY(v37) + 20.0];

  ringImageView4 = [(FIUIWorkoutSimpleCompletionRingCell *)self ringImageView];
  [contentView bounds];
  FIUIFlipViewRightToLeftIfNeeded(ringImageView4, v22, v23, v24, v25);

  iconImageView3 = [(FIUIWorkoutSimpleCompletionRingCell *)self iconImageView];
  [contentView bounds];
  FIUIFlipViewRightToLeftIfNeeded(iconImageView3, v27, v28, v29, v30);

  typeLabel4 = [(FIUIWorkoutSimpleCompletionRingCell *)self typeLabel];
  [contentView bounds];
  FIUIFlipViewRightToLeftIfNeeded(typeLabel4, v32, v33, v34, v35);
}

@end