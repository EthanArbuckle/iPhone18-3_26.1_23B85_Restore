@interface HKSleepPeriodCoordinate
- (HKSleepPeriodCoordinate)initWithXValue:(double)a3 asleepYValues:(id)a4 inBedYValues:(id)a5 yValues:(id)a6 upperGoalYValue:(id)a7 lowerGoalYValue:(id)a8 highlighted:(BOOL)a9 userInfo:(id)a10;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation HKSleepPeriodCoordinate

- (HKSleepPeriodCoordinate)initWithXValue:(double)a3 asleepYValues:(id)a4 inBedYValues:(id)a5 yValues:(id)a6 upperGoalYValue:(id)a7 lowerGoalYValue:(id)a8 highlighted:(BOOL)a9 userInfo:(id)a10
{
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a10;
  v27.receiver = self;
  v27.super_class = HKSleepPeriodCoordinate;
  v20 = [(HKSleepPeriodCoordinate *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_xValue = a3;
    objc_storeStrong(&v20->_asleepYValues, a4);
    objc_storeStrong(&v21->_inBedYValues, a5);
    objc_storeStrong(&v21->_yValues, a6);
    objc_storeStrong(&v21->_upperGoalYValue, a7);
    objc_storeStrong(&v21->_lowerGoalYValue, a8);
    v21->_highlighted = a9;
    objc_storeStrong(&v21->_userInfo, a10);
  }

  return v21;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  asleepYValues = self->_asleepYValues;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __62__HKSleepPeriodCoordinate_copyWithTransform_roundToViewScale___block_invoke;
  v41[3] = &unk_1E81BA910;
  v41[4] = self;
  v8 = *&a3->c;
  v42 = *&a3->a;
  v43 = v8;
  v44 = *&a3->tx;
  v32 = [(NSArray *)asleepYValues hk_map:v41];
  inBedYValues = self->_inBedYValues;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v10 = *&a3->c;
  v38 = *&a3->a;
  v37[2] = __62__HKSleepPeriodCoordinate_copyWithTransform_roundToViewScale___block_invoke_2;
  v37[3] = &unk_1E81BA910;
  v37[4] = self;
  v39 = v10;
  v40 = *&a3->tx;
  v11 = [(NSArray *)inBedYValues hk_map:v37];
  xValue = self->_xValue;
  a = a3->a;
  c = a3->c;
  tx = a3->tx;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = self->_yValues;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = self->_xValue;
        [*(*(&v33 + 1) + 8 * v20) doubleValue];
        v23 = [MEMORY[0x1E696AD98] numberWithDouble:a3->ty + v22 * a3->d + a3->b * v21];
        [v6 addObject:v23];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v18);
  }

  upperGoalYValue = self->_upperGoalYValue;
  if (upperGoalYValue)
  {
    [(NSNumber *)upperGoalYValue doubleValue];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:a3->ty + v25 * a3->d + a3->b * 0.0];
  }

  else
  {
    v26 = 0;
  }

  lowerGoalYValue = self->_lowerGoalYValue;
  if (lowerGoalYValue)
  {
    [(NSNumber *)lowerGoalYValue doubleValue];
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:a3->ty + v28 * a3->d + a3->b * 0.0];
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_alloc(objc_opt_class()) initWithXValue:v32 asleepYValues:v11 inBedYValues:v6 yValues:v26 upperGoalYValue:v29 lowerGoalYValue:self->_highlighted highlighted:tx + c * 0.0 + a * xValue userInfo:self->_userInfo];

  return v30;
}

id __62__HKSleepPeriodCoordinate_copyWithTransform_roundToViewScale___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4 = a2;
  v5 = [v4 value];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80) + v7 * *(a1 + 64) + *(a1 + 48) * v3];
  v9 = [v4 continuation];

  v10 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v8 continuation:v9];

  return v10;
}

id __62__HKSleepPeriodCoordinate_copyWithTransform_roundToViewScale___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4 = a2;
  v5 = [v4 value];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80) + v7 * *(a1 + 64) + *(a1 + 48) * v3];
  v9 = [v4 continuation];

  v10 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v8 continuation:v9];

  return v10;
}

@end