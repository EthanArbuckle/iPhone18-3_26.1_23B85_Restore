@interface HDCloudSyncStateStore
- (BOOL)data:(id *)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setData:(id)a3 forKey:(id)a4 error:(id *)a5;
- (HDCloudSyncStateStore)initWithData:(id)a3;
- (void)unitTest_setMergedData:(id)a3;
@end

@implementation HDCloudSyncStateStore

- (HDCloudSyncStateStore)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDCloudSyncStateStore;
  v5 = [(HDCloudSyncStateStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stateData = v5->_stateData;
    v5->_stateData = v6;
  }

  return v5;
}

- (BOOL)data:(id *)a3 forKey:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [(NSDictionary *)self->_stateData objectForKey:a4];
  v8 = v7;
  if (v7)
  {
    v15 = 0;
    v9 = [v7 decompressedDataUsingAlgorithm:0 error:&v15];
    v10 = v15;
    if (v9)
    {
      v11 = v9;
      if (!a3)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = self;
        v18 = 2114;
        v19 = v10;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to decompress data: %{public}@", buf, 0x16u);
      }

      v11 = v8;
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    *a3 = v11;
    goto LABEL_5;
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)setData:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HDCloudSyncStateStore *)self mergedData];

  if (v10)
  {
    v11 = v8;
    if (!self)
    {
LABEL_19:

      v30 = self;
      if (v30)
      {
        if (a5)
        {
          v31 = v30;
          v19 = 0;
          *a5 = v30;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }

        v18 = v30;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mergedData = self->_mergedData;
    self->_mergedData = v12;

    v14 = v8;
  }

  v15 = [v8 length];
  if (v15 >> 11 >= 0x19)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v38 = self;
      v39 = 2050;
      v40 = v15;
      v41 = 2050;
      v42 = 51200;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Record size: %{public}lu exceeds soft size limit: %{public}lu", buf, 0x20u);
    }

    if (v15 >> 11 >= 0x7D)
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = @"Individual data size limit exceeded.";
      goto LABEL_16;
    }
  }

  if ([(HDCloudSyncStateStore *)self aggregateMergedDataLength]+ v15 >= 0x300000)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = @"Aggregate data size limit exceeded.";
LABEL_16:
    v28 = [v26 hk_error:736 description:v27];
    self = v28;
    if (v28)
    {
      v29 = v28;
    }

    goto LABEL_19;
  }

  v36 = 0;
  v17 = [v8 compressedDataUsingAlgorithm:0 error:&v36];
  v18 = v36;
  v19 = v17 != 0;
  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC328];
  v21 = *MEMORY[0x277CCC328];
  if (v17)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v20;
      v23 = [v8 length];
      v24 = [v8 length];
      *buf = 138544130;
      v38 = self;
      v39 = 2114;
      v40 = v9;
      v41 = 2048;
      v42 = v23;
      v43 = 2048;
      v44 = v24;
      _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Compressed data for key: %{public}@ from %lu to %lu", buf, 0x2Au);
    }

    v25 = [(HDCloudSyncStateStore *)self mergedData];
    [v25 setObject:v17 forKeyedSubscript:v9];

    -[HDCloudSyncStateStore setAggregateMergedDataLength:](self, "setAggregateMergedDataLength:", -[HDCloudSyncStateStore aggregateMergedDataLength](self, "aggregateMergedDataLength") + [v17 length]);
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v38 = self;
      v39 = 2114;
      v40 = v18;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to compress data: %{public}@", buf, 0x16u);
    }

    v32 = [MEMORY[0x277CCA9B8] hk_error:740 format:@"Failed to compress data."];
    if (v32)
    {
      if (a5)
      {
        v33 = v32;
        *a5 = v32;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v30 = 0;
LABEL_33:

  v34 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)unitTest_setMergedData:(id)a3
{
  v4 = [a3 mutableCopy];
  mergedData = self->_mergedData;
  self->_mergedData = v4;

  MEMORY[0x2821F96F8]();
}

@end