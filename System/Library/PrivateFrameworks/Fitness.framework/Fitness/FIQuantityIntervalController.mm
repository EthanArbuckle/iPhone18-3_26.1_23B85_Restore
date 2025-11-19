@interface FIQuantityIntervalController
- (BOOL)_updateTriggerWithSample:(id)a3;
- (BOOL)isIntervalEndDate;
- (FIQuantityIntervalController)initWithIntervalQuantityType:(id)a3 threshold:(id)a4 startDate:(id)a5 trackedQuantityTypes:(id)a6;
- (void)addSample:(id)a3;
@end

@implementation FIQuantityIntervalController

- (FIQuantityIntervalController)initWithIntervalQuantityType:(id)a3 threshold:(id)a4 startDate:(id)a5 trackedQuantityTypes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = FIQuantityIntervalController;
  v14 = [(FIQuantityIntervalController *)&v20 init];
  if (v14)
  {
    v15 = [[FIIntervalQuantityTrigger alloc] initWithQuantityType:v10 startDate:v12 threshold:v11];
    quantityTrigger = v14->_quantityTrigger;
    v14->_quantityTrigger = v15;

    v17 = [FIMutableTimeSliceGroup timeSliceGroupForQuantityTypes:v13 startDate:v12];
    sliceGroup = v14->_sliceGroup;
    v14->_sliceGroup = v17;
  }

  return 0;
}

- (void)addSample:(id)a3
{
  v7 = a3;
  [(FIMutableTimeSliceGroup *)self->_sliceGroup updateSlicesWithSample:v7];
  if ([(FIQuantityIntervalController *)self _updateTriggerWithSample:v7])
  {
    v4 = [(FIIntervalQuantityTrigger *)self->_quantityTrigger triggered];
    sliceGroup = self->_sliceGroup;
    if (v4)
    {
      v6 = [(FIIntervalQuantityTrigger *)self->_quantityTrigger triggeredDate];
      [(FIMutableTimeSliceGroup *)sliceGroup updateSlicesWithEndDate:v6];
    }

    else
    {
      v6 = [v7 endDate];
      [(FIMutableTimeSliceGroup *)sliceGroup commitAllSlicesToDate:v6];
    }
  }
}

- (BOOL)_updateTriggerWithSample:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 quantityType];
  v6 = [(FIIntervalQuantityTrigger *)self->_quantityTrigger quantityType];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    quantityTrigger = self->_quantityTrigger;
    v17 = 0;
    v9 = [(FIIntervalQuantityTrigger *)quantityTrigger addingSample:v4 error:&v17];
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
      v19 = v4;
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
  v2 = [(FIIntervalQuantityTrigger *)self->_quantityTrigger triggeredDate];
  v3 = v2 != 0;

  return v3;
}

@end