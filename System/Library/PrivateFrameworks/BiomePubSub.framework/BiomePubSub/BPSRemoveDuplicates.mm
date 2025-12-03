@interface BPSRemoveDuplicates
- (BPSRemoveDuplicates)initWithUpstream:(id)upstream isDuplicate:(id)duplicate;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSRemoveDuplicates

- (BPSRemoveDuplicates)initWithUpstream:(id)upstream isDuplicate:(id)duplicate
{
  upstreamCopy = upstream;
  duplicateCopy = duplicate;
  v14.receiver = self;
  v14.super_class = BPSRemoveDuplicates;
  v9 = [(BPSRemoveDuplicates *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, upstream);
    v11 = [duplicateCopy copy];
    isDuplicate = v10->_isDuplicate;
    v10->_isDuplicate = v11;
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BPSRemoveDuplicates *)self subscribe:v5];
  }

  v6 = [[_BPSRemoveDuplicatesInner alloc] initWithDownstream:subscribeCopy isDuplicate:self->_isDuplicate];
  upstream = [(BPSRemoveDuplicates *)self upstream];
  [upstream subscribe:v6];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSRemoveDuplicates *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  upstream = [(BPSRemoveDuplicates *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    while (1)
    {
      last = [(BPSRemoveDuplicates *)self last];
      if (!last)
      {
        break;
      }

      v6 = last;
      isDuplicate = [(BPSRemoveDuplicates *)self isDuplicate];
      last2 = [(BPSRemoveDuplicates *)self last];
      v9 = (isDuplicate)[2](isDuplicate, last2, nextEvent);

      if ((v9 & 1) == 0)
      {
        break;
      }

      upstream2 = [(BPSRemoveDuplicates *)self upstream];
      nextEvent2 = [upstream2 nextEvent];

      nextEvent = nextEvent2;
      if (!nextEvent2)
      {
        goto LABEL_7;
      }
    }

    [(BPSRemoveDuplicates *)self setLast:nextEvent];
  }

LABEL_7:

  return nextEvent;
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