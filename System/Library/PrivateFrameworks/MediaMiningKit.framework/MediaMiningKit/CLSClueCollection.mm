@interface CLSClueCollection
- (BOOL)hasMeaningClueWithKey:(id)key andValue:(id)value;
- (BOOL)hasMeaningClueWithKey:(id)key value:(id)value andMinimumScore:(double)score;
- (BOOL)hasOutputClueWithKey:(id)key andValue:(id)value;
- (BOOL)hasOutputClueWithKey:(id)key value:(id)value andMinimumScore:(double)score;
- (CLSClueCollection)initWithServiceManager:(id)manager;
- (CLSMeaningClue)locationMobilityClue;
- (double)timeInterval;
- (id)description;
- (id)inputClues;
- (id)inputCluesForKey:(id)key;
- (id)localDates;
- (id)localEndDate;
- (id)localStartDate;
- (id)locationPlacemarks;
- (id)locationRegions;
- (id)locationRegionsInPlacemarks;
- (id)locations;
- (id)meaningClues;
- (id)meaningCluesForKey:(id)key;
- (id)meaningCluesForKey:(id)key andValue:(id)value;
- (id)outputClues;
- (id)outputCluesForKey:(id)key;
- (id)outputCluesForKey:(id)key andValue:(id)value;
- (id)peopleDescriptionWithoutPeople:(id)people;
- (id)peopleNames;
- (id)uniqueInputClues;
- (id)uniqueMeaningClueForKey:(id)key andValue:(id)value;
- (id)uniqueMeaningClues;
- (id)uniqueMeaningCluesForKey:(id)key;
- (id)uniqueOutputClueForKey:(id)key andValue:(id)value;
- (id)uniqueOutputClues;
- (id)uniqueOutputCluesForKey:(id)key;
- (id)universalDateInterval;
- (id)universalDates;
- (id)universalEndDate;
- (id)universalStartDate;
- (int64_t)year;
- (unint64_t)numberOfLocations;
- (unint64_t)numberOfPersons;
- (unint64_t)numberOfTimes;
- (void)_incrementVersionCount;
- (void)_mergeInputClue:(id)clue;
- (void)_mergeMeaningClue:(id)clue;
- (void)_mergeOutputClue:(id)clue;
- (void)enumerateLocationClues:(id)clues;
- (void)enumeratePeopleClues:(id)clues;
- (void)enumerateTimeClues:(id)clues;
- (void)enumerateTimeOfDayClues:(id)clues;
- (void)mergeClues:(id)clues;
- (void)prepareWithProgressBlock:(id)block;
@end

@implementation CLSClueCollection

- (id)peopleDescriptionWithoutPeople:(id)people
{
  peopleCopy = people;
  v5 = [(CLSClueCollection *)self outputCluesForKey:@"People Relationship"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"value != %@", @"Myself"];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  if (peopleCopy)
  {
    v8 = MEMORY[0x277CCAC30];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__CLSClueCollection_peopleDescriptionWithoutPeople___block_invoke;
    v15[3] = &unk_2788A8128;
    v16 = peopleCopy;
    v9 = [v8 predicateWithBlock:v15];
    v10 = [v7 filteredArrayUsingPredicate:v9];

    v7 = v10;
  }

  v11 = [v7 valueForKey:@"relatedPerson"];
  v12 = [v7 valueForKey:@"score"];
  v13 = [CLSPersonIdentity presentationStringForPeople:v11 withScores:v12];

  return v13;
}

uint64_t __52__CLSClueCollection_peopleDescriptionWithoutPeople___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 relatedPerson];
  LODWORD(a1) = [*(a1 + 32) containsObject:v3];

  return a1 ^ 1;
}

- (void)mergeClues:(id)clues
{
  v24 = *MEMORY[0x277D85DE8];
  cluesCopy = clues;
  os_unfair_recursive_lock_lock_with_options();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = cluesCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = off_2788A6000;
    v10 = off_2788A6000;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CLSClueCollection *)self _mergeInputClue:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CLSClueCollection *)self _mergeOutputClue:v12];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(CLSClueCollection *)self _mergeMeaningClue:v12];
            }

            else
            {
              v13 = v9;
              v14 = v10;
              v15 = +[CLSLogging sharedLogging];
              loggingConnection = [v15 loggingConnection];

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v22 = v12;
                _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot merge clue: %@", buf, 0xCu);
              }

              v10 = v14;
              v9 = v13;
            }
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  [(CLSClueCollection *)self _incrementVersionCount];
  os_unfair_recursive_lock_unlock();
}

