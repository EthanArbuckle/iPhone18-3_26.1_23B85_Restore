@interface HPSHomeInterfaceMediator
- (HPSHomeInterface)settingsInterface;
- (HPSHomeInterfaceMediator)initWithInterface:(id)a3;
- (void)accessoryDidUpdateAttribute:(id)a3 withContext:(id)a4;
@end

@implementation HPSHomeInterfaceMediator

- (HPSHomeInterfaceMediator)initWithInterface:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

    objc_storeWeak(&v5->_settingsInterface, v4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)accessoryDidUpdateAttribute:(id)a3 withContext:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _HPSLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[HPSHomeInterfaceMediator accessoryDidUpdateAttribute:withContext:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_INFO, "%s attribute %@ context %@", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);
  [WeakRetained _accessoryDidUpdateAttribute:v6 withContext:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (HPSHomeInterface)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end