@interface MapsPushManager
+ (id)defaultManager;
+ (id)fakeDevicesFromNames:(id)a3;
- (BOOL)shouldUseDevAPNS;
- (MapsPushDelegate)delegate;
- (MapsPushManager)init;
- (id)_simulatedDetails;
- (id)_simulatedNotification;
- (id)_simulatedPlace;
- (id)_simulatedProblemResolutionResponse;
- (id)_simulatedProblemStatus;
- (id)devicePushToken;
- (int64_t)_priorityForMessageOfType:(int64_t)a3;
- (void)_handleGenericIDSMessage:(id)a3;
- (void)_updateDevices;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)dealloc;
- (void)fetchProblemStatus:(id)a3 problemReportIDs:(id)a4 manifestToken:(id)a5;
- (void)mapsInstallStateDidChange:(BOOL)a3;
- (void)propagateIDSMessageOfType:(int64_t)a3 message:(id)a4;
- (void)pushItem:(id)a3 toDevice:(id)a4;
- (void)registerForMapsICloudPushTopic;
- (void)sendRAPStatusChangeNotification:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)setUpPushConnection;
- (void)simulateProblemResolution;
- (void)simulateRAPStatusChange;
- (void)simulateUGCPhotoAttributionClearedNotification;
- (void)simulateUGCPhotoSubmissionResolution;
@end

@implementation MapsPushManager

- (void)_updateDevices
{
  v22 = +[NSMutableArray array];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(IDSService *)self->_service devices];
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Updating devices from full list: %@", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = self;
  obj = [(IDSService *)self->_service devices];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [v8 modelIdentifier];
        v10 = [v9 length];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [&off_100040318 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
LABEL_10:
          v14 = 0;
          while (1)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(&off_100040318);
            }

            v15 = *(*(&v24 + 1) + 8 * v14);
            v16 = [v8 modelIdentifier];
            LOBYTE(v15) = [v16 hasPrefix:v15];

            if (v15)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [&off_100040318 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v12)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          if (v10)
          {
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v35 = v8;
              _os_log_impl(&_mh_execute_header, &v17->super, OS_LOG_TYPE_DEBUG, "Skipping device without proper modelIdentifier prefix: %@", buf, 0xCu);
            }

            goto LABEL_22;
          }
        }

        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v8;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Adding device to list: %@", buf, 0xCu);
        }

        v17 = [[MapsPushDevice alloc] initWithIDSDevice:v8];
        [(NSArray *)v22 addObject:v17];
LABEL_22:
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  devices = v20->_devices;
  v20->_devices = v22;
}

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000078E8;
  block[3] = &unk_10003CB88;
  block[4] = a1;
  if (qword_10004AC10 != -1)
  {
    dispatch_once(&qword_10004AC10, block);
  }

  v2 = qword_10004AC08;

  return v2;
}

- (MapsPushManager)init
{
  v8.receiver = self;
  v8.super_class = MapsPushManager;
  v2 = [(MapsPushManager *)&v8 init];
  if (v2)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.maps"];
    service = v2->_service;
    v2->_service = v3;

    [(IDSService *)v2->_service addDelegate:v2 queue:&_dispatch_main_q];
    [(MapsPushManager *)v2 _updateDevices];
    v5 = +[MSPMapsInstallState sharedState];
    [v5 registerMapsInstallStateObserver:v2];

    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[MSPMapsInstallState sharedState];
  [v3 unregisterMapsInstallStateObserver:self];

  v4.receiver = self;
  v4.super_class = MapsPushManager;
  [(MapsPushManager *)&v4 dealloc];
}

- (void)pushItem:(id)a3 toDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || ([v7 isFake] & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 device];
      *buf = 138412546;
      v32 = v6;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Pushing item: %@ to device %@", buf, 0x16u);
    }

    v11 = [(IDSService *)self->_service accounts];
    v12 = [v11 anyObject];

    if (v12)
    {
      v13 = [v6 pushSubmissionData];
      v14 = v13;
      if (v13)
      {
        v29 = @"syncedBookmarkData";
        v30 = v13;
        v15 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        if (v8)
        {
          v16 = [v8 device];
          v17 = IDSCopyForDevice();
        }

        else
        {
          v17 = IDSCopyIDForAccount();
        }

        v20 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v32 = v15;
          v33 = 2112;
          v34 = v17;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Sending message: %@ to destination: %@", buf, 0x16u);
        }

        service = self->_service;
        v22 = [NSSet setWithObject:v17];
        v27 = IDSSendMessageOptionEncryptPayloadKey;
        v28 = &__kCFBooleanTrue;
        v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v26 = 0;
        v24 = [(IDSService *)service sendMessage:v15 toDestinations:v22 priority:300 options:v23 identifier:0 error:&v26];
        v25 = v26;

        if ((v24 & 1) == 0)
        {
          NSLog(@"Error sending message: %@", v25);
        }
      }

      else
      {
        v19 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "No sync data for item: %@", buf, 0xCu);
        }

        NSLog(@"ERROR: No sync data...");
      }
    }

    else
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "No valid account found", buf, 2u);
      }

      NSLog(@"No valid account found...");
    }
  }
}

