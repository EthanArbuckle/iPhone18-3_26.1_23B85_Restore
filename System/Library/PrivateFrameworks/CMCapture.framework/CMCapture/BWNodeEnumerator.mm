@interface BWNodeEnumerator
- (BWNodeEnumerator)initWithGraph:(id)graph;
- (uint64_t)_updateVisitedCount:(uint64_t)result;
- (void)dealloc;
@end

@implementation BWNodeEnumerator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeEnumerator;
  [(BWNodeEnumerator *)&v3 dealloc];
}

- (BWNodeEnumerator)initWithGraph:(id)graph
{
  v6.receiver = self;
  v6.super_class = BWNodeEnumerator;
  v4 = [(BWNodeEnumerator *)&v6 init];
  if (v4)
  {
    v4->_graph = graph;
    v4->_depth = 0;
    v4->_nodeVisitCountMap = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (uint64_t)_updateVisitedCount:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = [MEMORY[0x1E696B098] valueWithNonretainedObject:a2];
    v4 = [*(v2 + 24) objectForKeyedSubscript:v3];
    if (v4)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "intValue") + 1}];
    }

    else
    {
      v5 = &unk_1F2244E60;
    }

    [*(v2 + 24) setObject:v5 forKeyedSubscript:v3];

    return [v5 unsignedIntegerValue];
  }

  return result;
}

@end