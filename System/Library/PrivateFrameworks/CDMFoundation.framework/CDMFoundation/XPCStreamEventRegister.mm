@interface XPCStreamEventRegister
+ (XPCStreamEventRegister)registerWithRegistrations:(id)a3;
+ (XPCStreamEventRegister)registerWithRegistrations:(id)a3 withActivityServicesMap:(id)a4;
+ (id)emptyRegister;
+ (id)registerFromDagServiceNames:(id)a3;
- (BOOL)handleXPCActivity:(id)a3 fromIdentifier:(id)a4 withAssetCollection:(id)a5 withSelfMetadata:(id)a6;
- (BOOL)handleXPCEvent:(id)a3 fromStream:(id)a4 currentConfig:(id)a5 withSelfMetadata:(id)a6;
- (id)_initWithRegistrationsMap:(id)a3 withActivityServicesMap:(id)a4;
- (id)handleableXPCActivities;
- (id)handleableXPCEventStreams;
@end

@implementation XPCStreamEventRegister

- (id)_initWithRegistrationsMap:(id)a3 withActivityServicesMap:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = XPCStreamEventRegister;
  v9 = [(XPCStreamEventRegister *)&v13 init];
  objc_storeStrong(&v9->_registrationsMap, a3);
  objc_storeStrong(&v9->_activityServicesMap, a4);
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "[XPCStreamEventRegister _initWithRegistrationsMap:withActivityServicesMap:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Registered with xpc events:\n%@\n and activities\n%@", buf, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)handleXPCActivity:(id)a3 fromIdentifier:(id)a4 withAssetCollection:(id)a5 withSelfMetadata:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v27 = a5;
  v10 = a6;
  v11 = v9;
  v12 = [(NSDictionary *)self->_activityServicesMap objectForKeyedSubscript:v9];
  v13 = v12;
  if (v12)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = objc_opt_respondsToSelector();
          v20 = CDMOSLoggerForCategory(0);
          v21 = v20;
          if (v19)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v23 = NSStringFromClass(v18);
              *buf = 136315394;
              v34 = "[XPCStreamEventRegister handleXPCActivity:fromIdentifier:withAssetCollection:withSelfMetadata:]";
              v35 = 2112;
              v36 = v23;
              _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s Calling handleXPCActivity on service %@", buf, 0x16u);
            }

            [(objc_class *)v18 handleXPCActivity:v11 withAssets:v27 withSelfMetadata:v10];
          }

          else
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v22 = NSStringFromClass(v18);
              *buf = 136315394;
              v34 = "[XPCStreamEventRegister handleXPCActivity:fromIdentifier:withAssetCollection:withSelfMetadata:]";
              v35 = 2112;
              v36 = v22;
              _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s [WARN]: Found service [%@] that does not support handleXPCActivity yet is registered for an activity?", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v34 = "[XPCStreamEventRegister handleXPCActivity:fromIdentifier:withAssetCollection:withSelfMetadata:]";
      v35 = 2112;
      v36 = v9;
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s There were no services found supporting xpc activity: %@. Doing nothing.", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v13 != 0;
}

