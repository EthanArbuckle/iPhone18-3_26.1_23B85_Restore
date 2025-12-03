@interface MapsSuggestionsBlockCondition
- (BOOL)isTrue;
- (MapsSuggestionsBlockCondition)initWithName:(id)name queue:(id)queue block:(id)block;
@end

@implementation MapsSuggestionsBlockCondition

- (BOOL)isTrue
{
  queue = self->_queue;
  if (queue)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__MapsSuggestionsBlockCondition_isTrue__block_invoke;
    v7[3] = &unk_1E81F5460;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(queue, v7);
    v4 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
    return v4;
  }

  else
  {
    v6 = *(self->_block + 2);

    return v6();
  }
}

- (MapsSuggestionsBlockCondition)initWithName:(id)name queue:(id)queue block:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  blockCopy = block;
  if (blockCopy)
  {
    v18.receiver = self;
    v18.super_class = MapsSuggestionsBlockCondition;
    v11 = [(MapsSuggestionsBaseCondition *)&v18 initWithName:name];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_queue, queue);
      v13 = [blockCopy copy];
      block = v12->_block;
      v12->_block = v13;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBlockCondition.m";
      v21 = 1024;
      v22 = 27;
      v23 = 2082;
      v24 = "[MapsSuggestionsBlockCondition initWithName:queue:block:]";
      v25 = 2082;
      v26 = "nil == (block)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a BOOLean block to evaluate", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

uint64_t __39__MapsSuggestionsBlockCondition_isTrue__block_invoke(uint64_t a1)
{
  result = (*(*(*(a1 + 32) + 24) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end