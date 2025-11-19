@interface CLSettingsManager
- (CLSettingsManager)init;
- (id)syncgetSetValue:(id)a3 forKey:(id)a4 withoutNotifying:(id)a5;
- (void)beginService;
- (void)endService;
- (void)refresh;
@end

@implementation CLSettingsManager

- (CLSettingsManager)init
{
  v3.receiver = self;
  v3.super_class = CLSettingsManager;
  return [(CLIntersiloService *)&v3 initWithInboundProtocol:&unk_1F5ACAF90 outboundProtocol:&unk_1F5ACA808];
}

- (void)beginService
{
  v7.receiver = self;
  v7.super_class = CLSettingsManager;
  [(CLSettingsManagerInternal *)&v7 beginService];
  v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v3 setUnderlyingQueue:{-[CLSilo queue](-[CLIntersiloService silo](self, "silo"), "queue")}];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E696AA70];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1DF815F74;
  v6[3] = &unk_1E86C8488;
  v6[4] = self;
  -[CLSettingsManager setNotificationObserver:](self, "setNotificationObserver:", [v4 addObserverForName:v5 object:0 queue:v3 usingBlock:v6]);

  [(CLSettingsManager *)self refresh];
}

- (void)endService
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = CLSettingsManager;
  [(CLSettingsManagerInternal *)&v3 endService];
}

- (void)refresh
{
  -[CLSettingsManagerInternal setSettingsDictionary:](self, "setSettingsDictionary:", [objc_msgSend(objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")]);
  [MEMORY[0x1E695DF20] dictionaryWithDictionary:{-[CLSettingsManagerInternal settingsDictionary](self, "settingsDictionary")}];

  MEMORY[0x1EEE66B58](self, sel_updateClientsWithDictionary_);
}

- (id)syncgetSetValue:(id)a3 forKey:(id)a4 withoutNotifying:(id)a5
{
  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v10.receiver = self;
  v10.super_class = CLSettingsManager;
  return [(CLSettingsManagerInternal *)&v10 syncgetSetValue:a3 forKey:a4 withoutNotifying:a5];
}

@end