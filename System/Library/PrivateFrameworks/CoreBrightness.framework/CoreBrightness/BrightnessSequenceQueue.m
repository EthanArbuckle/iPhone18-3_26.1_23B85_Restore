@interface BrightnessSequenceQueue
- (BrightnessSequenceQueue)initWithArrayOfUpdates:(id)a3;
- (id)nextUpdate;
- (unint64_t)absoluteTimestampForUpdate:(id)a3;
@end

@implementation BrightnessSequenceQueue

- (BrightnessSequenceQueue)initWithArrayOfUpdates:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18.receiver = self;
  v18.super_class = BrightnessSequenceQueue;
  v21 = [(BrightnessSequenceQueue *)&v18 init];
  if (v21)
  {
    v21->_sequenceStartTime = dispatch_time(0, 0);
    v21->_currentUpdateID = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memset(__b, 0, sizeof(__b));
    obj = v19;
    v13 = [v19 countByEnumeratingWithState:__b objects:v22 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v16 = 0;
        v16 = *(__b[1] + 8 * v10);
        v3 = [BrightnessUpdate alloc];
        v14 = [(BrightnessUpdate *)v3 initWithUpdateData:v16];
        [v17 addObject:v14];
        *&v4 = MEMORY[0x1E69E5920](v14).n128_u64[0];
        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [obj countByEnumeratingWithState:__b objects:v22 count:{16, v4}];
          if (!v11)
          {
            break;
          }
        }
      }
    }

    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    v6 = [v5 initWithArray:v17];
    v21->_flipbook = v6;
    MEMORY[0x1E69E5920](v17);
  }

  *MEMORY[0x1E69E9840];
  return v21;
}

- (id)nextUpdate
{
  if ([(BrightnessSequenceQueue *)self isDone])
  {
    return 0;
  }

  flipbook = self->_flipbook;
  ++self->_currentUpdateID;
  return [(NSArray *)flipbook objectAtIndexedSubscript:?];
}

- (unint64_t)absoluteTimestampForUpdate:(id)a3
{
  when = self->_sequenceStartTime;
  [a3 timestampOffset];
  return dispatch_time(when, (v3 * 1000000.0));
}

@end