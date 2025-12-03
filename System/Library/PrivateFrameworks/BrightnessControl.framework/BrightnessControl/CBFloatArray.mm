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
  v5 = [(CBFloatArray *)self initWithCount:count];
  v6 = v5;
  if (v5)
  {
    memcpy(v5->_data, values, v5->_size);
  }

  return v6;
}

- (CBFloatArray)initWithCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = CBFloatArray;
  v4 = [(CBFloatArray *)&v7 init];
  if (v4)
  {
    v4->_count = count;
    v4->_size = 4 * count;
    v5 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
    v4->_data = v5;
    if (!v5)
    {
      objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:0 userInfo:0]);
    }
  }

  return v4;
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    free(data);
    self->_data = 0;
  }

  v4.receiver = self;
  v4.super_class = CBFloatArray;
  [(CBFloatArray *)&v4 dealloc];
}

- (float)get:(unint64_t)get
{
  if (self->_count <= get)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE730] reason:0 userInfo:{0, v3, v4}]);
  }

  return self->_data[get];
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v3 = MEMORY[0x277CCABB0];
  [(CBFloatArray *)self get:subscript];

  return [v3 numberWithFloat:?];
}

- (float)dataCopy
{
  result = malloc_type_malloc(self->_size, 0x100004052888210uLL);
  if (result)
  {
    data = self->_data;
    size = self->_size;

    return memcpy(result, data, size);
  }

  return result;
}

- (const)at:(unint64_t)at
{
  if (self->_count <= at)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE730] reason:0 userInfo:{0, v3, v4}]);
  }

  return &self->_data[at];
}

- (float)mutableData
{
  result = self->_data;
  if (!result)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:0 userInfo:{0, v2, v3}]);
  }

  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[CBFloatArray copyNSArray](self "copyNSArray")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (id)copyNSArray
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_count];
  if (self->_count != 1)
  {
    v4 = 0;
    do
    {
      v5 = objc_alloc(MEMORY[0x277CCABB0]);
      [(CBFloatArray *)self get:v4];
      v6 = [v5 initWithFloat:?];
      [v3 setObject:v6 atIndexedSubscript:v4];

      ++v4;
    }

    while (v4 < self->_count - 1);
  }

  return v3;
}

@end