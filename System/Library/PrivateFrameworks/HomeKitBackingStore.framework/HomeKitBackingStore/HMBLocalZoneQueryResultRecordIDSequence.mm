@interface HMBLocalZoneQueryResultRecordIDSequence
- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement currentSequence:(id)sequence error:(id *)error;
- (HMBLocalZoneQueryResultRecordIDSequence)initWithLocalZone:(id)zone statement:(id)statement initialSequence:(id)sequence sequenceBindOffset:(unint64_t)offset arguments:(id)arguments maximumRowsPerSelect:(unint64_t)select;
- (id)fetchRow:(id)row error:(id *)error;
- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequenceColumn:(id *)column error:(id *)error;
- (id)nextObject;
@end

@implementation HMBLocalZoneQueryResultRecordIDSequence

- (id)fetchRow:(id)row error:(id *)error
{
  rowCopy = row;
  localZone = [(HMBLocalZoneQueryResult *)self localZone];
  unsignedIntegerValue = [rowCopy unsignedIntegerValue];

  v9 = [localZone fetchModelWithRecordRow:unsignedIntegerValue error:error];

  return v9;
}

- (HMBLocalZoneQueryResultRecordIDSequence)initWithLocalZone:(id)zone statement:(id)statement initialSequence:(id)sequence sequenceBindOffset:(unint64_t)offset arguments:(id)arguments maximumRowsPerSelect:(unint64_t)select
{
  sequenceCopy = sequence;
  v19.receiver = self;
  v19.super_class = HMBLocalZoneQueryResultRecordIDSequence;
  v16 = [(HMBLocalZoneQueryResult *)&v19 initWithLocalZone:zone statement:statement initialSequence:0 arguments:arguments maximumRowsPerSelect:select];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_currentSequenceAsData, sequence);
    [(HMBSQLQueryIterator *)v17 setSequenceBindOffset:offset];
  }

  return v17;
}

