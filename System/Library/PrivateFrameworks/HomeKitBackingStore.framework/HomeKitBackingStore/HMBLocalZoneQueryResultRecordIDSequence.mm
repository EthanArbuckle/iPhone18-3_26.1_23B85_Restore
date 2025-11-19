@interface HMBLocalZoneQueryResultRecordIDSequence
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 currentSequence:(id)a4 error:(id *)a5;
- (HMBLocalZoneQueryResultRecordIDSequence)initWithLocalZone:(id)a3 statement:(id)a4 initialSequence:(id)a5 sequenceBindOffset:(unint64_t)a6 arguments:(id)a7 maximumRowsPerSelect:(unint64_t)a8;
- (id)fetchRow:(id)a3 error:(id *)a4;
- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequenceColumn:(id *)a5 error:(id *)a6;
- (id)nextObject;
@end

@implementation HMBLocalZoneQueryResultRecordIDSequence

- (id)fetchRow:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HMBLocalZoneQueryResult *)self localZone];
  v8 = [v6 unsignedIntegerValue];

  v9 = [v7 fetchModelWithRecordRow:v8 error:a4];

  return v9;
}

- (HMBLocalZoneQueryResultRecordIDSequence)initWithLocalZone:(id)a3 statement:(id)a4 initialSequence:(id)a5 sequenceBindOffset:(unint64_t)a6 arguments:(id)a7 maximumRowsPerSelect:(unint64_t)a8
{
  v15 = a5;
  v19.receiver = self;
  v19.super_class = HMBLocalZoneQueryResultRecordIDSequence;
  v16 = [(HMBLocalZoneQueryResult *)&v19 initWithLocalZone:a3 statement:a4 initialSequence:0 arguments:a7 maximumRowsPerSelect:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_currentSequenceAsData, a5);
    [(HMBSQLQueryIterator *)v17 setSequenceBindOffset:a6];
  }

  return v17;
}

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)a3 currentSequence:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(HMBLocalZoneQueryResult *)self arguments];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HMBLocalZoneQueryResultRecordIDSequence_bindPropertiesToStatement_currentSequence_error___block_invoke;
  v11[3] = &unk_2786E1720;
  v11[4] = self;
  v11[5] = a3;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];

  hmbBindDataSQLite3(a3, [(HMBSQLQueryIterator *)self sequenceBindOffset], v8, a5);
  hmbBindIntSQLite3(a3, [(HMBLocalZoneQueryResult *)self zoneRowBindOffset], [(HMBLocalZoneQueryResult *)self zoneRow], a5);
  return 1;
}

void __91__HMBLocalZoneQueryResultRecordIDSequence_bindPropertiesToStatement_currentSequence_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = [a2 intValue];
  if (v5 != [*(a1 + 32) sequenceBindOffset])
  {
    v6 = [MEMORY[0x277CBEB68] null];

    v7 = *(a1 + 40);
    if (v6 == v12)
    {
      v14 = 0;
      v9 = &v14;
      v10 = &v14;
      v11 = v5;
      v8 = 0;
    }

    else
    {
      v8 = v12;
      v13 = 0;
      v9 = &v13;
      v10 = &v13;
      v11 = v5;
    }

    hmbBindDataSQLite3(v7, v11, v8, v10);
  }
}

- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequenceColumn:(id *)a5 error:(id *)a6
{
  v10 = sqlite3_column_int64(a3, 0);
  *a5 = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:a3 column:1];
  v11 = [(HMBLocalZoneQueryResultRecordIDSequence *)self lastReturnedSequence];
  v12 = [v11 isEqual:*a5];

  if (v12)
  {
    v13 = [(HMBLocalZoneQueryResultRecordIDSequence *)self returnedIDs];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v15 = [v13 containsObject:v14];

    if (v15)
    {
      *a4 = 1;
      v16 = &unk_283EB9E40;
      goto LABEL_7;
    }

    v18 = [(HMBLocalZoneQueryResultRecordIDSequence *)self returnedIDs];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [v18 addObject:v19];
  }

  else
  {
    [(HMBLocalZoneQueryResultRecordIDSequence *)self setLastReturnedSequence:*a5];
    v17 = MEMORY[0x277CBEB58];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v19 = [v17 setWithObject:v18];
    [(HMBLocalZoneQueryResultRecordIDSequence *)self setReturnedIDs:v19];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
LABEL_7:

  return v16;
}

