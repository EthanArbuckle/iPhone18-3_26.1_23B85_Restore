@interface CAMAutoSmartFramingMonitorCommand
- (CAMAutoSmartFramingMonitorCommand)initWithCoder:(id)coder;
- (CAMAutoSmartFramingMonitorCommand)initWithSmartFramingMonitorEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMAutoSmartFramingMonitorCommand

- (CAMAutoSmartFramingMonitorCommand)initWithSmartFramingMonitorEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMAutoSmartFramingMonitorCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMAutoSmartFramingMonitorCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMAutoSmartFramingMonitorCommand *)self _enabled];
  return v4;
}

- (CAMAutoSmartFramingMonitorCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMAutoSmartFramingMonitorCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (void)executeWithContext:(id)context
{
  currentVideoDevice = [context currentVideoDevice];
  smartFramingMonitor = [currentVideoDevice smartFramingMonitor];

  if (smartFramingMonitor)
  {
    smartFramingMonitor2 = [currentVideoDevice smartFramingMonitor];
    isMonitoring = [smartFramingMonitor2 isMonitoring];

    _enabled = [(CAMAutoSmartFramingMonitorCommand *)self _enabled];
    if (isMonitoring)
    {
      if (!_enabled)
      {
        v9 = os_log_create("com.apple.camera", "SmartFraming");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Smart framing: stopping smart framing monitor", v14, 2u);
        }

        smartFramingMonitor3 = [currentVideoDevice smartFramingMonitor];
        [smartFramingMonitor3 stopMonitoring];
LABEL_14:
      }
    }

    else if (_enabled)
    {
      v11 = os_log_create("com.apple.camera", "SmartFraming");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Smart framing: starting smart framing monitor", buf, 2u);
      }

      smartFramingMonitor4 = [currentVideoDevice smartFramingMonitor];
      v15 = 0;
      [smartFramingMonitor4 startMonitoringWithError:&v15];
      smartFramingMonitor3 = v15;

      if (smartFramingMonitor3)
      {
        v13 = os_log_create("com.apple.camera", "SmartFraming");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(CAMAutoSmartFramingMonitorCommand *)smartFramingMonitor3 executeWithContext:v13];
        }
      }

      goto LABEL_14;
    }
  }
}

- (void)executeWithContext:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Smart framing monitor failed to start with error: %{public}@", &v4, 0xCu);
}

@end