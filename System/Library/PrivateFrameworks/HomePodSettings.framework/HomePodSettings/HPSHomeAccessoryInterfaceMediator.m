@interface HPSHomeAccessoryInterfaceMediator
- (HPSHomeAccessoryInterfaceMediator)initWithInterface:(id)a3;
- (HPSHomeAccessorySettingsInterface)settingsInterface;
- (void)homekitaccessoryDidUpdateValueForEndpointIdentifier:(id)a3 keyPath:(id)a4 value:(id)a5;
@end

@implementation HPSHomeAccessoryInterfaceMediator

- (HPSHomeAccessoryInterfaceMediator)initWithInterface:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HPSHomeAccessoryInterfaceMediator;
  v5 = [(HPSHomeAccessoryInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_settingsInterface, v4);
  }

  return v6;
}

- (void)homekitaccessoryDidUpdateValueForEndpointIdentifier:(id)a3 keyPath:(id)a4 value:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);
  if (WeakRetained)
  {
    v12 = _HPSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 136315906;
      v15 = "[HPSHomeAccessoryInterfaceMediator homekitaccessoryDidUpdateValueForEndpointIdentifier:keyPath:value:]";
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2542B7000, v12, OS_LOG_TYPE_INFO, "%s endpointID %@ keyPath %@ settingValue %@", &v14, 0x2Au);
    }

    [WeakRetained accessoryDidUpdateValueForEndpointIdentifier:v8 keyPath:v9 value:v10];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HPSHomeAccessorySettingsInterface)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end