- (BOOL)handleXPCEvent:(id)a3 fromStream:(id)a4 currentConfig:(id)a5 withSelfMetadata:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [XPCStreamEventUtils getXPCEventName:v10];
  if (v14)
  {
    v15 = [objc_opt_class() _registrationKeyFromStreamName:v11 eventName:v14];
    v16 = [(NSDictionary *)self->_registrationsMap objectForKeyedSubscript:v15];
    v17 = v16 != 0;
    v18 = CDMOSLoggerForCategory(0);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v19)
      {
        *buf = 136315650;
        v38 = "[XPCStreamEventRegister handleXPCEvent:fromStream:currentConfig:withSelfMetadata:]";
        v39 = 2112;
        v40 = v14;
        v41 = 2112;
        v42 = v11;
        _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Found matching registrations for XPC event %@ from stream %@. Calling handlers.", buf, 0x20u);
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = v16;
      v18 = v16;
      v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v20)
      {
        v21 = v20;
        v28 = v17;
        v29 = v15;
        v30 = v14;
        v22 = *v33;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v32 + 1) + 8 * i);
            v25 = [v12 assetCollection];
            [v24 invoke:v10 fromStream:v11 withAssets:v25 withSelfMetadata:v13];
          }

          v21 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v21);
        v15 = v29;
        v14 = v30;
        v17 = v28;
      }

      v16 = v31;
    }

    else if (v19)
    {
      *buf = 136315650;
      v38 = "[XPCStreamEventRegister handleXPCEvent:fromStream:currentConfig:withSelfMetadata:]";
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = v11;
      _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s There was no matching registration for XPC event %@ from stream %@. Doing nothing.", buf, 0x20u);
    }
  }

  else
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "[XPCStreamEventRegister handleXPCEvent:fromStream:currentConfig:withSelfMetadata:]";
      _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Error extracting XPC event name", buf, 0xCu);
    }

    v17 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)handleableXPCActivities
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [(NSDictionary *)self->_activityServicesMap allKeys];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    key = *MEMORY[0x1E69E9D50];
    v22 = *MEMORY[0x1E69E9CE8];
    v23 = *MEMORY[0x1E69E9C98];
    v8 = *MEMORY[0x1E69E9D88];
    v9 = *MEMORY[0x1E69E9D68];
    v20 = *MEMORY[0x1E69E9DB8];
    string = *MEMORY[0x1E69E9D78];
    v18 = *MEMORY[0x1E69E9DA8];
    v19 = *MEMORY[0x1E69E9C40];
    v27 = *MEMORY[0x1E69E9CC0];
    v28 = *MEMORY[0x1E69E9CB0];
    v10 = *MEMORY[0x1E69E9DC0];
    v25 = *MEMORY[0x1E69E9DC0];
    v26 = *MEMORY[0x1E69E9D70];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (v12 == @"com.apple.siri.cdm.xpc_activity.maintenance")
        {
          v13 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_int64(v13, v28, v27);
          xpc_dictionary_set_BOOL(v13, v8, 1);
          xpc_dictionary_set_string(v13, v9, v26);
          v14 = v13;
          v15 = v25;
        }

        else
        {
          if (v12 != @"com.apple.siri.cdm.xpc_activity.post_install")
          {
            continue;
          }

          v13 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_BOOL(v13, key, 1);
          xpc_dictionary_set_int64(v13, v23, v22);
          xpc_dictionary_set_BOOL(v13, v8, 0);
          xpc_dictionary_set_string(v13, v9, string);
          xpc_dictionary_set_BOOL(v13, v20, 1);
          xpc_dictionary_set_BOOL(v13, v19, 1);
          v14 = v13;
          v15 = v18;
        }

        xpc_dictionary_set_BOOL(v14, v15, 1);
        [v3 setObject:v13 forKey:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)handleableXPCEventStreams
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_registrationsMap;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSDictionary *)self->_registrationsMap objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i), v14];
        v10 = [v9 firstObject];

        v11 = [v10 streamName];
        [v3 addObject:v11];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (XPCStreamEventRegister)registerWithRegistrations:(id)a3 withActivityServicesMap:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[XPCStreamEventRegister alloc] _initWithRegistrationsMap:v6 withActivityServicesMap:v5];

  return v7;
}

+ (XPCStreamEventRegister)registerWithRegistrations:(id)a3
{
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [XPCStreamEventRegister registerWithRegistrations:v4 withActivityServicesMap:v5];

  return v6;
}

+ (id)registerFromDagServiceNames:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v3;
  v36 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v36)
  {
    v35 = *v47;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = NSClassFromString(*(*(&v46 + 1) + 8 * i));
        if (objc_opt_respondsToSelector())
        {
          v33 = v7;
          v34 = i;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v8 = [(objc_class *)v7 xpcEventStreamsSupported];
          v9 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v43;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v43 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v42 + 1) + 8 * j);
                v14 = [v13 streamName];
                v15 = [v13 eventName];
                v16 = [a1 _registrationKeyFromStreamName:v14 eventName:v15];

                v17 = [v4 objectForKey:v16];

                if (!v17)
                {
                  v18 = [MEMORY[0x1E695DF70] array];
                  [v4 setValue:v18 forKey:v16];
                }

                v19 = [v4 objectForKey:v16];
                [v19 addObject:v13];
              }

              v10 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v10);
          }

          v7 = v33;
          i = v34;
        }

        if (objc_opt_respondsToSelector())
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v20 = [(objc_class *)v7 xpcActivitySupported];
          v21 = [v20 countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v39;
            do
            {
              for (k = 0; k != v22; ++k)
              {
                if (*v39 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v38 + 1) + 8 * k);
                v26 = [v5 objectForKey:v25];

                if (!v26)
                {
                  v27 = [MEMORY[0x1E695DF70] array];
                  [v5 setValue:v27 forKey:v25];
                }

                v28 = [v5 objectForKey:v25];
                [v28 addObject:v7];
              }

              v22 = [v20 countByEnumeratingWithState:&v38 objects:v50 count:16];
            }

            while (v22);
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v36);
  }

  v29 = [a1 registerWithRegistrations:v4 withActivityServicesMap:v5];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (id)emptyRegister
{
  v3 = [MEMORY[0x1E695DF20] dictionary];
  v4 = [a1 registerWithRegistrations:v3];

  return v4;
}

@end