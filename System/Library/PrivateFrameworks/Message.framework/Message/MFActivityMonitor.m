@interface MFActivityMonitor
+ (MFActivityMonitor)currentMonitor;
+ (id)pushNewMonitor;
+ (void)destroyMonitor;
- (MFActivityMonitor)init;
- (MFError)error;
- (id)_ntsThrottledUserInfoDict;
- (id)userInfoForNotification;
- (int)acquireExclusiveAccessKey;
- (void)_cancelAssociatedCancelables;
- (void)_didChange;
- (void)addCancelable:(id)a3;
- (void)addReason:(id)a3;
- (void)cancelMessage;
- (void)finishedActivity:(id)a3;
- (void)postActivityFinished:(id)a3;
- (void)postActivityStarting;
- (void)postDidChangeWithUserInfo:(id)a3;
- (void)recordTransportType:(int64_t)a3;
- (void)relinquishExclusiveAccessKey:(int)a3;
- (void)removeCancelable:(id)a3;
- (void)reset;
- (void)resetConnectionStats;
- (void)setCanBeCancelled:(BOOL)a3;
- (void)setCurrentCount:(unint64_t)a3;
- (void)setDisplayName:(id)a3 maxCount:(unint64_t)a4;
- (void)setError:(id)a3;
- (void)setGotNewMessagesState:(unint64_t)a3;
- (void)setPercentDone:(double)a3 withKey:(int)a4;
- (void)setPercentDoneOfCurrentItem:(double)a3;
- (void)setShouldCancel:(BOOL)a3;
- (void)setStatusMessage:(id)a3 withKey:(int)a4;
- (void)startActivity;
@end

@implementation MFActivityMonitor

- (MFActivityMonitor)init
{
  v6.receiver = self;
  v6.super_class = MFActivityMonitor;
  v2 = [(MFActivityMonitor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    statusMessage = v2->_statusMessage;
    v2->_statusMessage = &stru_1F273A5E0;

    v3->_percentDone = 0.0;
    *(v3 + 49) |= 0x20u;
    *(v3 + 49) &= ~0x40u;
    *(v3 + 24) &= 0xE000u;
  }

  return v3;
}

- (void)startActivity
{
  +[MFActivityMonitor mf_lock];
  v3 = [MEMORY[0x1E696AF00] currentThread];
  runningThread = self->_runningThread;
  self->_runningThread = v3;

  +[MFActivityMonitor mf_unlock];
  v5 = [(NSThread *)self->_runningThread threadDictionary];
  [v5 setObject:self forKeyedSubscript:*MEMORY[0x1E699B758]];

  *(self + 49) |= 0x80u;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [(MFActivityMonitor *)self resetConnectionStats];
  [(MFActivityMonitor *)self setError:0];

  [(MFActivityMonitor *)self postActivityStarting];
}

- (void)resetConnectionStats
{
  self->_transportType = 0;
  self->_bytesWritten = 0;
  self->_bytesRead = 0;
}

- (void)postActivityStarting
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"MonitoredActivityStarted" object:self];
}

+ (MFActivityMonitor)currentMonitor
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MFActivityMonitor;
  v2 = objc_msgSendSuper2(&v4, sel_currentDesignator);

  return v2;
}

- (void)cancelMessage
{
  if ([(MFActivityMonitor *)self shouldCancel])
  {
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

- (void)postActivityFinished:(id)a3
{
  v6 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"MonitoredActivityInvocation", 0, 0}];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"MonitoredActivityEnded" object:self userInfo:v4];
}

- (void)finishedActivity:(id)a3
{
  v7 = a3;
  [MEMORY[0x1E69E58C0] mf_clearLocks];
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];
  [v5 removeObjectForKey:*MEMORY[0x1E699B758]];

  *(self + 49) &= ~0x80u;
  +[MFActivityMonitor mf_lock];
  runningThread = self->_runningThread;
  self->_runningThread = 0;

  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postActivityFinished:v7];
}

