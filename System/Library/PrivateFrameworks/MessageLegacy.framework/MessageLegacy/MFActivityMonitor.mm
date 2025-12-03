@interface MFActivityMonitor
+ (id)currentMonitor;
+ (void)destroyMonitor;
- (BOOL)_lockedAddActivityTarget:(id)target;
- (MFActivityMonitor)init;
- (NSString)description;
- (id)_ntsThrottledUserInfoDict;
- (id)activityTarget;
- (id)activityTargets;
- (id)displayName;
- (id)error;
- (id)primaryTarget;
- (id)statusMessage;
- (id)taskName;
- (id)userInfoForNotification;
- (int)acquireExclusiveAccessKey;
- (void)_cancelAssociatedCancelables;
- (void)_didChange;
- (void)addActivityTarget:(id)target;
- (void)addActivityTargets:(id)targets;
- (void)addCancelable:(id)cancelable;
- (void)addReason:(id)reason;
- (void)cancelMessage;
- (void)dealloc;
- (void)finishedActivity:(id)activity;
- (void)notifyConnectionEstablished;
- (void)postActivityFinished:(id)finished;
- (void)postActivityStarting;
- (void)postDidChangeWithUserInfo:(id)info;
- (void)relinquishExclusiveAccessKey:(int)key;
- (void)removeActivityTarget:(id)target;
- (void)removeCancelable:(id)cancelable;
- (void)reset;
- (void)setActivityTarget:(id)target;
- (void)setCanBeCancelled:(BOOL)cancelled;
- (void)setCurrentCount:(unint64_t)count;
- (void)setDisplayName:(id)name maxCount:(unint64_t)count;
- (void)setError:(id)error;
- (void)setGotNewMessagesState:(unint64_t)state;
- (void)setInvocationQueue:(id)queue;
- (void)setMaxCount:(unint64_t)count;
- (void)setPercentDone:(double)done withKey:(int)key;
- (void)setPercentDoneOfCurrentItem:(double)item;
- (void)setPrimaryTarget:(id)target;
- (void)setShouldCancel:(BOOL)cancel;
- (void)setStatusMessage:(id)message;
- (void)setStatusMessage:(id)message withKey:(int)key;
- (void)setTaskName:(id)name;
- (void)startActivity;
@end

@implementation MFActivityMonitor

- (MFActivityMonitor)init
{
  v3.receiver = self;
  v3.super_class = MFActivityMonitor;
  result = [(MFActivityMonitor *)&v3 init];
  if (result)
  {
    result->_statusMessage = &stru_2869ED3E0;
    result->_taskName = &stru_2869ED3E0;
    result->_percentDone = 0.0;
    *(result + 73) |= 0x20u;
    *(result + 73) &= ~0x40u;
    *(result + 36) &= 0xE000u;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFActivityMonitor;
  [(MFActivityMonitor *)&v3 dealloc];
}

- (void)cancelMessage
{
  if ([(MFActivityMonitor *)self shouldCancel])
  {
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

- (void)postActivityStarting
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"MonitoredActivityStarted" object:self];
}

- (void)postActivityFinished:(id)finished
{
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{finished, @"MonitoredActivityInvocation", 0, 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)startActivity
{
  +[MFActivityMonitor mf_lock];
  self->_runningThread = [MEMORY[0x277CCACC8] currentThread];
  +[MFActivityMonitor mf_unlock];
  threadDictionary = [(NSThread *)self->_runningThread threadDictionary];
  [(NSMutableDictionary *)threadDictionary setObject:self forKey:*MEMORY[0x277D07120]];
  *(self + 73) |= 0x80u;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [(MFActivityMonitor *)self resetConnectionStats];
  [(MFActivityMonitor *)self setError:0];

  [(MFActivityMonitor *)self postActivityStarting];
}

- (void)finishedActivity:(id)activity
{
  [MEMORY[0x277D82BB8] mf_clearLocks];
  v5 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  [v5 removeObjectForKey:*MEMORY[0x277D07120]];
  *(self + 73) &= ~0x80u;
  +[MFActivityMonitor mf_lock];

  self->_runningThread = 0;
  +[MFActivityMonitor mf_unlock];

  [(MFActivityMonitor *)self postActivityFinished:activity];
}

- (void)notifyConnectionEstablished
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"NetworkConnectionEstablished" object:self];
}

