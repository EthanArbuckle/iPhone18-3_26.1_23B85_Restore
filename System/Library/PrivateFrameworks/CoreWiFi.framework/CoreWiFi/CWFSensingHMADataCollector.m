@interface CWFSensingHMADataCollector
+ (id)createCWFSensingHMADataCollectorFor:(id)a3 withOptions:(id)a4 andDelegate:(id)a5;
- (CWFSensingHMADataCollector)initWithAccessory:(id)a3 andOptions:(id)a4 andDelegate:(id)a5;
- (id)currentRoomIdentifier;
- (id)getSensingParams;
- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5;
- (void)deregisterForPrimaryServiceNotificationWith:(id)a3;
- (void)handleSensingResult:(id)a3;
- (void)registerForPrimaryServiceNotificationWith:(id)a3;
@end

@implementation CWFSensingHMADataCollector

+ (id)createCWFSensingHMADataCollectorFor:(id)a3 withOptions:(id)a4 andDelegate:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
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

  v10 = [[CWFSensingHMADataCollector alloc] initWithAccessory:v7 andOptions:v8 andDelegate:v9];
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

- (CWFSensingHMADataCollector)initWithAccessory:(id)a3 andOptions:(id)a4 andDelegate:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = CWFSensingHMADataCollector;
  v11 = [(CWFSensingHMADataCollector *)&v28 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  [(CWFSensingHMADataCollector *)v11 set_accessory:v8];
  v13 = [(CWFSensingHMADataCollector *)v12 _accessory];

  if (!v13)
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

  v15 = [(CWFSensingHMADataCollector *)v12 _serviceQueue];

  if (!v15)
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

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 addObserver:v12 selector:sel_handleSensingResult_ name:@"SensingResult" object:0];

  [(CWFSensingHMADataCollector *)v12 set_delegate:v10];
  v17 = [(CWFSensingHMADataCollector *)v12 _delegate];

  if (!v17)
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

  if (v9)
  {
    [(CWFSensingHMADataCollector *)v12 set_sensingParams:v9];
  }

  else
  {
    v18 = [(CWFSensingHMADataCollector *)v12 getSensingParams];
    [(CWFSensingHMADataCollector *)v12 set_sensingParams:v18];
  }

  [(CWFSensingHMADataCollector *)v12 set_serviceRegistrationError:0];
  [(CWFSensingHMADataCollector *)v12 set_attempt:0];
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)currentRoomIdentifier
{
  v2 = [(CWFSensingHMADataCollector *)self _accessory];
  v3 = [v2 room];
  v4 = [v3 uniqueIdentifier];

  return v4;
}

- (id)getSensingParams
{
  v2 = objc_alloc_init(CWFSensingParameters);
  [(CWFSensingParameters *)v2 setSubmitMetric:1];
  [(CWFSensingParameters *)v2 setScheduleDailyAt:-2];
  [(CWFSensingParameters *)v2 setScheduleOnceAfter:0];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters numberOfReports](v2, "numberOfReports")}];
  [v3 setObject:v4 forKeyedSubscript:@"SENSING_PARAMS_NUMBER_OF_REPORTS"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[CWFSensingParameters matchFrameType](v2, "matchFrameType")}];
  [v3 setObject:v5 forKeyedSubscript:@"SENSING_PARAMS_MATCH_FRAME_TYPE"];

  v6 = [(CWFSensingParameters *)v2 matchMACAddresses];
  [v3 setObject:v6 forKeyedSubscript:@"SENSING_PARAMS_MATCH_MAC_ADDRESS"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters timeout](v2, "timeout")}];
  [v3 setObject:v7 forKeyedSubscript:@"SENSING_PARAMS_TIMEOUT"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFSensingParameters submitMetric](v2, "submitMetric")}];
  [v3 setObject:v8 forKeyedSubscript:@"SENSING_PARAMS_SUBMIT_METRIC"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters scheduleDailyAt](v2, "scheduleDailyAt")}];
  [v3 setObject:v9 forKeyedSubscript:@"SENSING_PARAMS_SCHEDULE_DAILY_AT"];

  v10 = [(CWFSensingParameters *)v2 placeLabels];
  [v3 setObject:v10 forKeyedSubscript:@"SENSING_PARAMS_PLACE_LABELS"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFSensingParameters scheduleOnceAfter](v2, "scheduleOnceAfter")}];
  [v3 setObject:v11 forKeyedSubscript:@"SENSING_PARAMS_SCHEDULE_ONCE_AFTER"];

  return v3;
}

