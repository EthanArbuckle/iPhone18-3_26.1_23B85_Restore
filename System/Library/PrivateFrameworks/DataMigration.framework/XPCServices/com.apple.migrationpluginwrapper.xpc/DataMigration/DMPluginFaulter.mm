@interface DMPluginFaulter
- (DMPluginFaulter)init;
- (void)_faultForUnknownPluginIdentifier;
- (void)faultWithPluginIdentifier:(id)identifier message:(id)message;
@end

@implementation DMPluginFaulter

- (DMPluginFaulter)init
{
  v5.receiver = self;
  v5.super_class = DMPluginFaulter;
  v2 = [(DMPluginFaulter *)&v5 init];
  if (v2)
  {
    v3 = _DMCoreLog();
    [(DMPluginFaulter *)v2 setOs_log:v3];
  }

  return v2;
}

- (void)faultWithPluginIdentifier:(id)identifier message:(id)message
{
  identifierCopy = identifier;
  messageCopy = message;
  [(DMPluginFaulter *)self setMessage:messageCopy];
  if (identifierCopy)
  {
    v7 = [DMPluginSpecificUtilitiesManager utilitiesForPluginIdentifier:?];
    if (v7)
    {
      os_log = [(DMPluginFaulter *)self os_log];
      [v7 faultWithLog:os_log message:messageCopy];
    }

    else
    {
      [(DMPluginFaulter *)self _faultForUnknownPluginIdentifier];
    }
  }

  else
  {
    [(DMPluginFaulter *)self _faultForUnknownPluginIdentifier];
  }
}

- (void)_faultForUnknownPluginIdentifier
{
  os_log = [(DMPluginFaulter *)self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_FAULT))
  {
    sub_100005E68(self, os_log);
  }
}

@end