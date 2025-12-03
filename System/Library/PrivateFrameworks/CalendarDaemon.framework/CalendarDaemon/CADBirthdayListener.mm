@interface CADBirthdayListener
+ (BOOL)birthdayCalendarEnabled;
+ (id)sharedListener;
+ (void)reset;
+ (void)start;
- (CADBirthdayListener)init;
- (void)reset;
- (void)setBirthdayCalendarEnabled:(BOOL)enabled;
- (void)start;
@end

@implementation CADBirthdayListener

- (CADBirthdayListener)init
{
  v8.receiver = self;
  v8.super_class = CADBirthdayListener;
  v2 = [(CADBirthdayListener *)&v8 init];
  if (v2)
  {
    v3 = EKWeakLinkClass();
    listenerClass = v2->_listenerClass;
    v2->_listenerClass = v3;

    sharedListener = [(objc_class *)v2->_listenerClass sharedListener];
    ekBirthdayListener = v2->_ekBirthdayListener;
    v2->_ekBirthdayListener = sharedListener;
  }

  return v2;
}

+ (id)sharedListener
{
  if (sharedListener_onceToken != -1)
  {
    +[CADBirthdayListener sharedListener];
  }

  v3 = sharedListener__sharedListener;

  return v3;
}

uint64_t __37__CADBirthdayListener_sharedListener__block_invoke()
{
  v0 = objc_opt_new();
  sharedListener__sharedListener = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (void)start
{
  v2 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_22430B000, v2, OS_LOG_TYPE_DEBUG, "Starting birthday manager", v4, 2u);
  }

  v3 = +[CADBirthdayListener sharedListener];
  [v3 start];
}

+ (void)reset
{
  v2 = +[CADBirthdayListener sharedListener];
  [v2 reset];
}

- (void)start
{
  ekBirthdayListener = [(CADBirthdayListener *)self ekBirthdayListener];
  [ekBirthdayListener start];
}

- (void)reset
{
  ekBirthdayListener = [(CADBirthdayListener *)self ekBirthdayListener];
  [ekBirthdayListener reset];
}

- (void)setBirthdayCalendarEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  ekBirthdayListener = [(CADBirthdayListener *)self ekBirthdayListener];
  v5 = ekBirthdayListener;
  if (enabledCopy)
  {
    [ekBirthdayListener addBirthdayCalendars];
  }

  else
  {
    [ekBirthdayListener disableBirthdayCalendars];
  }
}

+ (BOOL)birthdayCalendarEnabled
{
  v2 = +[CADBirthdayListener sharedListener];
  birthdayCalendarEnabled = [v2 birthdayCalendarEnabled];

  return birthdayCalendarEnabled;
}

@end