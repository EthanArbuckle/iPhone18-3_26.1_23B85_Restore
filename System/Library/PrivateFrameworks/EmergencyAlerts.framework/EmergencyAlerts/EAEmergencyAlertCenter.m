@interface EAEmergencyAlertCenter
- (EAEmergencyAlertCenter)init;
- (EAEmergencyAlertCenter)initWithUserNotificationCenter:(id)a3;
- (id)getUpdatedNotificationForAppleSafetyAlert:(id)a3 withMessageDictionary:(id)a4;
- (id)handleCellBroadcastMessage:(id)a3 withCompletionHandler:(id)a4;
- (unint64_t)currentAudioAndVideoCallCount;
- (void)addNotificationRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)handleAppleSafetyAlertMessage:(id)a3;
- (void)handleRawCellBroadcastMessage:(id)a3 withCompletionHandler:(id)a4;
- (void)replaceContentForRequestWithRequestID:(id)a3 replacementContent:(id)a4 completionHandler:(id)a5;
@end

@implementation EAEmergencyAlertCenter

- (EAEmergencyAlertCenter)init
{
  EARegisterUserNotificationsLogging();
  v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.cmas"];
  v4 = [(EAEmergencyAlertCenter *)self initWithUserNotificationCenter:v3];

  return v4;
}

- (EAEmergencyAlertCenter)initWithUserNotificationCenter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EAEmergencyAlertCenter;
  v6 = [(EAEmergencyAlertCenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userNotificationCenter, a3);
  }

  return v7;
}

- (void)replaceContentForRequestWithRequestID:(id)a3 replacementContent:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  userNotificationCenter = self->_userNotificationCenter;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__EAEmergencyAlertCenter_replaceContentForRequestWithRequestID_replacementContent_completionHandler___block_invoke;
  v13[3] = &unk_278FC11B0;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(UNUserNotificationCenter *)userNotificationCenter replaceContentForRequestWithIdentifier:v12 replacementContent:a4 completionHandler:v13];
}

void __101__EAEmergencyAlertCenter_replaceContentForRequestWithRequestID_replacementContent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = EALogDefault;
  v5 = os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 32);
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    v7 = "Failed to replace Notification Content For Request Identifier (%@). Error = %@";
    v8 = v4;
    v9 = 22;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v13 = 138412290;
    v14 = v10;
    v7 = "Replaced Content for: %@";
    v8 = v4;
    v9 = 12;
  }

  _os_log_impl(&dword_249FC1000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
LABEL_7:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)getUpdatedNotificationForAppleSafetyAlert:(id)a3 withMessageDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 request];
  v8 = [v7 content];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    v10 = [v5 request];
    v11 = [v10 content];
    v12 = [v11 body];
    v13 = [v9 ea_getUpdatedBodyString:v12 withMessageDictionary:v6];

    [v9 setBody:v13];
    v14 = [v5 request];
    v15 = [v14 content];
    v16 = [v15 userInfo];
    v17 = [v16 mutableCopy];
    [v9 ea_updateUserInfo:v17 withMessageDictionary:v6];

    [v9 ea_updateAlertCategory:v6];
  }

  return v9;
}

- (void)handleAppleSafetyAlertMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"kCTSMSAppleSafetyAlertData"];
  v6 = [v5 objectForKeyedSubscript:@"CmamText"];
  v7 = ea_getHashForString(v6);

  v8 = [v5 objectForKeyedSubscript:@"CmamLongText"];
  v9 = ea_getHashForString(v8);

  if (v7 | v9)
  {
    userNotificationCenter = self->_userNotificationCenter;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke;
    v11[3] = &unk_278FC1220;
    v12 = v7;
    v13 = v9;
    v14 = self;
    v15 = v4;
    [(UNUserNotificationCenter *)userNotificationCenter getDeliveredNotificationsWithCompletionHandler:v11];
  }

  else if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
  {
    [EAEmergencyAlertCenter handleAppleSafetyAlertMessage:];
  }
}

void __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v41;
    *&v5 = 138412290;
    v34 = v5;
    v35 = *v41;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v41 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v40 + 1) + 8 * v8);
      v10 = [v9 request];
      v11 = [v10 identifier];
      if ([v11 rangeOfString:*(a1 + 32)] != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      [v9 request];
      v13 = v12 = v3;
      [v13 identifier];
      v15 = v14 = v6;
      v16 = [v15 rangeOfString:*(a1 + 40)];

      v6 = v14;
      v3 = v12;
      v7 = v35;

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_11;
      }

      v17 = EALogDefault;
      if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEBUG))
      {
        __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_cold_3(v44, v17, v9, &v45);
      }

LABEL_16:
      if (v6 == ++v8)
      {
        v6 = [v3 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

LABEL_11:
    v18 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v9 request];
      v21 = [v20 identifier];
      *buf = v34;
      v47 = v21;
      _os_log_impl(&dword_249FC1000, v19, OS_LOG_TYPE_DEFAULT, "Apple safety alert matches previous alert: %@", buf, 0xCu);
    }

    v22 = [v9 request];
    v23 = [v22 content];
    v24 = [v23 userInfo];

    if (v24)
    {
      v26 = [*(a1 + 48) getUpdatedNotificationForAppleSafetyAlert:v9 withMessageDictionary:*(a1 + 56)];
      v27 = EALogDefault;
      if (v26)
      {
        v28 = v26;
        if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v27;
          v30 = [v28 userInfo];
          *buf = v34;
          v47 = v30;
          _os_log_impl(&dword_249FC1000, v29, OS_LOG_TYPE_DEFAULT, "UserInfo dict: %@", buf, 0xCu);
        }

        v31 = dispatch_time(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_2;
        block[3] = &unk_278FC11F8;
        block[4] = *(a1 + 48);
        block[5] = v9;
        v37 = v28;
        v32 = v28;
        dispatch_after(v31, MEMORY[0x277D85CD0], block);
      }

      else if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
      {
        __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_cold_1();
      }

      goto LABEL_27;
    }

    v25 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
    {
      __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_cold_2(&v38, v39, v25);
    }

    goto LABEL_16;
  }

