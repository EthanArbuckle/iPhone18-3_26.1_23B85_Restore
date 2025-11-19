@interface NDODevicesManager
- (NDODevicesManager)initWithNanoRegistry:(id)a3;
- (id)_pairedWatches;
- (id)allFUPEligibleDevices;
- (id)appleIDDevices;
- (id)defaultDevice;
- (id)pairedBTDevices;
- (id)pairedBTPioneerDevices;
- (id)pairedWatches;
- (id)primaryFUPEligibleDevices;
@end

@implementation NDODevicesManager

- (NDODevicesManager)initWithNanoRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NDODevicesManager;
  v6 = [(NDODevicesManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nanoRegistry, a3);
  }

  return v7;
}

- (id)defaultDevice
{
  if (!+[NDOUtilities isInternal])
  {
    goto LABEL_5;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"SerialNumber"];

  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "default device SerialNumber Override = %{private}@", buf, 0xCu);
  }

  if (!v3)
  {
LABEL_5:
    v3 = MGCopyAnswer();
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "default device SerialNumber: '%{private}@'", buf, 0xCu);
    }
  }

  v6 = MGCopyAnswer();
  v7 = MGCopyAnswer();
  v8 = MGCopyAnswer();
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 objectForKey:@"DefaultDeviceActivationDate"];

  if (!v10)
  {
    v10 = +[NSDate date];
    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:v10 forKey:@"DefaultDeviceActivationDate"];
  }

  v12 = MGCopyAnswer();
  v13 = MGCopyAnswer();
  v14 = MGCopyAnswer();
  v15 = [NDODevice deviceWithName:v6 serialNumber:v3 activationDate:v10 deviceType:0 productID:v7 productName:v8 color:v12 enclosureColor:v13 coverGlassColor:v14];

  return v15;
}

- (id)pairedWatches
{
  v55 = objc_opt_new();
  if (+[NDOUtilities isInternal])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v51 = [v3 dictionaryForKey:@"PairedWatchesSerialNumbersMap"];
  }

  else
  {
    v51 = 0;
  }

  [(NDODevicesManager *)self _pairedWatches];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v63 = 0u;
  v4 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v61;
    v7 = NRDevicePropertySerialNumber;
    v48 = NRDevicePropertyName;
    v42 = NRDevicePropertyLocalizedModel;
    v47 = NRDevicePropertyPairedDate;
    v46 = NRDevicePropertyProductType;
    v45 = NRDevicePropertyMarketingProductName;
    v8 = &_ss11_StringGutsV16_slowWithCStringyxxSPys4Int8VGKXEKlF_ptr;
    v44 = NRDevicePropertyIsActive;
    v43 = NRDevicePropertyIsAltAccount;
    v49 = NRDevicePropertySerialNumber;
    v50 = *v61;
    do
    {
      v9 = 0;
      v52 = v5;
      do
      {
        if (*v61 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v60 + 1) + 8 * v9);
        v11 = [v10 valueForProperty:v7];
        if ([v8[314] isNotEmptyString:v11])
        {
          v12 = [v10 valueForProperty:v48];
          if (([v8[314] isNotEmptyString:v12] & 1) == 0)
          {
            v13 = [v10 valueForProperty:v42];

            v12 = v13;
          }

          v14 = [v51 objectForKey:v11];
          if ([v8[314] isNotEmptyString:v14])
          {
            v15 = _NDOLogSystem();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v66 = "[NDODevicesManager pairedWatches]";
              v67 = 2112;
              v68 = v11;
              v69 = 2112;
              v70 = v14;
              _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s: mapping watch serial:%@ to:%@", buf, 0x20u);
            }

            v16 = v14;
            v17 = [NSString stringWithFormat:@"DBG-MAP:%@", v12];

            v12 = v17;
            v11 = v16;
          }

          v18 = [v10 valueForProperty:v47];
          v19 = [v10 valueForProperty:v46];
          v20 = [v10 valueForProperty:v45];
          v21 = [v10 valueForProperty:v44];
          v22 = [v10 valueForProperty:v43];
          LOBYTE(v41) = v22 != 0;
          v23 = +[NDODevice watchDeviceWithName:serialNumber:activationDate:isActive:productID:productName:isAltAccount:](NDODevice, "watchDeviceWithName:serialNumber:activationDate:isActive:productID:productName:isAltAccount:", v12, v11, v18, [v21 BOOLValue], v19, v20, v41);
          [v55 setObject:v23 forKeyedSubscript:v11];

          v7 = v49;
          v6 = v50;
          v5 = v52;
          v8 = &_ss11_StringGutsV16_slowWithCStringyxxSPys4Int8VGKXEKlF_ptr;
        }

        else
        {
          v12 = _NDOLogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v66 = "[NDODevicesManager pairedWatches]";
            v67 = 2112;
            v68 = v10;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s -> missing serial number for device: %@", buf, 0x16u);
          }
        }

        v9 = v9 + 1;
      }

      while (v5 != v9);
      v5 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v5);
  }

  if (+[NDOUtilities isInternal])
  {
    v24 = +[NSUserDefaults standardUserDefaults];
    v25 = [v24 objectForKey:@"PairedWatchesSerialNumbers"];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v53 = v25;
    v26 = [v53 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v57;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v57 != v28)
          {
            objc_enumerationMutation(v53);
          }

          v30 = *(*(&v56 + 1) + 8 * i);
          v31 = +[NSUserDefaults standardUserDefaults];
          v32 = [v30 stringByAppendingString:@".activationInterval"];
          [v31 doubleForKey:v32];
          v34 = v33;

          v35 = [NSDate dateWithTimeIntervalSinceNow:v34];
          v36 = [NSString stringWithFormat:@"DBG-ADD:%@", v30];
          v37 = [NDODevice deviceWithName:v36 serialNumber:v30 activationDate:v35 deviceType:1 productID:@"Watch6 productName:4", @"Watch Series 7 Debug"];
          [v55 setObject:v37 forKeyedSubscript:v30];
        }

        v27 = [v53 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v27);
    }
  }

  v38 = _NDOLogSystem();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v66 = "[NDODevicesManager pairedWatches]";
    v67 = 2112;
    v68 = v55;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
  }

  v39 = [v55 copy];

  return v39;
}

