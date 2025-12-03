@interface _GPURawCounterSource
- (BOOL)postProcessRawDataWithRingBufferIndex:(unsigned int)index source:(char *)source sourceSize:(unint64_t)size sourceRead:(unint64_t *)read sourceWrite:(unint64_t)write output:(char *)output outputSize:(unint64_t)outputSize outputRead:(unint64_t)self0 outputWrite:(unint64_t *)self1 isLast:(BOOL)self2;
- (BOOL)requestCounters:(id)counters firstErrorIndex:(unint64_t *)index;
- (BOOL)requestTriggers:(id)triggers firstErrorIndex:(unint64_t *)index;
- (_GPURawCounterSource)initWithSourceGroup:(id)group name:(id)name;
- (id)availableCounters;
- (id)availableTriggers;
- (void)dealloc;
@end

@implementation _GPURawCounterSource

- (_GPURawCounterSource)initWithSourceGroup:(id)group name:(id)name
{
  v8.receiver = self;
  v8.super_class = _GPURawCounterSource;
  v6 = [(_GPURawCounterSource *)&v8 init];
  if (v6)
  {
    v6->_name = [name copy];
    v6->_sourceGroup = group;
    v6->_options = 0;
  }

  return v6;
}

- (void)dealloc
{
  self->_sourceGroup = 0;

  v3.receiver = self;
  v3.super_class = _GPURawCounterSource;
  [(_GPURawCounterSource *)&v3 dealloc];
}

- (id)availableTriggers
{
  [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2];
  v2 = objc_alloc_init(MEMORY[0x277CBEA60]);

  return v2;
}

- (BOOL)requestTriggers:(id)triggers firstErrorIndex:(unint64_t *)index
{
  [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2];
  if (index)
  {
    *index = 0;
  }

  return 0;
}

- (id)availableCounters
{
  [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2];
  v2 = objc_alloc_init(MEMORY[0x277CBEA60]);

  return v2;
}

- (BOOL)requestCounters:(id)counters firstErrorIndex:(unint64_t *)index
{
  [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2];
  if (index)
  {
    *index = 0;
  }

  return 0;
}

- (BOOL)postProcessRawDataWithRingBufferIndex:(unsigned int)index source:(char *)source sourceSize:(unint64_t)size sourceRead:(unint64_t *)read sourceWrite:(unint64_t)write output:(char *)output outputSize:(unint64_t)outputSize outputRead:(unint64_t)self0 outputWrite:(unint64_t *)self1 isLast:(BOOL)self2
{
  if (index)
  {
    [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2, source, size, read, write, output];
    return 0;
  }

  else
  {

    return [_GPURawCounterSource postProcessRawDataWithRingBufferSource:"postProcessRawDataWithRingBufferSource:sourceSize:sourceRead:sourceWrite:output:outputSize:outputRead:outputWrite:isLast:" sourceSize:source sourceRead:size sourceWrite:read output:write outputSize:output outputRead:outputSize outputWrite:? isLast:?];
  }
}

@end