- (BOOL)bindPropertiesToStatement:(sqlite3_stmt *)statement currentSequence:(id)sequence error:(id *)error
{
  sequenceCopy = sequence;
  arguments = [(HMBLocalZoneQueryResult *)self arguments];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HMBLocalZoneQueryResultRecordIDSequence_bindPropertiesToStatement_currentSequence_error___block_invoke;
  v11[3] = &unk_2786E1720;
  v11[4] = self;
  v11[5] = statement;
  [arguments enumerateKeysAndObjectsUsingBlock:v11];

  hmbBindDataSQLite3(statement, [(HMBSQLQueryIterator *)self sequenceBindOffset], sequenceCopy, error);
  hmbBindIntSQLite3(statement, [(HMBLocalZoneQueryResult *)self zoneRowBindOffset], [(HMBLocalZoneQueryResult *)self zoneRow], error);
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

- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequenceColumn:(id *)column error:(id *)error
{
  v10 = sqlite3_column_int64(statement, 0);
  *column = [MEMORY[0x277CBEA90] hmbDataWithSQLite3Column:statement column:1];
  lastReturnedSequence = [(HMBLocalZoneQueryResultRecordIDSequence *)self lastReturnedSequence];
  v12 = [lastReturnedSequence isEqual:*column];

  if (v12)
  {
    returnedIDs = [(HMBLocalZoneQueryResultRecordIDSequence *)self returnedIDs];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v15 = [returnedIDs containsObject:v14];

    if (v15)
    {
      *skip = 1;
      v16 = &unk_283EB9E40;
      goto LABEL_7;
    }

    returnedIDs2 = [(HMBLocalZoneQueryResultRecordIDSequence *)self returnedIDs];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [returnedIDs2 addObject:v19];
  }

  else
  {
    [(HMBLocalZoneQueryResultRecordIDSequence *)self setLastReturnedSequence:*column];
    v17 = MEMORY[0x277CBEB58];
    returnedIDs2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v19 = [v17 setWithObject:returnedIDs2];
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
    error = [(HMBSQLQueryIterator *)self error];
    v4 = error == 0;

    if (!v4)
    {
      goto LABEL_38;
    }

    cachedResults = [(HMBSQLQueryIterator *)self cachedResults];
    if (!cachedResults)
    {
      goto LABEL_7;
    }

    cachedResults2 = [(HMBSQLQueryIterator *)self cachedResults];
    if ([cachedResults2 count])
    {

      goto LABEL_29;
    }

    currentSequenceAsData = [(HMBLocalZoneQueryResultRecordIDSequence *)self currentSequenceAsData];
    v8 = currentSequenceAsData == 0;

    if (!v8)
    {
LABEL_7:
      selfCopy = self;
      while (1)
      {
        cachedResults3 = [(HMBSQLQueryIterator *)selfCopy cachedResults];
        if (cachedResults3)
        {
          cachedResults4 = [(HMBSQLQueryIterator *)selfCopy cachedResults];
          if ([cachedResults4 count])
          {

LABEL_28:
            break;
          }

          currentSequenceAsData2 = [(HMBLocalZoneQueryResultRecordIDSequence *)selfCopy currentSequenceAsData];
          v13 = currentSequenceAsData2 == 0;

          if (v13)
          {
            goto LABEL_28;
          }
        }

        maximumRowsPerQuery = [(HMBSQLQueryIterator *)selfCopy maximumRowsPerQuery];
        v59 = 0;
        v60 = &v59;
        v61 = 0x3032000000;
        v62 = __Block_byref_object_copy__5204;
        v63 = __Block_byref_object_dispose__5205;
        v64 = [MEMORY[0x277CBEB18] arrayWithCapacity:maximumRowsPerQuery];
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
        statement = [(HMBSQLQueryIterator *)selfCopy statement];
        context = [statement context];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = ____fetchNextBatch_block_invoke_5207;
        v44[3] = &unk_2786E1770;
        v17 = selfCopy;
        v45 = v17;
        v46 = &v53;
        v47 = &v49;
        v48 = &v59;
        v18 = [context sqlBlockWithActivity:0 block:v44];

        v19 = v60[5];
        if (v19)
        {
          if ((v50[3] & 1) != 0 || [v19 count])
          {
            currentSequenceAsData3 = [(HMBLocalZoneQueryResultRecordIDSequence *)v17 currentSequenceAsData];
            v21 = currentSequenceAsData3 == 0;

            if (!v21)
            {
              [(HMBLocalZoneQueryResultRecordIDSequence *)v17 setCurrentSequenceAsData:v54[5]];
            }

            cachedResults5 = [(HMBSQLQueryIterator *)v17 cachedResults];
            v23 = cachedResults5 == 0;

            if (v23)
            {
              [(HMBSQLQueryIterator *)v17 setCachedResults:v60[5]];
            }

            else
            {
              cachedResults6 = [(HMBSQLQueryIterator *)v17 cachedResults];
              [cachedResults6 addObjectsFromArray:v60[5]];
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
            currentSequence = [(HMBSQLQueryIterator *)v26 currentSequence];
            *buf = v41;
            v66 = v28;
            v67 = 2112;
            v68 = currentSequence;
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
    cachedResults7 = [(HMBSQLQueryIterator *)self cachedResults];
    if (![cachedResults7 count])
    {

LABEL_36:
      [(HMBLocalZoneQueryResultRecordIDSequence *)self setCurrentSequenceAsData:0];
      goto LABEL_38;
    }

    error2 = [(HMBSQLQueryIterator *)self error];
    v33 = error2 == 0;

    if (!v33)
    {
      goto LABEL_36;
    }

    cachedResults8 = [(HMBSQLQueryIterator *)self cachedResults];
    hmf_dequeue = [cachedResults8 hmf_dequeue];

    v43 = 0;
    v36 = [(HMBLocalZoneQueryResultRecordIDSequence *)self fetchRow:hmf_dequeue error:&v43];
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