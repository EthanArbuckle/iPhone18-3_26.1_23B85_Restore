@interface HKSleepStageCoordinate
- (HKSleepStageCoordinate)initWithXValue:(double)a3 asleepUnspecifiedYValues:(id)a4 asleepDeepYValues:(id)a5 asleepCoreYValues:(id)a6 asleepRemYValues:(id)a7 awakeValues:(id)a8 inBedYValues:(id)a9 yValues:(id)a10 highlighted:(BOOL)a11 userInfo:(id)a12;
- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
@end

@implementation HKSleepStageCoordinate

- (HKSleepStageCoordinate)initWithXValue:(double)a3 asleepUnspecifiedYValues:(id)a4 asleepDeepYValues:(id)a5 asleepCoreYValues:(id)a6 asleepRemYValues:(id)a7 awakeValues:(id)a8 inBedYValues:(id)a9 yValues:(id)a10 highlighted:(BOOL)a11 userInfo:(id)a12
{
  v28 = a4;
  v27 = a5;
  v26 = a6;
  obj = a7;
  v25 = a7;
  v20 = a8;
  v29.receiver = self;
  v29.super_class = HKSleepStageCoordinate;
  v21 = [(HKSleepPeriodCoordinate *)&v29 initWithXValue:MEMORY[0x1E695E0F0] asleepYValues:a9 inBedYValues:a10 yValues:0 upperGoalYValue:0 lowerGoalYValue:a11 highlighted:a3 userInfo:a12];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_awakeValues, a8);
    objc_storeStrong(&v22->_asleepUnspecifiedYValues, a4);
    objc_storeStrong(&v22->_asleepDeepYValues, a5);
    objc_storeStrong(&v22->_asleepCoreYValues, a6);
    objc_storeStrong(&v22->_asleepRemYValues, obj);
  }

  return v22;
}

- (id)copyWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  v6 = *&a3->c;
  v53 = *&a3->a;
  aBlock[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke;
  aBlock[3] = &unk_1E81B9828;
  aBlock[4] = self;
  v54 = v6;
  v55 = *&a3->tx;
  v7 = _Block_copy(aBlock);
  asleepUnspecifiedYValues = self->_asleepUnspecifiedYValues;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_2;
  v50[3] = &unk_1E81B9850;
  v9 = v7;
  v51 = v9;
  v35 = [(NSArray *)asleepUnspecifiedYValues hk_map:v50];
  asleepRemYValues = self->_asleepRemYValues;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_3;
  v48[3] = &unk_1E81B9850;
  v11 = v9;
  v49 = v11;
  v12 = [(NSArray *)asleepRemYValues hk_map:v48];
  asleepCoreYValues = self->_asleepCoreYValues;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_4;
  v46[3] = &unk_1E81B9850;
  v14 = v11;
  v47 = v14;
  v15 = [(NSArray *)asleepCoreYValues hk_map:v46];
  asleepDeepYValues = self->_asleepDeepYValues;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_5;
  v44[3] = &unk_1E81B9850;
  v17 = v14;
  v45 = v17;
  v18 = [(NSArray *)asleepDeepYValues hk_map:v44];
  v19 = [(HKSleepStageCoordinate *)self awakeValues];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_6;
  v42[3] = &unk_1E81B9850;
  v20 = v17;
  v43 = v20;
  v21 = [v19 hk_map:v42];

  v22 = [(HKSleepPeriodCoordinate *)self inBedYValues];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_7;
  v40[3] = &unk_1E81B9850;
  v41 = v20;
  v34 = v20;
  v23 = [v22 hk_map:v40];

  v24 = [(HKSleepPeriodCoordinate *)self yValues];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v25 = *&v4->c;
  v37 = *&v4->a;
  v38 = v25;
  v36[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_8;
  v36[3] = &unk_1E81B9878;
  v36[4] = self;
  v39 = *&v4->tx;
  v26 = [v24 hk_map:v36];

  [(HKSleepPeriodCoordinate *)self xValue];
  v28 = v4->tx + v4->c * 0.0 + v4->a * v27;
  v29 = objc_alloc(objc_opt_class());
  LOBYTE(v4) = [(HKSleepPeriodCoordinate *)self highlighted];
  v30 = [(HKSleepPeriodCoordinate *)self userInfo];
  LOBYTE(v33) = v4;
  v31 = [v29 initWithXValue:v35 asleepUnspecifiedYValues:v18 asleepDeepYValues:v15 asleepCoreYValues:v12 asleepRemYValues:v21 awakeValues:v23 inBedYValues:v28 yValues:v26 highlighted:v33 userInfo:v30];

  return v31;
}

id __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 xValue];
  v6 = v5;
  v7 = [v4 value];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80) + v9 * *(a1 + 64) + *(a1 + 48) * v6];
  v11 = [v4 continuation];

  v12 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v10 continuation:v11];

  return v12;
}

uint64_t __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 xValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  v9 = *(a1 + 80) + v8 * *(a1 + 64) + *(a1 + 48) * v6;
  v10 = MEMORY[0x1E696AD98];

  return [v10 numberWithDouble:v9];
}

@end