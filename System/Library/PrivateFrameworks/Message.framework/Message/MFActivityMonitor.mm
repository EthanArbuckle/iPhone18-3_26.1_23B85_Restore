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
- (void)addCancelable:(id)cancelable;
- (void)addReason:(id)reason;
- (void)cancelMessage;
- (void)finishedActivity:(id)activity;
- (void)postActivityFinished:(id)finished;
- (void)postActivityStarting;
- (void)postDidChangeWithUserInfo:(id)info;
- (void)recordTransportType:(int64_t)type;
- (void)relinquishExclusiveAccessKey:(int)key;
- (void)removeCancelable:(id)cancelable;
- (void)reset;
- (void)resetConnectionStats;
- (void)setCanBeCancelled:(BOOL)cancelled;
- (void)setCurrentCount:(unint64_t)count;
- (void)setDisplayName:(id)name maxCount:(unint64_t)count;
- (void)setError:(id)error;
- (void)setGotNewMessagesState:(unint64_t)state;
- (void)setPercentDone:(double)done withKey:(int)key;
- (void)setPercentDoneOfCurrentItem:(double)item;
- (void)setShouldCancel:(BOOL)cancel;
- (void)setStatusMessage:(id)message withKey:(int)key;
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
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  runningThread = self->_runningThread;
  self->_runningThread = currentThread;

  +[MFActivityMonitor mf_unlock];
  threadDictionary = [(NSThread *)self->_runningThread threadDictionary];
  [threadDictionary setObject:self forKeyedSubscript:*MEMORY[0x1E699B758]];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MonitoredActivityStarted" object:self];
}

+ (MFActivityMonitor)currentMonitor
{
  v4.receiver = self;
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

- (void)postActivityFinished:(id)finished
{
  finishedCopy = finished;
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{finishedCopy, @"MonitoredActivityInvocation", 0, 0}];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MonitoredActivityEnded" object:self userInfo:v4];
}

- (void)finishedActivity:(id)activity
{
  activityCopy = activity;
  [MEMORY[0x1E69E58C0] mf_clearLocks];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary removeObjectForKey:*MEMORY[0x1E699B758]];

  *(self + 49) &= ~0x80u;
  +[MFActivityMonitor mf_lock];
  runningThread = self->_runningThread;
  self->_runningThread = 0;

  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postActivityFinished:activityCopy];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxCount];
    [dictionary setObject:v5 forKey:@"MonitoredActivityMaxCount"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_currentCount];
    [dictionary setObject:v6 forKey:@"MonitoredActivityCurrentCount"];

    v7 = dictionary;
  }

  else
  {
    v7 = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return v7;
}

- (void)postDidChangeWithUserInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v6 = infoCopy;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MonitoredActivityMessage" object:self userInfo:v6];

    infoCopy = v6;
  }
}

- (void)_didChange
{
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:?];
}

- (void)setCurrentCount:(unint64_t)count
{
  +[MFActivityMonitor mf_lock];
  self->_currentCount = count;
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (id)_ntsThrottledUserInfoDict
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = Current;
  if (self->_currentCount == self->_maxCount || Current - self->_lastTime >= 0.0333333351)
  {
    userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
    self->_lastTime = v4;
  }

  else
  {
    userInfoForNotification = 0;
  }

  return userInfoForNotification;
}

