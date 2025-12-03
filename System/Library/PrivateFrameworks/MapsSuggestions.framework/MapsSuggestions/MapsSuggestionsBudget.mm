@interface MapsSuggestionsBudget
- (BOOL)hasBudgetLeft;
- (BOOL)q_saveStateForRuleName:(id)name state:(id)state;
- (BOOL)spendAtTime:(id)time;
- (BOOL)spendNow;
- (MapsSuggestionsBudget)initWithDelegate:(id)delegate name:(id)name;
- (NSString)description;
- (id).cxx_construct;
- (id)objectForJSON;
- (id)q_loadStateForRuleName:(id)name;
- (uint64_t)_q_hasBudgetLeft;
- (uint64_t)_q_spendAtTime:(uint64_t)time;
- (void)addRollingWindowOfCount:(unint64_t)count perDuration:(const void *)duration name:(id)name;
- (void)reset;
@end

@implementation MapsSuggestionsBudget

- (MapsSuggestionsBudget)initWithDelegate:(id)delegate name:(id)name
{
  v33 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  nameCopy = name;
  if (nameCopy)
  {
    v27.receiver = self;
    v27.super_class = MapsSuggestionsBudget;
    v9 = [(MapsSuggestionsBudget *)&v27 init];
    if (v9)
    {
      v10 = [nameCopy copy];
      name = v9->_name;
      v9->_name = v10;

      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      MSg::Queue::Queue(buf, @"MapsSuggestionsBudgetQueue", v12);
      v13 = *buf;
      *buf = 0;
      innerQueue = v9->_queue._innerQueue;
      v9->_queue._innerQueue = v13;

      v15 = *&buf[8];
      *&buf[8] = 0;
      v16 = v9->_queue._name;
      v9->_queue._name = v15;

      objc_storeStrong(&v9->_delegate, delegate);
      readBudgetState = [(MapsSuggestionsBudgetDelegate *)v9->_delegate readBudgetState];
      v18 = [readBudgetState mutableCopy];
      data = v9->_data;
      v9->_data = v18;

      v20 = [(NSMutableDictionary *)v9->_data objectForKeyedSubscript:@"MapsSuggestionsBudgetVersionKey"];
      intValue = [v20 intValue];

      if (intValue != 2)
      {
        v22 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = intValue;
          *&buf[8] = 1024;
          *&buf[10] = 2;
          _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "The version does not correspond. Them=%d. Me=%d. This may be a migration. Ignoring state!", buf, 0xEu);
        }

        v23 = v9->_data;
        v9->_data = 0;
      }
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBudget.mm";
      *&buf[12] = 1024;
      *&buf[14] = 179;
      v29 = 2082;
      v30 = "[MapsSuggestionsBudget initWithDelegate:name:]";
      v31 = 2082;
      v32 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)addRollingWindowOfCount:(unint64_t)count perDuration:(const void *)duration name:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v9 = nameCopy;
  if (!*duration)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBudget.mm";
      v17 = 1024;
      v18 = 209;
      v19 = 2082;
      v20 = "[MapsSuggestionsBudget addRollingWindowOfCount:perDuration:name:]";
      v21 = 2082;
      v22 = "0LLu == duration.asNanoSeconds()";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. An empty time would be division by zero", buf, 0x26u);
    }

    goto LABEL_9;
  }

  if (!nameCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBudget.mm";
      v17 = 1024;
      v18 = 210;
      v19 = 2082;
      v20 = "[MapsSuggestionsBudget addRollingWindowOfCount:perDuration:name:]";
      v21 = 2082;
      v22 = "nil == (name)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name for the rule", buf, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MapsSuggestionsBudget_addRollingWindowOfCount_perDuration_name___block_invoke;
  v11[3] = &unk_1E81F5E00;
  v11[4] = self;
  v12 = nameCopy;
  countCopy = count;
  durationCopy = duration;
  dispatch_sync(self->_queue._innerQueue, v11);

LABEL_10:
}

