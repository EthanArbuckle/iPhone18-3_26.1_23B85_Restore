@interface FIQuantityIntervalController
- (BOOL)_updateTriggerWithSample:(id)sample;
- (BOOL)isIntervalEndDate;
- (FIQuantityIntervalController)initWithIntervalQuantityType:(id)type threshold:(id)threshold startDate:(id)date trackedQuantityTypes:(id)types;
- (void)addSample:(id)sample;
@end

@implementation FIQuantityIntervalController

- (FIQuantityIntervalController)initWithIntervalQuantityType:(id)type threshold:(id)threshold startDate:(id)date trackedQuantityTypes:(id)types
{
  typeCopy = type;
  thresholdCopy = threshold;
  dateCopy = date;
  typesCopy = types;
  v20.receiver = self;
  v20.super_class = FIQuantityIntervalController;
  v14 = [(FIQuantityIntervalController *)&v20 init];
  if (v14)
  {
    v15 = [[FIIntervalQuantityTrigger alloc] initWithQuantityType:typeCopy startDate:dateCopy threshold:thresholdCopy];
    quantityTrigger = v14->_quantityTrigger;
    v14->_quantityTrigger = v15;

    v17 = [FIMutableTimeSliceGroup timeSliceGroupForQuantityTypes:typesCopy startDate:dateCopy];
    sliceGroup = v14->_sliceGroup;
    v14->_sliceGroup = v17;
  }

  return 0;
}

- (void)addSample:(id)sample
{
  sampleCopy = sample;
  [(FIMutableTimeSliceGroup *)self->_sliceGroup updateSlicesWithSample:sampleCopy];
  if ([(FIQuantityIntervalController *)self _updateTriggerWithSample:sampleCopy])
  {
    triggered = [(FIIntervalQuantityTrigger *)self->_quantityTrigger triggered];
    sliceGroup = self->_sliceGroup;
    if (triggered)
    {
      triggeredDate = [(FIIntervalQuantityTrigger *)self->_quantityTrigger triggeredDate];
      [(FIMutableTimeSliceGroup *)sliceGroup updateSlicesWithEndDate:triggeredDate];
    }

    else
    {
      triggeredDate = [sampleCopy endDate];
      [(FIMutableTimeSliceGroup *)sliceGroup commitAllSlicesToDate:triggeredDate];
    }
  }
}

- (BOOL)_updateTriggerWithSample:(id)sample
{
  v24 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  quantityType = [sampleCopy quantityType];
  quantityType2 = [(FIIntervalQuantityTrigger *)self->_quantityTrigger quantityType];
  v7 = [quantityType isEqual:quantityType2];

  if (v7)
  {
    quantityTrigger = self->_quantityTrigger;
    v17 = 0;
    v9 = [(FIIntervalQuantityTrigger *)quantityTrigger addingSample:sampleCopy error:&v17];
    v10 = v17;
    v11 = self->_quantityTrigger;
    self->_quantityTrigger = v9;

    if (!v10)
    {
      v13 = 1;
      goto LABEL_7;
    }

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v16 = self->_quantityTrigger;
      *buf = 138412802;
      v19 = sampleCopy;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&dword_24B35E000, v12, OS_LOG_TYPE_ERROR, "Adding sample %@ to quantity trigger %@ caused error: %@", buf, 0x20u);
    }
  }

  v13 = 0;
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isIntervalEndDate
{
  triggeredDate = [(FIIntervalQuantityTrigger *)self->_quantityTrigger triggeredDate];
  v3 = triggeredDate != 0;

  return v3;
}

@end