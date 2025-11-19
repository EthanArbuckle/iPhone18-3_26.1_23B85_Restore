@interface IMDRecordZoneManager
+ (IMDRecordZoneManager)sharedInstance;
- (APSConnection)pushConnection;
- (IMDCKDatabaseManager)dataBaseManager;
- (IMDRecordZoneManager)init;
- (int64_t)derivedQualityOfService;
- (void)_checkRecordZoneExists:(id)a3 completionBlock:(id)a4;
- (void)_createRecordZone:(id)a3 completionBlock:(id)a4;
- (void)_createRecordZoneIfNeeded:(id)a3 completionBlock:(id)a4;
- (void)_createSubscriptionForZoneID:(id)a3 subscriptionID:(id)a4 recordType:(id)a5 completionBlock:(id)a6;
- (void)_createSubscriptionIfNeededForZoneID:(id)a3 subscriptionID:(id)a4 recordType:(id)a5 completionBlock:(id)a6;
- (void)_deleteAllZonesForDatabase:(id)a3;
- (void)_deleteZone:(id)a3;
- (void)_deleteZone:(id)a3 forDatabase:(id)a4;
- (void)_handleNotificationForZoneID:(id)a3 subscriptionID:(id)a4;
- (void)_setUpPushConnection;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)createAnalyticZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createAttachmentZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createChatBotAttachmentZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createChatBotMessageZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createChatBotRecoverableMessageZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createChatZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createDeDupeSaltZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createMessageZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createRecoverableMessageZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createScheduledMessageZoneIfNeededWithCompletionBlock:(id)a3;
- (void)createSubscriptionIfNeededOnDeDupeZoneForSubscription:(id)a3 recordType:(id)a4 completionBlock:(id)a5;
- (void)createUpdateZoneIfNeededWithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)deleteAllZones;
- (void)deleteAnalyticZone;
- (void)deleteAttachmentZone;
- (void)deleteChat1Zone;
- (void)deleteChatBotAttachmentZone;
- (void)deleteChatBotMessageZone;
- (void)deleteChatBotRecoverableMessageZone;
- (void)deleteChatZone;
- (void)deleteDeDupeSaltZone;
- (void)deleteMessageZone;
- (void)deleteRecoverableMessageZone;
- (void)deleteScheduledMessageZone;
- (void)deleteUpdateZone;
- (void)fetchChatZoneToCheckManateeStatus:(id)a3;
@end

@implementation IMDRecordZoneManager

+ (IMDRecordZoneManager)sharedInstance
{
  if (qword_281421110 != -1)
  {
    sub_22B7D0724();
  }

  return qword_281420F80;
}

- (IMDRecordZoneManager)init
{
  v7.receiver = self;
  v7.super_class = IMDRecordZoneManager;
  v2 = [(IMDRecordZoneManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_dataBaseManager = 0;
    v4 = objc_alloc(MEMORY[0x277CBC5F8]);
    v5 = *MEMORY[0x277CBBF28];
    v3->_chatRecordZoneID = [v4 initWithZoneName:@"chatManateeZone" ownerName:*MEMORY[0x277CBBF28]];
    v3->_chatRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_chatRecordZoneID];
    v3->_chat1RecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"chat1ManateeZone" ownerName:v5];
    v3->_chat1RecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_chat1RecordZoneID];
    v3->_messageRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"messageManateeZone" ownerName:v5];
    v3->_messageRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_messageRecordZoneID];
    v3->_attachmentRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"attachmentManateeZone" ownerName:v5];
    v3->_attachmentRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_attachmentRecordZoneID];
    v3->_updateRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"messageUpdateZone" ownerName:v5];
    v3->_updateRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_updateRecordZoneID];
    v3->_analyticRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"analyticManateeZone" ownerName:v5];
    v3->_analyticRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_analyticRecordZoneID];
    v3->_deDupeSaltZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"RecordKeyManateeZone" ownerName:v5];
    v3->_deDupeSaltRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_deDupeSaltZoneID];
    v3->_metricZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"MetricsManateeZone" ownerName:v5];
    v3->_recoverableMessageRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"recoverableMessageDeleteZone" ownerName:v5];
    v3->_recoverableMessageRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_recoverableMessageRecordZoneID];
    v3->_scheduledMessageRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"scheduledMessageZone" ownerName:v5];
    v3->_scheduledMessageRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_scheduledMessageRecordZoneID];
    v3->_chatBotMessageRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"chatBotMessageZone" ownerName:v5];
    v3->_chatBotMessageRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_chatBotMessageRecordZoneID];
    v3->_chatBotAttachmentRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"chatBotAttachmentZone" ownerName:v5];
    v3->_chatBotAttachmentRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_chatBotAttachmentRecordZoneID];
    v3->_chatBotRecoverableMessageRecordZoneID = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:@"chatBotRecoverableMessageDeleteZone" ownerName:v5];
    v3->_chatBotRecoverableMessageRecordZone = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v3->_chatBotRecoverableMessageRecordZoneID];
    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      [(IMDRecordZoneManager *)v3 _setUpPushConnection];
    }
  }

  return v3;
}

