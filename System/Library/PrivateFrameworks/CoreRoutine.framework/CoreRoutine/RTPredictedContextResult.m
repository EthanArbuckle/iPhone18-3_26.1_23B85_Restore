@interface RTPredictedContextResult
+ (unint64_t)contextTypeMaskForContext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextResult)initWithCoder:(id)a3;
- (RTPredictedContextResult)initWithPredictedContexts:(id)a3 analytics:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentPredictedContextsWithType:(unint64_t)a3;
- (id)dateIntervalFromStart:(id)a3 end:(id)a4;
- (id)description;
- (id)generateSequencesFromDate:(id)a3 toDate:(id)a4;
- (id)nextStepPredictedContextsWithFilterMask:(unint64_t)a3;
- (id)predictedContextsWithType:(unint64_t)a3 afterContext:(id)a4;
- (id)predictedSequencesAfterContext:(id)a3;
- (id)unknownPredictedContextFromStart:(id)a3 end:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextResult

- (RTPredictedContextResult)initWithPredictedContexts:(id)a3 analytics:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RTPredictedContextResult;
  v9 = [(RTPredictedContextResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predictedContexts, a3);
    v11 = [v8 copy];
    analytics = v10->_analytics;
    v10->_analytics = v11;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  predictedContexts = self->_predictedContexts;
  v5 = a3;
  [v5 encodeObject:predictedContexts forKey:@"predictedContexts"];
  [v5 encodeObject:self->_analytics forKey:@"analytics"];
}

- (RTPredictedContextResult)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = RTPredictedContextResult;
  v5 = [(RTPredictedContextResult *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"predictedContexts"];
    predictedContexts = v5->_predictedContexts;
    v5->_predictedContexts = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analytics"];
    analytics = v5->_analytics;
    v5->_analytics = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextResult alloc];
  predictedContexts = self->_predictedContexts;
  analytics = self->_analytics;

  return [(RTPredictedContextResult *)v4 initWithPredictedContexts:predictedContexts analytics:analytics];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
    goto LABEL_17;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v11) = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [(RTPredictedContextResult *)self predictedContexts];
  if (!v8)
  {
    v3 = [(RTPredictedContextResult *)v7 predictedContexts];
    if (!v3)
    {
      v11 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v9 = [(RTPredictedContextResult *)self predictedContexts];
  v10 = [(RTPredictedContextResult *)v7 predictedContexts];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:

  v12 = [(RTPredictedContextResult *)self analytics];
  if (!v12)
  {
    v3 = [(RTPredictedContextResult *)v7 analytics];
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  v13 = [(RTPredictedContextResult *)self analytics];
  v14 = [(RTPredictedContextResult *)v7 analytics];
  v11 &= [v13 isEqual:v14];

  if (!v12)
  {
LABEL_15:
  }

LABEL_17:
  return v11;
}

+ (unint64_t)contextTypeMaskForContext:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)nextStepPredictedContextsWithFilterMask:(unint64_t)a3
{
  v5 = [(RTPredictedContextResult *)self predictedContexts];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__RTPredictedContextResult_nextStepPredictedContextsWithFilterMask___block_invoke;
  v9[3] = &unk_1E80B4BA0;
  v9[4] = self;
  v9[5] = a3;
  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:v9];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  return v7;
}

BOOL __68__RTPredictedContextResult_nextStepPredictedContextsWithFilterMask___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() contextTypeMaskForContext:v4];

  return (*(a1 + 40) & v5) != 0;
}