uint64_t __66__MapsSuggestionsBudget_addRollingWindowOfCount_perDuration_name___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = *(v1 + 40);
  if (v3 >= *(v1 + 48))
  {
    result = std::vector<MSg::_RollingWindowBudgetRule>::__emplace_back_slow_path<MapsSuggestionsBudget * const {__strong}&,NSString * const {__strong}&,unsigned long const&,MSg::Duration const&>(v1 + 32, (a1 + 32), (a1 + 40), (a1 + 48), v2);
  }

  else
  {
    MSg::_RollingWindowBudgetRule::_RollingWindowBudgetRule(*(v1 + 40), v1, *(a1 + 40), *(a1 + 48), *v2);
    result = v3 + 80;
    *(v1 + 40) = v3 + 80;
  }

  *(v1 + 40) = result;
  return result;
}

- (BOOL)hasBudgetLeft
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__MapsSuggestionsBudget_hasBudgetLeft__block_invoke;
  v3[3] = &unk_1E81F5E28;
  v3[4] = self;
  return MSg::Queue::sync<BOOL>(&self->_queue, v3);
}

- (uint64_t)_q_spendAtTime:(uint64_t)time
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (time)
  {
    dispatch_assert_queue_V2(*(time + 16));
    hasBudget = [(MapsSuggestionsBudget *)time _q_hasBudgetLeft];
    if (hasBudget)
    {
      v5 = *(time + 32);
      v6 = *(time + 40);
      while (v5 != v6)
      {
        MSg::_RollingWindowBudgetRule::spendAt(v5, v3);
        v5 += 5;
      }

      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(time + 8);
        *v11 = 138412546;
        *&v11[4] = v9;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "%@ spent at %@", v11, 0x16u);
      }
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      [(MapsSuggestionsBudget *)v7 _q_spendAtTime:time, v11];
      v8 = *v11;
    }
  }

  else
  {
    hasBudget = 0;
  }

  return hasBudget;
}

- (BOOL)spendAtTime:(id)time
{
  v19 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  v5 = timeCopy;
  if (timeCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__MapsSuggestionsBudget_spendAtTime___block_invoke;
    v9[3] = &unk_1E81F5E50;
    v9[4] = self;
    v10 = timeCopy;
    v6 = MSg::Queue::sync<BOOL>(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBudget.mm";
      v13 = 1024;
      v14 = 258;
      v15 = 2082;
      v16 = "[MapsSuggestionsBudget spendAtTime:]";
      v17 = 2082;
      v18 = "nil == (time)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a time. Consider -spendNow instead.", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)spendNow
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__MapsSuggestionsBudget_spendNow__block_invoke;
  v3[3] = &unk_1E81F5E28;
  v3[4] = self;
  return MSg::Queue::sync<BOOL>(&self->_queue, v3);
}

uint64_t __33__MapsSuggestionsBudget_spendNow__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MapsSuggestionsNow();
  v3 = [(MapsSuggestionsBudget *)v1 _q_spendAtTime:v2];

  return v3;
}

- (void)reset
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MapsSuggestionsBudget_reset__block_invoke;
  block[3] = &unk_1E81F59C0;
  block[4] = self;
  dispatch_sync(self->_queue._innerQueue, block);
}

uint64_t __30__MapsSuggestionsBudget_reset__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  while (v2 != v3)
  {
    result = MSg::_RollingWindowBudgetRule::reset(v2);
    v2 = (v2 + 80);
  }

  return result;
}

- (id)q_loadStateForRuleName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      nameCopy2 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBudget.mm";
      v14 = 1024;
      *v15 = 287;
      *&v15[4] = 2082;
      *&v15[6] = "[MapsSuggestionsBudget q_loadStateForRuleName:]";
      v16 = 2082;
      v17 = "nil == (ruleName)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a Rule name", &v12, 0x26u);
    }

    goto LABEL_15;
  }

  dispatch_assert_queue_V2(self->_queue._innerQueue);
  v5 = [(NSMutableDictionary *)self->_data objectForKeyedSubscript:self->_name];
  v6 = [v5 objectForKeyedSubscript:nameCopy];

  if (!v6)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      nameCopy2 = nameCopy;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "No state found for RULE{%@}", &v12, 0xCu);
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      name = self->_name;
      v12 = 138412546;
      nameCopy2 = name;
      v14 = 2112;
      *v15 = objc_opt_class();
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "We found some invalid state for RULE{%@}, that was actually a %@?!", &v12, 0x16u);
    }

