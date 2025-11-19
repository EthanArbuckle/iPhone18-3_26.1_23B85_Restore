@interface _GPURawCounterSourceTrigger
- (_GPURawCounterSourceTrigger)initWithName:(id)a3 description:(id)a4 options:(id)a5;
- (void)dealloc;
@end

@implementation _GPURawCounterSourceTrigger

- (_GPURawCounterSourceTrigger)initWithName:(id)a3 description:(id)a4 options:(id)a5
{
  v10.receiver = self;
  v10.super_class = _GPURawCounterSourceTrigger;
  v8 = [(_GPURawCounterSourceTrigger *)&v10 init];
  if (v8)
  {
    v8->_name = [a3 copy];
    v8->_description = [a4 copy];
    v8->_options = [a5 copy];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GPURawCounterSourceTrigger;
  [(_GPURawCounterSourceTrigger *)&v3 dealloc];
}

@end