- (void)_mergeMeaningClue:(id)clue
{
  clueCopy = clue;
  meaningCluesByKey = self->_meaningCluesByKey;
  v14 = clueCopy;
  v6 = [clueCopy key];
  strongToStrongObjectsMapTable = [(NSMapTable *)meaningCluesByKey objectForKey:v6];

  if (strongToStrongObjectsMapTable)
  {
    value = [v14 value];
    v9 = [strongToStrongObjectsMapTable objectForKey:value];

    if (!v9)
    {
      v9 = objc_opt_new();
      value2 = [v14 value];
      [strongToStrongObjectsMapTable setObject:v9 forKey:value2];
    }

    [v9 addObject:v14];
  }

  else
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v11 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
    value3 = [v14 value];
    [strongToStrongObjectsMapTable setObject:v11 forKey:value3];

    v13 = self->_meaningCluesByKey;
    v9 = [v14 key];
    [(NSMapTable *)v13 setObject:strongToStrongObjectsMapTable forKey:v9];
  }
}

- (void)_mergeOutputClue:(id)clue
{
  clueCopy = clue;
  outputCluesByKey = self->_outputCluesByKey;
  v14 = clueCopy;
  v6 = [clueCopy key];
  strongToStrongObjectsMapTable = [(NSMapTable *)outputCluesByKey objectForKey:v6];

  if (strongToStrongObjectsMapTable)
  {
    value = [v14 value];
    v9 = [strongToStrongObjectsMapTable objectForKey:value];

    if (!v9)
    {
      v9 = objc_opt_new();
      value2 = [v14 value];
      [strongToStrongObjectsMapTable setObject:v9 forKey:value2];
    }

    [v9 addObject:v14];
  }

  else
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v11 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
    value3 = [v14 value];
    [strongToStrongObjectsMapTable setObject:v11 forKey:value3];

    v13 = self->_outputCluesByKey;
    v9 = [v14 key];
    [(NSMapTable *)v13 setObject:strongToStrongObjectsMapTable forKey:v9];
  }
}

- (void)_mergeInputClue:(id)clue
{
  clueCopy = clue;
  inputCluesByKey = self->_inputCluesByKey;
  v10 = clueCopy;
  v6 = [clueCopy key];
  v7 = [(NSMapTable *)inputCluesByKey objectForKey:v6];

  if (v7)
  {
    [v7 addObject:v10];
  }

  else
  {
    v7 = objc_opt_new();
    [v7 addObject:v10];
    v8 = self->_inputCluesByKey;
    v9 = [v10 key];
    [(NSMapTable *)v8 setObject:v7 forKey:v9];
  }
}

- (void)prepareWithProgressBlock:(id)block
{
  v14 = *MEMORY[0x277D85DE8];
  [(CLSInputClue *)self->_mePersonClue prepareIfNeeded];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  inputClues = [(CLSClueCollection *)self inputClues];
  v5 = [inputClues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(inputClues);
        }

        [*(*(&v9 + 1) + 8 * v8++) prepareIfNeeded];
      }

      while (v6 != v8);
      v6 = [inputClues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (unint64_t)numberOfPersons
{
  v2 = [(CLSClueCollection *)self inputCluesForKey:@"Global People"];
  v3 = [v2 count];

  return v3;
}

- (id)peopleNames
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CLSClueCollection *)self inputCluesForKey:@"Global People"];
  v4 = [v3 valueForKeyPath:@"name"];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)enumeratePeopleClues:(id)clues
{
  cluesCopy = clues;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_inputCluesByKey objectForKey:@"Global People"];
  v6 = [v5 copy];

  os_unfair_recursive_lock_unlock();
  [v6 enumerateObjectsUsingBlock:cluesCopy];
}

- (unint64_t)numberOfLocations
{
  v2 = [(CLSClueCollection *)self inputCluesForKey:@"Global Location"];
  v3 = [v2 count];

  return v3;
}

