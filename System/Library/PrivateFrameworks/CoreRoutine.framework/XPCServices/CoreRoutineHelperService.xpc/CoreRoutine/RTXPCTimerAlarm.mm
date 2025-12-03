@interface RTXPCTimerAlarm
- (BOOL)_isEndDateValid:(id)valid;
- (BOOL)fireWithDate:(id)date error:(id *)error;
- (BOOL)fireWithDate:(id)date shouldWake:(BOOL)wake error:(id *)error;
- (BOOL)invalidate;
- (RTXPCTimerAlarm)initWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler;
- (void)_deregisterAlarm;
- (void)_handleDurationExpiry;
- (void)_invalidate;
- (void)_setAlarmWithEndDate:(id)date shouldWake:(BOOL)wake userVisible:(BOOL)visible;
- (void)_setup;
- (void)onNotification:(id)notification;
- (void)setup;
@end

@implementation RTXPCTimerAlarm

- (RTXPCTimerAlarm)initWithIdentifier:(id)identifier queue:(id)queue handler:(id)handler
{
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  if (!queueCopy)
  {
    v11 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTXPCTimerAlarm initWithIdentifier:queue:handler:]";
      v22 = 1024;
      v23 = 26;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }
  }

  v19.receiver = self;
  v19.super_class = RTXPCTimerAlarm;
  v12 = [(RTXPCTimerAlarm *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v13->_state = 0;
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [handlerCopy copy];
    handler = v13->_handler;
    v13->_handler = v16;

    [(RTXPCTimerAlarm *)v13 setup];
  }

  return v13;
}

- (void)setup
{
  queue = [(RTXPCTimerAlarm *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B750;
  block[3] = &unk_1000A8B40;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  v4 = +[NSNotificationCenter defaultCenter];
  identifier = [(RTXPCTimerAlarm *)self identifier];
  [v4 addObserver:self selector:"onNotification:" name:identifier object:0];
}

- (void)onNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTXPCTimerAlarm *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B898;
  v7[3] = &unk_1000A8B68;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (BOOL)fireWithDate:(id)date shouldWake:(BOOL)wake error:(id *)error
{
  dateCopy = date;
  if (dateCopy)
  {
    queue = [(RTXPCTimerAlarm *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B9E8;
    block[3] = &unk_1000A8B90;
    block[4] = self;
    v13 = dateCopy;
    wakeCopy = wake;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (error)
    {
      *error = sub_10002A9F0(@"endDate");
    }
  }

  return dateCopy != 0;
}

- (BOOL)fireWithDate:(id)date error:(id *)error
{
  dateCopy = date;
  if (dateCopy)
  {
    queue = [(RTXPCTimerAlarm *)self queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001BB30;
    v10[3] = &unk_1000A8B68;
    v10[4] = self;
    v11 = dateCopy;
    dispatch_async(queue, v10);
  }

  else
  {
    v8 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (error)
    {
      *error = sub_10002A9F0(@"endDate");
    }
  }

  return dateCopy != 0;
}

- (BOOL)invalidate
{
  queue = [(RTXPCTimerAlarm *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BBCC;
  block[3] = &unk_1000A8B40;
  block[4] = self;
  dispatch_async(queue, block);

  return 1;
}

- (void)_handleDurationExpiry
{
  [(RTXPCTimerAlarm *)self setState:3];
  [(RTXPCTimerAlarm *)self _deregisterAlarm];
  v3 = +[NSDate date];
  [(RTXPCTimerAlarm *)self setEndDate:v3];

  handler = [(RTXPCTimerAlarm *)self handler];

  if (handler)
  {
    handler2 = [(RTXPCTimerAlarm *)self handler];
    handler2[2]();
  }
}

- (void)_invalidate
{
  [(RTXPCTimerAlarm *)self _deregisterAlarm];
  [(RTXPCTimerAlarm *)self _resetState];
  [(RTXPCTimerAlarm *)self setState:1];
  v4 = +[NSNotificationCenter defaultCenter];
  identifier = [(RTXPCTimerAlarm *)self identifier];
  [v4 removeObserver:self name:identifier object:0];
}

- (void)_setAlarmWithEndDate:(id)date shouldWake:(BOOL)wake userVisible:(BOOL)visible
{
  dateCopy = date;
  identifier = [(RTXPCTimerAlarm *)self identifier];
  [identifier cStringUsingEncoding:4];

  [dateCopy timeIntervalSince1970];
  v11 = v10;

  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(xdict, "Date", 1000000000 * v11);
  xpc_dictionary_set_BOOL(xdict, "UserVisible", visible);
  xpc_dictionary_set_BOOL(xdict, "ShouldWake", wake);
  xpc_set_event();
}

- (void)_deregisterAlarm
{
  identifier = [(RTXPCTimerAlarm *)self identifier];
  [identifier cStringUsingEncoding:4];

  xpc_set_event();
}

- (BOOL)_isEndDateValid:(id)valid
{
  validCopy = valid;
  v5 = +[NSDate date];
  v6 = [v5 compare:validCopy];

  if (v6 == 1)
  {
    [(RTXPCTimerAlarm *)self _handleDurationExpiry];
  }

  return v6 != 1;
}

@end