- (void)propagateIDSMessageOfType:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v21 = v6;
    v38[0] = @"GenericIDSMessageData";
    v38[1] = @"GenericIDSMessageType";
    v39[0] = v6;
    v8 = [NSNumber numberWithInteger:a3];
    v39[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(IDSService *)self->_service devices];
    v25 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v25)
    {
      v24 = *v28;
      v23 = IDSSendMessageOptionEncryptPayloadKey;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = IDSCopyForDevice();
          v13 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v34 = v9;
            v35 = 2112;
            v36 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Sending message: %@ to destination: %@", buf, 0x16u);
          }

          service = self->_service;
          v15 = [NSSet setWithObject:v12];
          v16 = a3;
          v17 = [(MapsPushManager *)self _priorityForMessageOfType:a3];
          v31 = v23;
          v32 = &__kCFBooleanTrue;
          v18 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          v26 = 0;
          LOBYTE(service) = [(IDSService *)service sendMessage:v9 toDestinations:v15 priority:v17 options:v18 identifier:0 error:&v26];
          v19 = v26;

          if ((service & 1) == 0)
          {
            v20 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error sending message: %@", buf, 0xCu);
            }
          }

          a3 = v16;
        }

        v25 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v25);
    }

    v7 = v21;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Can't send nil message", buf, 2u);
    }
  }
}

- (void)_handleGenericIDSMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"GenericIDSMessageType"];
  v6 = [v5 integerValue];

  if (v6 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clearRAPStatusChangeNotificationWithManager:self];
    goto LABEL_9;
  }

  if (v6 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [GEORPRapInfo alloc];
    v10 = [v4 objectForKeyedSubscript:@"GenericIDSMessageData"];
    v11 = [v9 initWithData:v10];
    [WeakRetained pushManager:self receivedRAPStatusChangeNotification:v11];

LABEL_9:
    goto LABEL_10;
  }

  if (!v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Received unknown generic message: %@", &v12, 0xCu);
    }
  }

LABEL_10:
}

- (int64_t)_priorityForMessageOfType:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    return 200;
  }

  else
  {
    return 300;
  }
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v9 = a4;
  v7 = [(MapsPushManager *)self devicePushTokenCompletion];

  if (v7)
  {
    v8 = [(MapsPushManager *)self devicePushTokenCompletion];
    (v8)[2](v8, v9);
  }

  [(MapsPushManager *)self setDevicePushTokenCompletion:0];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = [v5 topic];
  v7 = [v6 isEqualToString:@"com.apple.maps.icloud"];

  if (v7)
  {
    v8 = [v5 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"nid"];

    v10 = [v9 firstObject];
    v11 = [v5 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"prid"];

    v13 = [v5 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"mftoken"];

    v15 = [v5 userInfo];
    v16 = [v15 objectForKey:@"aps"];

    if (v16)
    {
      v17 = [v5 userInfo];
      v18 = [v17 objectForKeyedSubscript:@"aps"];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v5 userInfo];
    v20 = [v19 objectForKey:@"photoLiveness"];

    if (v20)
    {
      v42 = v14;
      v38 = v12;
      v39 = v10;
      v40 = v9;
      v21 = [v5 userInfo];
      v22 = [v21 objectForKeyedSubscript:@"photoLiveness"];

      v23 = [v22 objectForKeyedSubscript:@"muid"];
      v24 = objc_alloc_init(NSNumberFormatter);
      v25 = [v24 numberFromString:v23];
      v26 = +[GEOMapURLBuilder URLForInternalBusiness:id:provider:](GEOMapURLBuilder, "URLForInternalBusiness:id:provider:", 0, [v25 unsignedLongValue], 0);

      v41 = v18;
      v27 = [v18 objectForKeyedSubscript:@"alert"];
      v28 = [v27 objectForKeyedSubscript:@"title"];
      v29 = [v27 objectForKeyedSubscript:@"body"];
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v44 = v28;
        v45 = 2112;
        v46 = v29;
        v47 = 2112;
        v48 = v23;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Did receive incoming message for ARP notification with title: %@, body: %@, and muid: %@", buf, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained pushManager:self receivedPhotoLivenessMUID:v23 title:v28 message:v29 actionURL:v26];

      v10 = v39;
      v9 = v40;
      v12 = v38;
      goto LABEL_9;
    }

    v32 = [v18 objectForKey:@"category"];

    if (v32)
    {
      v33 = [v18 objectForKeyedSubscript:@"category"];
      if ([v33 isEqualToString:@"ATTRIBUTION_NAME_CLEARED"])
      {
        v41 = v18;
        v42 = v14;
        v34 = [v18 objectForKeyedSubscript:@"alert"];
        v35 = [v34 objectForKeyedSubscript:@"title"];
        v36 = [v34 objectForKeyedSubscript:@"body"];
        v37 = objc_loadWeakRetained(&self->_delegate);
        [v37 pushManager:self receivedClearedPhotoAttributionNotificationWithTitle:v35 message:v36];

LABEL_9:
LABEL_15:

        goto LABEL_16;
      }
    }

    [(MapsPushManager *)self fetchProblemStatus:v10 problemReportIDs:v12 manifestToken:v14];

    goto LABEL_15;
  }

