@interface HDMultiTypeSortedSampleIterator
- (BOOL)advanceWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)restoreIteratorStateFromData:(id)data error:(id *)error;
- (HDMultiTypeSortedSampleIterator)init;
- (HDMultiTypeSortedSampleIterator)initWithQueryDescriptors:(id)descriptors includeDeletedObjects:(BOOL)objects anchor:(id)anchor sortDescriptors:(id)sortDescriptors bufferSize:(int64_t)size profile:(id)profile;
- (id)copyWithZone:(_NSZone *)zone;
- (id)iteratorStateData;
- (unint64_t)hash;
@end

@implementation HDMultiTypeSortedSampleIterator

- (HDMultiTypeSortedSampleIterator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

HDSortedSampleIterator *__138__HDMultiTypeSortedSampleIterator__upstreamIteratorsWithQueryDescriptors_includeDeletedObjects_sortDescriptors_anchor_bufferSize_profile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HDSortedSampleIterator alloc] initWithQueryDescriptor:v3 includeDeletedObjects:*(a1 + 64) sortDescriptors:*(a1 + 32) anchor:*(a1 + 40) bufferSize:*(a1 + 56) profile:*(a1 + 48)];

  return v4;
}

- (HDMultiTypeSortedSampleIterator)initWithQueryDescriptors:(id)descriptors includeDeletedObjects:(BOOL)objects anchor:(id)anchor sortDescriptors:(id)sortDescriptors bufferSize:(int64_t)size profile:(id)profile
{
  objectsCopy = objects;
  descriptorsCopy = descriptors;
  anchorCopy = anchor;
  sortDescriptorsCopy = sortDescriptors;
  profileCopy = profile;
  if (![descriptorsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDMultiTypeSortedSampleIterator.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"queryDescriptors.count > 0"}];
  }

  v30.receiver = self;
  v30.super_class = HDMultiTypeSortedSampleIterator;
  v19 = [(HDMultiTypeSortedSampleIterator *)&v30 init];
  if (v19)
  {
    v20 = [descriptorsCopy copy];
    queryDescriptors = v19->_queryDescriptors;
    v19->_queryDescriptors = v20;

    if (objectsCopy && [sortDescriptorsCopy count])
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v19 file:@"HDMultiTypeSortedSampleIterator.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"includeDeletedObjects == NO || (includeDeletedObjects && sortDescriptors.count == 0)"}];
    }

    v19->_includeDeletedObjects = objectsCopy;
    v22 = [sortDescriptorsCopy copy];
    sortDescriptors = v19->_sortDescriptors;
    v19->_sortDescriptors = v22;

    v19->_bufferSize = size;
    objc_storeWeak(&v19->_profile, profileCopy);
    v24 = [anchorCopy copy];
    anchor = v19->_anchor;
    v19->_anchor = v24;

    nextIterator = v19->_nextIterator;
    v19->_nextIterator = 0;

    v19->_isInitialized = 0;
  }

  return v19;
}

BOOL __62__HDMultiTypeSortedSampleIterator__prepareIteratorsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sample];
  v3 = v2 == 0;

  return v3;
}

