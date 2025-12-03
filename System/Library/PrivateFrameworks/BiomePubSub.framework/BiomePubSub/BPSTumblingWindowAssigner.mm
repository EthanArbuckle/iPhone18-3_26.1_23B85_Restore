@interface BPSTumblingWindowAssigner
- (BPSTumblingWindowAssigner)initWithInterval:(double)interval timestamp:(id)timestamp aggregator:(id)aggregator;
- (id)assignWindow:(id)window input:(id)input;
- (id)updateAndReturnNewWindowStates:(id)states input:(id)input;
@end

@implementation BPSTumblingWindowAssigner

- (BPSTumblingWindowAssigner)initWithInterval:(double)interval timestamp:(id)timestamp aggregator:(id)aggregator
{
  timestampCopy = timestamp;
  aggregatorCopy = aggregator;
  if (interval <= 0.0)
  {
    [BPSTumblingWindowAssigner initWithInterval:a2 timestamp:self aggregator:?];
  }

  v16.receiver = self;
  v16.super_class = BPSTumblingWindowAssigner;
  v11 = [(BPSTumblingWindowAssigner *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_interval = interval;
    v13 = [timestampCopy copy];
    timestamp = v12->_timestamp;
    v12->_timestamp = v13;

    objc_storeStrong(&v12->_aggregator, aggregator);
    v12->_identifier = 0;
  }

  return v12;
}

- (id)assignWindow:(id)window input:(id)input
{
  v34 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v6 = (*(self->_timestamp + 2))();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = windowCopy;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v29 + 1) + 8 * v11);
      dateInterval = [v12 dateInterval];
      v14 = [dateInterval containsDate:v6];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v12;

    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  [v6 timeIntervalSinceReferenceDate];
  if (v16 < 0.0)
  {
    v16 = v16 + -1.0;
  }

  interval = self->_interval;
  v18 = interval * trunc(v16 / interval);
  v19 = interval + -0.0001;
  v20 = [BPSTimeWindowProducer alloc];
  v21 = objc_alloc(MEMORY[0x1E696AB80]);
  v22 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v18];
  v23 = [v21 initWithStartDate:v22 duration:v19];
  aggregator = self->_aggregator;
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_identifier];
  v15 = [(BPSTimeWindowProducer *)v20 initWithDateInterval:v23 aggregator:aggregator identifier:v25];

  ++self->_identifier;
LABEL_14:
  v26 = [MEMORY[0x1E695DFD8] setWithObject:v15];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)updateAndReturnNewWindowStates:(id)states input:(id)input
{
  v45 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  selfCopy = self;
  inputCopy = input;
  v8 = (*(self->_timestamp + 2))();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = statesCopy;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
  v38 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        dateInterval = [v15 dateInterval];
        v17 = [dateInterval containsDate:v8];

        if (v17)
        {
          closure = [(BPSAggregator *)selfCopy->_aggregator closure];
          aggregate = [v15 aggregate];
          v20 = (closure)[2](closure, aggregate, inputCopy);
          [v15 setAggregate:v20];

          v9 = v38;
          v21 = v15;

          v12 = v21;
        }

        else
        {
          [v15 setCompleted:1];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v22 = objc_opt_new();
  if (!v12)
  {
    [v8 timeIntervalSinceReferenceDate];
    if (v23 < 0.0)
    {
      v23 = v23 + -1.0;
    }

    interval = selfCopy->_interval;
    v25 = interval * trunc(v23 / interval);
    v26 = interval + -0.0001;
    v27 = objc_alloc(MEMORY[0x1E696AB80]);
    v28 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v25];
    v29 = [v27 initWithStartDate:v28 duration:v26];

    v30 = [BPSTimeWindowState alloc];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", selfCopy->_identifier];
    accumulator = [(BPSAggregator *)selfCopy->_aggregator accumulator];
    v12 = [(BPSTimeWindowState *)v30 initWithDateInterval:v29 identifier:v31 aggregate:accumulator completed:0];

    closure2 = [(BPSAggregator *)selfCopy->_aggregator closure];
    aggregate2 = [(BPSWindowState *)v12 aggregate];
    v35 = (closure2)[2](closure2, aggregate2, inputCopy);
    [(BPSWindowState *)v12 setAggregate:v35];

    v9 = v38;
    [v22 addObject:v12];
    ++selfCopy->_identifier;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)initWithInterval:(uint64_t)a1 timestamp:(uint64_t)a2 aggregator:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSTumblingWindowAssigner.m" lineNumber:30 description:@"Expecting interval to be greater than 0"];
}

@end