- (id)locations
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CLSClueCollection *)self inputCluesForKey:@"Global Location"];
  v4 = [v3 valueForKeyPath:@"location"];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)locationRegionsInPlacemarks
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CLSClueCollection *)self inputCluesForKey:@"Global Location"];
  v4 = [v3 valueForKeyPath:@"regionInPlacemark"];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)locationRegions
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CLSClueCollection *)self inputCluesForKey:@"Global Location"];
  v4 = [v3 valueForKeyPath:@"region"];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)locationPlacemarks
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CLSClueCollection *)self inputCluesForKey:@"Global Location"];
  v4 = [v3 valueForKeyPath:@"placemark"];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)enumerateLocationClues:(id)clues
{
  cluesCopy = clues;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_inputCluesByKey objectForKey:@"Global Location"];
  v6 = [v5 copy];

  os_unfair_recursive_lock_unlock();
  [v6 enumerateObjectsUsingBlock:cluesCopy];
}

- (unint64_t)numberOfTimes
{
  v2 = [(CLSClueCollection *)self inputCluesForKey:@"Global Time"];
  v3 = [v2 count];

  return v3;
}

- (id)universalDateInterval
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  universalStartDate = [(CLSClueCollection *)self universalStartDate];
  universalEndDate = [(CLSClueCollection *)self universalEndDate];
  v6 = [v3 initWithStartDate:universalStartDate endDate:universalEndDate];

  return v6;
}

- (id)localDates
{
  v3 = MEMORY[0x277CBEB98];
  localStartDate = [(CLSClueCollection *)self localStartDate];
  localEndDate = [(CLSClueCollection *)self localEndDate];
  v6 = [v3 setWithObjects:{localStartDate, localEndDate, 0}];

  return v6;
}

- (id)localEndDate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_inputCluesByKey objectForKey:@"Global Time"];
  v4 = [v3 copy];

  os_unfair_recursive_lock_unlock();
  v5 = [v4 valueForKeyPath:@"localEndDate"];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  lastObject = [v6 lastObject];

  return lastObject;
}

- (id)localStartDate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_inputCluesByKey objectForKey:@"Global Time"];
  v4 = [v3 copy];

  os_unfair_recursive_lock_unlock();
  v5 = [v4 valueForKeyPath:@"localStartDate"];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)universalDates
{
  v3 = MEMORY[0x277CBEB98];
  universalStartDate = [(CLSClueCollection *)self universalStartDate];
  universalEndDate = [(CLSClueCollection *)self universalEndDate];
  v6 = [v3 setWithObjects:{universalStartDate, universalEndDate, 0}];

  return v6;
}

- (id)universalEndDate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_inputCluesByKey objectForKey:@"Global Time"];
  v4 = [v3 copy];

  os_unfair_recursive_lock_unlock();
  v5 = [v4 valueForKeyPath:@"universalEndDate"];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  lastObject = [v6 lastObject];

  return lastObject;
}

- (id)universalStartDate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_inputCluesByKey objectForKey:@"Global Time"];
  v4 = [v3 copy];

  os_unfair_recursive_lock_unlock();
  v5 = [v4 valueForKeyPath:@"universalStartDate"];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (void)enumerateTimeClues:(id)clues
{
  cluesCopy = clues;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_inputCluesByKey objectForKey:@"Global Time"];
  v6 = [v5 copy];

  os_unfair_recursive_lock_unlock();
  [v6 enumerateObjectsUsingBlock:cluesCopy];
}

- (int64_t)year
{
  localEndDate = [(CLSClueCollection *)self localEndDate];
  v3 = [CLSCalendar yearFromDate:localEndDate];

  return v3;
}

- (double)timeInterval
{
  localEndDate = [(CLSClueCollection *)self localEndDate];
  localStartDate = [(CLSClueCollection *)self localStartDate];
  [localEndDate timeIntervalSinceDate:localStartDate];
  v6 = v5;

  return v6;
}

- (CLSMeaningClue)locationMobilityClue
{
  v2 = [(CLSClueCollection *)self meaningCluesForKey:@"Location Mobility"];
  firstObject = [v2 firstObject];

  return firstObject;
}

- (void)enumerateTimeOfDayClues:(id)clues
{
  cluesCopy = clues;
  v5 = [(CLSClueCollection *)self outputCluesForKey:@"Time of Day"];
  [v5 enumerateObjectsUsingBlock:cluesCopy];
}

