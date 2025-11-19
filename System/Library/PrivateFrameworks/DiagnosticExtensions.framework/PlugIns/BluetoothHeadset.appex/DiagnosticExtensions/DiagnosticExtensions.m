void sub_100000E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6)
  {
    productId = a6;
    NSLog(@"DumpLogCompletionHandler: received pId = %u", a6);
  }

  else
  {
    productId = 0;
    NSLog(@"DumpLogCompletionHandler: error, no productId retrieved");
  }

  if (a5)
  {
    v7 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *__s = 0u;
    v10 = 0u;
    do
    {
      __strcpy_chk();
      v8 = [NSString stringWithCString:__s encoding:4];
      if (![v8 containsString:@"AccessoryHR_"] || ((objc_msgSend(g_hostApp, "isEqualToString:", @"com.apple.TapToRadar") & 1) == 0 && !objc_msgSend(g_hostApp, "isEqualToString:", @"com.apple.taptoradard") || g_loggingConsent) && objc_msgSend(ACTIN_COMPONENTS, "containsObject:", g_componentID))
      {
        [g_loggingFilenames addObject:v8];
      }

      v7 += strlen(__s) + 1;
    }

    while (v7 < a5);
  }

  dispatch_group_leave(g_waitingBranchesGroup);
}

void sessionEventCallback(uint64_t a1, int a2, int a3)
{
  if (!(a3 | a2))
  {
    g_session = a1;
    BTLocalDeviceGetDefault();
    BTAccessoryManagerGetDefault();
    v3 = BTAccessoryManagerRegisterCustomMessageClient();
    g_result = v3;
    if (v3)
    {
      NSLog(@"sessionEventCallback: BTAccessoryManagerAddTestCallbacks with error 0x%08x", v3);
      dispatch_group_leave(g_waitingBranchesGroup);
    }

    else
    {
      NSLog(@"sessionEventCallback: BTAccessoryManagerAddTestCallbacks");
    }

    v4 = malloc_type_malloc(0x2EEuLL, 0xA3B26825uLL);
    if (v4)
    {
      v5 = v4;
      v22 = 0;
      v6 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      *v6 = xmmword_100003330;
      v6[1] = xmmword_100003340;
      CaseSerialNumbersForAppleProductIds = BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds();
      v8 = 0;
      if (CaseSerialNumbersForAppleProductIds)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        if (v22)
        {
          v10 = [NSData dataWithBytes:v5 length:?];
          v21 = 0;
          v9 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:&v21];
          v8 = v21;
        }
      }

      free(v5);
      if (CaseSerialNumbersForAppleProductIds || v8)
      {
        NSLog(@"sessionEventCallback: BTAccessoryManagerGetCaseSerialNumbersForAppleProductId failed result %u dataLen %zu error %@", CaseSerialNumbersForAppleProductIds, v22, v8);
      }

      else
      {
        NSLog(@"sessionEventCallback: BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds successful (%lu serial numbers retrieved)", [v9 count]);
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v17 + 1) + 8 * i);
              NSLog(@"sessionEventCallback: received serial number %@", v16);
              [g_findMySerialNumbers addObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v17 objects:v23 count:16];
          }

          while (v13);
        }

        dispatch_semaphore_signal(g_waitingForSerialsSema);
        if ([g_findMySerialNumbers count])
        {
          goto LABEL_23;
        }
      }

      dispatch_group_leave(g_waitingPeripheralsGroup);
LABEL_23:
    }
  }
}

id sub_1000019E4(uint64_t a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.BTLELoggingManager.xpc", 0, 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = mach_service;

  NSLog(@"attachmentsForParameters: XPC connection created: %@", *(*(a1 + 32) + 16));
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001ABC;
  handler[3] = &unk_1000082D8;
  handler[4] = v5;
  xpc_connection_set_event_handler(v6, handler);
  xpc_connection_resume(*(*(a1 + 32) + 16));
  return [*(a1 + 32) leLogRequest];
}

int64_t sub_100001B2C(id a1, DEAttachmentItem *a2, DEAttachmentItem *a3)
{
  v4 = a2;
  v5 = [(DEAttachmentItem *)a3 modificationDate];
  v6 = [(DEAttachmentItem *)v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t callingProcessIsTTR()
{
  if ([g_hostApp isEqualToString:@"com.apple.TapToRadar"])
  {
    return 1;
  }

  v1 = g_hostApp;

  return [(__CFString *)v1 isEqualToString:@"com.apple.taptoradard"];
}

void sub_10000246C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [v9 UUIDString];
        NSLog(@"centralManagerDidUpdateState: Connecting to UUID %@", v10);

        [*(*(a1 + 32) + 40) addObject:v8];
        [*(a1 + 40) connectPeripheral:v8 options:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(g_waitingPeripheralsGroup);
}