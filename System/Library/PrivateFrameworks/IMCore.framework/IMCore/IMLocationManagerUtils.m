@interface IMLocationManagerUtils
+ (id)sharedInstance;
- (void)sendCurrentLocationMessageWithChat:(id)a3 withLocationManager:(id)a4 withSourceApplicationIdentifier:(id)a5 foregroundAssertionForBundleIdentifier:(id)a6 completion:(id)a7;
@end

@implementation IMLocationManagerUtils

+ (id)sharedInstance
{
  if (qword_1ED767930 != -1)
  {
    sub_1A84E0648();
  }

  v3 = qword_1ED7678D0;

  return v3;
}

- (void)sendCurrentLocationMessageWithChat:(id)a3 withLocationManager:(id)a4 withSourceApplicationIdentifier:(id)a5 foregroundAssertionForBundleIdentifier:(id)a6 completion:(id)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v11;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Client request to send current location for chat %@", buf, 0xCu);
    }
  }

  v19 = objc_msgSend_currentLocationGUID(v11, v16, v17);
  v20 = v19 == 0;

  if (v20)
  {
    v27 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v21, v22);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1A8303554;
    v35[3] = &unk_1E78120D0;
    v36 = v11;
    v37 = v27;
    v38 = v13;
    v39 = v15;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1A83037E8;
    v31[3] = &unk_1E78120F8;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v28 = v37;
    objc_msgSend_startUpdatingCurrentLocationWithForegroundAssertionForBundleIdentifier_withAuthorizedHandler_updateHandler_(v12, v29, v14, v35, v31);
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v26 = objc_msgSend_currentLocationGUID(v11, v24, v25);
      *buf = 138412290;
      v41 = v26;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, " => we are already sending a current location for this chat, ignoring (%@)", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

@end