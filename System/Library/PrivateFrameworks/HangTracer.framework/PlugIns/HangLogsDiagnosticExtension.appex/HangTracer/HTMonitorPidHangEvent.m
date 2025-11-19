@interface HTMonitorPidHangEvent
+ (void)_updateRunningBoardProcessMonitor;
+ (void)checkHangForPid:(int)a3;
+ (void)removePidFromProcessMonitoring:(int)a3;
- (id)initHTMonitorPidHangEvent:(id *)a3 shmem_size:(unint64_t)a4;
- (void)dealloc;
@end

@implementation HTMonitorPidHangEvent

- (id)initHTMonitorPidHangEvent:(id *)a3 shmem_size:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = HTMonitorPidHangEvent;
  result = [(HTMonitorPidHangEvent *)&v7 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
  }

  return result;
}

- (void)dealloc
{
  munmap(self->_shmem_region, self->_shmem_size);
  self->_shmem_region = 0;
  self->_shmem_size = 0;
  v3.receiver = self;
  v3.super_class = HTMonitorPidHangEvent;
  [(HTMonitorPidHangEvent *)&v3 dealloc];
}

+ (void)checkHangForPid:(int)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C440;
  block[3] = &unk_100024FD0;
  v4 = a3;
  dispatch_async(_htMonitorConnectionQueue, block);
}

+ (void)_updateRunningBoardProcessMonitor
{
  if (qword_10002B078)
  {
    [qword_10002B078 updateConfiguration:&stru_100025010];
  }
}

+ (void)removePidFromProcessMonitoring:(int)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = qword_10002B080;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 pid] == a3)
        {
          [qword_10002B080 removeObject:v9];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  +[HTMonitorPidHangEvent _updateRunningBoardProcessMonitor];
}

@end