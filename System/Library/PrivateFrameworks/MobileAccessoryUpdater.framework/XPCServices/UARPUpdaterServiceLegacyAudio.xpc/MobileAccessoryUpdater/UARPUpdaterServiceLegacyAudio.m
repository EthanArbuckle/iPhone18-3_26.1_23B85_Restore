@interface UARPUpdaterServiceLegacyAudio
- (UARPUpdaterServiceLegacyAudio)init;
- (void)bsdNotificationReceived:(id)a3;
- (void)eaRuleMatched:(id)a3;
- (void)getBSDNotificationsListWithReply:(id)a3;
- (void)getDASActivityListWithReply:(id)a3;
- (void)getIsBusyStatusWithReply:(id)a3;
- (void)getMatchingServicesListWithReply:(id)a3;
- (void)updateCompleteForAccessory:(id)a3;
@end

@implementation UARPUpdaterServiceLegacyAudio

- (UARPUpdaterServiceLegacyAudio)init
{
  v6.receiver = self;
  v6.super_class = UARPUpdaterServiceLegacyAudio;
  v2 = [(UARPUpdaterServiceLegacyAudio *)&v6 init];
  if (v2)
  {
    v3 = +[LegacyAudioController sharedInstance];
    controller = v2->_controller;
    v2->_controller = v3;
  }

  return v2;
}

- (void)getMatchingServicesListWithReply:(id)a3
{
  v24 = a3;
  v25 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(LegacyAudioController *)self->_controller matchingAccessoriesList];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = @"MatchingType";
    v9 = @"MatchingDictionary";
    v10 = @"com.apple.ExternalAccessory.matching";
    do
    {
      v11 = 0;
      v26 = v6;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = [v12 objectForKeyedSubscript:v8];
        v14 = [v12 objectForKeyedSubscript:v9];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && [v13 isEqualToString:v10])
        {
          v17 = [v12 objectForKeyedSubscript:@"DeviceClass"];
          v18 = v9;
          v19 = v8;
          v20 = v7;
          v21 = v10;
          v22 = v4;
          v23 = [[UARPServiceUpdaterAccessoryMatchingRule alloc] initWithIdentifier:v17 xpcEventStream:v13 matchingDictionary:v15];
          [v25 addObject:v23];

          v4 = v22;
          v10 = v21;
          v7 = v20;
          v8 = v19;
          v9 = v18;
          v6 = v26;
        }

        v11 = v11 + 1;
      }

      while (v6 != v11);
      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v24[2](v24, v25);
}

- (void)eaRuleMatched:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 accessorySerialNumber];

  if (v6)
  {
    v7 = [v4 accessorySerialNumber];
    [v5 setObject:v7 forKeyedSubscript:@"SerialNumber"];
  }

  v8 = [v4 eaIdentifier];

  if (v8)
  {
    v9 = [v4 eaIdentifier];
    [v5 setObject:v9 forKeyedSubscript:@"DeviceClass"];
  }

  v10 = [[LegacyAudioAccessory alloc] initWithDelegate:self];
  [(LegacyAudioController *)self->_controller addActiveAccessory:v10];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100014EF4(v10, &self->_controller);
  }

  v11 = [v4 eaIdentifier];
  [(LegacyAudioAccessory *)v10 handleConnect:v11 options:v5];
}

- (void)getBSDNotificationsListWithReply:(id)a3
{
  controller = self->_controller;
  v4 = a3;
  v5 = [(LegacyAudioController *)controller matchingBSDNotificationsList];
  v4[2](v4, v5);
}

- (void)bsdNotificationReceived:(id)a3
{
  v21 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self;
  obj = [(LegacyAudioController *)self->_controller matchingAccessoriesList];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    *&v5 = 138412546;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"MatchingType", v19}];
        v11 = [v9 objectForKeyedSubscript:@"MatchingDictionary"];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          if ([v10 isEqualToString:@"com.apple.notifyd.matching"])
          {
            v14 = [v12 objectForKeyedSubscript:@"Notification"];
            v15 = [v14 isEqualToString:v21];

            if (v15)
            {
              v16 = [[LegacyAudioAccessory alloc] initWithDelegate:v20];
              [(LegacyAudioController *)v20->_controller addActiveAccessory:v16];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                v18 = [(LegacyAudioController *)v20->_controller activeAccessories];
                *buf = v19;
                v28 = v16;
                v29 = 2112;
                v30 = v18;
                _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Added accessory %@, active accessories %@", buf, 0x16u);
              }

              v17 = [v9 objectForKeyedSubscript:@"DeviceClass"];
              [(LegacyAudioAccessory *)v16 handleConnect:v17 options:&__NSDictionary0__struct];
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v6);
  }
}

- (void)getDASActivityListWithReply:(id)a3
{
  controller = self->_controller;
  v4 = a3;
  v5 = [(LegacyAudioController *)controller matchingDASActivityList];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[UARPUpdaterServiceLegacyAudio getDASActivityListWithReply:]";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: matchingDASActivities %@", &v6, 0x16u);
  }

  v4[2](v4, v5);
}

- (void)getIsBusyStatusWithReply:(id)a3
{
  controller = self->_controller;
  v6 = a3;
  v4 = [(LegacyAudioController *)controller activeAccessories];
  v5 = [v4 count] != 0;

  v6[2](v6, v5);
}

- (void)updateCompleteForAccessory:(id)a3
{
  v4 = a3;
  [(LegacyAudioController *)self->_controller removeActiveAccessory:v4];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100014F90(v4, &self->_controller);
  }

  v5 = [(LegacyAudioController *)self->_controller activeAccessories];
  v6 = [v5 count];

  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No more active accessories", v7, 2u);
  }
}

@end