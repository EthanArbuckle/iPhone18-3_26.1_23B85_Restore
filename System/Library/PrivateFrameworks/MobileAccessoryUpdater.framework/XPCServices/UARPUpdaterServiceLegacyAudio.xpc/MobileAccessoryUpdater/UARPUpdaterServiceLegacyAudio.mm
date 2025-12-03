@interface UARPUpdaterServiceLegacyAudio
- (UARPUpdaterServiceLegacyAudio)init;
- (void)bsdNotificationReceived:(id)received;
- (void)eaRuleMatched:(id)matched;
- (void)getBSDNotificationsListWithReply:(id)reply;
- (void)getDASActivityListWithReply:(id)reply;
- (void)getIsBusyStatusWithReply:(id)reply;
- (void)getMatchingServicesListWithReply:(id)reply;
- (void)updateCompleteForAccessory:(id)accessory;
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

- (void)getMatchingServicesListWithReply:(id)reply
{
  replyCopy = reply;
  v25 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  matchingAccessoriesList = [(LegacyAudioController *)self->_controller matchingAccessoriesList];
  v5 = [matchingAccessoriesList countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(matchingAccessoriesList);
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
          v22 = matchingAccessoriesList;
          v23 = [[UARPServiceUpdaterAccessoryMatchingRule alloc] initWithIdentifier:v17 xpcEventStream:v13 matchingDictionary:v15];
          [v25 addObject:v23];

          matchingAccessoriesList = v22;
          v10 = v21;
          v7 = v20;
          v8 = v19;
          v9 = v18;
          v6 = v26;
        }

        v11 = v11 + 1;
      }

      while (v6 != v11);
      v6 = [matchingAccessoriesList countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  replyCopy[2](replyCopy, v25);
}

- (void)eaRuleMatched:(id)matched
{
  matchedCopy = matched;
  v5 = +[NSMutableDictionary dictionary];
  accessorySerialNumber = [matchedCopy accessorySerialNumber];

  if (accessorySerialNumber)
  {
    accessorySerialNumber2 = [matchedCopy accessorySerialNumber];
    [v5 setObject:accessorySerialNumber2 forKeyedSubscript:@"SerialNumber"];
  }

  eaIdentifier = [matchedCopy eaIdentifier];

  if (eaIdentifier)
  {
    eaIdentifier2 = [matchedCopy eaIdentifier];
    [v5 setObject:eaIdentifier2 forKeyedSubscript:@"DeviceClass"];
  }

  v10 = [[LegacyAudioAccessory alloc] initWithDelegate:self];
  [(LegacyAudioController *)self->_controller addActiveAccessory:v10];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100014EF4(v10, &self->_controller);
  }

  eaIdentifier3 = [matchedCopy eaIdentifier];
  [(LegacyAudioAccessory *)v10 handleConnect:eaIdentifier3 options:v5];
}

- (void)getBSDNotificationsListWithReply:(id)reply
{
  controller = self->_controller;
  replyCopy = reply;
  matchingBSDNotificationsList = [(LegacyAudioController *)controller matchingBSDNotificationsList];
  replyCopy[2](replyCopy, matchingBSDNotificationsList);
}

- (void)bsdNotificationReceived:(id)received
{
  receivedCopy = received;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
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
            v15 = [v14 isEqualToString:receivedCopy];

            if (v15)
            {
              v16 = [[LegacyAudioAccessory alloc] initWithDelegate:selfCopy];
              [(LegacyAudioController *)selfCopy->_controller addActiveAccessory:v16];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                activeAccessories = [(LegacyAudioController *)selfCopy->_controller activeAccessories];
                *buf = v19;
                v28 = v16;
                v29 = 2112;
                v30 = activeAccessories;
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

- (void)getDASActivityListWithReply:(id)reply
{
  controller = self->_controller;
  replyCopy = reply;
  matchingDASActivityList = [(LegacyAudioController *)controller matchingDASActivityList];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[UARPUpdaterServiceLegacyAudio getDASActivityListWithReply:]";
    v8 = 2112;
    v9 = matchingDASActivityList;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: matchingDASActivities %@", &v6, 0x16u);
  }

  replyCopy[2](replyCopy, matchingDASActivityList);
}

- (void)getIsBusyStatusWithReply:(id)reply
{
  controller = self->_controller;
  replyCopy = reply;
  activeAccessories = [(LegacyAudioController *)controller activeAccessories];
  v5 = [activeAccessories count] != 0;

  replyCopy[2](replyCopy, v5);
}

- (void)updateCompleteForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  [(LegacyAudioController *)self->_controller removeActiveAccessory:accessoryCopy];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100014F90(accessoryCopy, &self->_controller);
  }

  activeAccessories = [(LegacyAudioController *)self->_controller activeAccessories];
  v6 = [activeAccessories count];

  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No more active accessories", v7, 2u);
  }
}

@end