@interface FIIntervalQuantityTrigger
- (BOOL)triggered;
- (FIIntervalQuantityTrigger)initWithQuantityTimeslice:(id)timeslice threshold:(id)threshold triggeredDate:(id)date;
- (FIIntervalQuantityTrigger)initWithQuantityType:(id)type startDate:(id)date threshold:(id)threshold;
- (id)_finalizedTriggerByAddingSample:(id)sample toSlice:(id)slice withPreviousTotal:(id)total threshold:(id)threshold;
- (id)addingSample:(id)sample error:(id *)error;
- (id)description;
- (id)settingTimeSlice:(id)slice;
@end

@implementation FIIntervalQuantityTrigger

- (FIIntervalQuantityTrigger)initWithQuantityType:(id)type startDate:(id)date threshold:(id)threshold
{
  thresholdCopy = threshold;
  dateCopy = date;
  typeCopy = type;
  v11 = [[FIQuantityTimeSlice alloc] initWithQuantityType:typeCopy startDate:dateCopy];

  v12 = [(FIIntervalQuantityTrigger *)self initWithQuantityTimeslice:v11 threshold:thresholdCopy triggeredDate:0];
  return v12;
}

- (FIIntervalQuantityTrigger)initWithQuantityTimeslice:(id)timeslice threshold:(id)threshold triggeredDate:(id)date
{
  timesliceCopy = timeslice;
  thresholdCopy = threshold;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = FIIntervalQuantityTrigger;
  v12 = [(FIIntervalQuantityTrigger *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_threshold, threshold);
    objc_storeStrong(&v13->_slice, timeslice);
    objc_storeStrong(&v13->_triggeredDate, date);
  }

  return v13;
}

- (id)addingSample:(id)sample error:(id *)error
{
  sampleCopy = sample;
  v7 = [(FIQuantityTimeSlice *)self->_slice addingSample:sampleCopy error:error];
  endDate = [sampleCopy endDate];
  v9 = [v7 committingUntilDate:endDate];

  committedTotal = [v9 committedTotal];
  LODWORD(endDate) = [committedTotal hk_isLessThanQuantity:self->_threshold];

  if (endDate)
  {
    v11 = [(FIIntervalQuantityTrigger *)self settingTimeSlice:v9];
  }

  else
  {
    committedTotal2 = [(FIQuantityTimeSlice *)self->_slice committedTotal];
    v11 = [(FIIntervalQuantityTrigger *)self _finalizedTriggerByAddingSample:sampleCopy toSlice:v9 withPreviousTotal:committedTotal2 threshold:self->_threshold];
  }

  return v11;
}

- (id)_finalizedTriggerByAddingSample:(id)sample toSlice:(id)slice withPreviousTotal:(id)total threshold:(id)threshold
{
  thresholdCopy = threshold;
  totalCopy = total;
  sliceCopy = slice;
  sampleCopy = sample;
  quantity = [sampleCopy quantity];
  v14 = [totalCopy _quantityByAddingQuantity:quantity];

  v15 = FIThresholdDateInsideSample(sampleCopy, v14, thresholdCopy, 0);

  v16 = [[FIIntervalQuantityTrigger alloc] initWithQuantityTimeslice:sliceCopy threshold:thresholdCopy triggeredDate:v15];

  return v16;
}

- (id)settingTimeSlice:(id)slice
{
  sliceCopy = slice;
  v5 = [[FIIntervalQuantityTrigger alloc] initWithQuantityTimeslice:sliceCopy threshold:self->_threshold triggeredDate:self->_triggeredDate];

  return v5;
}

- (BOOL)triggered
{
  triggeredDate = [(FIIntervalQuantityTrigger *)self triggeredDate];
  v3 = triggeredDate != 0;

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

  triggeredDate = [(FIIntervalQuantityTrigger *)self triggeredDate];
  v7 = [v3 stringWithFormat:@"<%@:%p, triggered:%@, triggeredDate:%@, _threshold:%@, _slice:%@", v4, self, v5, triggeredDate, self->_threshold, self->_slice];

  return v7;
}

@end