LABEL_16:
}

- (void)setUpPushConnection
{
  v3 = [(MapsPushManager *)self shouldUseDevAPNS];
  v4 = &APSEnvironmentDevelopment;
  if (!v3)
  {
    v4 = &APSEnvironmentProduction;
  }

  v5 = *v4;
  v6 = [APSConnection alloc];
  v7 = dispatch_get_global_queue(0, 0);
  v8 = [v6 initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.Maps.mapspushd.icloud" queue:v7];

  [v8 setDelegate:self];
  [(MapsPushManager *)self setApsConnection:v8];
}

- (BOOL)shouldUseDevAPNS
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];
  v4 = [v3 path];
  v5 = _CFPreferencesGetAppBooleanValueWithContainer() != 0;

  return v5;
}

- (id)devicePushToken
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100008C18;
  v22 = sub_100008C28;
  v23 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100008C30;
  v15 = &unk_10003CBB0;
  v17 = &v18;
  v3 = dispatch_semaphore_create(0);
  v16 = v3;
  [(MapsPushManager *)self setDevicePushTokenCompletion:&v12];
  v4 = [(MapsPushManager *)self apsConnection:v12];

  if (!v4)
  {
    [(MapsPushManager *)self setUpPushConnection];
  }

  v5 = [(MapsPushManager *)self apsConnection];
  [v5 invalidateTokenForTopic:@"com.apple.maps.icloud" identifier:0];

  v6 = [(MapsPushManager *)self devicePushTokenCompletion];
  v7 = [(MapsPushManager *)self apsConnection];
  v8 = [v7 publicToken];
  (v6)[2](v6, v8);

  v9 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v3, v9);
  [(MapsPushManager *)self setDevicePushTokenCompletion:0];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v10;
}

- (void)registerForMapsICloudPushTopic
{
  if (+[MSPMapsInstallState isMapsAppInstalled])
  {
    v3 = [(MapsPushManager *)self apsConnection];

    if (!v3)
    {
      [(MapsPushManager *)self setUpPushConnection];
    }

    v6 = @"com.apple.maps.icloud";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
    v5 = [(MapsPushManager *)self apsConnection];
    [v5 _setEnabledTopics:v4];
  }
}

- (id)_simulatedPlace
{
  v2 = objc_alloc_init(GEOPDPlace);
  [v2 setMuid:0x8F98FC444E72B232];
  [v2 setResultProviderId:9902];
  [v2 setStatus:0];

  return v2;
}

- (id)_simulatedDetails
{
  v3 = objc_alloc_init(GEORPDetails);
  [v3 setDisplayStyle:2];
  [v3 setLocalizedTitle:@"Location Updated"];
  [v3 setLocalizedDescription:{@"Thank you for the report you submitted on June 10, 2015. The information for the location “P T C R Jewellery Polishing” has been updated."}];
  v4 = objc_alloc_init(GEOMapRegion);
  [v3 setDisplayRegion:v4];

  v5 = [v3 displayRegion];
  [v5 setEastLng:-0.109615239];

  v6 = [v3 displayRegion];
  [v6 setNorthLat:51.5208347];

  v7 = [v3 displayRegion];
  [v7 setSouthLat:51.5195643];

  v8 = [v3 displayRegion];
  [v8 setWestLng:-0.111656927];

  v9 = [(MapsPushManager *)self _simulatedPlace];
  [v3 addPlace:v9];

  return v3;
}

