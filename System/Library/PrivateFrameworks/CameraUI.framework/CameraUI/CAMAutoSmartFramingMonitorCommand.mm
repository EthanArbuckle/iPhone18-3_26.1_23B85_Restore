@interface CAMAutoSmartFramingMonitorCommand
- (CAMAutoSmartFramingMonitorCommand)initWithCoder:(id)a3;
- (CAMAutoSmartFramingMonitorCommand)initWithSmartFramingMonitorEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMAutoSmartFramingMonitorCommand

- (CAMAutoSmartFramingMonitorCommand)initWithSmartFramingMonitorEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMAutoSmartFramingMonitorCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMAutoSmartFramingMonitorCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMAutoSmartFramingMonitorCommand *)self _enabled];
  return v4;
}

- (CAMAutoSmartFramingMonitorCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMAutoSmartFramingMonitorCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentVideoDevice];
  v5 = [v4 smartFramingMonitor];

  if (v5)
  {
    v6 = [v4 smartFramingMonitor];
    v7 = [v6 isMonitoring];

    v8 = [(CAMAutoSmartFramingMonitorCommand *)self _enabled];
    if (v7)
    {
      if (!v8)
      {
        v9 = os_log_create("com.apple.camera", "SmartFraming");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Smart framing: stopping smart framing monitor", v14, 2u);
        }

        v10 = [v4 smartFramingMonitor];
        [v10 stopMonitoring];
LABEL_14:
      }
    }

    else if (v8)
    {
      v11 = os_log_create("com.apple.camera", "SmartFraming");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Smart framing: starting smart framing monitor", buf, 2u);
      }

      v12 = [v4 smartFramingMonitor];
      v15 = 0;
      [v12 startMonitoringWithError:&v15];
      v10 = v15;

      if (v10)
      {
        v13 = os_log_create("com.apple.camera", "SmartFraming");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(CAMAutoSmartFramingMonitorCommand *)v10 executeWithContext:v13];
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