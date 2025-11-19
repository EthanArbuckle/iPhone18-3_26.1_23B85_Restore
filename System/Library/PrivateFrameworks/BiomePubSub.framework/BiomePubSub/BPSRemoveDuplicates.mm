@interface BPSRemoveDuplicates
- (BPSRemoveDuplicates)initWithUpstream:(id)a3 isDuplicate:(id)a4;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSRemoveDuplicates

- (BPSRemoveDuplicates)initWithUpstream:(id)a3 isDuplicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BPSRemoveDuplicates;
  v9 = [(BPSRemoveDuplicates *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, a3);
    v11 = [v8 copy];
    isDuplicate = v10->_isDuplicate;
    v10->_isDuplicate = v11;
  }

  return v10;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BPSRemoveDuplicates *)self subscribe:v5];
  }

  v6 = [[_BPSRemoveDuplicatesInner alloc] initWithDownstream:v4 isDuplicate:self->_isDuplicate];
  v7 = [(BPSRemoveDuplicates *)self upstream];
  [v7 subscribe:v6];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSRemoveDuplicates *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSRemoveDuplicates *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    while (1)
    {
      v5 = [(BPSRemoveDuplicates *)self last];
      if (!v5)
      {
        break;
      }

      v6 = v5;
      v7 = [(BPSRemoveDuplicates *)self isDuplicate];
      v8 = [(BPSRemoveDuplicates *)self last];
      v9 = (v7)[2](v7, v8, v4);

      if ((v9 & 1) == 0)
      {
        break;
      }

      v10 = [(BPSRemoveDuplicates *)self upstream];
      v11 = [v10 nextEvent];

      v4 = v11;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    [(BPSRemoveDuplicates *)self setLast:v4];
  }

LABEL_7:

  return v4;
}

- (void)reset
{
  [(BPSRemoveDuplicates *)self setLast:0];
  v3.receiver = self;
  v3.super_class = BPSRemoveDuplicates;
  [(BPSPublisher *)&v3 reset];
}

- (void)subscribe:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "%@ - subscribe", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end