- (id)_simulatedProblemStatus
{
  v3 = objc_alloc_init(GEORPProblemStatus);
  v4 = [NSString stringWithFormat:@"%d", rand()];
  [v3 setProblemId:v4];

  v5 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
  [v5 timeIntervalSinceReferenceDate];
  [v3 setCreationDate:?];

  [v3 setProblemState:2];
  v6 = [(MapsPushManager *)self _simulatedNotification];
  [v3 setNotification:v6];

  v7 = [(MapsPushManager *)self _simulatedDetails];
  [v3 setDetails:v7];

  return v3;
}

- (id)_simulatedNotification
{
  v2 = objc_alloc_init(GEORPNotification);
  [v2 setLocalizedText:@"The information for the location “P T C R Jewellery Polishing” has been updated."];
  [v2 setLocalizedTitle:@"Problem Fixed"];

  return v2;
}

- (id)_simulatedProblemResolutionResponse
{
  v3 = objc_alloc_init(GEORPProblemStatusResponse);
  [v3 setStatusCode:0];
  v4 = [(MapsPushManager *)self _simulatedProblemStatus];
  [v3 addProblemStatus:v4];

  return v3;
}

- (void)simulateProblemResolution
{
  v3 = [(MapsPushManager *)self _simulatedProblemResolutionResponse];
  if (v3)
  {
    v4 = dispatch_time(0, 10000000000);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100009190;
    v5[3] = &unk_10003C9D8;
    v5[4] = self;
    v6 = v3;
    dispatch_after(v4, &_dispatch_main_q, v5);
  }
}

- (void)simulateRAPStatusChange
{
  v10 = objc_alloc_init(GEORPRapNotification);
  v3 = objc_alloc_init(GEOLocalizedString);
  [v3 setStringValue:@"title: Rap status change notification"];
  v4 = objc_alloc_init(GEOLocalizedString);
  [v4 setStringValue:@"text: Rap status change notification"];
  [v10 setTitle:v3];
  [v10 setBody:v4];
  v5 = objc_alloc_init(GEORPRapResponse);
  [v5 setNotification:v10];
  [v5 setResponseId:@"responseId"];
  v6 = objc_alloc_init(GEORPDisplayDetails);
  v7 = objc_alloc_init(GEOLocalizedString);
  [v7 setStringValue:@"Need More Information"];
  v8 = objc_alloc_init(GEOLocalizedString);
  [v8 setStringValue:@"We're stumped! We couldn't find any information about this business. Please send us a picture of the front door and any other details that can help us respond to your report."];
  [v6 setTitle:v7];
  [v6 setBody:v8];
  [v5 setDisplayDetails:v6];
  v9 = objc_alloc_init(GEORPRapInfo);
  [v9 setRapResponse:v5];
  [v9 setRapId:@"b4977ec0-4b44-11ed-a777-b33297611d8b"];
  [v9 setRapDisplayMenu:3];
  [(MapsPushManager *)self sendRAPStatusChangeNotification:v9];
}

- (void)simulateUGCPhotoSubmissionResolution
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = @"2258143483938644182";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Simulating a successful photo submission resolution for muid: %@", buf, 0xCu);
  }

  v4 = objc_alloc_init(NSNumberFormatter);
  v5 = [v4 numberFromString:@"2258143483938644182"];
  v6 = +[GEOMapURLBuilder URLForInternalBusiness:id:provider:](GEOMapURLBuilder, "URLForInternalBusiness:id:provider:", 0, [v5 unsignedLongValue], 0);

  v7 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009558;
  block[3] = &unk_10003CBD8;
  block[4] = self;
  v10 = @"2258143483938644182";
  v11 = @"Your Photos Are Live";
  v12 = @"The photos you added of Agnes Restaurant & Cheesery are now visible to everyone.";
  v13 = v6;
  v8 = v6;
  dispatch_after(v7, &_dispatch_main_q, block);
}

- (void)simulateUGCPhotoAttributionClearedNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pushManager:self receivedClearedPhotoAttributionNotificationWithTitle:@"Choose a Different Nickname" message:@"The nickname you chose for photo credit isn’t available. Choose a different nickname."];
}

