@interface DBSmartWidgetPrediction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPrediction:(id)a3;
- (BOOL)updateWithPrediction:(id)a3;
- (DBSmartWidgetPrediction)init;
- (DBSmartWidgetPredictionDelegate)delegate;
- (NSArray)validRanges;
- (NSString)shortDescription;
- (double)initialValidInterval;
- (double)maxValue;
- (double)minValue;
- (id)_debugScoreText;
- (id)debugValidRangesText;
- (id)description;
- (id)predictedObjectDescription;
- (int64_t)compare:(id)a3;
- (int64_t)predictionScore;
- (void)addObserver:(id)a3;
- (void)predictionDidUpdate;
- (void)removeObserver:(id)a3;
@end

@implementation DBSmartWidgetPrediction

- (DBSmartWidgetPrediction)init
{
  v6.receiver = self;
  v6.super_class = DBSmartWidgetPrediction;
  v2 = [(DBSmartWidgetPrediction *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AB4610];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (NSArray)validRanges
{
  v52 = *MEMORY[0x277D85DE8];
  validRanges = self->_validRanges;
  if (!validRanges)
  {
    v4 = objc_opt_new();
    [(DBSmartWidgetPrediction *)self initialValidInterval];
    if (v5 < 1.79769313e308)
    {
      v6 = [MEMORY[0x277CBEAA8] date];
      [v6 timeIntervalSinceReferenceDate];
      v8 = floor(v7);

      v9 = MEMORY[0x277CBEAA8];
      [(DBSmartWidgetPrediction *)self initialValidInterval];
      v11 = [v9 dateWithTimeIntervalSinceReferenceDate:v8 + v10];
      v12 = [DBDateRange alloc];
      v13 = [MEMORY[0x277CBEAA8] distantPast];
      v14 = [(DBDateRange *)v12 initWithStart:v13 end:v11];
      [v4 addObject:v14];
    }

    v15 = [(DBSmartWidgetPrediction *)self defaultValidRanges];
    [v4 addObjectsFromArray:v15];

    v16 = objc_opt_new();
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SmartEngineCombineRangesInterval", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v18 = AppIntegerValue;
    }

    else
    {
      v18 = 60.0;
    }

    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v45 + 1) + 8 * i);
          v25 = [v16 lastObject];
          if (v25 && ([v24 startTimeIntervalSinceReferenceDate], v27 = v26 - v18, objc_msgSend(v25, "endTimeIntervalSinceReferenceDate"), v27 < v28))
          {
            [v25 endTimeIntervalSinceReferenceDate];
            v30 = v29;
            [v24 endTimeIntervalSinceReferenceDate];
            if (v30 < v31)
            {
              v32 = [v24 end];
              [v25 setEnd:v32];
            }
          }

          else
          {
            [v16 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v21);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = v16;
    v34 = [(NSArray *)v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v42;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [(DBSmartWidgetPrediction *)self updateRangeIfNeeded:*(*(&v41 + 1) + 8 * j), v41];
        }

        v35 = [(NSArray *)v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v35);
    }

    v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.validRange == YES"];
    [(NSArray *)v33 filterUsingPredicate:v38];
    v39 = self->_validRanges;
    self->_validRanges = v33;

    validRanges = self->_validRanges;
  }

  return validRanges;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBSmartWidgetPrediction *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBSmartWidgetPrediction *)self observers];
  [v5 removeObserver:v4];
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_validRanges;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) description];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = [(DBSmartWidgetPrediction *)self uniqueIdentifier];
  v13 = [(DBSmartWidgetPrediction *)self _debugScoreText];
  v14 = [v3 componentsJoinedByString:{@", "}];
  v15 = [(DBSmartWidgetPrediction *)self predictedObjectDescription];
  v16 = [v10 stringWithFormat:@"<%@: %p uniqueIdentifier=%@ score=%@ validRanges=[%@] predictedObject=%@>", v11, self, v12, v13, v14, v15, v18];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DBSmartWidgetPrediction *)self isEqualToPrediction:v4];
  }

  return v5;
}