- (void)setPercentDoneOfCurrentItem:(double)item
{
  +[MFActivityMonitor mf_lock];
  _ntsThrottledUserInfoDict = [(MFActivityMonitor *)self _ntsThrottledUserInfoDict];
  +[MFActivityMonitor mf_unlock];
  if (_ntsThrottledUserInfoDict)
  {
    [(MFActivityMonitor *)self postDidChangeWithUserInfo:_ntsThrottledUserInfoDict];
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

- (void)setGotNewMessagesState:(unint64_t)state
{
  if (self->_gotNewMessagesState < state)
  {
    self->_gotNewMessagesState = state;
  }
}

- (void)addReason:(id)reason
{
  reasonCopy = reason;
  reasons = self->_reasons;
  v8 = reasonCopy;
  if (!reasons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_reasons;
    self->_reasons = v6;

    reasons = self->_reasons;
    reasonCopy = v8;
  }

  [(NSMutableSet *)reasons addObject:reasonCopy];
}

- (void)setDisplayName:(id)name maxCount:(unint64_t)count
{
  nameCopy = name;
  +[MFActivityMonitor mf_lock];
  objc_storeStrong(&self->_displayName, name);
  self->_maxCount = count;
  self->_currentCount = 0;
  self->_lastTime = 0.0;
  self->_percentDone = 0.0;
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];
  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (void)setCanBeCancelled:(BOOL)cancelled
{
  if (cancelled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 49) = *(self + 49) & 0xDF | v3;
}

- (void)setShouldCancel:(BOOL)cancel
{
  if ((*(self + 49) & 0x20) != 0)
  {
    if (cancel)
    {
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        currentThread = [MEMORY[0x1E696AF00] currentThread];
        threadDictionary = [currentThread threadDictionary];
        v6 = [threadDictionary objectForKeyedSubscript:*MEMORY[0x1E699B758]];

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

- (void)addCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  +[MFActivityMonitor mf_lock];
  associatedCancelables = self->_associatedCancelables;
  if (!associatedCancelables)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = self->_associatedCancelables;
    self->_associatedCancelables = v5;

    associatedCancelables = self->_associatedCancelables;
  }

  [(NSMutableSet *)associatedCancelables addObject:cancelableCopy];
  +[MFActivityMonitor mf_unlock];
  if ((*(self + 49) & 0x40) != 0)
  {
    [cancelableCopy cancel];
  }
}

- (void)removeCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  +[MFActivityMonitor mf_lock];
  [(NSMutableSet *)self->_associatedCancelables removeObject:cancelableCopy];
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
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MFActivityMonitor;
  v2 = objc_msgSendSuper2(&v4, sel_pushNewDesignator);

  return v2;
}

+ (void)destroyMonitor
{
  v2.receiver = self;
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

- (void)relinquishExclusiveAccessKey:(int)key
{
  +[MFActivityMonitor mf_lock];
  v5 = *(self + 24);
  if (key == v5 << 19 >> 19)
  {
    *(self + 24) = v5 & 0xE000;
  }

  +[MFActivityMonitor mf_unlock];
}

- (void)setStatusMessage:(id)message withKey:(int)key
{
  messageCopy = message;
  +[MFActivityMonitor mf_lock];
  if (key != *(self + 24) << 19 >> 19 || self->_statusMessage == messageCopy)
  {
    userInfoForNotification = 0;
  }

  else
  {
    objc_storeStrong(&self->_statusMessage, message);
    userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  }

  +[MFActivityMonitor mf_unlock];
  if (userInfoForNotification)
  {
    [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
  }
}

- (void)setPercentDone:(double)done withKey:(int)key
{
  +[MFActivityMonitor mf_lock];
  if (key != *(self + 24) << 19 >> 19)
  {
    goto LABEL_6;
  }

  doneCopy = 1.0;
  if (done <= 1.0)
  {
    doneCopy = done;
  }

  if (doneCopy == self->_percentDone)
  {
LABEL_6:
    userInfoForNotification = 0;
  }

  else
  {
    self->_percentDone = doneCopy;
    userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  }

  v9 = userInfoForNotification;
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

- (void)setError:(id)error
{
  errorCopy = error;
  +[MFActivityMonitor mf_lock];
  objc_storeStrong(&self->_error, error);
  +[MFActivityMonitor mf_unlock];
}

- (void)recordTransportType:(int64_t)type
{
  transportType = self->_transportType;
  if (transportType != type)
  {
    v4 = transportType < type && transportType < 3;
    if (v4 || (transportType >= 3 ? (v5 = type < 3) : (v5 = 1), !v5 ? (v6 = transportType <= type) : (v6 = 1), !v6))
    {
      self->_transportType = type;
    }
  }
}

@end