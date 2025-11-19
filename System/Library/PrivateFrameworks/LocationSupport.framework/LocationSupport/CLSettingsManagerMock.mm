@interface CLSettingsManagerMock
- (CLSettingsManagerMock)init;
- (void)setSettings:(id)a3;
@end

@implementation CLSettingsManagerMock

- (CLSettingsManagerMock)init
{
  v3.receiver = self;
  v3.super_class = CLSettingsManagerMock;
  return [(CLIntersiloService *)&v3 initWithInboundProtocol:&unk_1F5ACB008 outboundProtocol:&unk_1F5ACA808];
}

- (void)setSettings:(id)a3
{
  -[CLSettingsManagerInternal setSettingsDictionary:](self, "setSettingsDictionary:", [a3 cl_deepMutableCopy]);
  [MEMORY[0x1E695DF20] dictionaryWithDictionary:{-[CLSettingsManagerInternal settingsDictionary](self, "settingsDictionary")}];

  MEMORY[0x1EEE66B58](self, sel_updateClientsWithDictionary_);
}

@end