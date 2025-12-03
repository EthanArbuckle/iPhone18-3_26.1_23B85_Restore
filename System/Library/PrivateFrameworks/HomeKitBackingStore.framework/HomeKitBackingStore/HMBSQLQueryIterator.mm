@interface HMBSQLQueryIterator
- (HMBSQLQueryIterator)initWithStatement:(id)statement initialSequence:(id)sequence maximumRowsPerSelect:(unint64_t)select error:(id)error;
- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error;
- (id)nextObject;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation HMBSQLQueryIterator

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    nextObject = [(HMBSQLQueryIterator *)self nextObject];
    if (nextObject)
    {
      blockCopy[2](blockCopy, nextObject, &v7);
    }

    objc_autoreleasePoolPop(v5);
  }

  while (nextObject && !v7);
}

- (id)nextObject
{
  v75 = *MEMORY[0x277D85DE8];
  error = [(HMBSQLQueryIterator *)self error];
  v4 = error == 0;

  if (!v4)
  {
    goto LABEL_2;
  }

  *&v5 = 138543874;
  v46 = v5;
  while (1)
  {
    cachedResults = [(HMBSQLQueryIterator *)self cachedResults];
    if (!cachedResults)
    {
      goto LABEL_11;
    }

    cachedResults2 = [(HMBSQLQueryIterator *)self cachedResults];
    if ([cachedResults2 count])
    {

      goto LABEL_33;
    }

    currentSequence = [(HMBSQLQueryIterator *)self currentSequence];
    v12 = currentSequence == 0;

    if (!v12)
    {
LABEL_11:
      selfCopy = self;
      while (1)
      {
        cachedResults3 = [(HMBSQLQueryIterator *)selfCopy cachedResults];
        if (cachedResults3)
        {
          cachedResults4 = [(HMBSQLQueryIterator *)selfCopy cachedResults];
          if ([cachedResults4 count])
          {

LABEL_32:
            break;
          }

          currentSequence2 = [(HMBSQLQueryIterator *)selfCopy currentSequence];
          v17 = currentSequence2 == 0;

          if (v17)
          {
            goto LABEL_32;
          }
        }

        maximumRowsPerQuery = [(HMBSQLQueryIterator *)selfCopy maximumRowsPerQuery];
        v63 = 0;
        v64 = &v63;
        v65 = 0x3032000000;
        v66 = __Block_byref_object_copy_;
        v67 = __Block_byref_object_dispose_;
        v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:maximumRowsPerQuery];
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 0;
        sequenceBindOffset = [(HMBSQLQueryIterator *)selfCopy sequenceBindOffset];
        statement = [(HMBSQLQueryIterator *)selfCopy statement];
        context = [statement context];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = ____fetchNextBatch_block_invoke;
        v48[3] = &unk_2786E0358;
        v54 = sequenceBindOffset;
        v22 = selfCopy;
        v49 = v22;
        v50 = &v55;
        v51 = &v59;
        v52 = &v63;
        v53 = maximumRowsPerQuery;
        v23 = [context sqlBlockWithActivity:0 block:v48];

        v24 = v64[5];
        if (v24)
        {
          if ((v56[3] & 1) != 0 || [v24 count])
          {
            currentSequence3 = [(HMBSQLQueryIterator *)v22 currentSequence];
            v26 = currentSequence3 == 0;

            if (!v26)
            {
              v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60[3]];
              [(HMBSQLQueryIterator *)v22 setCurrentSequence:v27];
            }

            cachedResults5 = [(HMBSQLQueryIterator *)v22 cachedResults];
            v29 = cachedResults5 == 0;

            if (v29)
            {
              [(HMBSQLQueryIterator *)v22 setCachedResults:v64[5]];
            }

            else
            {
              cachedResults6 = [(HMBSQLQueryIterator *)v22 cachedResults];
              [cachedResults6 addObjectsFromArray:v64[5]];
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
            currentSequence4 = [(HMBSQLQueryIterator *)v32 currentSequence];
            *buf = v46;
            v70 = v34;
            v71 = 2112;
            v72 = currentSequence4;
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
    cachedResults7 = [(HMBSQLQueryIterator *)self cachedResults];
    if (![cachedResults7 count])
    {

LABEL_42:
      [(HMBSQLQueryIterator *)self setCurrentSequence:0];
      goto LABEL_2;
    }

    error2 = [(HMBSQLQueryIterator *)self error];
    v39 = error2 == 0;

    if (!v39)
    {
      goto LABEL_42;
    }

    cachedResults8 = [(HMBSQLQueryIterator *)self cachedResults];
    hmf_dequeue = [cachedResults8 hmf_dequeue];

    v47 = 0;
    v6 = [(HMBSQLQueryIterator *)self fetchRow:hmf_dequeue error:&v47];
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

    error3 = [(HMBSQLQueryIterator *)self error];
    v45 = error3 == 0;

    if (!v45)
    {
      goto LABEL_2;
    }
  }

LABEL_3:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error
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

- (HMBSQLQueryIterator)initWithStatement:(id)statement initialSequence:(id)sequence maximumRowsPerSelect:(unint64_t)select error:(id)error
{
  statementCopy = statement;
  sequenceCopy = sequence;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = HMBSQLQueryIterator;
  v14 = [(HMBSQLQueryIterator *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_statement, statement);
    cachedResults = v15->_cachedResults;
    v15->_cachedResults = 0;

    objc_storeStrong(&v15->_currentSequence, sequence);
    v15->_maximumRowsPerQuery = select;
    objc_storeStrong(&v15->_error, error);
    arguments = [statementCopy arguments];
    v18 = [arguments hmf_numberForKey:@"_sequence_offset"];

    v15->_sequenceBindOffset = [v18 intValue];
  }

  return v15;
}

@end