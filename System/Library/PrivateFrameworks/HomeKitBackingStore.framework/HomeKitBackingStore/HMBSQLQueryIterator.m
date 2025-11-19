@interface HMBSQLQueryIterator
- (HMBSQLQueryIterator)initWithStatement:(id)a3 initialSequence:(id)a4 maximumRowsPerSelect:(unint64_t)a5 error:(id)a6;
- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6;
- (id)nextObject;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation HMBSQLQueryIterator

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v7 = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(HMBSQLQueryIterator *)self nextObject];
    if (v6)
    {
      v4[2](v4, v6, &v7);
    }

    objc_autoreleasePoolPop(v5);
  }

  while (v6 && !v7);
}

- (id)nextObject
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = [(HMBSQLQueryIterator *)self error];
  v4 = v3 == 0;

  if (!v4)
  {
    goto LABEL_2;
  }

  *&v5 = 138543874;
  v46 = v5;
  while (1)
  {
    v9 = [(HMBSQLQueryIterator *)self cachedResults];
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [(HMBSQLQueryIterator *)self cachedResults];
    if ([v10 count])
    {

      goto LABEL_33;
    }

    v11 = [(HMBSQLQueryIterator *)self currentSequence];
    v12 = v11 == 0;

    if (!v12)
    {
LABEL_11:
      v13 = self;
      while (1)
      {
        v14 = [(HMBSQLQueryIterator *)v13 cachedResults];
        if (v14)
        {
          v15 = [(HMBSQLQueryIterator *)v13 cachedResults];
          if ([v15 count])
          {

LABEL_32:
            break;
          }

          v16 = [(HMBSQLQueryIterator *)v13 currentSequence];
          v17 = v16 == 0;

          if (v17)
          {
            goto LABEL_32;
          }
        }

        v18 = [(HMBSQLQueryIterator *)v13 maximumRowsPerQuery];
        v63 = 0;
        v64 = &v63;
        v65 = 0x3032000000;
        v66 = __Block_byref_object_copy_;
        v67 = __Block_byref_object_dispose_;
        v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:v18];
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 0;
        v19 = [(HMBSQLQueryIterator *)v13 sequenceBindOffset];
        v20 = [(HMBSQLQueryIterator *)v13 statement];
        v21 = [v20 context];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = ____fetchNextBatch_block_invoke;
        v48[3] = &unk_2786E0358;
        v54 = v19;
        v22 = v13;
        v49 = v22;
        v50 = &v55;
        v51 = &v59;
        v52 = &v63;
        v53 = v18;
        v23 = [v21 sqlBlockWithActivity:0 block:v48];

        v24 = v64[5];
        if (v24)
        {
          if ((v56[3] & 1) != 0 || [v24 count])
          {
            v25 = [(HMBSQLQueryIterator *)v22 currentSequence];
            v26 = v25 == 0;

            if (!v26)
            {
              v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60[3]];
              [(HMBSQLQueryIterator *)v22 setCurrentSequence:v27];
            }

            v28 = [(HMBSQLQueryIterator *)v22 cachedResults];
            v29 = v28 == 0;

            if (v29)
            {
              [(HMBSQLQueryIterator *)v22 setCachedResults:v64[5]];
            }

            else
            {
              v30 = [(HMBSQLQueryIterator *)v22 cachedResults];
              [v30 addObjectsFromArray:v64[5]];
            }

            v36 = 1;
            goto LABEL_28;
          }

          [(HMBSQLQueryIterator *)v22 setCurrentSequence:0];
        }

        else
        {
          v31 = objc_autoreleasePoolPush();
          v32 = v22;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            v35 = [(HMBSQLQueryIterator *)v32 currentSequence];
            *buf = v46;
            v70 = v34;
            v71 = 2112;
            v72 = v35;
            v73 = 2112;
            v74 = v23;
            _os_log_impl(&dword_22AD27000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch additional items into query enumeration %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v31);
          [(HMBSQLQueryIterator *)v32 setError:v23];
          [(HMBSQLQueryIterator *)v32 setCurrentSequence:0];
          [(HMBSQLQueryIterator *)v32 setCachedResults:0];
        }

        v36 = 0;
LABEL_28:

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v63, 8);

        if ((v36 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_33:
    v37 = [(HMBSQLQueryIterator *)self cachedResults];
    if (![v37 count])
    {

LABEL_42:
      [(HMBSQLQueryIterator *)self setCurrentSequence:0];
      goto LABEL_2;
    }

    v38 = [(HMBSQLQueryIterator *)self error];
    v39 = v38 == 0;

    if (!v39)
    {
      goto LABEL_42;
    }

    v40 = [(HMBSQLQueryIterator *)self cachedResults];
    v41 = [v40 hmf_dequeue];

    v47 = 0;
    v6 = [(HMBSQLQueryIterator *)self fetchRow:v41 error:&v47];
    v42 = v47;
    v43 = v42;
    if (v6)
    {
      break;
    }

    if (![v42 isHMFError] || objc_msgSend(v43, "code") != 2)
    {
      [(HMBSQLQueryIterator *)self setError:v43];
      [(HMBSQLQueryIterator *)self setCurrentSequence:0];

LABEL_2:
      v6 = 0;
      goto LABEL_3;
    }

    v44 = [(HMBSQLQueryIterator *)self error];
    v45 = v44 == 0;

    if (!v45)
    {
      goto LABEL_2;
    }
  }

LABEL_3:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)fetchRowFromStatement:(sqlite3_stmt *)a3 skip:(BOOL *)a4 updatedSequence:(unint64_t *)a5 error:(id *)a6
{
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (HMBSQLQueryIterator)initWithStatement:(id)a3 initialSequence:(id)a4 maximumRowsPerSelect:(unint64_t)a5 error:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HMBSQLQueryIterator;
  v14 = [(HMBSQLQueryIterator *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_statement, a3);
    cachedResults = v15->_cachedResults;
    v15->_cachedResults = 0;

    objc_storeStrong(&v15->_currentSequence, a4);
    v15->_maximumRowsPerQuery = a5;
    objc_storeStrong(&v15->_error, a6);
    v17 = [v11 arguments];
    v18 = [v17 hmf_numberForKey:@"_sequence_offset"];

    v15->_sequenceBindOffset = [v18 intValue];
  }

  return v15;
}

@end