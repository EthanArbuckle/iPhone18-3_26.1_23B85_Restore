@interface MBCKATCBundlesPlugin
- (BOOL)shouldBackgroundRestoreContentWithPolicy:(id)policy fileInfo:(id)info;
- (BOOL)shouldRestoreContentWithPolicy:(id)policy fileInfo:(id)info;
@end

@implementation MBCKATCBundlesPlugin

- (BOOL)shouldRestoreContentWithPolicy:(id)policy fileInfo:(id)info
{
  policyCopy = policy;
  infoCopy = info;
  v7 = +[ATClientController sharedInstance];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allClients = [v7 allClients];
  v9 = [allClients countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = v7;
    v11 = *v23;
    v12 = &selRef_setServiceDelegate_;
    while (2)
    {
      v13 = 0;
      v14 = v12[276];
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(allClients);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        v16 = objc_autoreleasePoolPush();
        if (objc_opt_respondsToSelector())
        {
          v17 = +[MBCKManager sharedInstance];
          v18 = [v15 shouldRestoreFile:infoCopy backupManager:v17];

          if (!v18)
          {
            objc_autoreleasePoolPop(v16);
            v19 = 0;
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v16);
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [allClients countByEnumeratingWithState:&v22 objects:v26 count:16];
      v12 = &selRef_setServiceDelegate_;
      if (v10)
      {
        continue;
      }

      break;
    }

    v19 = 1;
LABEL_12:
    v7 = v21;
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (BOOL)shouldBackgroundRestoreContentWithPolicy:(id)policy fileInfo:(id)info
{
  policyCopy = policy;
  infoCopy = info;
  if ([policyCopy isRestoringPrimaryAccount])
  {
    v7 = +[ATClientController sharedInstance];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v7 allClients];
    v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v28 = v7;
      v29 = policyCopy;
      v9 = *v33;
      v10 = &selRef_setServiceDelegate_;
      v11 = &selRef_setServiceDelegate_;
      while (2)
      {
        v12 = 0;
        v13 = v10[245];
        v14 = v11[244];
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * v12);
          v16 = objc_autoreleasePoolPush();
          if (objc_opt_respondsToSelector())
          {
            [infoCopy path];
            context = v16;
            v17 = v14;
            v18 = v13;
            v19 = v8;
            v20 = v9;
            v22 = v21 = infoCopy;
            v23 = +[MBCKManager sharedInstance];
            v24 = [v15 shouldBackgroundRestorePath:v22 backupManager:v23];

            infoCopy = v21;
            v9 = v20;
            v8 = v19;
            v13 = v18;
            v14 = v17;
            v16 = context;
            if (v24)
            {
              goto LABEL_15;
            }
          }

          if (objc_opt_respondsToSelector())
          {
            v25 = +[MBCKManager sharedInstance];
            v26 = [v15 shouldBackgroundRestoreFile:infoCopy backupManager:v25];

            if (v26)
            {
LABEL_15:
              objc_autoreleasePoolPop(v16);
              LOBYTE(v8) = 1;
              goto LABEL_16;
            }
          }

          objc_autoreleasePoolPop(v16);
          v12 = v12 + 1;
        }

        while (v8 != v12);
        v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        v10 = &selRef_setServiceDelegate_;
        v11 = &selRef_setServiceDelegate_;
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_16:
      v7 = v28;
      policyCopy = v29;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end