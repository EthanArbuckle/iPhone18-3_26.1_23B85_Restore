@interface IMSimulatedDaemonController
+ (id)dictionaryForChat:(id)a3;
+ (id)sharedInstance;
+ (void)beginSimulatingDaemon;
- (unsigned)capabilitiesForListenerID:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)sendBalloonPayload:(id)a3 attachments:(id)a4 withMessageGUID:(id)a5 bundleID:(id)a6;
@end

@implementation IMSimulatedDaemonController

+ (id)sharedInstance
{
  if (qword_1ED7678A0 != -1)
  {
    sub_1A84E0CC8();
  }

  v3 = qword_1ED767850;

  return v3;
}

+ (void)beginSimulatingDaemon
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A830C150;
  block[3] = &unk_1E78102B8;
  block[4] = a1;
  if (qword_1EB2EA2E0 != -1)
  {
    dispatch_once(&qword_1EB2EA2E0, block);
  }
}

- (void)forwardInvocation:(id)a3
{
  v3 = objc_msgSend_selector(a3, a2, a3);
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0CDC(v3, v4);
  }
}

+ (id)dictionaryForChat:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8 = objc_msgSend_account(v4, v6, v7);
  v11 = objc_msgSend_uniqueID(v8, v9, v10);
  objc_msgSend_setObject_forKey_(v5, v12, v11, @"accountdID");

  v15 = objc_msgSend_chatIdentifier(v4, v13, v14);
  objc_msgSend_setObject_forKey_(v5, v16, v15, @"chatIdentifier");

  v19 = objc_msgSend_guid(v4, v17, v18);
  objc_msgSend_setObject_forKey_(v5, v20, v19, @"guid");

  v21 = MEMORY[0x1E696AD98];
  v24 = objc_msgSend_chatStyle(v4, v22, v23);
  v26 = objc_msgSend_numberWithInteger_(v21, v25, v24);
  objc_msgSend_setObject_forKey_(v5, v27, v26, @"style");

  v28 = MEMORY[0x1E696AD98];
  v31 = objc_msgSend_joinState(v4, v29, v30);

  v33 = objc_msgSend_numberWithInteger_(v28, v32, v31);
  objc_msgSend_setObject_forKey_(v5, v34, v33, @"chatIdentifier");

  return v5;
}

- (void)sendBalloonPayload:(id)a3 attachments:(id)a4 withMessageGUID:(id)a5 bundleID:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = objc_msgSend_listeners(self, v14, v15, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v24, v28, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_simulatedDaemon_willSendBalloonPayload_attachments_messageGUID_bundleID_(*(*(&v24 + 1) + 8 * v22++), v19, self, v10, v11, v12, v13);
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v24, v28, 16);
    }

    while (v20);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (unsigned)capabilitiesForListenerID:(id)a3
{
  v4.receiver = self;
  v4.super_class = IMSimulatedDaemonController;
  return *MEMORY[0x1E69A62B0] | [(IMDaemonController *)&v4 capabilitiesForListenerID:a3]| *MEMORY[0x1E69A6260];
}

@end