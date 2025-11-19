@interface HPSThirdPartyHeadphonesDatasource
- (HPSThirdPartyHeadphonesDatasource)init;
- (HPSThirdPartyHeadphonesDatasourceDelegate)delegate;
- (NSArray)routedThirdPartyHeadphones;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)handleDAEvent:(id)a3;
@end

@implementation HPSThirdPartyHeadphonesDatasource

- (HPSThirdPartyHeadphonesDatasource)init
{
  v14.receiver = self;
  v14.super_class = HPSThirdPartyHeadphonesDatasource;
  v2 = [(HPSThirdPartyHeadphonesDatasource *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDFF8]);
    centralManager = v2->_centralManager;
    v2->_centralManager = v3;

    [(CBCentralManager *)v2->_centralManager setDelegate:v2];
    v5 = objc_alloc_init(MEMORY[0x277D04780]);
    daSession = v2->_daSession;
    v2->_daSession = v5;

    objc_initWeak(&location, v2);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __41__HPSThirdPartyHeadphonesDatasource_init__block_invoke;
    v11 = &unk_2796B2C60;
    objc_copyWeak(&v12, &location);
    [(DASession *)v2->_daSession setEventHandler:&v8];
    [(DASession *)v2->_daSession activate:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__HPSThirdPartyHeadphonesDatasource_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDAEvent:v3];
}

- (void)handleDAEvent:(id)a3
{
  v3 = [a3 eventType];
  if (v3 == 20)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "Connected 3rd Party Headphones: DASession invalidated";
      v6 = &v7;
      goto LABEL_7;
    }
  }

  else
  {
    if (v3 != 10)
    {
      return;
    }

    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v5 = "Connected 3rd Party Headphones: DASession activated";
      v6 = &v8;
LABEL_7:
      _os_log_impl(&dword_25126C000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }
}

- (NSArray)routedThirdPartyHeadphones
{
  v67 = *MEMORY[0x277D85DE8];
  if ([(CBCentralManager *)self->_centralManager state]== 5)
  {
    v46 = self;
    v3 = [MEMORY[0x277D04780] getDevicesWithFlags:8 session:self->_daSession error:0];
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v59;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v59 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v58 + 1) + 8 * i);
          v11 = [v10 bluetoothIdentifier];

          if (v11)
          {
            v12 = [v10 bluetoothIdentifier];
            [v4 setObject:v10 forKeyedSubscript:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v7);
    }

    objc_storeStrong(&v46->_daDevices, v4);
    v13 = [MEMORY[0x277CB8698] sharedSystemAudioContext];
    v14 = [v13 outputDevices];

    v15 = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v55;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v54 + 1) + 8 * j);
          if ([v21 deviceType] == 1 && (objc_msgSend(v21, "deviceSubType") == 3 || objc_msgSend(v21, "deviceSubType") == 2))
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v54 objects:v65 count:16];
      }

      while (v18);
    }

    objc_storeStrong(&v46->_avDevices, v15);
    if ([(NSDictionary *)v46->_daDevices count]&& [(NSArray *)v46->_avDevices count])
    {
      v42 = v15;
      v43 = v5;
      v44 = v4;
      v45 = [MEMORY[0x277CBEB18] array];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v22 = v46->_avDevices;
      v23 = [(NSArray *)v22 countByEnumeratingWithState:&v50 objects:v64 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = v46;
        v26 = *v51;
        v48 = v22;
        v49 = v16;
        v47 = *v51;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v51 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v50 + 1) + 8 * k);
            if ([v28 deviceType] == 1 && (objc_msgSend(v28, "deviceSubType") == 3 || objc_msgSend(v28, "deviceSubType") == 2))
            {
              v29 = [v28 ID];
              v30 = [(CBCentralManager *)v25->_centralManager retrievePeripheralWithAddress:v29];
              v31 = [BTSDeviceLE deviceWithPeripheral:v30 manager:v25->_centralManager];
              if ([v31 supportsCTKD])
              {
                daDevices = v25->_daDevices;
                v33 = [v30 identifier];
                v34 = [(NSDictionary *)daDevices objectForKeyedSubscript:v33];

                if (v34)
                {
                  v35 = [MEMORY[0x277CF3248] sharedInstance];
                  v36 = [v30 identifier];
                  v37 = [v35 deviceFromIdentifier:v36];

                  if (v37)
                  {
                    v38 = [BTSDeviceClassic deviceWithDevice:v37];
                    v39 = [[HPSThirdPartyHeadphone alloc] initWithLEDevice:v31 classicDevice:v38 daDevice:v34 avDevice:v28];
                    [v45 addObject:v39];
                  }

                  else
                  {
                    v38 = sharedBluetoothSettingsLogComponent();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v63 = v31;
                      _os_log_error_impl(&dword_25126C000, v38, OS_LOG_TYPE_ERROR, "3rd Party route does not have classic device, not displaying it in top level settings %@", buf, 0xCu);
                    }
                  }

                  v25 = v46;
                }

                else
                {
                  v37 = sharedBluetoothSettingsLogComponent();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v63 = v31;
                    _os_log_error_impl(&dword_25126C000, v37, OS_LOG_TYPE_ERROR, "3rd Party route is not an ASK device, not displaying it in top level settings %@", buf, 0xCu);
                  }
                }

                v22 = v48;

                v26 = v47;
              }

              else
              {
                v34 = sharedBluetoothSettingsLogComponent();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v63 = v31;
                  _os_log_error_impl(&dword_25126C000, v34, OS_LOG_TYPE_ERROR, "3rd Party route does not support CTKD, not displaying it in top level settings %@", buf, 0xCu);
                }
              }

              v16 = v49;
            }
          }

          v24 = [(NSArray *)v22 countByEnumeratingWithState:&v50 objects:v64 count:16];
        }

        while (v24);
      }

      v5 = v43;
      v4 = v44;
      v15 = v42;
    }

    else
    {
      v45 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v45 = MEMORY[0x277CBEBF8];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v45;
}

- (void)centralManagerDidUpdateState:(id)a3
{
  if (([a3 state] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained thirdPartyHeadphonesDatasourceDidUpdate:self];
  }
}

- (HPSThirdPartyHeadphonesDatasourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end