- (id)userInfoForNotification
{
  +[MFActivityMonitor mf_lock];
  maxCount = self->_maxCount;
  if (!maxCount)
  {
    v5 = &OBJC_IVAR___MFActivityMonitor__percentDone;
    goto LABEL_7;
  }

  if (self->_currentCount > maxCount)
  {
    maxCount = self->_currentCount;
  }

  self->_maxCount = maxCount;
  v4 = 0.0;
  if (*(self + 136))
  {
    v5 = &OBJC_IVAR___MFActivityMonitor__currentItemPercentDone;
LABEL_7:
    v4 = *(&self->super.super.isa + *v5);
  }

  if ([(NSString *)self->_displayName length])
  {
    if (!self->_maxCount && [(NSString *)self->_displayName rangeOfString:@"…"]== 0x7FFFFFFFFFFFFFFFLL && [(NSString *)self->_displayName rangeOfString:@"..."]== 0x7FFFFFFFFFFFFFFFLL)
    {
      displayName = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"MF_INDETERMINATE_PROGRESS_FORMAT", @"%@...", 0), self->_displayName];
    }

    else
    {
      displayName = self->_displayName;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:displayName forKey:@"MonitoredActivityDictMessage"];
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_maxCount), @"MonitoredActivityMaxCount"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_currentCount), @"MonitoredActivityCurrentCount"}];
    *&v8 = v4;
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v8), @"MonitoredActivityCurrentItemProgress"}];
  }

  else
  {
    dictionary = 0;
  }

  +[MFActivityMonitor mf_unlock];
  return dictionary;
}

- (void)postDidChangeWithUserInfo:(id)info
{
  if (info)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"MonitoredActivityMessage" object:self userInfo:info];
  }
}

- (void)_didChange
{
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];

  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (void)setMaxCount:(unint64_t)count
{
  +[MFActivityMonitor mf_lock];
  self->_maxCount = count;
  self->_lastTime = 0.0;
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];

  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (void)setCurrentCount:(unint64_t)count
{
  +[MFActivityMonitor mf_lock];
  self->_currentCount = count;
  self->_currentItemPercentDone = 0.0;
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];

  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (id)_ntsThrottledUserInfoDict
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = Current;
  if (self->_currentCount != self->_maxCount && Current - self->_lastTime < 0.0333333351)
  {
    return 0;
  }

  result = [(MFActivityMonitor *)self userInfoForNotification];
  self->_lastTime = v4;
  return result;
}

- (void)setPercentDoneOfCurrentItem:(double)item
{
  +[MFActivityMonitor mf_lock];
  self->_currentItemPercentDone = item;
  _ntsThrottledUserInfoDict = [(MFActivityMonitor *)self _ntsThrottledUserInfoDict];
  +[MFActivityMonitor mf_unlock];
  if (_ntsThrottledUserInfoDict)
  {

    [(MFActivityMonitor *)self postDidChangeWithUserInfo:_ntsThrottledUserInfoDict];
  }
}

- (void)reset
{
  +[MFActivityMonitor mf_lock];
  self->_maxCount = 0;
  self->_currentCount = 0;
  self->_percentDone = 0.0;
  self->_currentItemPercentDone = 0.0;
  [(MFActivityMonitor *)self setSupportsPerItemProgress:0];
  self->_lastTime = 0.0;

  self->_taskName = 0;
  self->_displayName = 0;
  +[MFActivityMonitor mf_unlock];
  if (self->_mailbox)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:@"RESET" forKey:@"MonitoredActivityReset"];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }
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
  reasons = self->_reasons;
  if (!reasons)
  {
    reasons = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->_reasons = reasons;
  }

  [(NSMutableSet *)reasons addObject:reason];
}

- (void)setStatusMessage:(id)message
{
  [(MFActivityMonitor *)self percentDone];

  [(MFActivityMonitor *)self setStatusMessage:message percentDone:?];
}

- (id)statusMessage
{
  +[MFActivityMonitor mf_lock];
  p_statusMessage = &self->_statusMessage;
  statusMessage = self->_statusMessage;
  if (!statusMessage || [(NSString *)statusMessage isEqualToString:&stru_2869ED3E0])
  {
    p_statusMessage = &self->_taskName;
  }

  v5 = *p_statusMessage;
  +[MFActivityMonitor mf_unlock];
  return v5;
}

- (NSString)description
{
  +[MFActivityMonitor mf_lock];
  descriptionString = self->_descriptionString;
  if (!descriptionString)
  {
    target = self->_target;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(self->_target "displayName")])
    {
      v5 = objc_alloc(MEMORY[0x277CCACA8]);
      displayName = [self->_target displayName];
      taskName = self->_taskName;
      if (!taskName)
      {
        taskName = &stru_2869ED3E0;
      }

      descriptionString = [v5 initWithFormat:@"[%@] %@", displayName, taskName];
    }

    else
    {
      v8 = self->_taskName;
      if (!v8)
      {
        v8 = &stru_2869ED3E0;
      }

      descriptionString = v8;
    }

    self->_descriptionString = descriptionString;
  }

  v9 = descriptionString;
  +[MFActivityMonitor mf_unlock];

  return v9;
}

