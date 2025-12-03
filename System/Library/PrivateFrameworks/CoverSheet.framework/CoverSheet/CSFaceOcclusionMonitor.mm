@interface CSFaceOcclusionMonitor
- (BOOL)_handleBiometricEvent:(unint64_t)event;
- (BOOL)handleEvent:(id)event;
- (CSFaceOcclusionMonitorDelegate)delegate;
@end

@implementation CSFaceOcclusionMonitor

- (BOOL)_handleBiometricEvent:(unint64_t)event
{
  if (event == 28)
  {
    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "Bottom of face occluded", v7, 2u);
    }

    v5 = 1;
  }

  else
  {
    if (event != 21)
    {
      return 0;
    }

    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = 2;
      _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "Face occluded", buf, 2u);
    }

    else
    {
      v5 = 2;
    }
  }

  self->_faceOcclusionsSinceScreenOn |= v5;
  return 1;
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  if (type == 25)
  {
    self->_faceOcclusionsSinceScreenOn = 0;
LABEL_6:
    isConsumable = [eventCopy isConsumable];
    goto LABEL_7;
  }

  if (type == 15)
  {
    value = [eventCopy value];
    v7 = -[CSFaceOcclusionMonitor _handleBiometricEvent:](self, "_handleBiometricEvent:", [value unsignedIntegerValue]);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  isConsumable = 0;
LABEL_7:

  return isConsumable;
}

- (CSFaceOcclusionMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end