- (id)pairedBTDevices
{
  if (!+[NDOUtilities isInternal])
  {
    goto LABEL_11;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"PairedBluetoothDevicesSerialNumbers"];

  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000733DC();
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = [v3 allValues];
  if (!v5)
  {

LABEL_11:
    v10 = +[NSMutableDictionary dictionary];
    v31 = 0;
    v11 = [CBDiscovery devicesWithDiscoveryFlags:0x800000 error:&v31];
    v12 = v31;
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = _NDOLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000734C4();
      }
    }

    v15 = _NDOLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100073544(v11);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          if ([v21 deviceFlags])
          {
            v22 = [v21 serialNumber];

            if (v22)
            {
              v23 = [NDODevice deviceWithCBDevice:v21];
              v24 = [v21 serialNumber];
              [v10 setObject:v23 forKeyedSubscript:v24];
            }

            else
            {
              v23 = _NDOLogSystem();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v35 = "[NDODevicesManager pairedBTDevices]";
                v36 = 2112;
                v37 = v21;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s: No Serial AACP Device: %@ \n", buf, 0x16u);
              }
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v18);
    }

    v8 = [v10 copy];
    goto LABEL_35;
  }

  v6 = v5;
  +[NSMutableDictionary dictionary];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000108EC;
  v7 = v32[3] = &unk_10009AB58;
  v33 = v7;
  [v6 enumerateObjectsUsingBlock:v32];
  v8 = [v7 copy];
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100073450();
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_35:
  v25 = _NDOLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[NDODevicesManager pairedBTDevices]";
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
  }

  return v8;
}

- (id)pairedBTPioneerDevices
{
  if (!+[NDOUtilities isInternal])
  {
    goto LABEL_11;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"PairedBluetoothPioneerDevicesSerialNumbers"];

  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000735C8();
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = [v3 allValues];
  if (!v5)
  {

LABEL_11:
    v10 = +[NSMutableDictionary dictionary];
    v31 = 0;
    v11 = [CBDiscovery devicesWithDiscoveryFlags:0x800000 error:&v31];
    v12 = v31;
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = _NDOLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000736B0();
      }
    }

    v15 = _NDOLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100073730(v11);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          if ([v21 proximityPairingSubType] == 3)
          {
            v22 = [v21 serialNumber];

            if (v22)
            {
              v23 = [NDODevice deviceWithCBDevice:v21 isVisibleInCC:0];
              v24 = [v21 serialNumber];
              [v10 setObject:v23 forKeyedSubscript:v24];
            }

            else
            {
              v23 = _NDOLogSystem();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v35 = "[NDODevicesManager pairedBTPioneerDevices]";
                v36 = 2112;
                v37 = v21;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s: No Serial Pencil Device: %@ \n", buf, 0x16u);
              }
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v18);
    }

    v8 = [v10 copy];
    goto LABEL_35;
  }

  v6 = v5;
  +[NSMutableDictionary dictionary];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100010E6C;
  v7 = v32[3] = &unk_10009AB58;
  v33 = v7;
  [v6 enumerateObjectsUsingBlock:v32];
  v8 = [v7 copy];
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10007363C();
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_35:
  v25 = _NDOLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[NDODevicesManager pairedBTPioneerDevices]";
    v36 = 2112;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
  }

  return v8;
}

- (id)primaryFUPEligibleDevices
{
  v3 = [(NDODevicesManager *)self defaultDevice];
  v4 = [v3 serialNumber];
  v11 = v4;
  v5 = [(NDODevicesManager *)self defaultDevice];
  v12 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7 = [v6 mutableCopy];

  v8 = [(NDODevicesManager *)self pairedWatches];
  [v7 addEntriesFromDictionary:v8];

  v9 = [NSDictionary dictionaryWithDictionary:v7];

  return v9;
}

- (id)allFUPEligibleDevices
{
  v3 = [(NDODevicesManager *)self defaultDevice];
  v4 = [v3 serialNumber];
  v12 = v4;
  v5 = [(NDODevicesManager *)self defaultDevice];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [v6 mutableCopy];

  v8 = [(NDODevicesManager *)self pairedWatches];
  [v7 addEntriesFromDictionary:v8];

  v9 = [(NDODevicesManager *)self pairedBTDevices];
  [v7 addEntriesFromDictionary:v9];

  v10 = [NSDictionary dictionaryWithDictionary:v7];

  return v10;
}

- (id)appleIDDevices
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:[(NSArray *)self->_appleIDDeviceList count]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_appleIDDeviceList;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 serialNumber];
        [v3 setObject:v9 forKeyedSubscript:v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_pairedWatches
{
  v2 = [(NDONanoRegistry *)self->_nanoRegistry getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_10009AB98];
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[NDODevicesManager _pairedWatches]";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s -> pairedWatches: %@", &v7, 0x16u);
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

@end