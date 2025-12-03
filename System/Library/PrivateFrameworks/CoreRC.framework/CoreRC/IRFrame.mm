@interface IRFrame
- (IRFrame)initWithTimings:(const unsigned int *)timings count:(unint64_t)count timestamp:(unint64_t)timestamp;
- (unsigned)timeIntervalAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getTimings:(unsigned int *)timings range:(_NSRange)range;
@end

@implementation IRFrame

- (IRFrame)initWithTimings:(const unsigned int *)timings count:(unint64_t)count timestamp:(unint64_t)timestamp
{
  v12.receiver = self;
  v12.super_class = IRFrame;
  v8 = [(IRFrame *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_count = count;
    v10 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    v9->_timings = v10;
    if (v10)
    {
      memcpy(v10, timings, 4 * count);
      v9->_timestamp = timestamp;
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  timings = self->_timings;
  if (timings)
  {
    free(timings);
  }

  v4.receiver = self;
  v4.super_class = IRFrame;
  [(IRFrame *)&v4 dealloc];
}

- (unsigned)timeIntervalAtIndex:(unint64_t)index
{
  if ([(IRFrame *)self count]<= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"invalid index %lu", index}];
  }

  return self->_timings[index];
}

- (void)getTimings:(unsigned int *)timings range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > [(IRFrame *)self count])
  {
    v10.location = location;
    v10.length = length;
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"invalid range %@", NSStringFromRange(v10)}];
  }

  v8 = &self->_timings[location];

  memcpy(timings, v8, 4 * length);
}

@end