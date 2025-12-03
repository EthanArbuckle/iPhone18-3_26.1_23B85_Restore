@interface CLSettingsMirror
- (id)initInUniverse:(id)universe;
- (void)dealloc;
- (void)didUpdateSettings:(id)settings;
- (void)invalidate;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setLong:(int64_t)long forKey:(id)key;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CLSettingsMirror

- (id)initInUniverse:(id)universe
{
  v7.receiver = self;
  v7.super_class = CLSettingsMirror;
  v4 = [(CLSettingsMirror *)&v7 init];
  p_isa = &v4->super.super.isa;
  if (v4)
  {
    [(CLSettingsMirror *)v4 setValid:1];
    [p_isa setUniverse:universe];
    [p_isa setManager:{objc_msgSend(objc_msgSend(p_isa[5], "vendor"), "proxyForService:", @"CLSettingsManager"}];
    [p_isa[4] registerDelegate:p_isa inSilo:{objc_msgSend(p_isa[5], "silo")}];
    [p_isa setDictionary:{objc_msgSend(p_isa[4], "syncgetSettingsAndRegisterForUpdates:", p_isa)}];
  }

  return p_isa;
}

- (void)invalidate
{
  [(CLSettingsManagerProtocol *)self->_manager unregisterForUpdates:self];
  [(CLSettingsMirror *)self setValid:0];
  [(CLSettingsMirror *)self setManager:0];
  [(CLSettingsMirror *)self setUniverse:0];

  MEMORY[0x1EEE66B58](self, sel_setSettingsChangeHandler_);
}

- (void)dealloc
{
  [(CLSettingsMirror *)self invalidate];
  v3.receiver = self;
  v3.super_class = CLSettingsMirror;
  [(CLSettingsDictionary *)&v3 dealloc];
}

- (void)didUpdateSettings:(id)settings
{
  [(CLSettingsDictionary *)self setDictionary:settings];
  settingsChangeHandler = self->_settingsChangeHandler;
  if (settingsChangeHandler)
  {
    v5 = *(settingsChangeHandler + 2);

    v5();
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  v5 = [(CLSettingsManagerProtocol *)[(CLSettingsMirror *)self manager] syncgetSetValue:value forKey:key withoutNotifying:self];
  if (v5)
  {

    [(CLSettingsDictionary *)self setDictionary:v5];
  }
}

- (void)setLong:(int64_t)long forKey:(id)key
{
  v6 = [MEMORY[0x1E696AD98] numberWithLong:long];

  [(CLSettingsMirror *)self setValue:v6 forKey:key];
}

- (void)setFloat:(float)float forKey:(id)key
{
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];

  [(CLSettingsMirror *)self setValue:v6 forKey:key];
}

- (void)setDouble:(double)double forKey:(id)key
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:double];

  [(CLSettingsMirror *)self setValue:v6 forKey:key];
}

@end