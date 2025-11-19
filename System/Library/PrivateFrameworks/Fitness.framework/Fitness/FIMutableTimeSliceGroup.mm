@interface FIMutableTimeSliceGroup
+ (id)timeSliceGroupForQuantityTypes:(id)a3 startDate:(id)a4;
- (BOOL)allSlicesFinalized;
- (FIMutableTimeSliceGroup)initWithTimeSlices:(id)a3;
- (void)commitAllSlicesToDate:(id)a3;
- (void)updateSlicesWithEndDate:(id)a3;
- (void)updateSlicesWithSample:(id)a3;
@end

@implementation FIMutableTimeSliceGroup

- (FIMutableTimeSliceGroup)initWithTimeSlices:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FIMutableTimeSliceGroup;
  v6 = [(FIMutableTimeSliceGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_slices, a3);
  }

  return v7;
}

+ (id)timeSliceGroupForQuantityTypes:(id)a3 startDate:(id)a4
{
  v5 = a4;
  v6 = [a3 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__FIMutableTimeSliceGroup_timeSliceGroupForQuantityTypes_startDate___block_invoke;
  v11[3] = &unk_279004C48;
  v12 = v5;
  v7 = v5;
  v8 = [v6 fi_mapUsingBlock:v11];

  v9 = [[FIMutableTimeSliceGroup alloc] initWithTimeSlices:v8];

  return v9;
}

FIQuantityTimeSlice *__68__FIMutableTimeSliceGroup_timeSliceGroupForQuantityTypes_startDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FIQuantityTimeSlice alloc] initWithQuantityType:v3 startDate:*(a1 + 32)];

  return v4;
}

- (void)commitAllSlicesToDate:(id)a3
{
  v4 = a3;
  slices = self->_slices;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__FIMutableTimeSliceGroup_commitAllSlicesToDate___block_invoke;
  v9[3] = &unk_279004C70;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)slices fi_mapUsingBlock:v9];
  v8 = self->_slices;
  self->_slices = v7;
}

- (void)updateSlicesWithEndDate:(id)a3
{
  v4 = a3;
  slices = self->_slices;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__FIMutableTimeSliceGroup_updateSlicesWithEndDate___block_invoke;
  v9[3] = &unk_279004C70;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)slices fi_mapUsingBlock:v9];
  v8 = self->_slices;
  self->_slices = v7;
}

- (void)updateSlicesWithSample:(id)a3
{
  v4 = a3;
  slices = self->_slices;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__FIMutableTimeSliceGroup_updateSlicesWithSample___block_invoke;
  v9[3] = &unk_279004C70;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)slices fi_mapUsingBlock:v9];
  v8 = self->_slices;
  self->_slices = v7;
}

id __50__FIMutableTimeSliceGroup_updateSlicesWithSample___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 quantityType];
  v5 = [*(a1 + 32) quantityType];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = v3;
    v14 = 0;
    v9 = [v8 addingSample:v7 error:&v14];
    v10 = v14;
    if (v10)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        v19 = 2112;
        v20 = v10;
        _os_log_error_impl(&dword_24B35E000, v11, OS_LOG_TYPE_ERROR, "Adding sample %@ to quantity slice %@ caused error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v9 = v3;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)allSlicesFinalized
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_slices;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) finalized])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

@end