- (BOOL)hasMeaningClueWithKey:(id)key value:(id)value andMinimumScore:(double)score
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  os_unfair_recursive_lock_lock_with_options();
  v10 = [(NSMapTable *)self->_meaningCluesByKey objectForKey:keyCopy];
  [v10 objectForKey:valueCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * i) score];
        if (v15 >= score)
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
  return v12;
}

- (BOOL)hasMeaningClueWithKey:(id)key andValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  os_unfair_recursive_lock_lock_with_options();
  v8 = [(NSMapTable *)self->_meaningCluesByKey objectForKey:keyCopy];

  v9 = [v8 objectForKey:valueCopy];

  LOBYTE(valueCopy) = [v9 count] != 0;
  os_unfair_recursive_lock_unlock();

  return valueCopy;
}

- (id)uniqueMeaningClueForKey:(id)key andValue:(id)value
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v8 = [CLSMeaningClue clueWithValue:valueCopy forKey:keyCopy];
  v9 = 0.0;
  [v8 setConfidence:0.0];
  [v8 setRelevance:0.0];
  os_unfair_recursive_lock_lock_with_options();
  v10 = [(NSMapTable *)self->_meaningCluesByKey objectForKey:keyCopy];
  v11 = [v10 objectForKey:valueCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v13 = 0.0;
  if (v12)
  {
    v14 = v12;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        [v17 relevance];
        if (v18 >= v13)
        {
          v13 = v18;
        }

        [v17 confidence];
        if (v19 >= v9)
        {
          v9 = v19;
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    [v8 setRelevance:v13];
    [v8 setConfidence:{fmin(v9 + log10(sqrt(objc_msgSend(v11, "count"))), 1.0)}];
  }

  os_unfair_recursive_lock_unlock();
  [v8 score];
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = v8;
  }

  return v21;
}

- (id)meaningCluesForKey:(id)key andValue:(id)value
{
  v6 = MEMORY[0x277CBEB18];
  valueCopy = value;
  keyCopy = key;
  array = [v6 array];
  os_unfair_recursive_lock_lock_with_options();
  v10 = [(NSMapTable *)self->_meaningCluesByKey objectForKey:keyCopy];

  v11 = [v10 objectForKey:valueCopy];

  [array addObjectsFromArray:v11];
  os_unfair_recursive_lock_unlock();

  return array;
}

- (id)uniqueMeaningCluesForKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [MEMORY[0x277CBEB58] set];
  os_unfair_recursive_lock_lock_with_options();
  v6 = [(NSMapTable *)self->_meaningCluesByKey objectForKey:keyCopy];
  v7 = v6;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = NSAllMapTableKeys(v6);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(CLSClueCollection *)self uniqueMeaningClueForKey:keyCopy andValue:*(*(&v15 + 1) + 8 * i), v15];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (id)meaningCluesForKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_recursive_lock_lock_with_options();
  v6 = [(NSMapTable *)self->_meaningCluesByKey objectForKey:keyCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [v6 objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [array addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  os_unfair_recursive_lock_unlock();

  return array;
}

- (id)uniqueMeaningClues
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_recursive_lock_lock_with_options();
  meaningCluesByKey = self->_meaningCluesByKey;
  if (meaningCluesByKey)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = NSAllMapTableKeys(meaningCluesByKey);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(CLSClueCollection *)self uniqueMeaningCluesForKey:*(*(&v12 + 1) + 8 * i), v12];
          [v3 unionSet:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)meaningClues
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_recursive_lock_lock_with_options();
  meaningCluesByKey = self->_meaningCluesByKey;
  if (meaningCluesByKey)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = NSAllMapTableKeys(meaningCluesByKey);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(CLSClueCollection *)self meaningCluesForKey:*(*(&v12 + 1) + 8 * i), v12];
          [array addObjectsFromArray:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  os_unfair_recursive_lock_unlock();

  return array;
}

- (BOOL)hasOutputClueWithKey:(id)key value:(id)value andMinimumScore:(double)score
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  os_unfair_recursive_lock_lock_with_options();
  v10 = [(NSMapTable *)self->_outputCluesByKey objectForKey:keyCopy];
  [v10 objectForKey:valueCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * i) score];
        if (v15 >= score)
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
  return v12;
}

