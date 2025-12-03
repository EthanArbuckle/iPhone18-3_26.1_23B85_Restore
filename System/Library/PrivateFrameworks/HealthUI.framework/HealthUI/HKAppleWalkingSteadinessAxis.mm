@interface HKAppleWalkingSteadinessAxis
+ (id)standardAxisWithDisplayType:(id)type;
- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset;
- (HKAppleWalkingSteadinessAxis)initWithDisplayType:(id)type;
- (id)_axisLabelsForClassificationsWithDisplayType:(id)type;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
@end

@implementation HKAppleWalkingSteadinessAxis

+ (id)standardAxisWithDisplayType:(id)type
{
  typeCopy = type;
  v4 = [[HKAppleWalkingSteadinessAxis alloc] initWithDisplayType:typeCopy];

  return v4;
}

- (HKAppleWalkingSteadinessAxis)initWithDisplayType:(id)type
{
  typeCopy = type;
  v6 = objc_alloc_init(HKNumericAxisConfiguration);
  v7 = +[HKNumericAxis preferredAxisStyle];
  [(HKAxisConfiguration *)v6 setPreferredStyle:v7];

  [(HKNumericAxisConfiguration *)v6 setTopVerticalLabelPadding:5.0];
  [(HKNumericAxisConfiguration *)v6 setBottomVerticalLabelPadding:5.0];
  v13.receiver = self;
  v13.super_class = HKAppleWalkingSteadinessAxis;
  v8 = [(HKNumericAxis *)&v13 initWithConfiguration:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayType, type);
    v10 = [(HKAppleWalkingSteadinessAxis *)v9 _axisLabelsForClassificationsWithDisplayType:v9->_displayType];
    cachedAxisLabels = v9->_cachedAxisLabels;
    v9->_cachedAxisLabels = v10;
  }

  return v9;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  [minValue doubleValue];
  v8 = v7;
  v9 = v7;

  maxValue = [rangeCopy maxValue];

  [maxValue doubleValue];
  v12 = v11;
  v13 = v11;

  v14 = 0;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v15 = fabs(v12 - v8);
    v16 = (*&v15 - 1) < 0xFFFFFFFFFFFFFLL;
    v17 = (*&v15 - 0x10000000000000) >> 53 < 0x3FF;
    if (COERCE__INT64(v12 - v8) >= 0)
    {
      v17 = 0;
      v16 = 0;
    }

    v18 = fabs(v12 - v8);
    if (v18 == 0.0)
    {
      v16 = 1;
    }

    v19 = v18 == INFINITY || v16;
    if ((v19 | v17))
    {
      v14 = 0;
    }

    else
    {
      v14 = self->_cachedAxisLabels;
    }
  }

  return v14;
}

- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset
{
  v11.receiver = self;
  v11.super_class = HKAppleWalkingSteadinessAxis;
  [(HKAxis *)&v11 renderPositionForLabelLocation:location rect:horizontal zoomScale:*&optionalOffset.x contentOffset:*&optionalOffset.y constantOffset:rect.origin.x isHorizontal:rect.origin.y optionalOffset:rect.size.width, rect.size.height, scale, offset.x, offset.y, constantOffset, v12, v13];
  result.y = v10;
  result.x = v9;
  return result;
}

- (id)_axisLabelsForClassificationsWithDisplayType:(id)type
{
  typeCopy = type;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__20;
  v15 = __Block_byref_object_dispose__20;
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__HKAppleWalkingSteadinessAxis__axisLabelsForClassificationsWithDisplayType___block_invoke;
  v8[3] = &unk_1E81BA7F8;
  v4 = typeCopy;
  v9 = v4;
  v10 = &v11;
  v5 = _Block_copy(v8);
  v5[2](v5, 3, 1, 0);
  v5[2](v5, 2, 1, 0);
  v5[2](v5, 1, 1, 1);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __77__HKAppleWalkingSteadinessAxis__axisLabelsForClassificationsWithDisplayType___block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  hk_minWalkingSteadinessValueForClassification();
  v9 = v8;
  hk_maxWalkingSteadinessValueForClassification();
  v11 = v10;
  v12 = v9 + (v10 - v9) * 0.5;
  v25 = [HKMobilityUtilities localizedAxisLabelStringForClassification:a2];
  if (a3)
  {
    v13 = objc_alloc_init(HKAxisLabel);
    [(HKAxisLabel *)v13 setLabelType:1];
    v14 = MEMORY[0x1E696AD98];
    v15 = [*(a1 + 32) presentation];
    [v15 adjustedDoubleForDaemonDouble:v9];
    v16 = [v14 numberWithDouble:?];
    [(HKAxisLabel *)v13 setLocation:v16];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
  }

  v17 = objc_alloc_init(HKAxisLabel);
  [(HKAxisLabel *)v17 setLabelType:0];
  v18 = MEMORY[0x1E696AD98];
  v19 = [*(a1 + 32) presentation];
  [v19 adjustedDoubleForDaemonDouble:v12];
  v20 = [v18 numberWithDouble:?];
  [(HKAxisLabel *)v17 setLocation:v20];

  [(HKAxisLabel *)v17 setText:v25];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v17];
  if (a4)
  {
    v21 = objc_alloc_init(HKAxisLabel);
    [(HKAxisLabel *)v21 setLabelType:1];
    v22 = MEMORY[0x1E696AD98];
    v23 = [*(a1 + 32) presentation];
    [v23 adjustedDoubleForDaemonDouble:v11];
    v24 = [v22 numberWithDouble:?];
    [(HKAxisLabel *)v21 setLocation:v24];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v21];
  }
}

@end