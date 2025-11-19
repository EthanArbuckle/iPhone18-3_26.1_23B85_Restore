@interface _GPURawCounterSource
- (BOOL)postProcessRawDataWithRingBufferIndex:(unsigned int)a3 source:(char *)a4 sourceSize:(unint64_t)a5 sourceRead:(unint64_t *)a6 sourceWrite:(unint64_t)a7 output:(char *)a8 outputSize:(unint64_t)a9 outputRead:(unint64_t)a10 outputWrite:(unint64_t *)a11 isLast:(BOOL)a12;
- (BOOL)requestCounters:(id)a3 firstErrorIndex:(unint64_t *)a4;
- (BOOL)requestTriggers:(id)a3 firstErrorIndex:(unint64_t *)a4;
- (_GPURawCounterSource)initWithSourceGroup:(id)a3 name:(id)a4;
- (id)availableCounters;
- (id)availableTriggers;
- (void)dealloc;
@end

@implementation _GPURawCounterSource

- (_GPURawCounterSource)initWithSourceGroup:(id)a3 name:(id)a4
{
  v8.receiver = self;
  v8.super_class = _GPURawCounterSource;
  v6 = [(_GPURawCounterSource *)&v8 init];
  if (v6)
  {
    v6->_name = [a4 copy];
    v6->_sourceGroup = a3;
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

- (BOOL)requestTriggers:(id)a3 firstErrorIndex:(unint64_t *)a4
{
  [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2];
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

- (id)availableCounters
{
  [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2];
  v2 = objc_alloc_init(MEMORY[0x277CBEA60]);

  return v2;
}

- (BOOL)requestCounters:(id)a3 firstErrorIndex:(unint64_t *)a4
{
  [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2];
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

- (BOOL)postProcessRawDataWithRingBufferIndex:(unsigned int)a3 source:(char *)a4 sourceSize:(unint64_t)a5 sourceRead:(unint64_t *)a6 sourceWrite:(unint64_t)a7 output:(char *)a8 outputSize:(unint64_t)a9 outputRead:(unint64_t)a10 outputWrite:(unint64_t *)a11 isLast:(BOOL)a12
{
  if (a3)
  {
    [(_GPURawCounterSource *)self doesNotRecognizeSelector:a2, a4, a5, a6, a7, a8];
    return 0;
  }

  else
  {

    return [_GPURawCounterSource postProcessRawDataWithRingBufferSource:"postProcessRawDataWithRingBufferSource:sourceSize:sourceRead:sourceWrite:output:outputSize:outputRead:outputWrite:isLast:" sourceSize:a4 sourceRead:a5 sourceWrite:a6 output:a7 outputSize:a8 outputRead:a9 outputWrite:? isLast:?];
  }
}

@end