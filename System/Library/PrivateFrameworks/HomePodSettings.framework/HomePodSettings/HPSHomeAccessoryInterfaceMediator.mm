@interface HPSHomeAccessoryInterfaceMediator
- (HPSHomeAccessoryInterfaceMediator)initWithInterface:(id)interface;
- (HPSHomeAccessorySettingsInterface)settingsInterface;
- (void)homekitaccessoryDidUpdateValueForEndpointIdentifier:(id)identifier keyPath:(id)path value:(id)value;
@end

@implementation HPSHomeAccessoryInterfaceMediator

- (HPSHomeAccessoryInterfaceMediator)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v8.receiver = self;
  v8.super_class = HPSHomeAccessoryInterfaceMediator;
  v5 = [(HPSHomeAccessoryInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_settingsInterface, interfaceCopy);
  }

  return v6;
}

- (void)homekitaccessoryDidUpdateValueForEndpointIdentifier:(id)identifier keyPath:(id)path value:(id)value
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  pathCopy = path;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);
  if (WeakRetained)
  {
    v12 = _HPSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 136315906;
      v15 = "[HPSHomeAccessoryInterfaceMediator homekitaccessoryDidUpdateValueForEndpointIdentifier:keyPath:value:]";
      v16 = 2112;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = pathCopy;
      v20 = 2112;
      v21 = valueCopy;
      _os_log_impl(&dword_2542B7000, v12, OS_LOG_TYPE_INFO, "%s endpointID %@ keyPath %@ settingValue %@", &v14, 0x2Au);
    }

    [WeakRetained accessoryDidUpdateValueForEndpointIdentifier:identifierCopy keyPath:pathCopy value:valueCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HPSHomeAccessorySettingsInterface)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end