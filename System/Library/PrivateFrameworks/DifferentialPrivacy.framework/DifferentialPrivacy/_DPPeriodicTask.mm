@interface _DPPeriodicTask
+ (id)taskWithName:(id)name period:(unint64_t)period handler:(id)handler;
- (_DPPeriodicTask)initWithName:(id)name period:(unint64_t)period handler:(id)handler networkingRequired:(BOOL)required;
@end

@implementation _DPPeriodicTask

- (_DPPeriodicTask)initWithName:(id)name period:(unint64_t)period handler:(id)handler networkingRequired:(BOOL)required
{
  keys[6] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v12 = handlerCopy;
  selfCopy = 0;
  if (nameCopy && handlerCopy)
  {
    v33.receiver = self;
    v33.super_class = _DPPeriodicTask;
    v14 = [(_DPPeriodicTask *)&v33 init];
    if (v14)
    {
      v15 = [nameCopy copy];
      name = v14->_name;
      v14->_name = v15;

      periodCopy = 5;
      if (period > 5)
      {
        periodCopy = period;
      }

      v14->_periodSeconds = periodCopy;
      v14->_networkingRequired = required;
      v18 = MEMORY[0x22AA7A8C0](v12);
      handler = v14->_handler;
      v14->_handler = v18;

      v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v21 = dispatch_queue_create("com.apple._DPPeriodicTasks.defaultQueue", v20);
      queue = v14->_queue;
      v14->_queue = v21;

      v23 = *MEMORY[0x277D86360];
      keys[0] = *MEMORY[0x277D86288];
      keys[1] = v23;
      v24 = *MEMORY[0x277D863A0];
      keys[2] = *MEMORY[0x277D86340];
      keys[3] = v24;
      v25 = *MEMORY[0x277D86380];
      keys[4] = *MEMORY[0x277D86330];
      keys[5] = v25;
      values[0] = xpc_int64_create(v14->_periodSeconds);
      values[1] = xpc_BOOL_create(1);
      values[2] = xpc_string_create(*MEMORY[0x277D86348]);
      values[3] = xpc_BOOL_create(1);
      values[4] = xpc_BOOL_create(1);
      values[5] = xpc_BOOL_create(1);
      v26 = xpc_dictionary_create(keys, values, 6uLL);
      executionCriteria = v14->_executionCriteria;
      v14->_executionCriteria = v26;

      if (v14->_networkingRequired)
      {
        v28 = v14->_executionCriteria;
        v29 = xpc_BOOL_create(1);
        xpc_dictionary_set_BOOL(v28, *MEMORY[0x277D86390], v29 != 0);
      }

      for (i = 5; i != -1; --i)
      {
      }
    }

    self = v14;
    selfCopy = self;
  }

  v31 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)taskWithName:(id)name period:(unint64_t)period handler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  v9 = [objc_opt_class() taskWithName:nameCopy period:period handler:handlerCopy networkingRequired:0];

  return v9;
}

@end