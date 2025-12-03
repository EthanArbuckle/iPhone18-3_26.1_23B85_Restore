@interface CBFloatArray
- (CBFloatArray)initWithCount:(unint64_t)count;
- (CBFloatArray)initWithValues:(float *)values andCount:(unint64_t)count;
- (const)at:(unint64_t)at;
- (float)dataCopy;
- (float)get:(unint64_t)get;
- (float)mutableData;
- (id)copyNSArray;
- (id)description;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)dealloc;
@end

@implementation CBFloatArray

- (CBFloatArray)initWithValues:(float *)values andCount:(unint64_t)count
{
  v6 = [(CBFloatArray *)self initWithCount:count, count];
  if (v6)
  {
    memcpy(v6->_data, values, v6->_size);
  }

  return v6;
}

- (CBFloatArray)initWithCount:(unint64_t)count
{
  selfCopy = self;
  v7 = a2;
  countCopy = count;
  v5.receiver = self;
  v5.super_class = CBFloatArray;
  selfCopy = [(CBFloatArray *)&v5 init];
  if (selfCopy)
  {
    selfCopy->_size = 4 * countCopy;
    selfCopy->_count = countCopy;
    v3 = malloc_type_malloc(selfCopy->_size, 0x100004052888210uLL);
    selfCopy->_data = v3;
    if (!selfCopy->_data)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:0 userInfo:?]);
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_data)
  {
    free(selfCopy->_data);
    selfCopy->_data = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = CBFloatArray;
  [(CBFloatArray *)&v2 dealloc];
}

- (float)get:(unint64_t)get
{
  if (get >= self->_count)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:0 userInfo:?]);
  }

  return self->_data[get];
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v4 = MEMORY[0x1E696AD98];
  [(CBFloatArray *)self get:subscript];
  return [v4 numberWithFloat:?];
}

- (float)dataCopy
{
  __dst = malloc_type_malloc(self->_size, 0x100004052888210uLL);
  if (__dst)
  {
    memcpy(__dst, self->_data, self->_size);
  }

  return __dst;
}

- (const)at:(unint64_t)at
{
  if (at >= self->_count)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:0 userInfo:?]);
  }

  return &self->_data[at];
}

- (float)mutableData
{
  if (!self->_data)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:0 userInfo:?]);
  }

  return self->_data;
}

- (id)description
{
  context = objc_autoreleasePoolPush();
  v4 = [-[CBFloatArray copyNSArray](self "copyNSArray")];
  objc_autoreleasePoolPop(context);
  return v4;
}

- (id)copyNSArray
{
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_count];
  for (i = 0; i < self->_count - 1; ++i)
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    [(CBFloatArray *)self get:i];
    v4 = [v3 initWithFloat:?];
    [v6 setObject:v4 atIndexedSubscript:i];
    MEMORY[0x1E69E5920](v4);
  }

  return v6;
}

@end