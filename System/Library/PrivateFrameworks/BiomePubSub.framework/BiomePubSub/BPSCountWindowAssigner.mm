@interface BPSCountWindowAssigner
- (BPSCountWindowAssigner)initWithCapacity:(unint64_t)capacity aggregator:(id)aggregator;
- (id)assignWindow:(id)window input:(id)input;
- (id)updateAndReturnNewWindowStates:(id)states input:(id)input;
@end

@implementation BPSCountWindowAssigner

- (BPSCountWindowAssigner)initWithCapacity:(unint64_t)capacity aggregator:(id)aggregator
{
  aggregatorCopy = aggregator;
  v11.receiver = self;
  v11.super_class = BPSCountWindowAssigner;
  v8 = [(BPSCountWindowAssigner *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_capacity = capacity;
    objc_storeStrong(&v8->_aggregator, aggregator);
    v9->_identifier = 0;
  }

  return v9;
}

- (id)assignWindow:(id)window input:(id)input
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  windowCopy = window;
  v6 = [windowCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(windowCopy);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      if ([v10 currentCount] < self->_capacity)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [windowCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v12 = [BPSCountWindow alloc];
  capacity = self->_capacity;
  aggregator = self->_aggregator;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_identifier];
  v11 = [(BPSCountWindow *)v12 initWithCapacity:capacity aggregator:aggregator identifier:v15];

  ++self->_identifier;
LABEL_12:
  v16 = [MEMORY[0x1E695DFD8] setWithObject:v11];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)updateAndReturnNewWindowStates:(id)states input:(id)input
{
  v33 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  inputCopy = input;
  v8 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = statesCopy;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v28 + 1) + 8 * v13);
      currentCount = [v14 currentCount];
      if (currentCount < [v14 capacity])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v14;

    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v17 = [BPSCountWindowState alloc];
  capacity = self->_capacity;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_identifier];
  accumulator = [(BPSAggregator *)self->_aggregator accumulator];
  v16 = [(BPSCountWindowState *)v17 initWithCapacity:capacity currentCount:0 identifier:v19 aggregate:accumulator completed:0];

  [v8 addObject:v16];
  ++self->_identifier;
  if (v16)
  {
LABEL_12:
    currentCount2 = [(BPSCountWindowState *)v16 currentCount];
    if (currentCount2 < [(BPSCountWindowState *)v16 capacity])
    {
      [(BPSCountWindowState *)v16 setCurrentCount:[(BPSCountWindowState *)v16 currentCount]+ 1];
      closure = [(BPSAggregator *)self->_aggregator closure];
      aggregate = [(BPSWindowState *)v16 aggregate];
      v24 = (closure)[2](closure, aggregate, inputCopy);
      [(BPSWindowState *)v16 setAggregate:v24];

      currentCount3 = [(BPSCountWindowState *)v16 currentCount];
      if (currentCount3 >= [(BPSCountWindowState *)v16 capacity])
      {
        [(BPSWindowState *)v16 setCompleted:1];
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v8;
}

@end