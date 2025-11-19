@interface MFActivityMonitor
+ (id)currentMonitor;
+ (void)destroyMonitor;
- (BOOL)_lockedAddActivityTarget:(id)a3;
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
- (void)addActivityTarget:(id)a3;
- (void)addActivityTargets:(id)a3;
- (void)addCancelable:(id)a3;
- (void)addReason:(id)a3;
- (void)cancelMessage;
- (void)dealloc;
- (void)finishedActivity:(id)a3;
- (void)notifyConnectionEstablished;
- (void)postActivityFinished:(id)a3;
- (void)postActivityStarting;
- (void)postDidChangeWithUserInfo:(id)a3;
- (void)relinquishExclusiveAccessKey:(int)a3;
- (void)removeActivityTarget:(id)a3;
- (void)removeCancelable:(id)a3;
- (void)reset;
- (void)setActivityTarget:(id)a3;
- (void)setCanBeCancelled:(BOOL)a3;
- (void)setCurrentCount:(unint64_t)a3;
- (void)setDisplayName:(id)a3 maxCount:(unint64_t)a4;
- (void)setError:(id)a3;
- (void)setGotNewMessagesState:(unint64_t)a3;
- (void)setInvocationQueue:(id)a3;
- (void)setMaxCount:(unint64_t)a3;
- (void)setPercentDone:(double)a3 withKey:(int)a4;
- (void)setPercentDoneOfCurrentItem:(double)a3;
- (void)setPrimaryTarget:(id)a3;
- (void)setShouldCancel:(BOOL)a3;
- (void)setStatusMessage:(id)a3;
- (void)setStatusMessage:(id)a3 withKey:(int)a4;
- (void)setTaskName:(id)a3;
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  [v3 postNotificationName:@"MonitoredActivityStarted" object:self];
}

- (void)postActivityFinished:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{a3, @"MonitoredActivityInvocation", 0, 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)startActivity
{
  +[MFActivityMonitor mf_lock];
  self->_runningThread = [MEMORY[0x277CCACC8] currentThread];
  +[MFActivityMonitor mf_unlock];
  v3 = [(NSThread *)self->_runningThread threadDictionary];
  [(NSMutableDictionary *)v3 setObject:self forKey:*MEMORY[0x277D07120]];
  *(self + 73) |= 0x80u;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  [(MFActivityMonitor *)self resetConnectionStats];
  [(MFActivityMonitor *)self setError:0];

  [(MFActivityMonitor *)self postActivityStarting];
}

- (void)finishedActivity:(id)a3
{
  [MEMORY[0x277D82BB8] mf_clearLocks];
  v5 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  [v5 removeObjectForKey:*MEMORY[0x277D07120]];
  *(self + 73) &= ~0x80u;
  +[MFActivityMonitor mf_lock];

  self->_runningThread = 0;
  +[MFActivityMonitor mf_unlock];

  [(MFActivityMonitor *)self postActivityFinished:a3];
}

- (void)notifyConnectionEstablished
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  [v3 postNotificationName:@"NetworkConnectionEstablished" object:self];
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

    v7 = [MEMORY[0x277CBEB38] dictionary];
    [v7 setObject:displayName forKey:@"MonitoredActivityDictMessage"];
    [v7 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_maxCount), @"MonitoredActivityMaxCount"}];
    [v7 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_currentCount), @"MonitoredActivityCurrentCount"}];
    *&v8 = v4;
    [v7 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v8), @"MonitoredActivityCurrentItemProgress"}];
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
  if (a3)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 postNotificationName:@"MonitoredActivityMessage" object:self userInfo:a3];
  }
}

- (void)_didChange
{
  v3 = [(MFActivityMonitor *)self userInfoForNotification];

  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v3];
}

- (void)setMaxCount:(unint64_t)a3
{
  +[MFActivityMonitor mf_lock];
  self->_maxCount = a3;
  self->_lastTime = 0.0;
  v5 = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];

  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v5];
}

- (void)setCurrentCount:(unint64_t)a3
{
  +[MFActivityMonitor mf_lock];
  self->_currentCount = a3;
  self->_currentItemPercentDone = 0.0;
  v5 = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];

  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v5];
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

