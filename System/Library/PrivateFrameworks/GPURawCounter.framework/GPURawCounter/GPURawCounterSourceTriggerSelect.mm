@interface GPURawCounterSourceTriggerSelect
+ (id)selectWithName:(id)a3 options:(id)a4;
- (GPURawCounterSourceTriggerSelect)initWithName:(id)a3 options:(id)a4;
- (void)dealloc;
@end

@implementation GPURawCounterSourceTriggerSelect

- (GPURawCounterSourceTriggerSelect)initWithName:(id)a3 options:(id)a4
{
  v8.receiver = self;
  v8.super_class = GPURawCounterSourceTriggerSelect;
  v6 = [(GPURawCounterSourceTriggerSelect *)&v8 init];
  if (v6)
  {
    v6->_name = [a3 copy];
    v6->_options = [a4 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GPURawCounterSourceTriggerSelect;
  [(GPURawCounterSourceTriggerSelect *)&v3 dealloc];
}

+ (id)selectWithName:(id)a3 options:(id)a4
{
  v4 = [[GPURawCounterSourceTriggerSelect alloc] initWithName:a3 options:a4];

  return v4;
}

@end