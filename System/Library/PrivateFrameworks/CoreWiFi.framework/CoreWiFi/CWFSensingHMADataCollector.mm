@interface CWFSensingHMADataCollector
+ (id)createCWFSensingHMADataCollectorFor:(id)for withOptions:(id)options andDelegate:(id)delegate;
- (CWFSensingHMADataCollector)initWithAccessory:(id)accessory andOptions:(id)options andDelegate:(id)delegate;
- (id)currentRoomIdentifier;
- (id)getSensingParams;
- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic;
- (void)deregisterForPrimaryServiceNotificationWith:(id)with;
- (void)handleSensingResult:(id)result;
- (void)registerForPrimaryServiceNotificationWith:(id)with;
@end

@implementation CWFSensingHMADataCollector

+ (id)createCWFSensingHMADataCollectorFor:(id)for withOptions:(id)options andDelegate:(id)delegate
{
  v18 = *MEMORY[0x1E69E9840];
  forCopy = for;
  optionsCopy = options;
  delegateCopy = delegate;
  if (!forCopy)
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = [[CWFSensingHMADataCollector alloc] initWithAccessory:forCopy andOptions:optionsCopy andDelegate:delegateCopy];
  if (v10)
  {
    goto LABEL_3;
  }

  v15 = CWFGetOSLog();
  if (v15)
  {
    v14 = CWFGetOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
LABEL_15:
    _os_log_send_and_compose_impl();
  }

LABEL_16:

  v10 = 0;
LABEL_3:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (CWFSensingHMADataCollector)initWithAccessory:(id)accessory andOptions:(id)options andDelegate:(id)delegate
{
  v35 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  optionsCopy = options;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = CWFSensingHMADataCollector;
  v11 = [(CWFSensingHMADataCollector *)&v28 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  [(CWFSensingHMADataCollector *)v11 set_accessory:accessoryCopy];
  _accessory = [(CWFSensingHMADataCollector *)v12 _accessory];

  if (!_accessory)
  {

    v21 = CWFGetOSLog();
    if (v21)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v29 = 136446722;
    v30 = "[CWFSensingHMADataCollector initWithAccessory:andOptions:andDelegate:]";
    v31 = 2082;
    v32 = "CWFSensingHMADataCollector.m";
    v33 = 1024;
    v34 = 88;
    goto LABEL_25;
  }

  v14 = dispatch_queue_create("com.apple.wifi.CWFSensingHMADataCollector", 0);
  [(CWFSensingHMADataCollector *)v12 set_serviceQueue:v14];

  _serviceQueue = [(CWFSensingHMADataCollector *)v12 _serviceQueue];

  if (!_serviceQueue)
  {

    v23 = CWFGetOSLog();
    if (v23)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v29 = 136446722;
    v30 = "[CWFSensingHMADataCollector initWithAccessory:andOptions:andDelegate:]";
    v31 = 2082;
    v32 = "CWFSensingHMADataCollector.m";
    v33 = 1024;
    v34 = 94;
    goto LABEL_25;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v12 selector:sel_handleSensingResult_ name:@"SensingResult" object:0];

  [(CWFSensingHMADataCollector *)v12 set_delegate:delegateCopy];
  _delegate = [(CWFSensingHMADataCollector *)v12 _delegate];

  if (!_delegate)
  {

    v24 = CWFGetOSLog();
    if (v24)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v29 = 136446722;
    v30 = "[CWFSensingHMADataCollector initWithAccessory:andOptions:andDelegate:]";
    v31 = 2082;
    v32 = "CWFSensingHMADataCollector.m";
    v33 = 1024;
    v34 = 103;
LABEL_25:
    _os_log_send_and_compose_impl();
LABEL_26:

    v12 = 0;
    goto LABEL_9;
  }

  if (optionsCopy)
  {
    [(CWFSensingHMADataCollector *)v12 set_sensingParams:optionsCopy];
  }

  else
  {
    getSensingParams = [(CWFSensingHMADataCollector *)v12 getSensingParams];
    [(CWFSensingHMADataCollector *)v12 set_sensingParams:getSensingParams];
  }

  [(CWFSensingHMADataCollector *)v12 set_serviceRegistrationError:0];
  [(CWFSensingHMADataCollector *)v12 set_attempt:0];
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)currentRoomIdentifier
{
  _accessory = [(CWFSensingHMADataCollector *)self _accessory];
  room = [_accessory room];
  uniqueIdentifier = [room uniqueIdentifier];

  return uniqueIdentifier;
}

- (id)getSensingParams
{
  v2 = objc_alloc_init(CWFSensingParameters);
  [(CWFSensingParameters *)v2 setSubmitMetric:1];
  [(CWFSensingParameters *)v2 setScheduleDailyAt:-2];
  [(CWFSensingParameters *)v2 setScheduleOnceAfter:0];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters numberOfReports](v2, "numberOfReports")}];
  [dictionary setObject:v4 forKeyedSubscript:@"SENSING_PARAMS_NUMBER_OF_REPORTS"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[CWFSensingParameters matchFrameType](v2, "matchFrameType")}];
  [dictionary setObject:v5 forKeyedSubscript:@"SENSING_PARAMS_MATCH_FRAME_TYPE"];

  matchMACAddresses = [(CWFSensingParameters *)v2 matchMACAddresses];
  [dictionary setObject:matchMACAddresses forKeyedSubscript:@"SENSING_PARAMS_MATCH_MAC_ADDRESS"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters timeout](v2, "timeout")}];
  [dictionary setObject:v7 forKeyedSubscript:@"SENSING_PARAMS_TIMEOUT"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFSensingParameters submitMetric](v2, "submitMetric")}];
  [dictionary setObject:v8 forKeyedSubscript:@"SENSING_PARAMS_SUBMIT_METRIC"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters scheduleDailyAt](v2, "scheduleDailyAt")}];
  [dictionary setObject:v9 forKeyedSubscript:@"SENSING_PARAMS_SCHEDULE_DAILY_AT"];

  placeLabels = [(CWFSensingParameters *)v2 placeLabels];
  [dictionary setObject:placeLabels forKeyedSubscript:@"SENSING_PARAMS_PLACE_LABELS"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters scheduleOnceAfter](v2, "scheduleOnceAfter")}];
  [dictionary setObject:v11 forKeyedSubscript:@"SENSING_PARAMS_SCHEDULE_ONCE_AFTER"];

  return dictionary;
}

