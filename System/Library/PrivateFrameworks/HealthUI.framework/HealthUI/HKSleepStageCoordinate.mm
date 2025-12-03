@interface HKSleepStageCoordinate
- (HKSleepStageCoordinate)initWithXValue:(double)value asleepUnspecifiedYValues:(id)values asleepDeepYValues:(id)yValues asleepCoreYValues:(id)coreYValues asleepRemYValues:(id)remYValues awakeValues:(id)awakeValues inBedYValues:(id)bedYValues yValues:(id)self0 highlighted:(BOOL)self1 userInfo:(id)self2;
- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
@end

@implementation HKSleepStageCoordinate

- (HKSleepStageCoordinate)initWithXValue:(double)value asleepUnspecifiedYValues:(id)values asleepDeepYValues:(id)yValues asleepCoreYValues:(id)coreYValues asleepRemYValues:(id)remYValues awakeValues:(id)awakeValues inBedYValues:(id)bedYValues yValues:(id)self0 highlighted:(BOOL)self1 userInfo:(id)self2
{
  valuesCopy = values;
  yValuesCopy = yValues;
  coreYValuesCopy = coreYValues;
  obj = remYValues;
  remYValuesCopy = remYValues;
  awakeValuesCopy = awakeValues;
  v29.receiver = self;
  v29.super_class = HKSleepStageCoordinate;
  v21 = [(HKSleepPeriodCoordinate *)&v29 initWithXValue:MEMORY[0x1E695E0F0] asleepYValues:bedYValues inBedYValues:a10 yValues:0 upperGoalYValue:0 lowerGoalYValue:highlighted highlighted:value userInfo:info];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_awakeValues, awakeValues);
    objc_storeStrong(&v22->_asleepUnspecifiedYValues, values);
    objc_storeStrong(&v22->_asleepDeepYValues, yValues);
    objc_storeStrong(&v22->_asleepCoreYValues, coreYValues);
    objc_storeStrong(&v22->_asleepRemYValues, obj);
  }

  return v22;
}

- (id)copyWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  transformCopy = transform;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  v6 = *&transform->c;
  v53 = *&transform->a;
  aBlock[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke;
  aBlock[3] = &unk_1E81B9828;
  aBlock[4] = self;
  v54 = v6;
  v55 = *&transform->tx;
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
  awakeValues = [(HKSleepStageCoordinate *)self awakeValues];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_6;
  v42[3] = &unk_1E81B9850;
  v20 = v17;
  v43 = v20;
  v21 = [awakeValues hk_map:v42];

  inBedYValues = [(HKSleepPeriodCoordinate *)self inBedYValues];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_7;
  v40[3] = &unk_1E81B9850;
  v41 = v20;
  v34 = v20;
  v23 = [inBedYValues hk_map:v40];

  yValues = [(HKSleepPeriodCoordinate *)self yValues];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v25 = *&transformCopy->c;
  v37 = *&transformCopy->a;
  v38 = v25;
  v36[2] = __61__HKSleepStageCoordinate_copyWithTransform_roundToViewScale___block_invoke_8;
  v36[3] = &unk_1E81B9878;
  v36[4] = self;
  v39 = *&transformCopy->tx;
  v26 = [yValues hk_map:v36];

  [(HKSleepPeriodCoordinate *)self xValue];
  v28 = transformCopy->tx + transformCopy->c * 0.0 + transformCopy->a * v27;
  v29 = objc_alloc(objc_opt_class());
  LOBYTE(transformCopy) = [(HKSleepPeriodCoordinate *)self highlighted];
  userInfo = [(HKSleepPeriodCoordinate *)self userInfo];
  LOBYTE(v33) = transformCopy;
  v31 = [v29 initWithXValue:v35 asleepUnspecifiedYValues:v18 asleepDeepYValues:v15 asleepCoreYValues:v12 asleepRemYValues:v21 awakeValues:v23 inBedYValues:v28 yValues:v26 highlighted:v33 userInfo:userInfo];

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