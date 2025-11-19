@interface IMTimer
- (NSDate)fireDate;
- (id)_initWithTimeInterval:(double)a3 name:(id)a4 shouldWake:(BOOL)a5 target:(id)a6 selector:(SEL)a7 userInfo:(id)a8 useCurrentRunLoop:(BOOL)a9 queue:(id)a10;
- (void)_reschedulePCPersistentTimer;
- (void)dealloc;
- (void)setFireTimeInterval:(double)a3;
@end

@implementation IMTimer

- (NSDate)fireDate
{
  timer = self->_timer;
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_fireDate(self->_timer, v4, v5);
  }

  else if (objc_opt_respondsToSelector())
  {
    objc_msgSend_fireTime(self->_timer, v7, v8);
    v6 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v9, v10);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self->_timer, a2, v2);
  v4.receiver = self;
  v4.super_class = IMTimer;
  [(IMTimer *)&v4 dealloc];
}

- (void)_reschedulePCPersistentTimer
{
  v3 = objc_autoreleasePoolPush();
  objc_msgSend_invalidate(self->_timer, v4, v5);
  timer = self->_timer;
  self->_timer = 0;

  v9 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v7, v8, self->_timeInterval);
  v10 = qword_1EAED8BE8;
  if (!qword_1EAED8BE8)
  {
    v10 = IMWeakLinkClass();
    qword_1EAED8BE8 = v10;
  }

  v11 = [v10 alloc];
  selector = self->_selector;
  target = self->_target;
  name = self->_name;
  if (selector)
  {
    v16 = self->_selector;
    v17 = objc_msgSend_initWithFireDate_serviceIdentifier_target_selector_userInfo_(v11, v12, v9, name, target, selector, self->_userInfo);
  }

  else
  {
    v17 = objc_msgSend_initWithFireDate_serviceIdentifier_target_selector_userInfo_(v11, v12, v9, name, target, 0, self->_userInfo);
  }

  v18 = self->_timer;
  self->_timer = v17;

  objc_msgSend_setMinimumEarlyFireProportion_(self->_timer, v19, v20, 1.0);
  objc_msgSend_setDisableSystemWaking_(self->_timer, v21, !self->_wakeDevice);
  queue = self->_queue;
  if (queue)
  {
    objc_msgSend_scheduleInQueue_(self->_timer, v22, queue);
  }

  else
  {
    isMainThread = objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v22, 0);
    v27 = self->_timer;
    if (isMainThread)
    {
      objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], v24, v25);
    }

    else
    {
      objc_msgSend_mainRunLoop(MEMORY[0x1E695DFD0], v24, v25);
    }
    v28 = ;
    objc_msgSend_scheduleInRunLoop_(v27, v29, v28);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_initWithTimeInterval:(double)a3 name:(id)a4 shouldWake:(BOOL)a5 target:(id)a6 selector:(SEL)a7 userInfo:(id)a8 useCurrentRunLoop:(BOOL)a9 queue:(id)a10
{
  v33 = a4;
  v35 = a6;
  v18 = a8;
  v19 = a10;
  if (a3 < 0.001)
  {
    a3 = 5.0;
  }

  v36.receiver = self;
  v36.super_class = IMTimer;
  v20 = [(IMTimer *)&v36 init];
  v21 = v20;
  if (v20)
  {
    v20->_wakeDevice = a5;
    objc_storeStrong(&v20->_target, a6);
    if (a7)
    {
      v22 = a7;
    }

    else
    {
      v22 = 0;
    }

    v21->_selector = v22;
    v21->_timeInterval = a3;
    v21->_useCurrentRunLoop = a9;
    objc_storeStrong(&v21->_userInfo, a8);
    objc_storeStrong(&v21->_name, a4);
    if (v19)
    {
      objc_storeStrong(&v21->_queue, a10);
    }

    if (a5 || v21->_queue)
    {
      objc_msgSend__reschedulePCPersistentTimer(v21, v23, v24);
    }

    else
    {
      v26 = objc_msgSend_timerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x1E695DFF0], v23, v35, a7, v18, 0, a3);
      timer = v21->_timer;
      v21->_timer = v26;

      if (a9 || !objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v28, v29))
      {
        v30 = objc_msgSend_mainRunLoop(MEMORY[0x1E695DFD0], v28, v29);
      }

      else
      {
        v30 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], v28, v29);
      }

      v32 = v30;
      objc_msgSend_addTimer_forMode_(v30, v31, v21->_timer, *MEMORY[0x1E695D918]);
    }
  }

  return v21;
}

- (void)setFireTimeInterval:(double)a3
{
  self->_timeInterval = a3;
  if (self->_wakeDevice || self->_queue)
  {

    objc_msgSend__reschedulePCPersistentTimer(self, a2, v3);
  }

  else
  {
    v6 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], a2, v3);
    objc_msgSend_setFireDate_(self->_timer, v5, v6);
  }
}

@end