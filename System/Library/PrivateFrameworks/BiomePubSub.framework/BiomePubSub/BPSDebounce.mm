@interface BPSDebounce
- (BPSDebounce)initWithUpstream:(id)a3 for:(double)a4 getTimestamp:(id)a5;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)nextEvent;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSDebounce

- (BPSDebounce)initWithUpstream:(id)a3 for:(double)a4 getTimestamp:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (a4 < 0.0)
  {
    [BPSDebounce initWithUpstream:a2 for:self getTimestamp:?];
  }

  v17.receiver = self;
  v17.super_class = BPSDebounce;
  v12 = [(BPSDebounce *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_upstream, a3);
    v13->_dueTime = a4;
    v14 = [v11 copy];
    getTimestamp = v13->_getTimestamp;
    v13->_getTimestamp = v14;
  }

  return v13;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BPSDebounce subscribe:];
  }

  v6 = [_BPSDebounceInner alloc];
  [(BPSDebounce *)self dueTime];
  v8 = v7;
  v9 = [(BPSDebounce *)self getTimestamp];
  v10 = [(_BPSDebounceInner *)v6 initWithDownstream:v4 for:v9 getTimestamp:v8];

  v11 = [(BPSDebounce *)self upstream];
  [v11 subscribe:v10];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSDebounce *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(BPSDebounce *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    *&v5 = 138412802;
    v22 = v5;
    while (1)
    {
      v6 = [(BPSDebounce *)self getTimestamp];
      v7 = (v6)[2](v6, v4);

      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = [v7 description];
        *buf = v22;
        v24 = v17;
        v25 = 2112;
        v26 = v4;
        v27 = 2112;
        v28 = v18;
        _os_log_debug_impl(&dword_1C871B000, v8, OS_LOG_TYPE_DEBUG, "%@ - receiving: %@ at %@", buf, 0x20u);
      }

      v9 = [(BPSDebounce *)self lastArrivalTimestamp];
      [v7 timeIntervalSinceDate:v9];
      v11 = v10;
      [(BPSDebounce *)self dueTime];
      v13 = v12;

      if (v11 >= v13)
      {
        v14 = [(BPSDebounce *)self lastEvent];
      }

      else
      {
        v14 = 0;
      }

      [(BPSDebounce *)self setLastArrivalTimestamp:v7];
      [(BPSDebounce *)self setLastEvent:v4];
      if (v14)
      {
        break;
      }

      v15 = [(BPSDebounce *)self upstream];
      v16 = [v15 nextEvent];

      v4 = v16;
      if (!v16)
      {
        goto LABEL_10;
      }
    }

    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BPSDebounce nextEvent];
    }
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)reset
{
  [(BPSDebounce *)self setLastEvent:0];
  [(BPSDebounce *)self setLastArrivalTimestamp:0];
  v3.receiver = self;
  v3.super_class = BPSDebounce;
  [(BPSPublisher *)&v3 reset];
}

- (void)initWithUpstream:(uint64_t)a1 for:(uint64_t)a2 getTimestamp:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSDebounce.m" lineNumber:115 description:@"dueTime should be greater than or equal to 0"];
}

- (void)subscribe:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)nextEvent
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end