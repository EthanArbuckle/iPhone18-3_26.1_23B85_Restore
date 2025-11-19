@interface MX_HIDEventObserver
- (MX_HIDEventObserver)init;
- (void)dealloc;
- (void)handleButtonEvent:(__IOHIDEvent *)a3;
- (void)handleEvent:(__IOHIDEvent *)a3;
@end

@implementation MX_HIDEventObserver

- (MX_HIDEventObserver)init
{
  v7.receiver = self;
  v7.super_class = MX_HIDEventObserver;
  v2 = [(MX_HIDEventObserver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaexperience.hideventobserver", v3);
    v2->_accessQueue = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __27__MX_HIDEventObserver_init__block_invoke;
    v6[3] = &unk_1E7AE7CE0;
    v6[4] = v2;
    MXDispatchAsync("[MX_HIDEventObserver init]", "MX_IOKit.m", 73, 0, 0, v4, v6);
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    dispatch_release(accessQueue);
  }

  mHIDClient = self->mHIDClient;
  if (mHIDClient)
  {
    CFRelease(mHIDClient);
  }

  v6.receiver = self;
  v6.super_class = MX_HIDEventObserver;
  [(MX_HIDEventObserver *)&v6 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (void)handleButtonEvent:(__IOHIDEvent *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  IntegerValue = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 65289 && v5 == 2)
  {
    gFlap1StateIsEngaged = IOHIDEventGetIntegerValue() == 1;
    if (dword_1EB75DE40)
    {
LABEL_10:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (IntegerValue == 65289 && v5 == 1)
  {
    gOpenStateIsEngaged = IOHIDEventGetIntegerValue() == 1;
    if (dword_1EB75DE40)
    {
      goto LABEL_10;
    }
  }

  [(MX_HIDEventObserver *)self setSmartCoverClosed:gFlap1StateIsEngaged & gOpenStateIsEngaged & 1, v9, v10];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleEvent:(__IOHIDEvent *)a3
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v4 = [(MX_HIDEventObserver *)self accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MX_HIDEventObserver_handleEvent___block_invoke;
  v5[3] = &unk_1E7AEA918;
  v5[4] = self;
  v5[5] = v6;
  MXDispatchAsync("[MX_HIDEventObserver handleEvent:]", "MX_IOKit.m", 163, 0, 0, v4, v5);
  _Block_object_dispose(v6, 8);
}

@end