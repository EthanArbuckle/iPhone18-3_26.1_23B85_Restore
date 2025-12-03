@interface HDDistinctByKeyPathsIterator
- (BOOL)advanceWithError:(id *)error;
- (BOOL)restoreIteratorStateFromData:(id)data error:(id *)error;
- (HDDistinctByKeyPathsIterator)init;
- (HDDistinctByKeyPathsIterator)initWithSourceIterator:(id)iterator keyPaths:(id)paths;
- (id)copyWithZone:(_NSZone *)zone;
- (id)iteratorStateData;
@end

@implementation HDDistinctByKeyPathsIterator

- (HDDistinctByKeyPathsIterator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDistinctByKeyPathsIterator)initWithSourceIterator:(id)iterator keyPaths:(id)paths
{
  iteratorCopy = iterator;
  pathsCopy = paths;
  v10 = pathsCopy;
  if (iteratorCopy)
  {
    if (pathsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDistinctByKeyPathsIterator.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"sourceIterator"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDistinctByKeyPathsIterator.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"keyPaths"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = HDDistinctByKeyPathsIterator;
  v11 = [(HDDistinctByKeyPathsIterator *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceIterator, iterator);
    v13 = [v10 copy];
    keyPaths = v12->_keyPaths;
    v12->_keyPaths = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    seenValues = v12->_seenValues;
    v12->_seenValues = v15;
  }

  return v12;
}

- (BOOL)advanceWithError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_keyPaths count];
  v6 = [(HDSampleIterator *)self->_sourceIterator advanceWithError:error];
  v7 = (v5 == 0) & v6;
  if (v5 && (v6 & 1) != 0)
  {
    while (1)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = self->_keyPaths;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            sample = [(HDSampleIterator *)self->_sourceIterator sample];
            v16 = [sample uniqueIdentifierForDistinctByKeyPath:v14 error:error];

            if (!v16)
            {
              v7 = 0;
              goto LABEL_15;
            }

            [v8 addObject:v16];
          }

          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v9 = [v8 copy];
      if (([(NSMutableSet *)self->_seenValues containsObject:v9]& 1) == 0)
      {
        break;
      }

      v7 = 0;
      if (([(HDSampleIterator *)self->_sourceIterator advanceWithError:error]& 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [(NSMutableSet *)self->_seenValues addObject:v9];
    v7 = 1;
LABEL_15:
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [HDDistinctByKeyPathsIterator allocWithZone:?];
  v6 = [(HDSampleIterator *)self->_sourceIterator copyWithZone:zone];
  v7 = [(HDDistinctByKeyPathsIterator *)v5 initWithSourceIterator:v6 keyPaths:self->_keyPaths];

  v8 = [(NSMutableSet *)self->_seenValues mutableCopy];
  seenValues = v7->_seenValues;
  v7->_seenValues = v8;

  return v7;
}

- (BOOL)restoreIteratorStateFromData:(id)data error:(id *)error
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v8 = [[v6 alloc] initForReadingFromData:dataCopy error:error];

  if (v8)
  {
    v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"SourceIteratorState"];
    if (v9)
    {
      if ([(HDSampleIterator *)self->_sourceIterator restoreIteratorStateFromData:v9 error:error])
      {
        v10 = MEMORY[0x277CBEB98];
        v22[0] = objc_opt_class();
        v22[1] = objc_opt_class();
        v22[2] = objc_opt_class();
        v22[3] = objc_opt_class();
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
        v12 = [v10 setWithArray:v11];
        v13 = [v8 decodeObjectOfClasses:v12 forKey:@"SeenValues"];

        v14 = v13 != 0;
        if (v13)
        {
          v15 = [v13 mutableCopy];
          seenValues = self->_seenValues;
          self->_seenValues = v15;
        }

        else
        {
          seenValues = [v8 error];
          if (seenValues)
          {
            if (error)
            {
              v19 = seenValues;
              *error = seenValues;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      error = [v8 error];
      if (error)
      {
        if (error)
        {
          v18 = error;
          *error = error;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    v14 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v14 = 0;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)iteratorStateData
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  iteratorStateData = [(HDSampleIterator *)self->_sourceIterator iteratorStateData];
  [v3 encodeObject:iteratorStateData forKey:@"SourceIteratorState"];

  [v3 encodeObject:self->_seenValues forKey:@"SeenValues"];
  encodedData = [v3 encodedData];

  return encodedData;
}

@end