uint64_t __62__HDMultiTypeSortedSampleIterator__prepareIteratorsWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v19 = 0;
        v11 = [v10 advanceWithError:&v19];
        v12 = v19;
        v13 = v12;
        if ((v11 & 1) == 0)
        {
          if (([v12 hk_isHealthKitErrorWithCode:900] & 1) == 0)
          {
            v15 = v13;
            if (v15)
            {
              if (a3)
              {
                v16 = v15;
                *a3 = v15;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v14 = 0;
            goto LABEL_17;
          }

          [*(a1 + 40) addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)advanceWithError:(id *)error
{
  errorCopy3 = error;
  selfCopy4 = self;
  v82 = *MEMORY[0x277D85DE8];
  if (!self->_isInitialized)
  {
    queryDescriptors = self->_queryDescriptors;
    includeDeletedObjects = self->_includeDeletedObjects;
    anchor = self->_anchor;
    sortDescriptors = self->_sortDescriptors;
    bufferSize = self->_bufferSize;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v11 = sortDescriptors;
    v12 = anchor;
    v13 = WeakRetained;
    v14 = queryDescriptors;
    objc_opt_self();
    v73 = MEMORY[0x277D85DD0];
    v74 = 3221225472;
    v75 = __138__HDMultiTypeSortedSampleIterator__upstreamIteratorsWithQueryDescriptors_includeDeletedObjects_sortDescriptors_anchor_bufferSize_profile___block_invoke;
    v76 = &unk_278624DA0;
    v81 = includeDeletedObjects;
    v77 = v11;
    v78 = v12;
    v79 = v13;
    v80 = bufferSize;
    v15 = v13;
    v16 = v12;
    v17 = v11;
    v18 = [(NSArray *)v14 hk_map:&v73];

    v19 = [v18 mutableCopy];
    iterators = self->_iterators;
    self->_iterators = v19;

    selfCopy4 = self;
    v21 = [(NSMutableArray *)self->_iterators hk_filter:&__block_literal_global_154];
    if ([v21 count])
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v23 = objc_loadWeakRetained(&self->_profile);
      database = [v23 database];
      v73 = MEMORY[0x277D85DD0];
      v74 = 3221225472;
      v75 = __62__HDMultiTypeSortedSampleIterator__prepareIteratorsWithError___block_invoke_2;
      v76 = &unk_278613218;
      v25 = v21;
      v77 = v25;
      v78 = v22;
      v26 = v22;
      errorCopy3 = error;
      v27 = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:database error:error block:&v73];

      selfCopy4 = self;
      [(NSMutableArray *)self->_iterators removeObjectsInArray:v26];

      if (!v27)
      {
        goto LABEL_43;
      }
    }

    else
    {

      errorCopy3 = error;
    }

    selfCopy4->_isInitialized = 1;
  }

  nextIterator = selfCopy4->_nextIterator;
  if (nextIterator)
  {
    v67 = 0;
    v29 = [(HDSortedSampleIterator *)nextIterator advanceWithError:&v67];
    v30 = v67;
    v31 = v30;
    if (!v29)
    {
      if (([v30 hk_isHealthKitErrorWithCode:900] & 1) == 0)
      {
        v55 = v31;
        if (v55)
        {
          if (errorCopy3)
          {
            v56 = v55;
            *errorCopy3 = v55;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        goto LABEL_43;
      }

      [(NSMutableArray *)selfCopy4->_iterators removeObject:selfCopy4->_nextIterator];
    }
  }

  if (![(NSMutableArray *)selfCopy4->_iterators count])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:errorCopy3 code:900 format:@"All child iterators of the multi-type iterator are exhausted"];
LABEL_43:
    result = 0;
    goto LABEL_44;
  }

  firstObject = [(NSMutableArray *)selfCopy4->_iterators firstObject];
  v33 = selfCopy4->_nextIterator;
  selfCopy4->_nextIterator = firstObject;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = selfCopy4->_iterators;
  v62 = [(NSMutableArray *)obj countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v62)
  {
    v59 = *v64;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v64 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v63 + 1) + 8 * i);
        v36 = selfCopy4->_sortDescriptors;
        v37 = selfCopy4->_nextIterator;
        v38 = v35;
        v39 = v36;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v40 = v39;
        v41 = [(NSArray *)v40 countByEnumeratingWithState:&v68 objects:&v73 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v69;
          while (2)
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v69 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v68 + 1) + 8 * j);
              sample = [(HDSortedSampleIterator *)v37 sample];
              sample2 = [(HDSortedSampleIterator *)v38 sample];
              v48 = [v45 compareObject:sample toObject:sample2];

              if (v48)
              {
                if (v48 == -1)
                {
                  v51 = v37;
                }

                else
                {
                  v51 = v38;
                }

                v52 = v51;

                goto LABEL_34;
              }
            }

            v42 = [(NSArray *)v40 countByEnumeratingWithState:&v68 objects:&v73 count:16];
            if (v42)
            {
              continue;
            }

            break;
          }
        }

        objectID = [(HDSortedSampleIterator *)v37 objectID];
        if (objectID >= [(HDSortedSampleIterator *)v38 objectID])
        {
          v50 = v38;
        }

        else
        {
          v50 = v37;
        }

        v52 = v50;