- (void)sendRAPStatusChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  [(MapsPushManager *)self propagateIDSMessageOfType:1 message:v5];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pushManager:self receivedRAPStatusChangeNotification:v4];
}

- (void)fetchProblemStatus:(id)a3 problemReportIDs:(id)a4 manifestToken:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(GEORPProblemStatusRequest);
  [v11 setStatusNotificationId:v10];

  v12 = [v9 mutableCopy];
  [v11 setProblemIds:v12];

  v13 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v11 setUserCredentials:v13];

  v14 = objc_alloc_init(GEORPClientCapabilities);
  [v11 setClientCapabilities:v14];

  v15 = [v11 clientCapabilities];
  [v15 setHasConstrainedProblemStatusSize:0];

  v16 = [v11 clientCapabilities];
  [v16 setHasNoOptInRequest:1];

  v17 = +[GEOPlatform sharedPlatform];
  v18 = [v17 clientCapabilities];
  v19 = [v18 transitMarketSupport];
  v20 = [v11 clientCapabilities];
  [v20 setTransitMarketSupport:v19];

  [v11 populateAnalyticsMetadata];
  v21 = +[GEOUtilityService sharedService];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000098AC;
  v24[3] = &unk_10003CC68;
  v25 = v11;
  v26 = self;
  v27 = v8;
  v22 = v8;
  v23 = v11;
  [v21 getCurrentGeoServicesState:&_dispatch_main_q callback:v24];
}

+ (id)fakeDevicesFromNames:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 lowercaseString];
        v11 = [v10 hasSuffix:@"ipad"];

        if (v11)
        {
          v12 = @"iPad4,1";
        }

        else
        {
          v12 = @"iPhone5,3";
        }

        v13 = [[FakeMapsPushDevice alloc] initWithName:v9 model:v12];
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Active Accounts changed", v6, 2u);
  }

  [(MapsPushManager *)self _updateDevices];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Devices changed", v6, 2u);
  }

  [(MapsPushManager *)self _updateDevices];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v40 = DefaultLoggingSubsystem;
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v55 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received message: %@", buf, 0xCu);
  }

  v42 = v12;
  v43 = v9;
  v14 = [v9 deviceForFromID:v12];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = v10;
  v16 = [v10 nearbyDevices];
  v17 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
LABEL_5:
    v20 = 0;
    while (1)
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = [*(*(&v48 + 1) + 8 * v20) uniqueID];
      v22 = [v14 uniqueID];
      v23 = [v21 isEqualToString:v22];

      if (v23)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v18)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v16 = [v15 devices];
    v24 = [v16 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (!v24)
    {
LABEL_19:

      v31 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Unexpected iCloud account. Ignoring.", buf, 2u);
      }

      NSLog(@"Unexpected iCloud account. Ignoring...");
      goto LABEL_24;
    }

    v25 = v24;
    v26 = *v45;
LABEL_13:
    v27 = 0;
    while (1)
    {
      if (*v45 != v26)
      {
        objc_enumerationMutation(v16);
      }

      v28 = [*(*(&v44 + 1) + 8 * v27) uniqueID];
      v29 = [v14 uniqueID];
      v30 = [v28 isEqualToString:v29];

      if (v30)
      {
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [v16 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v25)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  v32 = [v11 objectForKeyedSubscript:@"GenericIDSMessageType"];

  if (v32)
  {
    [(MapsPushManager *)self _handleGenericIDSMessage:v11];
LABEL_24:
    v33 = v43;
    v34 = v15;
    goto LABEL_32;
  }

  v35 = [v11 objectForKeyedSubscript:@"syncedBookmarkData"];

  v34 = v15;
  if (v35)
  {
    v36 = [v11 objectForKeyedSubscript:@"syncedBookmarkData"];
    v37 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Passing data to delegate", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pushManager:self gotPushData:v36];

    v33 = v43;
  }

  else
  {
    v39 = GEOFindOrCreateLog();
    v33 = v43;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Unexpected message body. Ignoring.", buf, 2u);
    }

    NSLog(@"Unexpected message body. Ignoring...");
  }

LABEL_32:
}

- (void)mapsInstallStateDidChange:(BOOL)a3
{
  if (a3)
  {

    [(MapsPushManager *)self registerForMapsICloudPushTopic];
  }

  else
  {
    v6 = @"com.apple.maps.icloud";
    v4 = [NSArray arrayWithObjects:&v6 count:1];
    v5 = [(MapsPushManager *)self apsConnection];
    [v5 _setIgnoredTopics:v4];
  }
}

- (MapsPushDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end