- (void)setPercentDoneOfCurrentItem:(double)a3
{
  +[MFActivityMonitor mf_lock];
  self->_currentItemPercentDone = a3;
  v5 = [(MFActivityMonitor *)self _ntsThrottledUserInfoDict];
  +[MFActivityMonitor mf_unlock];
  if (v5)
  {

    [(MFActivityMonitor *)self postDidChangeWithUserInfo:v5];
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

- (void)setGotNewMessagesState:(unint64_t)a3
{
  if (self->_gotNewMessagesState < a3)
  {
    self->_gotNewMessagesState = a3;
  }
}

- (void)addReason:(id)a3
{
  reasons = self->_reasons;
  if (!reasons)
  {
    reasons = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->_reasons = reasons;
  }

  [(NSMutableSet *)reasons addObject:a3];
}

- (void)setStatusMessage:(id)a3
{
  [(MFActivityMonitor *)self percentDone];

  [(MFActivityMonitor *)self setStatusMessage:a3 percentDone:?];
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
      v6 = [self->_target displayName];
      taskName = self->_taskName;
      if (!taskName)
      {
        taskName = &stru_2869ED3E0;
      }

      descriptionString = [v5 initWithFormat:@"[%@] %@", v6, taskName];
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

- (void)setTaskName:(id)a3
{
  +[MFActivityMonitor mf_lock];
  taskName = self->_taskName;
  if (taskName != a3)
  {
    v6 = taskName;
    self->_taskName = a3;
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

- (void)setDisplayName:(id)a3 maxCount:(unint64_t)a4
{
  +[MFActivityMonitor mf_lock];
  displayName = self->_displayName;
  if (displayName != a3)
  {
    v8 = displayName;
    self->_displayName = a3;
  }

  self->_maxCount = a4;
  self->_currentCount = 0;
  self->_lastTime = 0.0;
  self->_percentDone = 0.0;
  self->_currentItemPercentDone = 0.0;
  v9 = [(MFActivityMonitor *)self userInfoForNotification];
  +[MFActivityMonitor mf_unlock];

  [(MFActivityMonitor *)self postDidChangeWithUserInfo:v9];
}

- (void)setActivityTarget:(id)a3
{
  +[MFActivityMonitor mf_lock];
  if (self->_target == a3)
  {
    target = 0;
  }

  else
  {
    target = self->_target;
    self->_target = a3;

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

- (BOOL)_lockedAddActivityTarget:(id)a3
{
  target = self->_target;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    self->_target = objc_alloc_init(_MFActivityMonitorMultiTarget);

    self->_descriptionString = 0;
  }

  v6 = self->_target;

  return [v6 addActivityTarget:a3];
}

- (void)addActivityTarget:(id)a3
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  v6 = [(MFActivityMonitor *)self _lockedAddActivityTarget:a3];
  if (self->_target == target)
  {
    v7 = 0;
  }

  else
  {
    v7 = target;
  }

  +[MFActivityMonitor mf_unlock];

  if (v6)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, @"AddedTarget", 0}];

    [v8 postNotificationName:@"MonitoredActivityDidAddActivityTarget" object:self userInfo:v9];
  }
}

- (void)addActivityTargets:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(a3);
        }

        v8 |= [(MFActivityMonitor *)self _lockedAddActivityTarget:*(*(&v14 + 1) + 8 * i)];
      }

      v7 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)removeActivityTarget:(id)a3
{
  v4 = a3;
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [self->_target removeActivityTarget:a3];
    +[MFActivityMonitor mf_unlock];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 postNotificationName:@"MonitoredActivityDidRemoveActivityTarget" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", a3, @"RemovedTarget", 0)}];
    }
  }

  else
  {
    +[MFActivityMonitor mf_unlock];
  }
}

