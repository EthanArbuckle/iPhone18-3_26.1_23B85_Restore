@interface HMBLocalZoneQueryResultFilter
- (HMBLocalZoneQueryResultFilter)initWithLocalZone:(id)a3 statement:(id)a4 columns:(id)a5 filter:(id)a6;
- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6;
@end

@implementation HMBLocalZoneQueryResultFilter

- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CBEB38];
  v12 = [(HMBLocalZoneQueryResultFilter *)self columns];
  v13 = [v11 dictionaryWithCapacity:{objc_msgSend(v12, "count")}];

  *a5 = sqlite3_column_int64(a3, 0);
  v14 = [(HMBLocalZoneQueryResultFilter *)self columns];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __82__HMBLocalZoneQueryResultFilter_fetchRowFromStatement_skip_updatedSequence_error___block_invoke;
  v28 = &unk_2786E1350;
  v30 = a3;
  v15 = v13;
  v29 = v15;
  [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:&v25];

  v16 = [(HMBLocalZoneQueryResultFilter *)self filter:v25];
  v17 = (v16)[2](v16, v15);

  if (v17)
  {
    if (v17 == 2)
    {
      goto LABEL_10;
    }

    if (v17 == 1)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*a5];
      goto LABEL_11;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v22;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&dword_22AD27000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unknown filter result received: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (!a6)
    {
LABEL_10:
      v18 = 0;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      *a6 = v18 = 0;
    }
  }

  else
  {
    *a4 = 1;
    v18 = &unk_283EB9DF8;
  }

LABEL_11:

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

void __82__HMBLocalZoneQueryResultFilter_fetchRowFromStatement_skip_updatedSequence_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3ColumnNoCopy:*(a1 + 40) column:{objc_msgSend(v8, "offset")}];
  if (v3)
  {
    v4 = [v8 modelField];
    v5 = [v4 decodeQueryableValue:v3];
    v6 = *(a1 + 32);
    v7 = [v8 name];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

- (HMBLocalZoneQueryResultFilter)initWithLocalZone:(id)a3 statement:(id)a4 columns:(id)a5 filter:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = +[HMBSQLQueryIterator maximumRowsPerSelect];
  v20.receiver = self;
  v20.super_class = HMBLocalZoneQueryResultFilter;
  v16 = [(HMBLocalZoneQueryResult *)&v20 initWithLocalZone:v14 statement:v13 initialSequence:&unk_283EB9DF8 arguments:MEMORY[0x277CBEC10] maximumRowsPerSelect:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_columns, a5);
    v17 = MEMORY[0x231885A30](v12);
    filter = v16->_filter;
    v16->_filter = v17;
  }

  return v16;
}

@end