- (id)userInfoForNotification
{
  +[MFActivityMonitor mf_lock];
  maxCount = self->_maxCount;
  if (maxCount)
  {
    if (self->_currentCount > maxCount)
    {
      maxCount = self->_currentCount;
    }

    self->_maxCount = maxCount;
  }

  if ([(NSString *)self->_displayName length])
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxCount];
    [v4 setObject:v5 forKey:@"MonitoredActivityMaxCount"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_currentCount];
    [v4 setObject:v6 forKey:@"MonitoredActivityCurrentCount"];

    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return v7;
}

- (void)postDidChangeWithUserInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"MonitoredActivityMessage" object:self userInfo:v6];

    v4 = v6;
  }
}

- (void)_didChange
{
  v3 = [(MFActivityMonitor *)self userInfoForNotification];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:?];
}

- (void)setCurrentCount:(unint64_t)a3
{
  +[MFActivityMonitor mf_lock];
  self->_currentCount = a3;
  v5 = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v5];
}

- (id)_ntsThrottledUserInfoDict
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = Current;
  if (self->_currentCount == self->_maxCount || Current - self->_lastTime >= 0.0333333351)
  {
    v5 = [(MFActivityMonitor *)self userInfoForNotification];
    self->_lastTime = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPercentDoneOfCurrentItem:(double)a3
{
  +[MFActivityMonitor mf_lock];
  v4 = [(MFActivityMonitor *)self _ntsThrottledUserInfoDict];
  +[MFActivityMonitor mf_unlock];
  if (v4)
  {
    [(MFActivityMonitor *)self postDidChangeWithUserInfo:v4];
  }
}

- (void)reset
{
  v7[1] = *MEMORY[0x1E69E9840];
  +[MFActivityMonitor mf_lock];
  self->_maxCount = 0;
  self->_currentCount = 0;
  self->_percentDone = 0.0;
  self->_lastTime = 0.0;
  displayName = self->_displayName;
  self->_displayName = 0;

  +[MFActivityMonitor mf_unlock];
  if (self->_mailbox)
  {
    v6 = @"MonitoredActivityReset";
    v7[0] = @"RESET";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(MFActivityMonitor *)self postDidChangeWithUserInfo:v4];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setGotNewMessagesState:(unint64_t)a3
{
  if (self->_gotNewMessagesState < a3)
  {
    self->_gotNewMessagesState = a3;
  }
}

- (void)addReason:(id)a3
{
  v4 = a3;
  reasons = self->_reasons;
  v8 = v4;
  if (!reasons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_reasons;
    self->_reasons = v6;

    reasons = self->_reasons;
    v4 = v8;
  }

  [(NSMutableSet *)reasons addObject:v4];
}

- (void)setDisplayName:(id)a3 maxCount:(unint64_t)a4
{
  v8 = a3;
  +[MFActivityMonitor mf_lock];
  objc_storeStrong(&self->_displayName, a3);
  self->_maxCount = a4;
  self->_currentCount = 0;
  self->_lastTime = 0.0;
  self->_percentDone = 0.0;
  v7 = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v7];
}

- (void)setCanBeCancelled:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 49) = *(self + 49) & 0xDF | v3;
}

- (void)setShouldCancel:(BOOL)a3
{
  if ((*(self + 49) & 0x20) != 0)
  {
    if (a3)
    {
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v4 = [MEMORY[0x1E696AF00] currentThread];
        v5 = [v4 threadDictionary];
        v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E699B758]];

        if (v6 == self)
        {
          v7 = MFLogGeneral();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Activity monitor cancelled on the Main Thread.  Why?", v9, 2u);
          }
        }
      }

      *(self + 49) |= 0x40u;
      [(MFActivityMonitor *)self _cancelAssociatedCancelables];
    }

    else
    {
      *(self + 49) &= ~0x40u;
    }

    +[MFActivityMonitor mf_lock];
    v8 = self->_runningThread;
    +[MFActivityMonitor mf_unlock];
    if (v8)
    {
      [(MFActivityMonitor *)self performSelector:sel_cancelMessage onThread:v8 withObject:0 waitUntilDone:0];
    }

    else
    {
      [(MFActivityMonitor *)self cancelMessage];
    }

    [(MFActivityMonitor *)self _didChange];
  }
}