- (BOOL)hasOutputClueWithKey:(id)key andValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  os_unfair_recursive_lock_lock_with_options();
  v8 = [(NSMapTable *)self->_outputCluesByKey objectForKey:keyCopy];

  v9 = [v8 objectForKey:valueCopy];

  LOBYTE(valueCopy) = [v9 count] != 0;
  os_unfair_recursive_lock_unlock();

  return valueCopy;
}

- (id)outputClues
{
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_recursive_lock_lock_with_options();
  outputCluesByKey = self->_outputCluesByKey;
  if (outputCluesByKey)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = NSAllMapTableKeys(outputCluesByKey);
    v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [(NSMapTable *)self->_outputCluesByKey objectForKey:*(*(&v21 + 1) + 8 * i)];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          objectEnumerator = [v9 objectEnumerator];
          v11 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(objectEnumerator);
                }

                [array addObjectsFromArray:*(*(&v17 + 1) + 8 * j)];
              }

              v12 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }
  }

  os_unfair_recursive_lock_unlock();

  return array;
}

- (id)uniqueOutputClues
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_recursive_lock_lock_with_options();
  outputCluesByKey = self->_outputCluesByKey;
  if (outputCluesByKey)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = NSAllMapTableKeys(outputCluesByKey);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(CLSClueCollection *)self uniqueOutputCluesForKey:*(*(&v12 + 1) + 8 * i), v12];
          [v3 unionSet:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)uniqueOutputClueForKey:(id)key andValue:(id)value
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v8 = [CLSOutputClue clueWithValue:valueCopy forKey:keyCopy];
  v9 = 0.0;
  [v8 setConfidence:0.0];
  [v8 setRelevance:0.0];
  os_unfair_recursive_lock_lock_with_options();
  v10 = [(NSMapTable *)self->_outputCluesByKey objectForKey:keyCopy];
  v11 = [v10 objectForKey:valueCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v13 = 0.0;
  if (v12)
  {
    v14 = v12;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        [v17 relevance];
        if (v18 >= v13)
        {
          v13 = v18;
        }

        [v17 confidence];
        if (v19 >= v9)
        {
          v9 = v19;
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    [v8 setRelevance:v13];
    [v8 setConfidence:{fmin(v9 + log10(sqrt(objc_msgSend(v11, "count"))), 1.0)}];
  }

  os_unfair_recursive_lock_unlock();
  [v8 score];
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = v8;
  }

  return v21;
}

- (id)outputCluesForKey:(id)key andValue:(id)value
{
  v6 = MEMORY[0x277CBEB18];
  valueCopy = value;
  keyCopy = key;
  array = [v6 array];
  os_unfair_recursive_lock_lock_with_options();
  v10 = [(NSMapTable *)self->_outputCluesByKey objectForKey:keyCopy];

  v11 = [v10 objectForKey:valueCopy];

  [array addObjectsFromArray:v11];
  os_unfair_recursive_lock_unlock();

  return array;
}

- (id)uniqueOutputCluesForKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [MEMORY[0x277CBEB58] set];
  os_unfair_recursive_lock_lock_with_options();
  v6 = [(NSMapTable *)self->_outputCluesByKey objectForKey:keyCopy];
  v7 = v6;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = NSAllMapTableKeys(v6);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(CLSClueCollection *)self uniqueOutputClueForKey:keyCopy andValue:*(*(&v15 + 1) + 8 * i), v15];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (id)outputCluesForKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_recursive_lock_lock_with_options();
  v6 = [(NSMapTable *)self->_outputCluesByKey objectForKey:keyCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [v6 objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [array addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  os_unfair_recursive_lock_unlock();

  return array;
}

- (id)uniqueInputClues
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_recursive_lock_lock_with_options();
  inputCluesByKey = self->_inputCluesByKey;
  if (inputCluesByKey)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = NSAllMapTableKeys(inputCluesByKey);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MEMORY[0x277CBEB98];
          v11 = [(CLSClueCollection *)self inputCluesForKey:*(*(&v14 + 1) + 8 * i), v14];
          v12 = [v10 setWithArray:v11];
          [v3 unionSet:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)inputClues
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_recursive_lock_lock_with_options();
  inputCluesByKey = self->_inputCluesByKey;
  if (inputCluesByKey)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = NSAllMapTableKeys(inputCluesByKey);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMapTable *)self->_inputCluesByKey objectForKey:*(*(&v12 + 1) + 8 * i), v12];
          [array addObjectsFromArray:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  os_unfair_recursive_lock_unlock();

  return array;
}