LABEL_14:
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    nameCopy2 = nameCopy;
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Correctly loaded state for RULE{%@}", &v12, 0xCu);
  }

  v8 = [v6 mutableCopy];
LABEL_16:

  return v8;
}

- (BOOL)q_saveStateForRuleName:(id)name state:(id)state
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  stateCopy = state;
  v8 = stateCopy;
  if (!nameCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBudget.mm";
      v22 = 1024;
      v23 = 305;
      v24 = 2082;
      v25 = "[MapsSuggestionsBudget q_saveStateForRuleName:state:]";
      v26 = 2082;
      v27 = "nil == (ruleName)";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a Rule name";
LABEL_14:
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v18, &v20, 0x26u);
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (!stateCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBudget.mm";
      v22 = 1024;
      v23 = 306;
      v24 = 2082;
      v25 = "[MapsSuggestionsBudget q_saveStateForRuleName:state:]";
      v26 = 2082;
      v27 = "nil == (state)";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a state dictionary to write";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  dispatch_assert_queue_V2(self->_queue._innerQueue);
  data = self->_data;
  if (!data)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v11 = self->_data;
    self->_data = v10;

    [(NSMutableDictionary *)self->_data setObject:&unk_1F4470EB8 forKeyedSubscript:@"MapsSuggestionsBudgetVersionKey"];
    data = self->_data;
  }

  v12 = [(NSMutableDictionary *)data objectForKeyedSubscript:self->_name];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Starting brand new state", &v20, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  }

  v15 = [v8 copy];
  [v13 setObject:v15 forKeyedSubscript:nameCopy];

  v16 = [v13 copy];
  [(NSMutableDictionary *)self->_data setObject:v16 forKeyedSubscript:self->_name];

  [(MapsSuggestionsBudgetDelegate *)self->_delegate writeBudgetState:self->_data];
  v17 = 1;
LABEL_16:

  return v17;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = self->_rules.__end_ - self->_rules.__begin_;
  v5 = [v3 initWithCapacity:4 * ((v4 >> 2) + (v4 >> 4))];
  uniqueName = [(MapsSuggestionsBudget *)self uniqueName];
  [v5 appendFormat:@"%@: [", uniqueName];

  begin = self->_rules.__begin_;
  for (i = self->_rules.__end_; begin != i; begin = (begin + 80))
  {
    v9 = MSg::_RollingWindowBudgetRule::asString(begin);
    [v5 appendFormat:@"{%@}", v9];
  }

  [v5 appendString:@"]"];
  v10 = [v5 copy];

  return v10;
}

- (id)objectForJSON
{
  isTrue = [(MapsSuggestionsBudget *)self isTrue];

  return MSg::jsonFor(isTrue);
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

- (uint64_t)_q_hasBudgetLeft
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 16));
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    while (1)
    {
      if (v3 == v2)
      {
        return 1;
      }

      MSg::_RollingWindowBudgetRule::_prune(v3);
      if (v3[4].i64[1] >= v3[1].i64[0])
      {
        break;
      }

      v3 += 5;
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = v3->i64[1];
      v7 = 138412290;
      v8 = v5;
      v6 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "RULE{%@} had no Budget left!", &v7, 0xCu);
    }

    return 0;
  }

  return result;
}

- (void)_q_spendAtTime:(NSObject *)a3 .cold.1(NSObject *a1, uint64_t a2, NSObject **a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 8);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "%@ has no budget left", &v7, 0xCu);
  }

  *a3 = a1;
}

@end