- (void)addCancelable:(id)a3
{
  v7 = a3;
  +[MFActivityMonitor mf_lock];
  associatedCancelables = self->_associatedCancelables;
  if (!associatedCancelables)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = self->_associatedCancelables;
    self->_associatedCancelables = v5;

    associatedCancelables = self->_associatedCancelables;
  }

  [(NSMutableSet *)associatedCancelables addObject:v7];
  +[MFActivityMonitor mf_unlock];
  if ((*(self + 49) & 0x40) != 0)
  {
    [v7 cancel];
  }
}

- (void)removeCancelable:(id)a3
{
  v4 = a3;
  +[MFActivityMonitor mf_lock];
  [(NSMutableSet *)self->_associatedCancelables removeObject:v4];
  +[MFActivityMonitor mf_unlock];
}

- (void)_cancelAssociatedCancelables
{
  +[MFActivityMonitor mf_lock];
  v3 = [(NSMutableSet *)self->_associatedCancelables copy];
  +[MFActivityMonitor mf_unlock];
  [v3 makeObjectsPerformSelector:sel_cancel];
}

+ (id)pushNewMonitor
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MFActivityMonitor;
  v2 = objc_msgSendSuper2(&v4, sel_pushNewDesignator);

  return v2;
}

+ (void)destroyMonitor
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___MFActivityMonitor;
  objc_msgSendSuper2(&v2, sel_destroyCurrentDesignator);
}

- (int)acquireExclusiveAccessKey
{
  +[MFActivityMonitor mf_lock];
  if ((*(self + 24) & 0x1FFF) != 0)
  {
    v3 = 0;
  }

  else
  {
    *(self + 24) |= 1u;
    v3 = 1;
  }

  +[MFActivityMonitor mf_unlock];
  return v3;
}

- (void)relinquishExclusiveAccessKey:(int)a3
{
  +[MFActivityMonitor mf_lock];
  v5 = *(self + 24);
  if (a3 == v5 << 19 >> 19)
  {
    *(self + 24) = v5 & 0xE000;
  }

  +[MFActivityMonitor mf_unlock];
}

- (void)setStatusMessage:(id)a3 withKey:(int)a4
{
  v8 = a3;
  +[MFActivityMonitor mf_lock];
  if (a4 != *(self + 24) << 19 >> 19 || self->_statusMessage == v8)
  {
    v7 = 0;
  }

  else
  {
    objc_storeStrong(&self->_statusMessage, a3);
    v7 = [(MFActivityMonitor *)self userInfoForNotification];
  }

  +[MFActivityMonitor mf_unlock];
  if (v7)
  {
    [(MFActivityMonitor *)self postDidChangeWithUserInfo:v7];
  }
}

- (void)setPercentDone:(double)a3 withKey:(int)a4
{
  +[MFActivityMonitor mf_lock];
  if (a4 != *(self + 24) << 19 >> 19)
  {
    goto LABEL_6;
  }

  v7 = 1.0;
  if (a3 <= 1.0)
  {
    v7 = a3;
  }

  if (v7 == self->_percentDone)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    self->_percentDone = v7;
    v8 = [(MFActivityMonitor *)self userInfoForNotification];
  }

  v9 = v8;
  +[MFActivityMonitor mf_unlock];
  if (v9)
  {
    [(MFActivityMonitor *)self postDidChangeWithUserInfo:v9];
  }
}

- (MFError)error
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_error;
  +[MFActivityMonitor mf_unlock];

  return v3;
}

- (void)setError:(id)a3
{
  v5 = a3;
  +[MFActivityMonitor mf_lock];
  objc_storeStrong(&self->_error, a3);
  +[MFActivityMonitor mf_unlock];
}

- (void)recordTransportType:(int64_t)a3
{
  transportType = self->_transportType;
  if (transportType != a3)
  {
    v4 = transportType < a3 && transportType < 3;
    if (v4 || (transportType >= 3 ? (v5 = a3 < 3) : (v5 = 1), !v5 ? (v6 = transportType <= a3) : (v6 = 1), !v6))
    {
      self->_transportType = a3;
    }
  }
}

@end