- (id)inputCluesForKey:(id)key
{
  v4 = MEMORY[0x277CBEB18];
  keyCopy = key;
  array = [v4 array];
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(NSMapTable *)self->_inputCluesByKey objectForKey:keyCopy];

  [array addObjectsFromArray:v7];
  os_unfair_recursive_lock_unlock();

  return array;
}

- (void)_incrementVersionCount
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_versionCount;
  objc_sync_exit(obj);
}

- (id)description
{
  v178 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<ClueCollection>"];
  os_unfair_recursive_lock_lock_with_options();
  v4 = [@"<Input Clues>" cls_indentBy:1];
  [v3 appendFormat:@"\n%@", v4];

  v5 = MEMORY[0x277CCACA8];
  localDates = [(CLSClueCollection *)self localDates];
  allObjects = [localDates allObjects];
  v8 = [allObjects sortedArrayUsingSelector:sel_compare_];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v5 stringWithFormat:@"dates:[%@]", v9];
  v11 = [v10 cls_indentBy:2];
  [v3 appendFormat:@"\n%@", v11];

  v12 = MEMORY[0x277CCACA8];
  peopleNames = [(CLSClueCollection *)self peopleNames];
  allObjects2 = [peopleNames allObjects];
  v15 = [allObjects2 sortedArrayUsingSelector:sel_compare_];
  v16 = [v15 componentsJoinedByString:{@", "}];
  v17 = [v12 stringWithFormat:@"peoples:[%@]", v16];
  v18 = [v17 cls_indentBy:2];
  [v3 appendFormat:@"\n%@", v18];

  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __32__CLSClueCollection_description__block_invoke;
  v164[3] = &unk_2788A8078;
  v19 = v3;
  v165 = v19;
  [(CLSClueCollection *)self enumerateTimeClues:v164];
  v162[0] = MEMORY[0x277D85DD0];
  v162[1] = 3221225472;
  v162[2] = __32__CLSClueCollection_description__block_invoke_2;
  v162[3] = &unk_2788A80A0;
  v20 = v19;
  v163 = v20;
  [(CLSClueCollection *)self enumerateLocationClues:v162];
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = __32__CLSClueCollection_description__block_invoke_3;
  v160[3] = &unk_2788A80C8;
  v21 = v20;
  v161 = v21;
  [(CLSClueCollection *)self enumeratePeopleClues:v160];
  v22 = [@"<Output Clues>" cls_indentBy:1];
  [v21 appendFormat:@"\n\n%@", v22];

  v23 = objc_opt_new();
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  selfCopy = self;
  obj = [(NSMapTable *)self->_outputCluesByKey objectEnumerator];
  v100 = [obj countByEnumeratingWithState:&v156 objects:v177 count:16];
  if (v100)
  {
    v96 = *v157;
    do
    {
      v24 = 0;
      do
      {
        if (*v157 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v104 = v24;
        v25 = *(*(&v156 + 1) + 8 * v24);
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        objectEnumerator = [v25 objectEnumerator];
        v26 = [objectEnumerator countByEnumeratingWithState:&v152 objects:v176 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v153;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v153 != v28)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              v30 = *(*(&v152 + 1) + 8 * i);
              v148 = 0u;
              v149 = 0u;
              v150 = 0u;
              v151 = 0u;
              v31 = v30;
              v32 = [v31 countByEnumeratingWithState:&v148 objects:v175 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v149;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v149 != v34)
                    {
                      objc_enumerationMutation(v31);
                    }

                    stringValue = [*(*(&v148 + 1) + 8 * j) stringValue];
                    [v23 addObject:stringValue];
                  }

                  v33 = [v31 countByEnumeratingWithState:&v148 objects:v175 count:16];
                }

                while (v33);
              }
            }

            v27 = [objectEnumerator countByEnumeratingWithState:&v152 objects:v176 count:16];
          }

          while (v27);
        }

        v24 = v104 + 1;
      }

      while (v104 + 1 != v100);
      v100 = [obj countByEnumeratingWithState:&v156 objects:v177 count:16];
    }

    while (v100);
  }

  v37 = MEMORY[0x277CCACA8];
  v38 = [v23 sortedArrayUsingSelector:sel_compare_];
  v39 = [v38 componentsJoinedByString:{@", "}];
  v40 = [v37 stringWithFormat:@"values:[%@]", v39];
  v41 = [v40 cls_indentBy:2];
  [v21 appendFormat:@"\n%@", v41];

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  objectEnumerator2 = [(NSMapTable *)selfCopy->_outputCluesByKey objectEnumerator];
  obja = [objectEnumerator2 countByEnumeratingWithState:&v144 objects:v174 count:16];
  if (obja)
  {
    v89 = *v145;
    do
    {
      v42 = 0;
      do
      {
        if (*v145 != v89)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        v97 = v42;
        v43 = *(*(&v144 + 1) + 8 * v42);
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        objectEnumerator3 = [v43 objectEnumerator];
        v109 = [objectEnumerator3 countByEnumeratingWithState:&v140 objects:v173 count:16];
        if (v109)
        {
          v105 = *v141;
          do
          {
            for (k = 0; k != v109; k = k + 1)
            {
              if (*v141 != v105)
              {
                objc_enumerationMutation(objectEnumerator3);
              }

              v45 = *(*(&v140 + 1) + 8 * k);
              v136 = 0u;
              v137 = 0u;
              v138 = 0u;
              v139 = 0u;
              v46 = v45;
              v47 = [v46 countByEnumeratingWithState:&v136 objects:v172 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v137;
                do
                {
                  for (m = 0; m != v48; ++m)
                  {
                    if (*v137 != v49)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v51 = [*(*(&v136 + 1) + 8 * m) description];
                    v52 = [v51 cls_indentBy:2];
                    [v21 appendFormat:@"\n\n%@", v52];
                  }

                  v48 = [v46 countByEnumeratingWithState:&v136 objects:v172 count:16];
                }

                while (v48);
              }
            }

            v109 = [objectEnumerator3 countByEnumeratingWithState:&v140 objects:v173 count:16];
          }

          while (v109);
        }

        v42 = v97 + 1;
      }

      while (v97 + 1 != obja);
      obja = [objectEnumerator2 countByEnumeratingWithState:&v144 objects:v174 count:16];
    }

    while (obja);
  }

  v53 = [@"<Meaning Clues>" cls_indentBy:1];
  [v21 appendFormat:@"\n\n%@", v53];

  v54 = objc_opt_new();
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  objectEnumerator4 = [(NSMapTable *)selfCopy->_meaningCluesByKey objectEnumerator];
  v98 = [objectEnumerator4 countByEnumeratingWithState:&v132 objects:v171 count:16];
  if (v98)
  {
    objb = *v133;
    do
    {
      v55 = 0;
      do
      {
        if (*v133 != objb)
        {
          objc_enumerationMutation(objectEnumerator4);
        }

        v102 = v55;
        v56 = *(*(&v132 + 1) + 8 * v55);
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        objectEnumerator5 = [v56 objectEnumerator];
        v57 = [objectEnumerator5 countByEnumeratingWithState:&v128 objects:v170 count:16];
        if (v57)
        {
          v58 = v57;
          v110 = *v129;
          do
          {
            for (n = 0; n != v58; ++n)
            {
              if (*v129 != v110)
              {
                objc_enumerationMutation(objectEnumerator5);
              }

              v60 = *(*(&v128 + 1) + 8 * n);
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v127 = 0u;
              v61 = v60;
              v62 = [v61 countByEnumeratingWithState:&v124 objects:v169 count:16];
              if (v62)
              {
                v63 = v62;
                v64 = *v125;
                do
                {
                  for (ii = 0; ii != v63; ++ii)
                  {
                    if (*v125 != v64)
                    {
                      objc_enumerationMutation(v61);
                    }

                    stringValue2 = [*(*(&v124 + 1) + 8 * ii) stringValue];
                    [v54 addObject:stringValue2];
                  }

                  v63 = [v61 countByEnumeratingWithState:&v124 objects:v169 count:16];
                }

                while (v63);
              }
            }

            v58 = [objectEnumerator5 countByEnumeratingWithState:&v128 objects:v170 count:16];
          }

          while (v58);
        }

        v55 = v102 + 1;
      }

      while (v102 + 1 != v98);
      v98 = [objectEnumerator4 countByEnumeratingWithState:&v132 objects:v171 count:16];
    }

    while (v98);
  }

  v67 = MEMORY[0x277CCACA8];
  v68 = [v54 sortedArrayUsingSelector:sel_compare_];
  v69 = [v68 componentsJoinedByString:{@", "}];
  v70 = [v67 stringWithFormat:@"values:[%@]", v69];
  v71 = [v70 cls_indentBy:2];
  [v21 appendFormat:@"\n%@", v71];

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  objectEnumerator6 = [(NSMapTable *)selfCopy->_meaningCluesByKey objectEnumerator];
  v91 = [objectEnumerator6 countByEnumeratingWithState:&v120 objects:v168 count:16];
  if (v91)
  {
    v88 = *v121;
    do
    {
      v72 = 0;
      do
      {
        if (*v121 != v88)
        {
          objc_enumerationMutation(objectEnumerator6);
        }

        objc = v72;
        v73 = *(*(&v120 + 1) + 8 * v72);
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        objectEnumerator7 = [v73 objectEnumerator];
        v107 = [objectEnumerator7 countByEnumeratingWithState:&v116 objects:v167 count:16];
        if (v107)
        {
          v103 = *v117;
          do
          {
            v74 = 0;
            do
            {
              if (*v117 != v103)
              {
                objc_enumerationMutation(objectEnumerator7);
              }

              v111 = v74;
              v75 = *(*(&v116 + 1) + 8 * v74);
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v76 = v75;
              v77 = [v76 countByEnumeratingWithState:&v112 objects:v166 count:16];
              if (v77)
              {
                v78 = v77;
                v79 = *v113;
                do
                {
                  for (jj = 0; jj != v78; ++jj)
                  {
                    if (*v113 != v79)
                    {
                      objc_enumerationMutation(v76);
                    }

                    v81 = [*(*(&v112 + 1) + 8 * jj) description];
                    v82 = [v81 cls_indentBy:2];
                    [v21 appendFormat:@"\n\n%@", v82];
                  }

                  v78 = [v76 countByEnumeratingWithState:&v112 objects:v166 count:16];
                }

                while (v78);
              }

              v74 = v111 + 1;
            }

            while (v111 + 1 != v107);
            v107 = [objectEnumerator7 countByEnumeratingWithState:&v116 objects:v167 count:16];
          }

          while (v107);
        }

        v72 = objc + 1;
      }

      while (objc + 1 != v91);
      v91 = [objectEnumerator6 countByEnumeratingWithState:&v120 objects:v168 count:16];
    }

    while (v91);
  }

  os_unfair_recursive_lock_unlock();
  v83 = v21;

  return v21;
}

