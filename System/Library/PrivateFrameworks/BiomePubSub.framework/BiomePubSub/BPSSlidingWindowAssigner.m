@interface BPSSlidingWindowAssigner
- (BPSSlidingWindowAssigner)initWithInterval:(double)a3 slide:(double)a4 timestamp:(id)a5 aggregator:(id)a6;
- (id)assignWindow:(id)a3 input:(id)a4;
- (id)assignWindowNonOverlappingIntervals:(id)a3 timestamp:(id)a4;
- (id)assignWindowOverlappingIntervals:(id)a3 timestamp:(id)a4;
- (id)updateAndReturnNewWindowStates:(id)a3 input:(id)a4;
- (id)updateWindowStateNonOverlappingIntervals:(id)a3 timestamp:(id)a4 input:(id)a5;
- (id)updateWindowStateOverlappingIntervals:(id)a3 timestamp:(id)a4 input:(id)a5;
@end

@implementation BPSSlidingWindowAssigner

- (BPSSlidingWindowAssigner)initWithInterval:(double)a3 slide:(double)a4 timestamp:(id)a5 aggregator:(id)a6
{
  v11 = a5;
  v12 = a6;
  if (a3 <= 0.0)
  {
    [BPSSlidingWindowAssigner initWithInterval:a2 slide:self timestamp:? aggregator:?];
  }

  if (a4 <= 0.0)
  {
    [BPSSlidingWindowAssigner initWithInterval:a2 slide:self timestamp:? aggregator:?];
  }

  v18.receiver = self;
  v18.super_class = BPSSlidingWindowAssigner;
  v13 = [(BPSSlidingWindowAssigner *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_interval = a3;
    v13->_slide = a4;
    v15 = [v11 copy];
    timestamp = v14->_timestamp;
    v14->_timestamp = v15;

    objc_storeStrong(&v14->_aggregator, a6);
    v14->_identifier = 0;
  }

  return v14;
}

- (id)assignWindow:(id)a3 input:(id)a4
{
  timestamp = self->_timestamp;
  v7 = timestamp[2];
  v8 = a3;
  v9 = v7(timestamp, a4);
  if (self->_slide >= self->_interval)
  {
    [(BPSSlidingWindowAssigner *)self assignWindowNonOverlappingIntervals:v8 timestamp:v9];
  }

  else
  {
    [(BPSSlidingWindowAssigner *)self assignWindowOverlappingIntervals:v8 timestamp:v9];
  }
  v10 = ;

  return v10;
}

- (id)assignWindowOverlappingIntervals:(id)a3 timestamp:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFD8] set];
  v8 = [v7 mutableCopy];

  v9 = [MEMORY[0x1E695DFD8] set];
  v10 = [v9 mutableCopy];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = [v16 dateInterval];
        v18 = [v17 containsDate:v6];

        if (v18)
        {
          [v8 addObject:v16];
          v19 = MEMORY[0x1E696AD98];
          v20 = [v16 dateInterval];
          v21 = [v20 startDate];
          [v21 timeIntervalSinceReferenceDate];
          v22 = [v19 numberWithDouble:?];
          [v10 addObject:v22];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v13);
  }

  [v6 timeIntervalSinceReferenceDate];
  if (v23 < 0.0)
  {
    v23 = v23 + -1.0;
  }

  v24 = self->_slide * trunc(v23 / self->_slide);
  v25 = self->_interval + -0.0001;
  v26 = 0x1E696A000uLL;
  v27 = objc_alloc(MEMORY[0x1E696AB80]);
  v28 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v24];
  v29 = [v27 initWithStartDate:v28 duration:v25];

  if ([v29 containsDate:v6])
  {
    do
    {
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
      v31 = [v10 containsObject:v30];

      if ((v31 & 1) == 0)
      {
        v32 = [BPSTimeWindowProducer alloc];
        aggregator = self->_aggregator;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_identifier];
        v35 = v34 = v26;
        v36 = [(BPSTimeWindowProducer *)v32 initWithDateInterval:v29 aggregator:aggregator identifier:v35];
        [v8 addObject:v36];

        v26 = v34;
        ++self->_identifier;
      }

      v24 = v24 - self->_slide;
      v37 = objc_alloc(*(v26 + 2944));
      v38 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v24];
      v39 = [v37 initWithStartDate:v38 duration:v25];

      v29 = v39;
    }

    while (([v39 containsDate:v6] & 1) != 0);
  }

  else
  {
    v39 = v29;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)assignWindowNonOverlappingIntervals:(id)a3 timestamp:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFD8] set];
  v9 = [v8 mutableCopy];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 dateInterval];
        v17 = [v16 containsDate:v7];

        if (v17)
        {
          [v9 addObject:v15];
          v23 = v10;
          goto LABEL_14;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [v7 timeIntervalSinceReferenceDate];
  if (v18 < 0.0)
  {
    v18 = v18 + -1.0;
  }

  v19 = self->_slide * trunc(v18 / self->_slide);
  v20 = self->_interval + -0.0001;
  v21 = objc_alloc(MEMORY[0x1E696AB80]);
  v22 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v19];
  v23 = [v21 initWithStartDate:v22 duration:v20];

  if ([v23 containsDate:v7])
  {
    v24 = [BPSTimeWindowProducer alloc];
    aggregator = self->_aggregator;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_identifier];
    v27 = [(BPSTimeWindowProducer *)v24 initWithDateInterval:v23 aggregator:aggregator identifier:v26];
    [v9 addObject:v27];

    ++self->_identifier;
  }