- (id)taskName
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_taskName;
  +[MFActivityMonitor mf_unlock];
  return v3;
}

- (void)setTaskName:(id)name
{
  +[MFActivityMonitor mf_lock];
  taskName = self->_taskName;
  if (taskName != name)
  {
    v6 = taskName;
    self->_taskName = name;
  }

  self->_currentCount = 0;
  self->_maxCount = 0;
  self->_lastTime = 0.0;
  self->_percentDone = 0.0;
  self->_currentItemPercentDone = 0.0;

  self->_displayName = 0;

  +[MFActivityMonitor mf_unlock];
}

- (id)displayName
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_displayName;
  +[MFActivityMonitor mf_unlock];
  return v3;
}

- (void)setDisplayName:(id)name maxCount:(unint64_t)count
{
  +[MFActivityMonitor mf_lock];
  displayName = self->_displayName;
  if (displayName != name)
  {
    v8 = displayName;
    self->_displayName = name;
  }

  self->_maxCount = count;
  self->_currentCount = 0;
  self->_lastTime = 0.0;
  self->_percentDone = 0.0;
  self->_currentItemPercentDone = 0.0;
  userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];

  [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
}

- (void)setActivityTarget:(id)target
{
  +[MFActivityMonitor mf_lock];
  if (self->_target == target)
  {
    target = 0;
  }

  else
  {
    target = self->_target;
    self->_target = target;

    self->_descriptionString = 0;
  }

  +[MFActivityMonitor mf_unlock];
}

- (id)activityTarget
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_target;
  +[MFActivityMonitor mf_unlock];

  return v3;
}

- (BOOL)_lockedAddActivityTarget:(id)target
{
  target = self->_target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    self->_target = objc_alloc_init(_MFActivityMonitorMultiTarget);

    self->_descriptionString = 0;
  }

  v6 = self->_target;

  return [v6 addActivityTarget:target];
}

- (void)addActivityTarget:(id)target
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  v6 = [(MFActivityMonitor *)self _lockedAddActivityTarget:target];
  if (self->_target == target)
  {
    targetCopy = 0;
  }

  else
  {
    targetCopy = target;
  }

  +[MFActivityMonitor mf_unlock];

  if (v6)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{target, @"AddedTarget", 0}];

    [defaultCenter postNotificationName:@"MonitoredActivityDidAddActivityTarget" object:self userInfo:v9];
  }
}

- (void)addActivityTargets:(id)targets
{
  v19 = *MEMORY[0x277D85DE8];
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [targets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(targets);
        }

        v8 |= [(MFActivityMonitor *)self _lockedAddActivityTarget:*(*(&v14 + 1) + 8 * i)];
      }

      v7 = [targets countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    if (self->_target == target)
    {
      v11 = 0;
    }

    else
    {
      v11 = target;
    }

    +[MFActivityMonitor mf_unlock];

    if (v8)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    }
  }

  else
  {
    if (self->_target == target)
    {
      v12 = 0;
    }

    else
    {
      v12 = target;
    }

    +[MFActivityMonitor mf_unlock];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeActivityTarget:(id)target
{
  targetCopy = target;
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self->_target removeActivityTarget:target];
    +[MFActivityMonitor mf_unlock];
    if (v6)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"MonitoredActivityDidRemoveActivityTarget" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", target, @"RemovedTarget", 0)}];
    }
  }

  else
  {
    +[MFActivityMonitor mf_unlock];
  }
}

- (void)setPrimaryTarget:(id)target
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    primaryTarget = [self->_target primaryTarget];
    [self->_target setPrimaryTarget:target];

    self->_descriptionString = 0;
    +[MFActivityMonitor mf_unlock];
    if (primaryTarget)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{primaryTarget, @"MonitoredActivityOldPrimaryTarget", target, @"MonitoredActivityNewPrimaryTarget", 0}];
      goto LABEL_6;
    }
  }

  else
  {
    +[MFActivityMonitor mf_unlock];
  }

  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{target, @"MonitoredActivityNewPrimaryTarget", 0, @"MonitoredActivityOldPrimaryTarget", 0}];
  primaryTarget = 0;
LABEL_6:
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (id)primaryTarget
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    primaryTarget = [self->_target primaryTarget];
  }

  else
  {
    primaryTarget = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return primaryTarget;
}

- (id)activityTargets
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allTargets = [self->_target allTargets];
  }

  else
  {
    allTargets = 0;
  }

  +[MFActivityMonitor mf_unlock];
  return allTargets;
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

  *(self + 73) = *(self + 73) & 0xDF | v3;
}