- (id)currentPredictedContextsWithType:(unint64_t)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v5 dateByAddingTimeInterval:900.0];
  v7 = MEMORY[0x1E696AE18];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __61__RTPredictedContextResult_currentPredictedContextsWithType___block_invoke;
  v37[3] = &unk_1E80B4BC8;
  v37[4] = self;
  v40 = a3;
  v8 = v5;
  v38 = v8;
  v9 = v6;
  v39 = v9;
  v10 = [v7 predicateWithBlock:v37];
  v11 = [(RTPredictedContextResult *)self predictedContexts];
  v12 = [v11 filteredArrayUsingPredicate:v10];

  if ([v12 count])
  {
    v13 = v12;
    goto LABEL_21;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = [(RTPredictedContextResult *)self predictedContexts];
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v31 = v9;
    obj = v14;
    v29 = v12;
    v30 = v10;
    v17 = v8;
    v18 = 0;
    v19 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        if (([objc_opt_class() contextTypeMaskForContext:v21] & a3) != 0)
        {
          v22 = [v21 dateInterval];
          v23 = [v22 startDate];
          v24 = [v23 date];

          if ([v24 compare:v17] == 1 && (!v18 || objc_msgSend(v24, "compare:", v18) == -1))
          {
            v25 = v24;

            v18 = v25;
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v16);

    v8 = v17;
    v10 = v30;
    v9 = v31;
    v12 = v29;
    if (v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v18 = v9;
LABEL_20:
  v26 = [(RTPredictedContextResult *)self unknownPredictedContextFromStart:v8 end:v18, v29, v30, v31];
  v41 = v26;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];

LABEL_21:
  v27 = *MEMORY[0x1E69E9840];

  return v13;
}

BOOL __61__RTPredictedContextResult_currentPredictedContextsWithType___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if ((a1[7] & [objc_opt_class() contextTypeMaskForContext:v3]) != 0)
  {
    v5 = [v3 dateInterval];
    v6 = [v5 endDate];
    v7 = [v6 date];
    if ([v7 compare:a1[5]] == -1)
    {
      v11 = 0;
    }

    else
    {
      v8 = [v3 dateInterval];
      v9 = [v8 startDate];
      v10 = [v9 date];
      v11 = [v10 compare:a1[6]] != 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)predictedContextsWithType:(unint64_t)a3 afterContext:(id)a4
{
  if (a4)
  {
    v6 = [a4 dateInterval];
    v7 = [v6 endDate];
    v8 = [v7 date];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] date];
  }

  v9 = [v8 dateByAddingTimeInterval:-900.0];
  v10 = [(RTPredictedContextResult *)self predictedContexts];
  v11 = MEMORY[0x1E696AE18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__RTPredictedContextResult_predictedContextsWithType_afterContext___block_invoke;
  v16[3] = &unk_1E80B4BF0;
  v17 = v9;
  v18 = a3;
  v16[4] = self;
  v12 = v9;
  v13 = [v11 predicateWithBlock:v16];
  v14 = [v10 filteredArrayUsingPredicate:v13];

  return v14;
}

BOOL __67__RTPredictedContextResult_predictedContextsWithType_afterContext___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if ((a1[6] & [objc_opt_class() contextTypeMaskForContext:v3]) != 0)
  {
    v5 = [v3 dateInterval];
    v6 = [v5 startDate];
    v7 = [v6 date];
    v8 = [v7 compare:a1[5]] != -1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)predictedSequencesAfterContext:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      *buf = 138412803;
      v73 = v6;
      v74 = 2112;
      v75 = v7;
      v76 = 2117;
      v77 = v3;
      _os_log_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_INFO, "%@, %@, input predictedContext, %{sensitive}@", buf, 0x20u);
    }
  }

  v8 = [MEMORY[0x1E695DF00] date];
  v9 = v8;
  v50 = v8;
  v51 = v3;
  if (v3)
  {
    v10 = [v3 dateInterval];
    v11 = [v10 endDate];
    obj = [v11 date];

    v12 = [v9 dateByAddingTimeInterval:86400.0];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v13 = [(RTPredictedContextResult *)self predictedContexts];
    v14 = [v13 countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v66;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v66 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v65 + 1) + 8 * i);
          v19 = [v18 dateInterval];
          v20 = [v19 endDate];
          v21 = [v20 date];
          v22 = [v21 compare:v12];

          if (v22 == 1)
          {
            v23 = [v18 dateInterval];
            v24 = [v23 endDate];
            v25 = [v24 date];

            v12 = v25;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v15);
    }

    v26 = obj;
  }

  else
  {
    v26 = v8;
    v12 = [v26 dateByAddingTimeInterval:86400.0];
  }

  v27 = [(RTPredictedContextResult *)self generateSequencesFromDate:v26 toDate:v12];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      v32 = [v27 count];
      *buf = 138412802;
      v73 = v30;
      v74 = 2112;
      v75 = v31;
      v76 = 2048;
      v77 = v32;
      _os_log_impl(&dword_1BF1C4000, v28, OS_LOG_TYPE_INFO, "%@, %@, generated sequences before filling gaps with unknown state and computing probabilities, %lu", buf, 0x20u);
    }
  }

  v33 = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obja = v27;
  v34 = [obja countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v62;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(obja);
        }

        v38 = *(*(&v61 + 1) + 8 * j);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v39 = v38;
        v40 = [v39 countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v58;
          v43 = 1.0;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v58 != v42)
              {
                objc_enumerationMutation(v39);
              }

              [*(*(&v57 + 1) + 8 * k) probability];
              v43 = v43 * v45;
            }

            v41 = [v39 countByEnumeratingWithState:&v57 objects:v69 count:16];
          }

          while (v41);
        }

        else
        {
          v43 = 1.0;
        }

        v46 = [(RTPredictedContextResult *)self dateIntervalFromStart:v26 end:v12];
        v47 = [[RTPredictedContextSequence alloc] initWithProbability:v46 dateInterval:v39 predictedContexts:v43];
        [v33 addObject:v47];
      }

      v35 = [obja countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v35);
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __59__RTPredictedContextResult_predictedSequencesAfterContext___block_invoke;
  v56[3] = &unk_1E80B4C18;
  v56[4] = self;
  v56[5] = a2;
  [v33 enumerateObjectsUsingBlock:v56];

  v48 = *MEMORY[0x1E69E9840];

  return v33;
}