LABEL_14:

  v28 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)updateAndReturnNewWindowStates:(id)a3 input:(id)a4
{
  timestamp = self->_timestamp;
  v7 = timestamp[2];
  v8 = a4;
  v9 = a3;
  v10 = v7(timestamp, v8);
  if (self->_slide >= self->_interval)
  {
    [(BPSSlidingWindowAssigner *)self updateWindowStateNonOverlappingIntervals:v9 timestamp:v10 input:v8];
  }

  else
  {
    [(BPSSlidingWindowAssigner *)self updateWindowStateOverlappingIntervals:v9 timestamp:v10 input:v8];
  }
  v11 = ;

  return v11;
}

- (id)updateWindowStateOverlappingIntervals:(id)a3 timestamp:(id)a4 input:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v46 = a5;
  v47 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        v16 = [v15 dateInterval];
        v17 = [v16 containsDate:v9];

        if (v17)
        {
          v18 = [(BPSAggregator *)self->_aggregator closure];
          v19 = [v15 aggregate];
          v20 = (v18)[2](v18, v19, v46);
          [v15 setAggregate:v20];

          v21 = MEMORY[0x1E696AD98];
          v22 = [v15 dateInterval];
          v23 = [v22 startDate];
          [v23 timeIntervalSinceReferenceDate];
          v24 = [v21 numberWithDouble:?];
          [v47 addObject:v24];
        }

        else
        {
          [v15 setCompleted:1];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v12);
  }

  [v9 timeIntervalSinceReferenceDate];
  if (v25 < 0.0)
  {
    v25 = v25 + -1.0;
  }

  v26 = self->_slide * trunc(v25 / self->_slide);
  v45 = objc_opt_new();
  v27 = self->_interval + -0.0001;
  v28 = objc_alloc(MEMORY[0x1E696AB80]);
  v29 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v26];
  v30 = [v28 initWithStartDate:v29 duration:v27];

  if ([v30 containsDate:v9])
  {
    do
    {
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
      v32 = [v47 containsObject:v31];

      if ((v32 & 1) == 0)
      {
        v33 = [BPSTimeWindowState alloc];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_identifier];
        v35 = [(BPSAggregator *)self->_aggregator accumulator];
        v36 = [(BPSTimeWindowState *)v33 initWithDateInterval:v30 identifier:v34 aggregate:v35 completed:0];

        v37 = [(BPSAggregator *)self->_aggregator closure];
        v38 = [(BPSWindowState *)v36 aggregate];
        v39 = (v37)[2](v37, v38, v46);
        [(BPSWindowState *)v36 setAggregate:v39];

        [v45 addObject:v36];
        ++self->_identifier;
      }

      v26 = v26 - self->_slide;
      v40 = objc_alloc(MEMORY[0x1E696AB80]);
      v41 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v26];
      v42 = [v40 initWithStartDate:v41 duration:v27];

      v30 = v42;
    }

    while (([v42 containsDate:v9] & 1) != 0);
  }

  else
  {
    v42 = v30;
  }

  v43 = *MEMORY[0x1E69E9840];

  return v45;
}

- (id)updateWindowStateNonOverlappingIntervals:(id)a3 timestamp:(id)a4 input:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v37 = a5;
  obj = v8;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v40;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v39 + 1) + 8 * i);
      v16 = [v15 dateInterval];
      v17 = [v16 containsDate:v9];

      if (v17)
      {
        v18 = [(BPSAggregator *)self->_aggregator closure];
        v19 = [v15 aggregate];
        v20 = (v18)[2](v18, v19, v37);
        [v15 setAggregate:v20];

        v21 = v15;
        v12 = v21;
      }

      else
      {
        [v15 setCompleted:1];
      }
    }

    v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v11);
  if (v12)
  {
    v22 = objc_opt_new();
  }

  else
  {
LABEL_13:
    [v9 timeIntervalSinceReferenceDate];
    if (v23 < 0.0)
    {
      v23 = v23 + -1.0;
    }

    v24 = self->_slide * trunc(v23 / self->_slide);
    v22 = objc_opt_new();
    v25 = self->_interval + -0.0001;
    v26 = objc_alloc(MEMORY[0x1E696AB80]);
    v27 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v24];
    v12 = [v26 initWithStartDate:v27 duration:v25];

    if ([v12 containsDate:v9])
    {
      v28 = [BPSTimeWindowState alloc];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_identifier];
      v30 = [(BPSAggregator *)self->_aggregator accumulator];
      v31 = [(BPSTimeWindowState *)v28 initWithDateInterval:v12 identifier:v29 aggregate:v30 completed:0];

      v32 = [(BPSAggregator *)self->_aggregator closure];
      v33 = [(BPSWindowState *)v31 aggregate];
      v34 = (v32)[2](v32, v33, v37);
      [(BPSWindowState *)v31 setAggregate:v34];

      [v22 addObject:v31];
      ++self->_identifier;
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)initWithInterval:(uint64_t)a1 slide:(uint64_t)a2 timestamp:aggregator:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSSlidingWindowAssigner.m" lineNumber:33 description:@"Expecting interval to be greater than 0"];
}

- (void)initWithInterval:(uint64_t)a1 slide:(uint64_t)a2 timestamp:aggregator:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSSlidingWindowAssigner.m" lineNumber:34 description:@"Expecting slide to be greater than 0"];
}

@end