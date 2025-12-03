@interface HPSHomeInterfaceMediator
- (HPSHomeInterface)settingsInterface;
- (HPSHomeInterfaceMediator)initWithInterface:(id)interface;
- (void)accessoryDidUpdateAttribute:(id)attribute withContext:(id)context;
@end

@implementation HPSHomeInterfaceMediator

- (HPSHomeInterfaceMediator)initWithInterface:(id)interface
{
  v12 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v9.receiver = self;
  v9.super_class = HPSHomeInterfaceMediator;
  v5 = [(HPSHomeInterfaceMediator *)&v9 init];
  if (v5)
  {
    v6 = _HPSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[HPSHomeInterfaceMediator initWithInterface:]";
      _os_log_impl(&dword_2542B7000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeWeak(&v5->_settingsInterface, interfaceCopy);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)accessoryDidUpdateAttribute:(id)attribute withContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  contextCopy = context;
  v8 = _HPSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[HPSHomeInterfaceMediator accessoryDidUpdateAttribute:withContext:]";
    v13 = 2112;
    v14 = attributeCopy;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_INFO, "%s attribute %@ context %@", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);
  [WeakRetained _accessoryDidUpdateAttribute:attributeCopy withContext:contextCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (HPSHomeInterface)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end