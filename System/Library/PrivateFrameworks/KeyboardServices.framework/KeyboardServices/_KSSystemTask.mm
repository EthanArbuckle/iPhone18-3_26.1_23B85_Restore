@interface _KSSystemTask
- (_KSSystemTask)initWithName:(id)name delay:(unint64_t)delay handler:(id)handler;
- (_KSSystemTask)initWithName:(id)name isPeriodic:(BOOL)periodic period:(unint64_t)period handler:(id)handler;
@end

@implementation _KSSystemTask

- (_KSSystemTask)initWithName:(id)name isPeriodic:(BOOL)periodic period:(unint64_t)period handler:(id)handler
{
  keys[7] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v12 = handlerCopy;
  selfCopy = 0;
  if (nameCopy && handlerCopy)
  {
    v31.receiver = self;
    v31.super_class = _KSSystemTask;
    v14 = [(_KSSystemTask *)&v31 init];
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
      v18 = MEMORY[0x259C41CB0](v12);
      handler = v14->_handler;
      v14->_handler = v18;

      v14->_maxRunTime = 300.0;
      v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v21 = dispatch_queue_create("com.apple._KSTasks.defaultQueue", v20);
      queue = v14->_queue;
      v14->_queue = v21;

      v23 = *MEMORY[0x277D86360];
      keys[0] = *MEMORY[0x277D86288];
      keys[1] = v23;
      v24 = *MEMORY[0x277D863A0];
      keys[2] = *MEMORY[0x277D86340];
      keys[3] = v24;
      v25 = *MEMORY[0x277D86230];
      keys[4] = *MEMORY[0x277D86398];
      keys[5] = v25;
      keys[6] = *MEMORY[0x277D86380];
      values[0] = xpc_int64_create(v14->_periodSeconds);
      values[1] = xpc_BOOL_create(periodic);
      values[2] = xpc_string_create(*MEMORY[0x277D86350]);
      values[3] = xpc_BOOL_create(1);
      values[4] = xpc_BOOL_create(1);
      values[5] = xpc_BOOL_create(0);
      values[6] = xpc_BOOL_create(1);
      v26 = xpc_dictionary_create(keys, values, 7uLL);
      executionCriteria = v14->_executionCriteria;
      v14->_executionCriteria = v26;

      for (i = 6; i != -1; --i)
      {
      }
    }

    self = v14;
    selfCopy = self;
  }

  v29 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (_KSSystemTask)initWithName:(id)name delay:(unint64_t)delay handler:(id)handler
{
  keys[7] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v10 = handlerCopy;
  selfCopy = 0;
  if (nameCopy && handlerCopy)
  {
    v28.receiver = self;
    v28.super_class = _KSSystemTask;
    v12 = [(_KSSystemTask *)&v28 init];
    if (v12)
    {
      v13 = [nameCopy copy];
      name = v12->_name;
      v12->_name = v13;

      v15 = MEMORY[0x259C41CB0](v10);
      handler = v12->_handler;
      v12->_handler = v15;

      v12->_maxRunTime = 300.0;
      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_queue_create("com.apple._KSTasks.defaultQueue", v17);
      queue = v12->_queue;
      v12->_queue = v18;

      v20 = *MEMORY[0x277D86360];
      keys[0] = *MEMORY[0x277D86288];
      keys[1] = v20;
      v21 = *MEMORY[0x277D86340];
      keys[2] = *MEMORY[0x277D86250];
      keys[3] = v21;
      v22 = *MEMORY[0x277D86398];
      keys[4] = *MEMORY[0x277D863A0];
      keys[5] = v22;
      keys[6] = *MEMORY[0x277D86380];
      values[0] = xpc_int64_create(delay);
      values[1] = xpc_BOOL_create(0);
      values[2] = xpc_int64_create(delay);
      values[3] = xpc_string_create(*MEMORY[0x277D86350]);
      values[4] = xpc_BOOL_create(1);
      values[5] = xpc_BOOL_create(1);
      values[6] = xpc_BOOL_create(1);
      v23 = xpc_dictionary_create(keys, values, 7uLL);
      executionCriteria = v12->_executionCriteria;
      v12->_executionCriteria = v23;

      for (i = 6; i != -1; --i)
      {
      }
    }

    self = v12;
    selfCopy = self;
  }

  v26 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end