void __59__RTPredictedContextResult_predictedSequencesAfterContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 40));
      v12 = 138413059;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2048;
      v17 = a3;
      v18 = 2117;
      v19 = v5;
      _os_log_debug_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, idx, %lu, output sequence, %{sensitive}@", &v12, 0x2Au);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)generateSequencesFromDate:(id)a3 toDate:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v45 = v6;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138413058;
      v62 = v10;
      v63 = 2112;
      v64 = v11;
      v65 = 2112;
      v66 = v6;
      v67 = 2112;
      v68 = v7;
      _os_log_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_INFO, "%@, %@, startDate, %@, endDate, %@", buf, 0x2Au);
    }
  }

  if ([v6 compare:v7] != -1)
  {
    v12 = &unk_1F3DE3C10;
    goto LABEL_33;
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = [(RTPredictedContextResult *)self predictedContexts];
  v49 = [v13 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v49)
  {

LABEL_31:
    if ([v6 compare:v7] == -1)
    {
      v39 = [(RTPredictedContextResult *)self unknownPredictedContextFromStart:v6 end:v7];
      v58 = v39;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
      [v12 addObject:v40];
    }

    goto LABEL_33;
  }

  v43 = v13;
  v44 = v7;
  v14 = 0;
  v48 = *v55;
  do
  {
    for (i = 0; i != v49; ++i)
    {
      if (*v55 != v48)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v54 + 1) + 8 * i);
      v17 = [v16 dateInterval];
      v18 = [v17 endDate];
      v19 = [v18 date];
      v20 = [v19 compare:v6];

      if (v20 == 1)
      {
        v21 = [v16 dateInterval];
        v22 = [v21 startDate];
        v23 = [v22 date];
        if ([v23 compare:v6] == -1)
        {
          v26 = v6;
        }

        else
        {
          v24 = [v16 dateInterval];
          v25 = [v24 startDate];
          v26 = [v25 date];
        }

        v27 = [MEMORY[0x1E695DF70] array];
        if ([v26 compare:v6] == 1)
        {
          v28 = [(RTPredictedContextResult *)self unknownPredictedContextFromStart:v6 end:v26];
          [v27 addObject:v28];
        }

        v47 = v26;
        [v27 addObject:v16];
        v29 = [v16 dateInterval];
        v30 = [v29 endDate];
        v31 = [v30 date];

        v32 = [(RTPredictedContextResult *)self generateSequencesFromDate:v31 toDate:v44];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v33 = [v32 countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v51;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v51 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v50 + 1) + 8 * j);
              v38 = [v27 mutableCopy];
              [v38 addObjectsFromArray:v37];
              [v12 addObject:v38];
            }

            v34 = [v32 countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v34);
        }

        v14 = 1;
        v6 = v45;
        v13 = v43;
      }
    }

    v49 = [v13 countByEnumeratingWithState:&v54 objects:v60 count:16];
  }

  while (v49);

  v7 = v44;
  if ((v14 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:

  v41 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)unknownPredictedContextFromStart:(id)a3 end:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RTPredictedContextDate alloc] initWithDate:v6 confidenceInterval:120.0];

  v8 = [[RTPredictedContextDate alloc] initWithDate:v5 confidenceInterval:120.0];
  v9 = [[RTPredictedContextDateInterval alloc] initWithStartDate:v7 endDate:v8];
  v10 = [RTPredictedContext alloc];
  v11 = [(RTPredictedContext *)v10 initWithPredictedContextDateInterval:v9 predictionSources:MEMORY[0x1E695E0F0] probability:1.0];

  return v11;
}

- (id)dateIntervalFromStart:(id)a3 end:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RTPredictedContextDate alloc] initWithDate:v6 confidenceInterval:120.0];

  v8 = [[RTPredictedContextDate alloc] initWithDate:v5 confidenceInterval:120.0];
  v9 = [[RTPredictedContextDateInterval alloc] initWithStartDate:v7 endDate:v8];

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(RTPredictedContextResult *)self predictedContexts];
  v4 = [v2 stringWithFormat:@"contexts, %lu", objc_msgSend(v3, "count")];

  return v4;
}

@end