- (IMDCKDatabaseManager)dataBaseManager
{
  result = self->_dataBaseManager;
  if (!result)
  {
    result = +[IMDCKDatabaseManager sharedInstance];
    self->_dataBaseManager = result;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDRecordZoneManager;
  [(IMDRecordZoneManager *)&v3 dealloc];
}

- (APSConnection)pushConnection
{
  if (!self->_pushConnection)
  {
    v3 = objc_alloc(MEMORY[0x277CEEA10]);
    v4 = [v3 initWithEnvironmentName:*MEMORY[0x277CEE9F0] namedDelegatePort:@"com.apple.aps.imagent" queue:MEMORY[0x277D85CD0]];
    self->_pushConnection = v4;
    [(APSConnection *)v4 setDelegate:self];
    if (!self->_pushConnection)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "We couldn't create the push connection for the IMDRecordZoneManager", v7, 2u);
        }
      }
    }
  }

  return self->_pushConnection;
}

- (void)_setUpPushConnection
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [(IMDRecordZoneManager *)self pushConnection];
  v3 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (![v3 length])
  {
    v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  }

  v11[0] = [@"com.apple.icloud-container." stringByAppendingString:v3];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(APSConnection *)v2 setEnabledTopics:v4];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v2;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Created push connection %@ with enabled topics %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "APSConnection didReceivePublicToken", v5, 2u);
    }
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a4 userInfo];
  v6 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:v5];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "APSConnection didReceiveIncomingMessage pushPayload: %@ ckNotification: %@", &v11, 0x16u);
    }
  }

  if ([v6 notificationType] == 2)
  {
    -[IMDRecordZoneManager _handleNotificationForZoneID:subscriptionID:](self, "_handleNotificationForZoneID:subscriptionID:", [v6 recordZoneID], objc_msgSend(v6, "subscriptionID"));
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "notificationType")}];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received a notification for an unsupported notitifcation type: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotificationForZoneID:(id)a3 subscriptionID:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = a3;
      v12 = 2112;
      v13 = a4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Received a notification for zoneID: %@ for subscriptionID: %@", &v10, 0x16u);
    }
  }

  if ([a3 isEqual:{-[IMDRecordZoneManager deDupeSaltZoneID](self, "deDupeSaltZoneID")}])
  {
    [+[IMDCKExitManager sharedInstance](IMDCKExitManager handleNotificationForSubscriptionID:"handleNotificationForSubscriptionID:", a4];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = a3;
      v12 = 2112;
      v13 = a4;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received a notification for zoneID we haven't set up: %@ subscriptionID: %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_createSubscriptionForZoneID:(id)a3 subscriptionID:(id)a4 recordType:(id)a5 completionBlock:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = [objc_alloc(MEMORY[0x277CBC618]) initWithZoneID:a3 subscriptionID:a4];
  if ([a5 length])
  {
    [v10 setRecordType:a5];
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = a3;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Creating subscription: %@ for zoneID: %@", buf, 0x16u);
    }
  }

  v12 = [(IMDCKDatabaseManager *)[(IMDRecordZoneManager *)self dataBaseManager] truthDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22B52BD58;
  v14[3] = &unk_278703990;
  v14[4] = a6;
  [v12 saveSubscription:v10 completionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_createSubscriptionIfNeededForZoneID:(id)a3 subscriptionID:(id)a4 recordType:(id)a5 completionBlock:(id)a6
{
  v11 = [(IMDCKDatabaseManager *)[(IMDRecordZoneManager *)self dataBaseManager] truthDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B52BF60;
  v12[3] = &unk_2787039B8;
  v12[7] = a5;
  v12[8] = a6;
  v12[4] = a4;
  v12[5] = self;
  v12[6] = a3;
  [v11 fetchSubscriptionWithID:a4 completionHandler:v12];
}

- (void)_checkRecordZoneExists:(id)a3 completionBlock:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v7 = objc_alloc(MEMORY[0x277CBC3D0]);
    v19[0] = a3;
    v8 = [v7 initWithRecordZoneIDs:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v19, 1)}];
    v9 = objc_alloc_init(MEMORY[0x277CBC4F0]);
    [v9 setAllowsCellularAccess:1];
    [v9 setQualityOfService:{-[IMDRecordZoneManager derivedQualityOfService](self, "derivedQualityOfService")}];
    [v8 setConfiguration:v9];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 138412546;
        v16 = [v8 operationID];
        v17 = 2112;
        v18 = [v8 recordZoneIDs];
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Created CKFetchRecordZonesOperation operation ID %@ zoneID %@", &v15, 0x16u);
      }
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B52C404;
    v14[3] = &unk_2787039E0;
    v14[4] = a3;
    v14[5] = a4;
    [v8 setFetchRecordZonesCompletionBlock:v14];
    if (v8)
    {
      [-[IMDCKDatabaseManager truthDatabase](-[IMDRecordZoneManager dataBaseManager](self "dataBaseManager")];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Error initializing fetchOperation ", &v15, 2u);
        }
      }

      (*(a4 + 2))(a4, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.IM.IMRecordZoneManagerErrorDomain" code:1 userInfo:0]);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = a3;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_checkRecordZoneExists invalid parameter: recordZoneID %@", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_createRecordZone:(id)a3 completionBlock:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = objc_alloc(MEMORY[0x277CBC490]);
  v12[0] = a3;
  v8 = [v7 initWithRecordZonesToSave:objc_msgSend(MEMORY[0x277CBEA60] recordZoneIDsToDelete:{"arrayWithObjects:count:", v12, 1), 0}];
  v9 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v9 setAllowsCellularAccess:1];
  [v9 setQualityOfService:{-[IMDRecordZoneManager derivedQualityOfService](self, "derivedQualityOfService")}];
  [v8 setConfiguration:v9];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B52C6FC;
  v11[3] = &unk_278703A08;
  v11[4] = a3;
  v11[5] = a4;
  [v8 setModifyRecordZonesCompletionBlock:v11];
  [-[IMDCKDatabaseManager truthDatabase](-[IMDRecordZoneManager dataBaseManager](self "dataBaseManager")];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_createRecordZoneIfNeeded:(id)a3 completionBlock:(id)a4
{
  v7 = [a3 zoneID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B52C910;
  v8[3] = &unk_278703A58;
  v8[4] = v7;
  v8[5] = a3;
  v8[6] = self;
  v8[7] = a4;
  [(IMDRecordZoneManager *)self _checkRecordZoneExists:v7 completionBlock:v8];
}

- (void)_deleteZone:(id)a3
{
  [+[IMDCKDatabaseManager sharedInstance](IMDCKDatabaseManager truthDatabase];

  MEMORY[0x2821F9670](self, sel__deleteZone_forDatabase_);
}

- (void)_deleteZone:(id)a3 forDatabase:(id)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [a3 zoneID];
  v6 = objc_alloc(MEMORY[0x277CBC490]);
  v9[0] = v5;
  v7 = [v6 initWithRecordZonesToSave:0 recordZoneIDsToDelete:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v9, 1)}];
  [v7 setModifyRecordZonesCompletionBlock:&unk_283F19868];
  [a4 addOperation:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)createChatZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self chatRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteChatZone
{
  [(IMDRecordZoneManager *)self chatRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)deleteChat1Zone
{
  [(IMDRecordZoneManager *)self chat1RecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createAttachmentZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self attachmentRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteAttachmentZone
{
  [(IMDRecordZoneManager *)self attachmentRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createMessageZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self messageRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteMessageZone
{
  [(IMDRecordZoneManager *)self messageRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createUpdateZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self updateRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteUpdateZone
{
  [(IMDRecordZoneManager *)self updateRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createAnalyticZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self analyticRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteAnalyticZone
{
  [(IMDRecordZoneManager *)self analyticRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createDeDupeSaltZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self deDupeSaltRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteDeDupeSaltZone
{
  [(IMDRecordZoneManager *)self deDupeSaltRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createSubscriptionIfNeededOnDeDupeZoneForSubscription:(id)a3 recordType:(id)a4 completionBlock:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = a3;
      v13 = 2112;
      v14 = a4;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Going to create subscription on deDupe zone for subscriptionID: %@ recordType: %@", &v11, 0x16u);
    }
  }

  [(IMDRecordZoneManager *)self _createSubscriptionIfNeededForZoneID:[(IMDRecordZoneManager *)self deDupeSaltZoneID] subscriptionID:a3 recordType:a4 completionBlock:a5];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)createRecoverableMessageZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self recoverableMessageRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteRecoverableMessageZone
{
  [(IMDRecordZoneManager *)self recoverableMessageRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createScheduledMessageZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self scheduledMessageRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteScheduledMessageZone
{
  [(IMDRecordZoneManager *)self scheduledMessageRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createChatBotMessageZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self chatBotMessageRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteChatBotMessageZone
{
  [(IMDRecordZoneManager *)self chatBotMessageRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createChatBotAttachmentZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self chatBotAttachmentRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteChatBotAttachmentZone
{
  [(IMDRecordZoneManager *)self chatBotAttachmentRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)createChatBotRecoverableMessageZoneIfNeededWithCompletionBlock:(id)a3
{
  [(IMDRecordZoneManager *)self chatBotRecoverableMessageRecordZone];

  MEMORY[0x2821F9670](self, sel__createRecordZoneIfNeeded_completionBlock_);
}

- (void)deleteChatBotRecoverableMessageZone
{
  [(IMDRecordZoneManager *)self chatBotRecoverableMessageRecordZone];

  MEMORY[0x2821F9670](self, sel__deleteZone_);
}

- (void)deleteAllZones
{
  [(IMDCKDatabaseManager *)[(IMDRecordZoneManager *)self dataBaseManager] truthDatabase];

  MEMORY[0x2821F9670](self, sel__deleteAllZonesForDatabase_);
}

- (void)_deleteAllZonesForDatabase:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{-[IMDRecordZoneManager chatRecordZoneID](self, "chatRecordZoneID"), -[IMDRecordZoneManager chat1RecordZoneID](self, "chat1RecordZoneID"), -[IMDRecordZoneManager messageRecordZoneID](self, "messageRecordZoneID"), -[IMDRecordZoneManager attachmentRecordZoneID](self, "attachmentRecordZoneID"), -[IMDRecordZoneManager updateRecordZoneID](self, "updateRecordZoneID"), -[IMDRecordZoneManager recoverableMessageRecordZoneID](self, "recoverableMessageRecordZoneID"), -[IMDRecordZoneManager scheduledMessageRecordZoneID](self, "scheduledMessageRecordZoneID"), -[IMDRecordZoneManager chatBotMessageRecordZoneID](self, "chatBotMessageRecordZoneID"), -[IMDRecordZoneManager chatBotAttachmentRecordZoneID](self, "chatBotAttachmentRecordZoneID"), -[IMDRecordZoneManager chatBotRecoverableMessageRecordZoneID](self, "chatBotRecoverableMessageRecordZoneID"), 0}];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = a3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Request to delete zones %@ for database %@", buf, 0x16u);
    }
  }

  v6 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:0 recordZoneIDsToDelete:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B52D7C0;
  v8[3] = &unk_278703AA0;
  v8[4] = a3;
  [v6 setModifyRecordZonesCompletionBlock:v8];
  [a3 addOperation:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (int64_t)derivedQualityOfService
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  if (v2 <= 17)
  {
    v3 = 17;
  }

  else
  {
    v3 = v2;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 134218240;
      v8 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
      v9 = 2048;
      v10 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "QOS: 0x%lX target qos: 0x%lX", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)fetchChatZoneToCheckManateeStatus:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = [(IMDRecordZoneManager *)self chatRecordZoneID];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [objc_alloc(MEMORY[0x277CBC3D0]) initWithRecordZoneIDs:v5];
  v7 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v7 setQualityOfService:{-[IMDRecordZoneManager derivedQualityOfService](self, "derivedQualityOfService")}];
  [v7 setAllowsCellularAccess:1];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Attempting to infer manatee status by fetching chat zone.", buf, 2u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B52DC40;
  v10[3] = &unk_2787039E0;
  v10[4] = self;
  v10[5] = a3;
  [v6 setFetchRecordZonesCompletionBlock:v10];
  [-[IMDCKDatabaseManager truthDatabase](-[IMDRecordZoneManager dataBaseManager](self "dataBaseManager")];

  v9 = *MEMORY[0x277D85DE8];
}

@end