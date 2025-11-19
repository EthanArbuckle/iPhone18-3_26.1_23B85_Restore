@interface ContinuityCaptureButtonPressTracker
- (BOOL)valid;
- (ContinuityCaptureButtonPressTracker)init;
- (void)registerCordPress:(int64_t)a3 down:(BOOL)a4;
@end

@implementation ContinuityCaptureButtonPressTracker

- (ContinuityCaptureButtonPressTracker)init
{
  v6.receiver = self;
  v6.super_class = ContinuityCaptureButtonPressTracker;
  v2 = [(ContinuityCaptureButtonPressTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    buttonPressStateByUsage = v2->_buttonPressStateByUsage;
    v2->_buttonPressStateByUsage = v3;

    v2->_buttonLongPressTimeout = 500000000;
  }

  return v2;
}

- (BOOL)valid
{
  HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
  creationTime = self->_creationTime;
  v5 = HostTimeInNanoSec - creationTime;
  if (HostTimeInNanoSec < creationTime)
  {
    return 0;
  }

  v6 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_creationTime;
    buttonLongPressTimeout = self->_buttonLongPressTimeout;
    v10 = 138544130;
    v11 = self;
    v12 = 2048;
    v13 = v7;
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = buttonLongPressTimeout;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ _creationTime:%llu pressDelta:%llu _buttonLongPressTimeout:%llu", &v10, 0x2Au);
  }

  return ![(NSMutableSet *)self->_buttonPressStateByUsage count]&& v5 < self->_buttonLongPressTimeout;
}

- (void)registerCordPress:(int64_t)a3 down:(BOOL)a4
{
  if (a3 == 48 && a4)
  {
    self->_creationTime = CMContinuityCaptureGetHostTimeInNanoSec();
    return;
  }

  if (a3 == 48 || !a4)
  {
    if (a3 == 48 || a4 || self->_creationTime)
    {
      return;
    }

    buttonPressStateByUsage = self->_buttonPressStateByUsage;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [(NSMutableSet *)buttonPressStateByUsage removeObject:v6];
  }

  else
  {
    v4 = self->_buttonPressStateByUsage;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [(NSMutableSet *)v4 addObject:v6];
  }
}

@end