void __32__CLSClueCollection_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 description];
  v3 = [v4 cls_indentBy:2];
  [v2 appendFormat:@"\n\n%@", v3];
}

void __32__CLSClueCollection_description__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 description];
  v3 = [v4 cls_indentBy:2];
  [v2 appendFormat:@"\n\n%@", v3];
}

void __32__CLSClueCollection_description__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 description];
  v3 = [v4 cls_indentBy:2];
  [v2 appendFormat:@"\n\n%@", v3];
}

- (CLSClueCollection)initWithServiceManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = CLSClueCollection;
  v5 = [(CLSClueCollection *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_versionCount = 1;
    v5->_recursiveLock = 0;
    v7 = objc_opt_new();
    [v7 setRelationship:14];
    v8 = [CLSInputPeopleClue clueWithPeople:v7 serviceManager:managerCopy];
    mePersonClue = v6->_mePersonClue;
    v6->_mePersonClue = v8;

    [(CLSClue *)v6->_mePersonClue setKey:@"__ME_PERSON__INTERNAL__"];
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    inputCluesByKey = v6->_inputCluesByKey;
    v6->_inputCluesByKey = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    outputCluesByKey = v6->_outputCluesByKey;
    v6->_outputCluesByKey = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    meaningCluesByKey = v6->_meaningCluesByKey;
    v6->_meaningCluesByKey = strongToStrongObjectsMapTable3;
  }

  return v6;
}

@end