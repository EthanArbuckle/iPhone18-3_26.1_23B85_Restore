@interface CLSettingsMirror
- (id)initInUniverse:(id)a3;
- (void)dealloc;
- (void)didUpdateSettings:(id)a3;
- (void)invalidate;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setFloat:(float)a3 forKey:(id)a4;
- (void)setLong:(int64_t)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation CLSettingsMirror

- (id)initInUniverse:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLSettingsMirror;
  v4 = [(CLSettingsMirror *)&v7 init];
  p_isa = &v4->super.super.isa;
  if (v4)
  {
    [(CLSettingsMirror *)v4 setValid:1];
    [p_isa setUniverse:a3];
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

- (void)didUpdateSettings:(id)a3
{
  [(CLSettingsDictionary *)self setDictionary:a3];
  settingsChangeHandler = self->_settingsChangeHandler;
  if (settingsChangeHandler)
  {
    v5 = *(settingsChangeHandler + 2);

    v5();
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v5 = [(CLSettingsManagerProtocol *)[(CLSettingsMirror *)self manager] syncgetSetValue:a3 forKey:a4 withoutNotifying:self];
  if (v5)
  {

    [(CLSettingsDictionary *)self setDictionary:v5];
  }
}

- (void)setLong:(int64_t)a3 forKey:(id)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithLong:a3];

  [(CLSettingsMirror *)self setValue:v6 forKey:a4];
}

- (void)setFloat:(float)a3 forKey:(id)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];

  [(CLSettingsMirror *)self setValue:v6 forKey:a4];
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];

  [(CLSettingsMirror *)self setValue:v6 forKey:a4];
}

@end