- (void)registerForPrimaryServiceNotificationWith:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v31 = self;
  v4 = [(CWFSensingHMADataCollector *)self _accessory];
  [v4 setDelegate:self];

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
  v5 = [(CWFSensingHMADataCollector *)self _accessory];
  obj = [v5 services];

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
          v7 = [v6 characteristics];
          v8 = [v7 countByEnumeratingWithState:&v35 objects:v51 count:16];
          if (v8)
          {
            v9 = *v36;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v36 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v35 + 1) + 8 * j);
                v12 = [v11 properties];
                v13 = off_1ED7E3808();
                if ([v12 containsObject:v13])
                {
                  v14 = [v11 properties];
                  v15 = off_1ED7E3810();
                  v16 = [v14 containsObject:v15];

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
                    v34[4] = v31;
                    v34[5] = v11;
                    v34[6] = &v43;
                    [v11 enableNotification:1 completionHandler:v34];
                  }
                }

                else
                {
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v35 objects:v51 count:16];
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
  v21 = [(CWFSensingHMADataCollector *)v31 _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD6048;
  block[3] = &unk_1E86E64C0;
  block[4] = v31;
  v33 = v26;
  v22 = v26;
  dispatch_group_notify(v20, v21, block);

  _Block_object_dispose(&v43, 8);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)deregisterForPrimaryServiceNotificationWith:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v20 = a3;
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
  v25 = self;
  v4 = [(CWFSensingHMADataCollector *)self _accessory];
  obj = [v4 services];

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
          v6 = [v5 characteristics];
          v7 = [v6 countByEnumeratingWithState:&v29 objects:v43 count:16];
          if (v7)
          {
            v8 = *v30;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v30 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v29 + 1) + 8 * j);
                v11 = [v10 properties];
                v12 = off_1ED7E3808();
                if ([v11 containsObject:v12])
                {
                  v13 = [v10 properties];
                  v14 = off_1ED7E3810();
                  v15 = [v13 containsObject:v14];

                  if (v15)
                  {
                    dispatch_group_enter(v38[5]);
                    v28[0] = MEMORY[0x1E69E9820];
                    v28[1] = 3221225472;
                    v28[2] = sub_1E0CD65EC;
                    v28[3] = &unk_1E86E8AD8;
                    v28[4] = v25;
                    v28[5] = v10;
                    v28[6] = &v37;
                    [v10 enableNotification:0 completionHandler:v28];
                  }
                }

                else
                {
                }
              }

              v7 = [v6 countByEnumeratingWithState:&v29 objects:v43 count:16];
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
  v17 = [(CWFSensingHMADataCollector *)v25 _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CD672C;
  block[3] = &unk_1E86E64C0;
  block[4] = v25;
  v27 = v20;
  v18 = v20;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(&v37, 8);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)handleSensingResult:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"CWF_ACCESSORY_UUID"];
  v7 = [(CWFSensingHMADataCollector *)self _accessory];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 isEqual:v8];

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
      v13 = [v4 userInfo];
      v14 = [v13 objectForKeyedSubscript:@"WiFiInterfaceReturn"];
      v15 = [v4 userInfo];
      v17 = [v15 objectForKeyedSubscript:@"SensingResult"];
      _os_log_send_and_compose_impl();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = [(CWFSensingHMADataCollector *)self _serviceQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0CD6A70;
    v13[3] = &unk_1E86E7EA8;
    v14 = v9;
    v15 = v11;
    v16 = self;
    v17 = v8;
    dispatch_async(v12, v13);
  }
}

@end