LABEL_34:

        selfCopy4 = self;
        v53 = self->_nextIterator;
        self->_nextIterator = v52;
      }

      v62 = [(NSMutableArray *)obj countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v62);
  }

  result = 1;
LABEL_44:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_queryDescriptors hash];
  v4 = [(NSArray *)self->_sortDescriptors hash]^ v3;
  v5 = v4 ^ [(HKSortedQueryAnchor *)self->_anchor hash]^ self->_bufferSize;
  return v5 ^ [(HDSortedSampleIterator *)self->_nextIterator hash]^ self->_includeDeletedObjects ^ self->_isInitialized;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      queryDescriptors = self->_queryDescriptors;
      v7 = v5->_queryDescriptors;
      v14 = (queryDescriptors == v7 || v7 && [(NSArray *)queryDescriptors isEqualToArray:?]) && ((sortDescriptors = self->_sortDescriptors, v9 = v5->_sortDescriptors, sortDescriptors == v9) || v9 && [(NSArray *)sortDescriptors isEqual:?]) && ((anchor = self->_anchor, v11 = v5->_anchor, anchor == v11) || v11 && [(HKSortedQueryAnchor *)anchor isEqual:?]) && self->_bufferSize == v5->_bufferSize && ((nextIterator = self->_nextIterator, v13 = v5->_nextIterator, nextIterator == v13) || v13 && [(HDSortedSampleIterator *)nextIterator isEqual:?]) && self->_isInitialized == v5->_isInitialized && self->_includeDeletedObjects == v5->_includeDeletedObjects;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [HDMultiTypeSortedSampleIterator alloc];
  if (v5)
  {
    v21.receiver = v5;
    v21.super_class = HDMultiTypeSortedSampleIterator;
    v6 = [(HDMultiTypeSortedSampleIterator *)&v21 init];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSArray *)self->_queryDescriptors copyWithZone:zone];
  queryDescriptors = v6->_queryDescriptors;
  v6->_queryDescriptors = v7;

  v9 = [(NSArray *)self->_sortDescriptors copyWithZone:zone];
  sortDescriptors = v6->_sortDescriptors;
  v6->_sortDescriptors = v9;

  v11 = [(HKSortedQueryAnchor *)self->_anchor copyWithZone:zone];
  anchor = v6->_anchor;
  v6->_anchor = v11;

  v6->_bufferSize = self->_bufferSize;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  objc_storeWeak(&v6->_profile, WeakRetained);

  v6->_includeDeletedObjects = self->_includeDeletedObjects;
  v14 = [(NSMutableArray *)self->_iterators hk_map:&__block_literal_global_321_0];
  v15 = [v14 mutableCopy];
  iterators = v6->_iterators;
  v6->_iterators = v15;

  v17 = [(NSMutableArray *)self->_iterators indexOfObject:self->_nextIterator];
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [(HDSortedSampleIterator *)self->_nextIterator copyWithZone:zone];
  }

  else
  {
    v18 = [(NSMutableArray *)v6->_iterators objectAtIndexedSubscript:v17];
  }

  nextIterator = v6->_nextIterator;
  v6->_nextIterator = v18;

  v6->_isInitialized = self->_isInitialized;
  return v6;
}

id __48__HDMultiTypeSortedSampleIterator_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (BOOL)restoreIteratorStateFromData:(id)data error:(id *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (self->_isInitialized)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDMultiTypeSortedSampleIterator.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"!_isInitialized"}];
  }

  v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:error];
  if (v8)
  {
    v9 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v8 decodeObjectOfClasses:v11 forKey:@"CurrentAnchor"];

    v13 = v12 != 0;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
        anchor = self->_anchor;
        self->_anchor = v14;
      }

      else
      {
        anchor = self->_anchor;
        self->_anchor = 0;
      }
    }

    else
    {
      anchor = [v8 error];
      if (anchor)
      {
        if (error)
        {
          v16 = anchor;
          *error = anchor;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)iteratorStateData
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  nextAnchor = [(HDSortedSampleIterator *)self->_nextIterator nextAnchor];
  if (nextAnchor)
  {
    [v3 encodeObject:nextAnchor forKey:@"CurrentAnchor"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v3 encodeObject:null forKey:@"CurrentAnchor"];
  }

  encodedData = [v3 encodedData];

  return encodedData;
}

@end