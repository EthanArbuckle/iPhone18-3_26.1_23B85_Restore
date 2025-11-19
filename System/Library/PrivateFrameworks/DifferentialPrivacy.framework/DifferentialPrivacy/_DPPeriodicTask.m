@interface _DPPeriodicTask
+ (id)taskWithName:(id)a3 period:(unint64_t)a4 handler:(id)a5;
- (_DPPeriodicTask)initWithName:(id)a3 period:(unint64_t)a4 handler:(id)a5 networkingRequired:(BOOL)a6;
@end

@implementation _DPPeriodicTask

- (_DPPeriodicTask)initWithName:(id)a3 period:(unint64_t)a4 handler:(id)a5 networkingRequired:(BOOL)a6
{
  keys[6] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (v10 && v11)
  {
    v33.receiver = self;
    v33.super_class = _DPPeriodicTask;
    v14 = [(_DPPeriodicTask *)&v33 init];
    if (v14)
    {
      v15 = [v10 copy];
      name = v14->_name;
      v14->_name = v15;

      v17 = 5;
      if (a4 > 5)
      {
        v17 = a4;
      }

      v14->_periodSeconds = v17;
      v14->_networkingRequired = a6;
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
    v13 = self;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)taskWithName:(id)a3 period:(unint64_t)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [objc_opt_class() taskWithName:v8 period:a4 handler:v7 networkingRequired:0];

  return v9;
}

@end