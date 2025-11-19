@interface BRDarwinNotifySender
- (id)initForEventName:(id)a3;
- (unint64_t)lastState;
- (void)dealloc;
- (void)invalidate;
- (void)notifyChangedState:(unint64_t)a3;
@end

@implementation BRDarwinNotifySender

- (id)initForEventName:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v7 = brc_bread_crumbs("[BRDarwinNotifySender initForEventName:]", 23);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRDarwinNotifySender initForEventName:];
    }

    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = BRDarwinNotifySender;
  v6 = [(BRDarwinNotifySender *)&v11 init];
  self = v6;
  if (v6)
  {
    v6->_token = -1;
    objc_storeStrong(&v6->_eventName, a3);
    if (brc_notify_register_check([(NSString *)self->_eventName UTF8String], &self->_token))
    {
      v7 = brc_bread_crumbs("[BRDarwinNotifySender initForEventName:]", 31);
      v8 = brc_default_log(0, 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BRDarwinNotifySender initForEventName:];
      }

LABEL_9:

      v9 = 0;
      goto LABEL_10;
    }
  }

  self = self;
  v9 = self;
LABEL_10:

  return v9;
}

- (void)dealloc
{
  [(BRDarwinNotifySender *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRDarwinNotifySender;
  [(BRDarwinNotifySender *)&v3 dealloc];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  token = obj->_token;
  if (token != -1)
  {
    notify_cancel(token);
    v2 = obj;
    obj->_token = -1;
  }

  objc_sync_exit(v2);
}

- (void)notifyChangedState:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  token = obj->_token;
  if (token == -1)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_lastState = a3;
    objc_sync_exit(obj);

    v5 = [(NSString *)obj->_eventName UTF8String];

    brc_notify_set_state_and_post(token, a3, v5);
  }
}

- (unint64_t)lastState
{
  v2 = self;
  objc_sync_enter(v2);
  lastState = v2->_lastState;
  objc_sync_exit(v2);

  return lastState;
}

- (void)initForEventName:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: Failed registering check%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initForEventName:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: Invalid Arguments%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end