- (BOOL)isEqualToPrediction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[DBSmartWidgetPrediction uniqueIdentifier](self, "uniqueIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), [v4 uniqueIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    v8 = [objc_opt_class() isEqualClassSelector];
    v9 = ([(DBSmartWidgetPrediction *)self methodForSelector:v8])(self, v8, v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(DBSmartWidgetPrediction *)self score];
  if (v5 == [v4 score])
  {
    if ([(DBSmartWidgetPrediction *)self isMemberOfClass:objc_opt_class()])
    {
      v6 = [(DBSmartWidgetPrediction *)self tieBreakScore];
      if (v6 > [v4 tieBreakScore])
      {
        v7 = -1;
        goto LABEL_11;
      }

      v9 = [(DBSmartWidgetPrediction *)self tieBreakScore];
      if (v9 < [v4 tieBreakScore])
      {
        v7 = 1;
        goto LABEL_11;
      }
    }

    v7 = 0;
    goto LABEL_11;
  }

  v8 = [(DBSmartWidgetPrediction *)self score];
  if (v8 > [v4 score])
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_11:

  return v7;
}

- (id)_debugScoreText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DBSmartWidgetPrediction *)self score];
  v5 = [(DBSmartWidgetPrediction *)self tieBreakScore];
  v6 = [(DBSmartWidgetPrediction *)self predictionScore];
  v7 = [objc_opt_class() baseScore];
  [(DBSmartWidgetPrediction *)self value];
  v9 = v8;
  [(DBSmartWidgetPrediction *)self minValue];
  v11 = v10;
  [(DBSmartWidgetPrediction *)self maxValue];
  return [v3 stringWithFormat:@"[%ld(%ld) pScore=%ld bScore=%ld value=%.2f minValue=%.2f maxValue=%.2f]", v4, v5, v6, v7, v9, v11, v12];
}

- (id)debugValidRangesText
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_validRanges;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = MEMORY[0x277CCACA8];
        v10 = [v8 start];
        v11 = [DBDateFormatter formattedTimeStamp:v10];
        v12 = [v8 end];
        v13 = [DBDateFormatter formattedTimeStamp:v12];
        v14 = [v9 stringWithFormat:@"<%@ - %@>", v11, v13];
        [v3 addObject:v14];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [v3 componentsJoinedByString:@"\n"];
  v17 = [v15 stringWithFormat:@"%@", v16];

  return v17;
}

- (id)predictedObjectDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DBSmartWidgetPrediction *)self predictedObject];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)updateWithPrediction:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetPrediction *)self updateWithPrediction:v5];
  }

  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetPrediction *)v4 updateWithPrediction:v6];
  }

  return 0;
}

- (void)predictionDidUpdate
{
  v3 = [(DBSmartWidgetPrediction *)self observers];
  [v3 predictionDidUpdate:self];
}

- (double)minValue
{
  v2 = objc_opt_class();

  [v2 minValue];
  return result;
}

- (double)maxValue
{
  v2 = objc_opt_class();

  [v2 maxValue];
  return result;
}

- (int64_t)predictionScore
{
  v3 = objc_opt_class();
  [(DBSmartWidgetPrediction *)self value];
  v5 = v4;
  [(DBSmartWidgetPrediction *)self minValue];
  v7 = v6;
  [(DBSmartWidgetPrediction *)self maxValue];

  return [v3 _scoreFor:v5 minValue:v7 maxValue:v8];
}

- (double)initialValidInterval
{
  v2 = objc_opt_class();

  [v2 initialValidInterval];
  return result;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DBSmartWidgetPrediction *)self uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier=%@, score=%ld(%ld)>", v5, self, v6, -[DBSmartWidgetPrediction score](self, "score"), -[DBSmartWidgetPrediction tieBreakScore](self, "tieBreakScore")];;

  return v7;
}

- (DBSmartWidgetPredictionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateWithPrediction:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "current=%{public}@", &v2, 0xCu);
}

- (void)updateWithPrediction:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "update=%{public}@", &v2, 0xCu);
}

@end