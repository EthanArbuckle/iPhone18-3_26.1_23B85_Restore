@interface CBFloatArray
- (CBFloatArray)initWithCount:(unint64_t)a3;
- (CBFloatArray)initWithValues:(float *)a3 andCount:(unint64_t)a4;
- (const)at:(unint64_t)a3;
- (float)dataCopy;
- (float)get:(unint64_t)a3;
- (float)mutableData;
- (id)copyNSArray;
- (id)description;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (void)dealloc;
@end

@implementation CBFloatArray

- (CBFloatArray)initWithValues:(float *)a3 andCount:(unint64_t)a4
{
  v6 = [(CBFloatArray *)self initWithCount:a4, a4];
  if (v6)
  {
    memcpy(v6->_data, a3, v6->_size);
  }

  return v6;
}

- (CBFloatArray)initWithCount:(unint64_t)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = CBFloatArray;
  v8 = [(CBFloatArray *)&v5 init];
  if (v8)
  {
    v8->_size = 4 * v6;
    v8->_count = v6;
    v3 = malloc_type_malloc(v8->_size, 0x100004052888210uLL);
    v8->_data = v3;
    if (!v8->_data)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:0 userInfo:?]);
    }
  }

  return v8;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_data)
  {
    free(v4->_data);
    v4->_data = 0;
  }

  v2.receiver = v4;
  v2.super_class = CBFloatArray;
  [(CBFloatArray *)&v2 dealloc];
}

- (float)get:(unint64_t)a3
{
  if (a3 >= self->_count)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:0 userInfo:?]);
  }

  return self->_data[a3];
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AD98];
  [(CBFloatArray *)self get:a3];
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

- (const)at:(unint64_t)a3
{
  if (a3 >= self->_count)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:0 userInfo:?]);
  }

  return &self->_data[a3];
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