@interface _GPURawCounter
- (_GPURawCounter)initWithName:(id)name description:(id)description valueType:(unint64_t)type;
- (void)dealloc;
@end

@implementation _GPURawCounter

- (_GPURawCounter)initWithName:(id)name description:(id)description valueType:(unint64_t)type
{
  v10.receiver = self;
  v10.super_class = _GPURawCounter;
  v8 = [(_GPURawCounter *)&v10 init];
  if (v8)
  {
    v8->_name = [name copy];
    v8->_description = [description copy];
    v8->_counterValueType = type;
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