- (id)nextObject
{
  v71 = *MEMORY[0x277D85DE8];
  *&v2 = 138543874;
  v41 = v2;
  while (1)
  {
    v3 = [(HMBSQLQueryIterator *)self error];
    v4 = v3 == 0;

    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = [(HMBSQLQueryIterator *)self cachedResults];
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [(HMBSQLQueryIterator *)self cachedResults];
    if ([v6 count])
    {

      goto LABEL_29;
    }

    v7 = [(HMBLocalZoneQueryResultRecordIDSequence *)self currentSequenceAsData];
    v8 = v7 == 0;

    if (!v8)
    {
LABEL_7:
      v9 = self;
      while (1)
      {
        v10 = [(HMBSQLQueryIterator *)v9 cachedResults];
        if (v10)
        {
          v11 = [(HMBSQLQueryIterator *)v9 cachedResults];
          if ([v11 count])
          {

LABEL_28:
            break;
          }

          v12 = [(HMBLocalZoneQueryResultRecordIDSequence *)v9 currentSequenceAsData];
          v13 = v12 == 0;

          if (v13)
          {
            goto LABEL_28;
          }
        }

        v14 = [(HMBSQLQueryIterator *)v9 maximumRowsPerQuery];
        v59 = 0;
        v60 = &v59;
        v61 = 0x3032000000;
        v62 = __Block_byref_object_copy__5204;
        v63 = __Block_byref_object_dispose__5205;
        v64 = [MEMORY[0x277CBEB18] arrayWithCapacity:v14];
        v53 = 0;
        v54 = &v53;
        v55 = 0x3032000000;
        v56 = __Block_byref_object_copy__5204;
        v57 = __Block_byref_object_dispose__5205;
        v58 = 0;
        v49 = 0;
        v50 = &v49;
        v51 = 0x2020000000;
        v52 = 0;
        v15 = [(HMBSQLQueryIterator *)v9 statement];
        v16 = [v15 context];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = ____fetchNextBatch_block_invoke_5207;
        v44[3] = &unk_2786E1770;
        v17 = v9;
        v45 = v17;
        v46 = &v53;
        v47 = &v49;
        v48 = &v59;
        v18 = [v16 sqlBlockWithActivity:0 block:v44];

        v19 = v60[5];
        if (v19)
        {
          if ((v50[3] & 1) != 0 || [v19 count])
          {
            v20 = [(HMBLocalZoneQueryResultRecordIDSequence *)v17 currentSequenceAsData];
            v21 = v20 == 0;

            if (!v21)
            {
              [(HMBLocalZoneQueryResultRecordIDSequence *)v17 setCurrentSequenceAsData:v54[5]];
            }

            v22 = [(HMBSQLQueryIterator *)v17 cachedResults];
            v23 = v22 == 0;

            if (v23)
            {
              [(HMBSQLQueryIterator *)v17 setCachedResults:v60[5]];
            }

            else
            {
              v24 = [(HMBSQLQueryIterator *)v17 cachedResults];
              [v24 addObjectsFromArray:v60[5]];
            }

            v30 = 1;
            goto LABEL_24;
          }

          [(HMBLocalZoneQueryResultRecordIDSequence *)v17 setCurrentSequenceAsData:0];
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          v26 = v17;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = HMFGetLogIdentifier();
            v29 = [(HMBSQLQueryIterator *)v26 currentSequence];
            *buf = v41;
            v66 = v28;
            v67 = 2112;
            v68 = v29;
            v69 = 2112;
            v70 = v18;
            _os_log_impl(&dword_22AD27000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch additional items into query enumeration %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v25);
          [(HMBSQLQueryIterator *)v26 setError:v18];
          [(HMBLocalZoneQueryResultRecordIDSequence *)v26 setCurrentSequenceAsData:0];
          [(HMBSQLQueryIterator *)v26 setCachedResults:0];
        }

        v30 = 0;
LABEL_24:

        _Block_object_dispose(&v49, 8);
        _Block_object_dispose(&v53, 8);

        _Block_object_dispose(&v59, 8);
        if ((v30 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_29:
    v31 = [(HMBSQLQueryIterator *)self cachedResults];
    if (![v31 count])
    {

LABEL_36:
      [(HMBLocalZoneQueryResultRecordIDSequence *)self setCurrentSequenceAsData:0];
      goto LABEL_38;
    }

    v32 = [(HMBSQLQueryIterator *)self error];
    v33 = v32 == 0;

    if (!v33)
    {
      goto LABEL_36;
    }

    v34 = [(HMBSQLQueryIterator *)self cachedResults];
    v35 = [v34 hmf_dequeue];

    v43 = 0;
    v36 = [(HMBLocalZoneQueryResultRecordIDSequence *)self fetchRow:v35 error:&v43];
    v37 = v43;
    v38 = v37;
    if (!v36)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36)
    {
      goto LABEL_39;
    }
  }

  [(HMBSQLQueryIterator *)self setError:v37];
  [(HMBLocalZoneQueryResultRecordIDSequence *)self setCurrentSequenceAsData:0];

LABEL_38:
  v36 = 0;
LABEL_39:
  v39 = *MEMORY[0x277D85DE8];

  return v36;
}

@end