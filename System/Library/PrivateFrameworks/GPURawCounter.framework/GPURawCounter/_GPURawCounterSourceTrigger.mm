@interface _GPURawCounterSourceTrigger
- (_GPURawCounterSourceTrigger)initWithName:(id)name description:(id)description options:(id)options;
- (void)dealloc;
@end

@implementation _GPURawCounterSourceTrigger

- (_GPURawCounterSourceTrigger)initWithName:(id)name description:(id)description options:(id)options
{
  v10.receiver = self;
  v10.super_class = _GPURawCounterSourceTrigger;
  v8 = [(_GPURawCounterSourceTrigger *)&v10 init];
  if (v8)
  {
    v8->_name = [name copy];
    v8->_description = [description copy];
    v8->_options = [options copy];
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