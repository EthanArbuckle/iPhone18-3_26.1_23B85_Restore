@interface CWFSensingAutoDataCollector
+ (id)sharedCWFSensingAutoDataCollectorInstanceWith:(id)a3;
- (BOOL)currentAccessoryInfo:(id)a3;
- (CWFSensingAutoDataCollector)initWithHomes:(id)a3;
- (void)cleanUpOutOfScopeAccessory;
- (void)registerForAccessoriesInRoomWithDelegate:(id)a3;
- (void)updateRegisteredServiceWithDelegate:(id)a3;
@end

@implementation CWFSensingAutoDataCollector

+ (id)sharedCWFSensingAutoDataCollectorInstanceWith:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1C3CC;
  block[3] = &unk_1E86E6010;
  v10 = v3;
  v4 = qword_1ED7E3948;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1ED7E3948, block);
  }

  v6 = qword_1ED7E3940;
  v7 = qword_1ED7E3940;

  return v6;
}

- (CWFSensingAutoDataCollector)initWithHomes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CWFSensingAutoDataCollector;
  v5 = [(CWFSensingAutoDataCollector *)&v13 init];
  v6 = v5;
  if (v5)
  {
    if ([(CWFSensingAutoDataCollector *)v5 currentAccessoryInfo:v4])
    {
      v7 = dispatch_queue_create("com.apple.wifi.CWFSensingAutoDataCollector", 0);
      [(CWFSensingAutoDataCollector *)v6 set_serviceQueue:v7];

      v8 = [MEMORY[0x1E695DF90] dictionary];
      [(CWFSensingAutoDataCollector *)v6 set_serviceObjects:v8];
    }

    else
    {

      v11 = CWFGetOSLog();
      if (v11)
      {
        v8 = CWFGetOSLog();
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 136446722;
        v15 = "[CWFSensingAutoDataCollector initWithHomes:]";
        v16 = 2082;
        v17 = "CWFSensingAutoDataCollector.m";
        v18 = 1024;
        v19 = 90;
        _os_log_send_and_compose_impl();
      }

      v6 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)currentAccessoryInfo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v9 accessories];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if ([v15 isCurrentAccessory])
              {
                [(CWFSensingAutoDataCollector *)self set_currentAccessory:v15];
                v6 = 1;
                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)cleanUpOutOfScopeAccessory
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(CWFSensingAutoDataCollector *)self _serviceObjects];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(CWFSensingAutoDataCollector *)self _serviceQueue];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = sub_1E0C1C8E4;
        v11[3] = &unk_1E86E6420;
        v11[4] = self;
        v11[5] = v8;
        dispatch_async(v9, v11);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)registerForAccessoriesInRoomWithDelegate:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v4 = [(CWFSensingAutoDataCollector *)self _currentAccessory];
  v5 = [v4 room];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v33 = v5;
  v6 = [v5 accessories];
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v40;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v40 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v39 + 1) + 8 * i);
      v12 = [(CWFSensingAutoDataCollector *)self _serviceObjects:v31];
      v13 = [v11 uniqueIdentifier];
      v14 = [v12 objectForKey:v13];
      if (v14)
      {
      }

      else
      {
        v15 = [v11 isCurrentAccessory];

        if (v15)
        {
          continue;
        }

        v16 = [CWFSensingHMADataCollector createCWFSensingHMADataCollectorFor:v11 withOptions:0 andDelegate:v34];
        if (!v16)
        {
          v27 = CWFGetOSLog();
          if (v27)
          {
            v28 = CWFGetOSLog();
          }

          else
          {
            v28 = MEMORY[0x1E69E9C10];
            v29 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = [v11 uniqueIdentifier];
            v43 = 136446978;
            v44 = "[CWFSensingAutoDataCollector registerForAccessoriesInRoomWithDelegate:]";
            v45 = 2082;
            v46 = "CWFSensingAutoDataCollector.m";
            v47 = 1024;
            v48 = 137;
            v49 = 2114;
            v50 = v30;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_19;
        }

        v17 = v16;
        v18 = [(CWFSensingAutoDataCollector *)self _serviceQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C1CF3C;
        block[3] = &unk_1E86E6060;
        v12 = v17;
        v36 = v12;
        v37 = v11;
        v38 = self;
        dispatch_async(v18, block);

        v19 = [(CWFSensingAutoDataCollector *)self _serviceObjects];
        v20 = [v11 uniqueIdentifier];
        [v19 setObject:v12 forKey:v20];

        v21 = CWFGetOSLog();
        if (v21)
        {
          v22 = CWFGetOSLog();
        }

        else
        {
          v22 = MEMORY[0x1E69E9C10];
          v23 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v11 uniqueIdentifier];
          v25 = [(CWFSensingAutoDataCollector *)self _serviceObjects];
          v43 = 136447234;
          v44 = "[CWFSensingAutoDataCollector registerForAccessoriesInRoomWithDelegate:]";
          v45 = 2082;
          v46 = "CWFSensingAutoDataCollector.m";
          v47 = 1024;
          v48 = 150;
          v49 = 2114;
          v50 = v24;
          v51 = 2114;
          v52 = v25;
          LODWORD(v32) = 48;
          v31 = &v43;
          _os_log_send_and_compose_impl();
        }

        v13 = v36;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)updateRegisteredServiceWithDelegate:(id)a3
{
  [(CWFSensingAutoDataCollector *)self registerForAccessoriesInRoomWithDelegate:a3];

  MEMORY[0x1EEE66B58](self, sel_cleanUpOutOfScopeAccessory);
}

@end