LABEL_18:

  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
  {
    __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_cold_4();
  }

LABEL_27:

  v33 = *MEMORY[0x277D85DE8];
}

void __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) request];
  v3 = [v5 identifier];
  v4 = [*(a1 + 48) copy];
  [v2 replaceContentForRequestWithRequestID:v3 replacementContent:v4 completionHandler:&__block_literal_global];
}

void __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = EALogDefault;
  if (v2)
  {
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
    {
      __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_2_cold_1(v2, v3);
    }
  }

  else if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_249FC1000, v3, OS_LOG_TYPE_DEFAULT, "Alert updated", v4, 2u);
  }
}

- (id)handleCellBroadcastMessage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249FC1000, v8, OS_LOG_TYPE_DEFAULT, "Handling cellbroadcast message", buf, 2u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v9 ea_setPropertiesForCellBroadcastMessage:v6 withActivePhoneCall:{-[EAEmergencyAlertCenter currentAudioAndVideoCallCount](self, "currentAudioAndVideoCallCount") != 0}];
  v10 = [v6 objectForKey:@"PreventScreenCapture"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_249FC1000, v12, OS_LOG_TYPE_DEFAULT, "Screen capture prohibited", v14, 2u);
    }

    [v9 setScreenCaptureProhibited:1];
  }

  return v9;
}

- (void)handleRawCellBroadcastMessage:(id)a3 withCompletionHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249FC1000, v8, OS_LOG_TYPE_DEFAULT, "Handling RAW cellbroadcast message", buf, 2u);
  }

  v9 = [v6 objectForKey:*MEMORY[0x277CC4120]];
  v10 = [v6 objectForKey:@"kCTSMSAppleSafetyAlertData"];
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      [(EAEmergencyAlertCenter *)self handleAppleSafetyAlertMessage:v6];
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
    {
      [EAEmergencyAlertCenter handleRawCellBroadcastMessage:withCompletionHandler:];
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else if (!v7)
    {
      goto LABEL_13;
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:-1 userInfo:0];
    v7[2](v7, 0, v25);

    goto LABEL_13;
  }

  v12 = [(EAEmergencyAlertCenter *)self handleCellBroadcastMessage:v6 withCompletionHandler:v7];
  v13 = [v12 body];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    [v15 timeIntervalSince1970];
    v17 = v16;

    v18 = MEMORY[0x277CCACA8];
    v19 = ea_getHashForString(v9);
    v20 = [v18 stringWithFormat:@"%@%f", v19, v17];

    v21 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v20 content:v12 trigger:0];
    v22 = EALogDefault;
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v21 identifier];
      *buf = 138543362;
      v30 = v24;
      _os_log_impl(&dword_249FC1000, v23, OS_LOG_TYPE_DEFAULT, "Adding notification request for emergency alert %{public}@", buf, 0xCu);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__EAEmergencyAlertCenter_handleRawCellBroadcastMessage_withCompletionHandler___block_invoke;
    v27[3] = &unk_278FC1248;
    v28 = v7;
    [(EAEmergencyAlertCenter *)self addNotificationRequest:v21 withCompletionHandler:v27];
  }

LABEL_14:

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __78__EAEmergencyAlertCenter_handleRawCellBroadcastMessage_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

- (unint64_t)currentAudioAndVideoCallCount
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentAudioAndVideoCallCount];

  return v3;
}

- (void)addNotificationRequest:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_userNotificationCenter)
  {
    v9 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__EAEmergencyAlertCenter_addNotificationRequest_withCompletionHandler___block_invoke;
    block[3] = &unk_278FC1298;
    block[4] = self;
    v11 = v6;
    v12 = v8;
    dispatch_async(v9, block);
  }

  else if (v7)
  {
    if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_ERROR))
    {
      [EAEmergencyAlertCenter addNotificationRequest:withCompletionHandler:];
    }

    v8[2](v8, 0, 0);
  }
}

void __71__EAEmergencyAlertCenter_addNotificationRequest_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__EAEmergencyAlertCenter_addNotificationRequest_withCompletionHandler___block_invoke_2;
  v3[3] = &unk_278FC1270;
  v4 = *(a1 + 48);
  [v2 addNotificationRequest:v1 withCompletionHandler:v3];
}

uint64_t __71__EAEmergencyAlertCenter_addNotificationRequest_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

void __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_249FC1000, log, OS_LOG_TYPE_ERROR, "Missing UserInfo", buf, 2u);
}

void __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_cold_3(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 request];
  v9 = [v8 identifier];
  *a1 = 138412290;
  *a4 = v9;
  _os_log_debug_impl(&dword_249FC1000, v7, OS_LOG_TYPE_DEBUG, "Apple safety alert did not match previous alert: %@", a1, 0xCu);
}

void __56__EAEmergencyAlertCenter_handleAppleSafetyAlertMessage___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_249FC1000, a2, OS_LOG_TYPE_ERROR, "Error while updating the notification content: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end