@interface _GPURawCounter
- (_GPURawCounter)initWithName:(id)a3 description:(id)a4 valueType:(unint64_t)a5;
- (void)dealloc;
@end

@implementation _GPURawCounter

- (_GPURawCounter)initWithName:(id)a3 description:(id)a4 valueType:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = _GPURawCounter;
  v8 = [(_GPURawCounter *)&v10 init];
  if (v8)
  {
    v8->_name = [a3 copy];
    v8->_description = [a4 copy];
    v8->_counterValueType = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GPURawCounter;
  [(_GPURawCounter *)&v3 dealloc];
}

@end