- (void)setShouldCancel:(BOOL)cancel
{
  if ((*(self + 73) & 0x20) != 0)
  {
    if (cancel)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v4 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
        if ([v4 objectForKey:*MEMORY[0x277D07120]] == self)
        {
          v5 = MFLogGeneral();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *v7 = 0;
            _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Activity monitor cancelled on the Main Thread.  Why?", v7, 2u);
          }
        }
      }

      *(self + 73) |= 0x40u;
      [(MFActivityMonitor *)self _cancelAssociatedCancelables];
    }

    else
    {
      *(self + 73) &= ~0x40u;
    }

    +[MFActivityMonitor mf_lock];
    v6 = self->_runningThread;
    +[MFActivityMonitor mf_unlock];
    if (v6)
    {
      [(MFActivityMonitor *)self performSelector:sel_cancelMessage onThread:v6 withObject:0 waitUntilDone:0];
    }

    else
    {
      [(MFActivityMonitor *)self cancelMessage];
    }

    [(MFInvocationQueue *)self->_ourQueue didCancel:self];
    [(MFActivityMonitor *)self _didChange];
  }
}

- (void)addCancelable:(id)cancelable
{
  +[MFActivityMonitor mf_lock];
  associatedCancelables = self->_associatedCancelables;
  if (!associatedCancelables)
  {
    associatedCancelables = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->_associatedCancelables = associatedCancelables;
  }

  [(NSMutableSet *)associatedCancelables addObject:cancelable];
  +[MFActivityMonitor mf_unlock];
  if ((*(self + 73) & 0x40) != 0)
  {

    [cancelable cancel];
  }
}

- (void)removeCancelable:(id)cancelable
{
  +[MFActivityMonitor mf_lock];
  [(NSMutableSet *)self->_associatedCancelables removeObject:cancelable];

  +[MFActivityMonitor mf_unlock];
}

- (void)_cancelAssociatedCancelables
{
  +[MFActivityMonitor mf_lock];
  v3 = [(NSMutableSet *)self->_associatedCancelables copy];
  +[MFActivityMonitor mf_unlock];
  [v3 makeObjectsPerformSelector:sel_cancel];
}

- (void)setInvocationQueue:(id)queue
{
  queueCopy = queue;

  self->_ourQueue = queueCopy;
}

+ (id)currentMonitor
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___MFActivityMonitor;
  return objc_msgSendSuper2(&v3, sel_currentDesignator);
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
  if ((*(self + 36) & 0x1FFF) != 0)
  {
    v3 = 0;
  }

  else
  {
    *(self + 36) |= 1u;
    v3 = 1;
  }

  +[MFActivityMonitor mf_unlock];
  return v3;
}

- (void)relinquishExclusiveAccessKey:(int)key
{
  +[MFActivityMonitor mf_lock];
  v5 = *(self + 36);
  if (key == v5 << 19 >> 19)
  {
    *(self + 36) = v5 & 0xE000;
  }

  +[MFActivityMonitor mf_unlock];
}

- (void)setStatusMessage:(id)message withKey:(int)key
{
  +[MFActivityMonitor mf_lock];
  if (key != *(self + 36) << 19 >> 19 || (statusMessage = self->_statusMessage, statusMessage == message))
  {

    +[MFActivityMonitor mf_unlock];
  }

  else
  {

    self->_statusMessage = message;
    userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
    +[MFActivityMonitor mf_unlock];
    if (userInfoForNotification)
    {

      [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
    }
  }
}

- (void)setPercentDone:(double)done withKey:(int)key
{
  +[MFActivityMonitor mf_lock];
  if (key != *(self + 36) << 19 >> 19)
  {
    goto LABEL_9;
  }

  doneCopy = 1.0;
  if (done <= 1.0)
  {
    doneCopy = done;
  }

  if (doneCopy == self->_percentDone)
  {
LABEL_9:

    +[MFActivityMonitor mf_unlock];
  }

  else
  {
    self->_percentDone = doneCopy;
    userInfoForNotification = [(MFActivityMonitor *)self userInfoForNotification];
    +[MFActivityMonitor mf_unlock];
    if (userInfoForNotification)
    {

      [(MFActivityMonitor *)self postDidChangeWithUserInfo:userInfoForNotification];
    }
  }
}

- (id)error
{
  +[MFActivityMonitor mf_lock];
  v3 = self->_error;
  +[MFActivityMonitor mf_unlock];

  return v3;
}

- (void)setError:(id)error
{
  +[MFActivityMonitor mf_lock];
  error = self->_error;
  if (error != error)
  {

    self->_error = error;
  }

  +[MFActivityMonitor mf_unlock];
}

@end