- (void)setPrimaryTarget:(id)a3
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self->_target primaryTarget];
    [self->_target setPrimaryTarget:a3];

    self->_descriptionString = 0;
    +[MFActivityMonitor mf_unlock];
    if (v7)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v7, @"MonitoredActivityOldPrimaryTarget", a3, @"MonitoredActivityNewPrimaryTarget", 0}];
      goto LABEL_6;
    }
  }

  else
  {
    +[MFActivityMonitor mf_unlock];
  }

  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{a3, @"MonitoredActivityNewPrimaryTarget", 0, @"MonitoredActivityOldPrimaryTarget", 0}];
  v7 = 0;
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
    v4 = [self->_target primaryTarget];
  }

  else
  {
    v4 = 0;
  }

  +[MFActivityMonitor mf_unlock];

  return v4;
}

- (id)activityTargets
{
  +[MFActivityMonitor mf_lock];
  target = self->_target;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [self->_target allTargets];
  }

  else
  {
    v4 = 0;
  }

  +[MFActivityMonitor mf_unlock];
  return v4;
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

  *(self + 73) = *(self + 73) & 0xDF | v3;
}

- (void)setShouldCancel:(BOOL)a3
{
  if ((*(self + 73) & 0x20) != 0)
  {
    if (a3)
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

- (void)addCancelable:(id)a3
{
  +[MFActivityMonitor mf_lock];
  associatedCancelables = self->_associatedCancelables;
  if (!associatedCancelables)
  {
    associatedCancelables = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->_associatedCancelables = associatedCancelables;
  }

  [(NSMutableSet *)associatedCancelables addObject:a3];
  +[MFActivityMonitor mf_unlock];
  if ((*(self + 73) & 0x40) != 0)
  {

    [a3 cancel];
  }
}

- (void)removeCancelable:(id)a3
{
  +[MFActivityMonitor mf_lock];
  [(NSMutableSet *)self->_associatedCancelables removeObject:a3];

  +[MFActivityMonitor mf_unlock];
}

- (void)_cancelAssociatedCancelables
{
  +[MFActivityMonitor mf_lock];
  v3 = [(NSMutableSet *)self->_associatedCancelables copy];
  +[MFActivityMonitor mf_unlock];
  [v3 makeObjectsPerformSelector:sel_cancel];
}

- (void)setInvocationQueue:(id)a3
{
  v4 = a3;

  self->_ourQueue = v4;
}

+ (id)currentMonitor
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___MFActivityMonitor;
  return objc_msgSendSuper2(&v3, sel_currentDesignator);
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

- (void)relinquishExclusiveAccessKey:(int)a3
{
  +[MFActivityMonitor mf_lock];
  v5 = *(self + 36);
  if (a3 == v5 << 19 >> 19)
  {
    *(self + 36) = v5 & 0xE000;
  }

  +[MFActivityMonitor mf_unlock];
}

- (void)setStatusMessage:(id)a3 withKey:(int)a4
{
  +[MFActivityMonitor mf_lock];
  if (a4 != *(self + 36) << 19 >> 19 || (statusMessage = self->_statusMessage, statusMessage == a3))
  {

    +[MFActivityMonitor mf_unlock];
  }

  else
  {

    self->_statusMessage = a3;
    v8 = [(MFActivityMonitor *)self userInfoForNotification];
    +[MFActivityMonitor mf_unlock];
    if (v8)
    {

      [(MFActivityMonitor *)self postDidChangeWithUserInfo:v8];
    }
  }
}

- (void)setPercentDone:(double)a3 withKey:(int)a4
{
  +[MFActivityMonitor mf_lock];
  if (a4 != *(self + 36) << 19 >> 19)
  {
    goto LABEL_9;
  }

  v7 = 1.0;
  if (a3 <= 1.0)
  {
    v7 = a3;
  }

  if (v7 == self->_percentDone)
  {
LABEL_9:

    +[MFActivityMonitor mf_unlock];
  }

  else
  {
    self->_percentDone = v7;
    v8 = [(MFActivityMonitor *)self userInfoForNotification];
    +[MFActivityMonitor mf_unlock];
    if (v8)
    {

      [(MFActivityMonitor *)self postDidChangeWithUserInfo:v8];
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

- (void)setError:(id)a3
{
  +[MFActivityMonitor mf_lock];
  error = self->_error;
  if (error != a3)
  {

    self->_error = a3;
  }

  +[MFActivityMonitor mf_unlock];
}

@end