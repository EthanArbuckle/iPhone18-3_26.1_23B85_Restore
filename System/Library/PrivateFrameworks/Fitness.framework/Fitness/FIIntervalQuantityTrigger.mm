@interface FIIntervalQuantityTrigger
- (BOOL)triggered;
- (FIIntervalQuantityTrigger)initWithQuantityTimeslice:(id)a3 threshold:(id)a4 triggeredDate:(id)a5;
- (FIIntervalQuantityTrigger)initWithQuantityType:(id)a3 startDate:(id)a4 threshold:(id)a5;
- (id)_finalizedTriggerByAddingSample:(id)a3 toSlice:(id)a4 withPreviousTotal:(id)a5 threshold:(id)a6;
- (id)addingSample:(id)a3 error:(id *)a4;
- (id)description;
- (id)settingTimeSlice:(id)a3;
@end

@implementation FIIntervalQuantityTrigger

- (FIIntervalQuantityTrigger)initWithQuantityType:(id)a3 startDate:(id)a4 threshold:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[FIQuantityTimeSlice alloc] initWithQuantityType:v10 startDate:v9];

  v12 = [(FIIntervalQuantityTrigger *)self initWithQuantityTimeslice:v11 threshold:v8 triggeredDate:0];
  return v12;
}

- (FIIntervalQuantityTrigger)initWithQuantityTimeslice:(id)a3 threshold:(id)a4 triggeredDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FIIntervalQuantityTrigger;
  v12 = [(FIIntervalQuantityTrigger *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_threshold, a4);
    objc_storeStrong(&v13->_slice, a3);
    objc_storeStrong(&v13->_triggeredDate, a5);
  }

  return v13;
}

- (id)addingSample:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FIQuantityTimeSlice *)self->_slice addingSample:v6 error:a4];
  v8 = [v6 endDate];
  v9 = [v7 committingUntilDate:v8];

  v10 = [v9 committedTotal];
  LODWORD(v8) = [v10 hk_isLessThanQuantity:self->_threshold];

  if (v8)
  {
    v11 = [(FIIntervalQuantityTrigger *)self settingTimeSlice:v9];
  }

  else
  {
    v12 = [(FIQuantityTimeSlice *)self->_slice committedTotal];
    v11 = [(FIIntervalQuantityTrigger *)self _finalizedTriggerByAddingSample:v6 toSlice:v9 withPreviousTotal:v12 threshold:self->_threshold];
  }

  return v11;
}

- (id)_finalizedTriggerByAddingSample:(id)a3 toSlice:(id)a4 withPreviousTotal:(id)a5 threshold:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 quantity];
  v14 = [v10 _quantityByAddingQuantity:v13];

  v15 = FIThresholdDateInsideSample(v12, v14, v9, 0);

  v16 = [[FIIntervalQuantityTrigger alloc] initWithQuantityTimeslice:v11 threshold:v9 triggeredDate:v15];

  return v16;
}

- (id)settingTimeSlice:(id)a3
{
  v4 = a3;
  v5 = [[FIIntervalQuantityTrigger alloc] initWithQuantityTimeslice:v4 threshold:self->_threshold triggeredDate:self->_triggeredDate];

  return v5;
}

- (BOOL)triggered
{
  v2 = [(FIIntervalQuantityTrigger *)self triggeredDate];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if ([(FIIntervalQuantityTrigger *)self triggered])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(FIIntervalQuantityTrigger *)self triggeredDate];
  v7 = [v3 stringWithFormat:@"<%@:%p, triggered:%@, triggeredDate:%@, _threshold:%@, _slice:%@", v4, self, v5, v6, self->_threshold, self->_slice];

  return v7;
}

@end