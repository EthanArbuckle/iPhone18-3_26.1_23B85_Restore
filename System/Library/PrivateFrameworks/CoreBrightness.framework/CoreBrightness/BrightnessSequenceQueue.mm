@interface BrightnessSequenceQueue
- (BrightnessSequenceQueue)initWithArrayOfUpdates:(id)updates;
- (id)nextUpdate;
- (unint64_t)absoluteTimestampForUpdate:(id)update;
@end

@implementation BrightnessSequenceQueue

- (BrightnessSequenceQueue)initWithArrayOfUpdates:(id)updates
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20 = a2;
  updatesCopy = updates;
  v18.receiver = self;
  v18.super_class = BrightnessSequenceQueue;
  selfCopy = [(BrightnessSequenceQueue *)&v18 init];
  if (selfCopy)
  {
    selfCopy->_sequenceStartTime = dispatch_time(0, 0);
    selfCopy->_currentUpdateID = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memset(__b, 0, sizeof(__b));
    obj = updatesCopy;
    v13 = [updatesCopy countByEnumeratingWithState:__b objects:v22 count:16];
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
    selfCopy->_flipbook = v6;
    MEMORY[0x1E69E5920](v17);
  }

  *MEMORY[0x1E69E9840];
  return selfCopy;
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

- (unint64_t)absoluteTimestampForUpdate:(id)update
{
  when = self->_sequenceStartTime;
  [update timestampOffset];
  return dispatch_time(when, (v3 * 1000000.0));
}

@end