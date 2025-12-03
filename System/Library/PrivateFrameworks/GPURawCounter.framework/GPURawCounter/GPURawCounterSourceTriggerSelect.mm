@interface GPURawCounterSourceTriggerSelect
+ (id)selectWithName:(id)name options:(id)options;
- (GPURawCounterSourceTriggerSelect)initWithName:(id)name options:(id)options;
- (void)dealloc;
@end

@implementation GPURawCounterSourceTriggerSelect

- (GPURawCounterSourceTriggerSelect)initWithName:(id)name options:(id)options
{
  v8.receiver = self;
  v8.super_class = GPURawCounterSourceTriggerSelect;
  v6 = [(GPURawCounterSourceTriggerSelect *)&v8 init];
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
  v3.super_class = GPURawCounterSourceTriggerSelect;
  [(GPURawCounterSourceTriggerSelect *)&v3 dealloc];
}

+ (id)selectWithName:(id)name options:(id)options
{
  v4 = [[GPURawCounterSourceTriggerSelect alloc] initWithName:name options:options];

  return v4;
}

@end