@interface SYTransportLog
+ (id)sharedInstance;
- (SYTransportLog)init;
- (void)_createLog;
- (void)logMessage:(id)message args:(char *)args;
@end

@implementation SYTransportLog

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SYTransportLog sharedInstance];
  }

  v3 = sharedInstance___singleton_0;

  return v3;
}

uint64_t __32__SYTransportLog_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___singleton_0;
  sharedInstance___singleton_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SYTransportLog)init
{
  v6.receiver = self;
  v6.super_class = SYTransportLog;
  v2 = [(SYTransportLog *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SYTransportLog *)v2 _createLog];
    v4 = v3;
  }

  return v3;
}

- (void)_createLog
{
  v3 = os_log_create("com.apple.companionsync", "transport-errors");
  log = self->_log;
  self->_log = v3;

  MEMORY[0x1EEE66BB8](v3, log);
}

- (void)logMessage:(id)message args:(char *)args
{
  log = self->_log;
  messageCopy = message;
  [message UTF8String];
  os_log_with_args();
}

@end