@interface ML3GreenTeaLogger
+ (void)logOnceForAccessor:(id)a3;
- (ML3GreenTeaLogger)initWithAccessorName:(id)a3;
- (void)beginLogAccessInterval;
- (void)dealloc;
- (void)endLogAccessInterval;
- (void)logAccess;
@end

@implementation ML3GreenTeaLogger

- (void)logAccess
{
  v11 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  os_unfair_lock_lock(&self->_lock);
  lastLogTime = self->_lastLogTime;
  os_unfair_lock_unlock(&self->_lock);
  if (v4 - lastLogTime > 0.1)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_lastLogTime = v4;
    os_unfair_lock_unlock(&self->_lock);
    v6 = getCTGreenTeaOsLogHandle();
    v7 = v6;
    if (v6)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = [(NSString *)self->_accessor UTF8String];
        v9 = 136315138;
        v10 = v8;
        _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_INFO, "MediaLibrary accessed by %s", &v9, 0xCu);
      }
    }
  }
}

- (void)dealloc
{
  ct_green_tea_logger_destroy();
  v3.receiver = self;
  v3.super_class = ML3GreenTeaLogger;
  [(ML3GreenTeaLogger *)&v3 dealloc];
}

- (void)endLogAccessInterval
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = getCTGreenTeaOsLogHandle();
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = [(NSString *)self->_accessor UTF8String];
    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_INFO, "MediaLibrary accessed ended by %s", &v6, 0xCu);
  }
}

- (void)beginLogAccessInterval
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = getCTGreenTeaOsLogHandle();
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = [(NSString *)self->_accessor UTF8String];
    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_INFO, "MediaLibrary accessed begun by %s", &v6, 0xCu);
  }
}

- (ML3GreenTeaLogger)initWithAccessorName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v7 bundleIdentifier];
  }

  if (ML3GreenTeaIsLoggableBundleIdentifier(v6))
  {
    v11.receiver = self;
    v11.super_class = ML3GreenTeaLogger;
    v8 = [(ML3GreenTeaLogger *)&v11 init];
    if (v8)
    {
      v8->_logger = ct_green_tea_logger_create();
      objc_storeStrong(&v8->_accessor, v6);
      v8->_lock._os_unfair_lock_opaque = 0;
      v8->_lastLogTime = 0.0;
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)logOnceForAccessor:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v6 bundleIdentifier];
  }

  if (ML3GreenTeaIsLoggableBundleIdentifier(v5))
  {
    ct_green_tea_logger_create();
    v7 = getCTGreenTeaOsLogHandle();
    v8 = v7;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = [v5 UTF8String];
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_INFO, "MediaLibrary accessed by %s", &v9, 0xCu);
    }

    ct_green_tea_logger_destroy();
  }
}

@end