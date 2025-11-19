@interface DMPluginFaulter
- (DMPluginFaulter)init;
- (void)_faultForUnknownPluginIdentifier;
- (void)faultWithPluginIdentifier:(id)a3 message:(id)a4;
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

- (void)faultWithPluginIdentifier:(id)a3 message:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(DMPluginFaulter *)self setMessage:v6];
  if (v9)
  {
    v7 = [DMPluginSpecificUtilitiesManager utilitiesForPluginIdentifier:?];
    if (v7)
    {
      v8 = [(DMPluginFaulter *)self os_log];
      [v7 faultWithLog:v8 message:v6];
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
  v3 = [(DMPluginFaulter *)self os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_100005E68(self, v3);
  }
}

@end