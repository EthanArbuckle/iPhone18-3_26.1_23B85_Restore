@interface IRFrame
- (IRFrame)initWithTimings:(const unsigned int *)a3 count:(unint64_t)a4 timestamp:(unint64_t)a5;
- (unsigned)timeIntervalAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)getTimings:(unsigned int *)a3 range:(_NSRange)a4;
@end

@implementation IRFrame

- (IRFrame)initWithTimings:(const unsigned int *)a3 count:(unint64_t)a4 timestamp:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = IRFrame;
  v8 = [(IRFrame *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_count = a4;
    v10 = malloc_type_calloc(a4, 4uLL, 0x100004052888210uLL);
    v9->_timings = v10;
    if (v10)
    {
      memcpy(v10, a3, 4 * a4);
      v9->_timestamp = a5;
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

- (unsigned)timeIntervalAtIndex:(unint64_t)a3
{
  if ([(IRFrame *)self count]<= a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"invalid index %lu", a3}];
  }

  return self->_timings[a3];
}

- (void)getTimings:(unsigned int *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > [(IRFrame *)self count])
  {
    v10.location = location;
    v10.length = length;
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"invalid range %@", NSStringFromRange(v10)}];
  }

  v8 = &self->_timings[location];

  memcpy(a3, v8, 4 * length);
}

@end