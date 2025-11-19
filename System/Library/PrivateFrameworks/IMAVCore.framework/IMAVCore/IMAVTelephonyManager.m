@interface IMAVTelephonyManager
+ (IMAVTelephonyManager)sharedInstance;
- (IMAVTelephonyManager)init;
- (void)_chatStateChanged:(id)a3;
- (void)dealloc;
@end

@implementation IMAVTelephonyManager

+ (IMAVTelephonyManager)sharedInstance
{
  if (qword_28134A410 != -1)
  {
    sub_25477F8DC();
  }

  v3 = qword_28134A3E0;

  return v3;
}

- (IMAVTelephonyManager)init
{
  v10.receiver = self;
  v10.super_class = IMAVTelephonyManager;
  v6 = [(IMAVTelephonyManager *)&v10 init];
  if (v6)
  {
    v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v2, v3, v4, v5);
    objc_msgSend_addObserver_selector_name_object_(v7, v8, v6, sel__chatStateChanged_, @"__kIMAVChatStateChangedNotification", 0);
  }

  return v6;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, 0, 0);

  v12 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v8, v9, v10, v11);
  objc_msgSend_removeFastDormancyDisableToken_(v12, v13, @"kIMAVTelephonyManagerDormancyClient", v14, v15);

  v16.receiver = self;
  v16.super_class = IMAVTelephonyManager;
  [(IMAVTelephonyManager *)&v16 dealloc];
}

- (void)_chatStateChanged:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = objc_msgSend_sharedInstance(IMAVController, v4, v5, v6, v7);
  if (objc_msgSend__shouldRunConferences(v8, v9, v10, v11, v12))
  {

    goto LABEL_4;
  }

  v21 = objc_msgSend_sharedInstance(IMAVController, v13, v14, v15, v16);
  shouldRunACConferences = objc_msgSend__shouldRunACConferences(v21, v22, v23, v24, v25);

  if (shouldRunACConferences)
  {
LABEL_4:
    v27 = objc_msgSend_object(v3, v17, v18, v19, v20);
    if ((objc_msgSend__isProxy(v27, v28, v29, v30, v31) & 1) == 0)
    {
      v36 = objc_msgSend_state(v27, v32, v33, v34, v35);
      v37 = sub_254761764();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = _NSStringDescriptionForIMAVChatState(v36);
        v51 = 138412546;
        v52 = v38;
        v53 = 2112;
        v54 = v27;
        _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "Observed chat state change to: %@ for: %@", &v51, 0x16u);
      }

      if (v36 > 2)
      {
        if (v36 != 3)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v36 == 1)
      {
        goto LABEL_13;
      }

      if (v36 != 2)
      {
LABEL_14:
        v43 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v39, v40, v41, v42);
        objc_msgSend_removeFastDormancyDisableToken_(v43, v47, @"kIMAVTelephonyManagerDormancyClient", v48, v49);
        goto LABEL_15;
      }

      if (objc_msgSend_isCaller(v27, v39, v40, v41, v42))
      {
LABEL_13:
        v43 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v39, v40, v41, v42);
        objc_msgSend_addFastDormancyDisableToken_(v43, v44, @"kIMAVTelephonyManagerDormancyClient", v45, v46);
LABEL_15:
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

@end