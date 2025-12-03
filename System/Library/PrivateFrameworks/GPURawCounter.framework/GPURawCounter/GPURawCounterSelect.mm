@interface GPURawCounterSelect
+ (id)selectWithName:(id)name options:(id)options;
- (GPURawCounterSelect)initWithName:(id)name options:(id)options;
- (void)dealloc;
@end

@implementation GPURawCounterSelect

- (GPURawCounterSelect)initWithName:(id)name options:(id)options
{
  v8.receiver = self;
  v8.super_class = GPURawCounterSelect;
  v6 = [(GPURawCounterSelect *)&v8 init];
  if (v6)
  {
    v6->_name = [name copy];
    v6->_options = [options copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GPURawCounterSelect;
  [(GPURawCounterSelect *)&v3 dealloc];
}

+ (id)selectWithName:(id)name options:(id)options
{
  v4 = [[GPURawCounterSelect alloc] initWithName:name options:options];

  return v4;
}

@end