- (void)registerForPrimaryServiceNotificationWith:(id)with
{
  v53 = *MEMORY[0x1E69E9840];
  withCopy = with;
  selfCopy = self;
  _accessory = [(CWFSensingHMADataCollector *)self _accessory];
  [_accessory setDelegate:self];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1E0BC2D90;
  v47 = sub_1E0BC6204;
  v48 = dispatch_group_create();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  _accessory2 = [(CWFSensingHMADataCollector *)self _accessory];
  obj = [_accessory2 services];

  v29 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v29)
  {
    v28 = *v40;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v39 + 1) + 8 * i);
        if ([v6 isPrimaryService])
        {
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          characteristics = [v6 characteristics];
          v8 = [characteristics countByEnumeratingWithState:&v35 objects:v51 count:16];
          if (v8)
          {
            v9 = *v36;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v36 != v9)
                {
                  objc_enumerationMutation(characteristics);
                }

                v11 = *(*(&v35 + 1) + 8 * j);
                properties = [v11 properties];
                v13 = off_1ED7E3808();
                if ([properties containsObject:v13])
                {
                  properties2 = [v11 properties];
                  v15 = off_1ED7E3810();
                  v16 = [properties2 containsObject:v15];

                  if (v16)
                  {
                    v17 = CWFGetOSLog();
                    if (v17)
                    {
                      v18 = CWFGetOSLog();
                    }

                    else
                    {
                      v18 = MEMORY[0x1E69E9C10];
                      v19 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      v49 = 138543362;
                      v50 = v11;
                      LODWORD(v25) = 12;
                      v24 = &v49;
                      _os_log_send_and_compose_impl();
                    }

                    dispatch_group_enter(v44[5]);
                    v34[0] = MEMORY[0x1E69E9820];
                    v34[1] = 3221225472;
                    v34[2] = sub_1E0CD5F08;
                    v34[3] = &unk_1E86E8AD8;
                    v34[4] = selfCopy;
                    v34[5] = v11;
                    v34[6] = &v43;
                    [v11 enableNotification:1 completionHandler:v34];
                  }
                }

                else
                {
                }
              }

              v8 = [characteristics countByEnumeratingWithState:&v35 objects:v51 count:16];
            }

            while (v8);
          }
        }
      }

      v29 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v29);
  }

  v20 = v44[5];
  _serviceQueue = [(CWFSensingHMADataCollector *)selfCopy _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD6048;
  block[3] = &unk_1E86E64C0;
  block[4] = selfCopy;
  v33 = withCopy;
  v22 = withCopy;
  dispatch_group_notify(v20, _serviceQueue, block);

  _Block_object_dispose(&v43, 8);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)deregisterForPrimaryServiceNotificationWith:(id)with
{
  v45 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1E0BC2D90;
  v41 = sub_1E0BC6204;
  v42 = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  _accessory = [(CWFSensingHMADataCollector *)self _accessory];
  obj = [_accessory services];

  v23 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v23)
  {
    v22 = *v34;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        if ([v5 isPrimaryService])
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          characteristics = [v5 characteristics];
          v7 = [characteristics countByEnumeratingWithState:&v29 objects:v43 count:16];
          if (v7)
          {
            v8 = *v30;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v30 != v8)
                {
                  objc_enumerationMutation(characteristics);
                }

                v10 = *(*(&v29 + 1) + 8 * j);
                properties = [v10 properties];
                v12 = off_1ED7E3808();
                if ([properties containsObject:v12])
                {
                  properties2 = [v10 properties];
                  v14 = off_1ED7E3810();
                  v15 = [properties2 containsObject:v14];

                  if (v15)
                  {
                    dispatch_group_enter(v38[5]);
                    v28[0] = MEMORY[0x1E69E9820];
                    v28[1] = 3221225472;
                    v28[2] = sub_1E0CD65EC;
                    v28[3] = &unk_1E86E8AD8;
                    v28[4] = selfCopy;
                    v28[5] = v10;
                    v28[6] = &v37;
                    [v10 enableNotification:0 completionHandler:v28];
                  }
                }

                else
                {
                }
              }

              v7 = [characteristics countByEnumeratingWithState:&v29 objects:v43 count:16];
            }

            while (v7);
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v23);
  }

  v16 = v38[5];
  _serviceQueue = [(CWFSensingHMADataCollector *)selfCopy _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD672C;
  block[3] = &unk_1E86E64C0;
  block[4] = selfCopy;
  v27 = withCopy;
  v18 = withCopy;
  dispatch_group_notify(v16, _serviceQueue, block);

  _Block_object_dispose(&v37, 8);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)handleSensingResult:(id)result
{
  v18 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  userInfo = [resultCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"CWF_ACCESSORY_UUID"];
  _accessory = [(CWFSensingHMADataCollector *)self _accessory];
  uniqueIdentifier = [_accessory uniqueIdentifier];
  v9 = [v6 isEqual:uniqueIdentifier];

  if (v9)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      userInfo2 = [resultCopy userInfo];
      v14 = [userInfo2 objectForKeyedSubscript:@"WiFiInterfaceReturn"];
      userInfo3 = [resultCopy userInfo];
      v17 = [userInfo3 objectForKeyedSubscript:@"SensingResult"];
      _os_log_send_and_compose_impl();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic
{
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  v11 = characteristicCopy;
  if (accessoryCopy && serviceCopy && characteristicCopy)
  {
    _serviceQueue = [(CWFSensingHMADataCollector *)self _serviceQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0CD6A70;
    v13[3] = &unk_1E86E7EA8;
    v14 = serviceCopy;
    v15 = v11;
    selfCopy = self;
    v17 = accessoryCopy;
    dispatch_async(_serviceQueue, v13);
  }
}

@end