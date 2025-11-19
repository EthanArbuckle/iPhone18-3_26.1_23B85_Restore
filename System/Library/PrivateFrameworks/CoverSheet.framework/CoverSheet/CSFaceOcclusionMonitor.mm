@interface CSFaceOcclusionMonitor
- (BOOL)_handleBiometricEvent:(unint64_t)a3;
- (BOOL)handleEvent:(id)a3;
- (CSFaceOcclusionMonitorDelegate)delegate;
@end

@implementation CSFaceOcclusionMonitor

- (BOOL)_handleBiometricEvent:(unint64_t)a3
{
  if (a3 == 28)
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
    if (a3 != 21)
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

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 25)
  {
    self->_faceOcclusionsSinceScreenOn = 0;
LABEL_6:
    v8 = [v4 isConsumable];
    goto LABEL_7;
  }

  if (v5 == 15)
  {
    v6 = [v4 value];
    v7 = -[CSFaceOcclusionMonitor _handleBiometricEvent:](self, "_handleBiometricEvent:", [v6 unsignedIntegerValue]);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (CSFaceOcclusionMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end