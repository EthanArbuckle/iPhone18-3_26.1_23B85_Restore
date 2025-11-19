@interface CSAttSiriStateMonitor
+ (id)sharedInstance;
- (CSAttSiriStateMonitor)init;
- (unint64_t)getAttendingState;
- (void)updateState:(unint64_t)a3;
@end

@implementation CSAttSiriStateMonitor

+ (id)sharedInstance
{
  if (qword_10029E220 != -1)
  {
    dispatch_once(&qword_10029E220, &stru_100250420);
  }

  v3 = qword_10029E218;

  return v3;
}

- (unint64_t)getAttendingState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006884;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)updateState:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A93F8;
  v4[3] = &unk_100253C98;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (CSAttSiriStateMonitor)init
{
  v6.receiver = self;
  v6.super_class = CSAttSiriStateMonitor;
  v2 = [(CSAttSiriStateMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAttSiriStateMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_attendingState = 0;
  }

  return v2;
}

@end