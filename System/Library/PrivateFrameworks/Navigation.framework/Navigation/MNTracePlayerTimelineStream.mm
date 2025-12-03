@interface MNTracePlayerTimelineStream
- (MNTracePlayerTimelineStream)initWithData:(id)data;
- (void)jumpToPosition:(double)position;
- (void)triggerNextUpdate;
@end

@implementation MNTracePlayerTimelineStream

- (void)jumpToPosition:(double)position
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [[_MNTracePlayerTimelineStreamSearchObject alloc] initWithPosition:position];
  v5 = [(NSArray *)self->_data indexOfObject:v4 inSortedRange:0 options:[(NSArray *)self->_data count] usingComparator:1024, &__block_literal_global_13250];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "[MNTracePlayerTimelineStream jumpToPosition:]";
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTracePlayerTimelineStream.m";
      v16 = 1024;
      v17 = 88;
      v18 = 2080;
      v19 = "nextIndex != NSNotFound";
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v12, 0x26u);
    }
  }

  v6 = [(NSArray *)self->_data count];
  if (v5 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v5;
  }

  self->_nextIndex = v7;
  v8 = [(NSArray *)self->_data objectAtIndex:?];
  [v8 position];
  self->_nextUpdatePosition = v9;

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MNTracePlayerTimelineStream_jumpToPosition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 position];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 position];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (void)triggerNextUpdate
{
  v22 = *MEMORY[0x1E69E9840];
  nextIndex = self->_nextIndex;
  if (nextIndex >= [(NSArray *)self->_data count])
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "[MNTracePlayerTimelineStream triggerNextUpdate]";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTracePlayerTimelineStream.m";
      v20 = 1024;
      v21 = 57;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  if (self->_handler)
  {
    v4 = [(NSArray *)self->_data objectAtIndex:nextIndex];
    [v4 position];
    v6 = v5;

    handler = self->_handler;
    date = [MEMORY[0x1E695DF00] date];
    handler[2](handler, nextIndex, date, v6);
  }

  data = self->_data;
  v10 = self->_nextIndex + 1;
  self->_nextIndex = v10;
  if (v10 >= [(NSArray *)data count])
  {
    self->_nextIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_nextUpdatePosition = 978307200.0;
LABEL_12:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v15 = [(NSArray *)self->_data objectAtIndex:self->_nextIndex];
  [v15 position];
  self->_nextUpdatePosition = v11;
  v12 = *MEMORY[0x1E69E9840];
}

- (MNTracePlayerTimelineStream)initWithData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = MNTracePlayerTimelineStream;
  v6 = [(MNTracePlayerTimelineStream *)&v11 init];
  if (v6)
  {
    if (![dataCopy count])
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v13 = "[MNTracePlayerTimelineStream initWithData:]";
        v14 = 2080;
        v15 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTracePlayerTimelineStream.m";
        v16 = 1024;
        v17 = 44;
        v18 = 2080;
        v19 = "data.count > 0";
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
      }
    }

    objc_storeStrong(&v6->_data, data);
    v6->_nextIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6->_nextUpdatePosition = 978307200.0;
    v7 = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

@end