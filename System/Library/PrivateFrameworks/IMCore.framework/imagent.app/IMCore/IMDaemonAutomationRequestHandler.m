@interface IMDaemonAutomationRequestHandler
- (void)_automation_markMessagesAsRead:(BOOL)a3 messageGUID:(id)a4 forChatGUID:(id)a5 fromMe:(BOOL)a6 queryID:(id)a7;
- (void)_automation_receiveDictionary:(id)a3 options:(id)a4 fromID:(id)a5;
- (void)_automation_sendDictionary:(id)a3 options:(id)a4 toHandles:(id)a5;
- (void)beginRecordingMessagesToReplayDatabase:(id)a3;
- (void)debugUpdateGroupParticipantversion:(int64_t)a3 chatIdentifier:(id)a4;
- (void)relayMessageGUID:(id)a3 completion:(id)a4;
- (void)replayMessagesFromDatabasePath:(id)a3;
- (void)resetTranscriptBackgroundForAllChatsWithCompletion:(id)a3;
- (void)simulateAppDeletion;
- (void)simulateAppInstallation;
- (void)simulateDowngradeRequestFromID:(id)a3 fromService:(id)a4 toService:(id)a5 expirationDate:(id)a6;
- (void)simulateMessageDeliveryControllerDidFlushCacheForRemoteURI:(id)a3 fromURI:(id)a4 guid:(id)a5;
- (void)simulateMessageReceive:(id)a3 serviceName:(id)a4 groupID:(id)a5 handles:(id)a6 sender:(id)a7 date:(id)a8 associatedMessageType:(int64_t)a9 associatedMessageGuid:(id)a10;
- (void)simulateMessages:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)simulateReceivedPendingSatelliteMessageForChatWithGUID:(id)a3;
- (void)stopRecordingMessagesReplayDatabase;
- (void)test_firstUnlockCompleted;
- (void)updateOffGridSummaryOnChatWithGUID:(id)a3 pendingMessageCount:(int64_t)a4;
@end

@implementation IMDaemonAutomationRequestHandler

- (void)simulateMessageReceive:(id)a3 serviceName:(id)a4 groupID:(id)a5 handles:(id)a6 sender:(id)a7 date:(id)a8 associatedMessageType:(int64_t)a9 associatedMessageGuid:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Received request to simulate receiving a message with content %@ service %@ groupID: %@ handles %@", buf, 0x2Au);
    }
  }

  v23 = +[IMDChatRegistry sharedInstance];
  [v23 simulateMessageReceive:v15 serviceName:v16 groupID:v17 handles:v18 sender:v19 date:v20 associatedMessageType:a9 associatedMessageGuid:v21];
}

- (void)replayMessagesFromDatabasePath:(id)a3
{
  v3 = a3;
  v4 = +[NSString stringGUID];
  v5 = [v3 lastPathComponent];
  v6 = [NSString stringWithFormat:@"/tmp/%@-%@", v4, v5];

  v7 = +[NSFileManager defaultManager];
  LODWORD(v5) = [v7 copyItemAtPath:v3 toPath:v6 error:0];

  if (v5)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v3 stringByAppendingString:@"-wal"];
    v10 = [v6 stringByAppendingString:@"-wal"];
    [v8 copyItemAtPath:v9 toPath:v10 error:0];

    v11 = +[NSFileManager defaultManager];
    v12 = [v3 stringByAppendingString:@"-shm"];
    v13 = [v6 stringByAppendingString:@"-shm"];
    [v11 copyItemAtPath:v12 toPath:v13 error:0];

    v14 = +[IMDReplayController sharedInstance];
    [v14 overrideStorageControllerWithDatabaseFromPath:v6];

    v15 = +[IMDReplayController sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000074AC;
    v16[3] = &unk_1000817A0;
    v17 = v6;
    [v15 replayMessagesWithCompletion:v16];
  }
}

- (void)beginRecordingMessagesToReplayDatabase:(id)a3
{
  v3 = a3;
  v4 = +[IMDReplayController sharedInstance];
  [v4 overrideStorageControllerWithDatabaseFromPath:v3];

  v5 = +[IMDReplayController sharedInstance];
  [v5 startRecordingReplayDatabase];
}

- (void)stopRecordingMessagesReplayDatabase
{
  v2 = +[IMDReplayController sharedInstance];
  [v2 endRecordingReplayDatabase];

  v3 = +[IMDReplayController sharedInstance];
  [v3 restoreDefaultStoreControllerInstance];
}

- (void)_automation_receiveDictionary:(id)a3 options:(id)a4 fromID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 anySessionForServiceName:IMServiceNameiMessage];

  [v11 _automation_receiveDictionary:v9 options:v8 fromHandle:v7];
}

- (void)_automation_sendDictionary:(id)a3 options:(id)a4 toHandles:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 anySessionForServiceName:IMServiceNameiMessage];

  [v11 _automation_sendDictionary:v9 options:v8 toHandles:v7];
}

- (void)_automation_markMessagesAsRead:(BOOL)a3 messageGUID:(id)a4 forChatGUID:(id)a5 fromMe:(BOOL)a6 queryID:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = +[IMDClientRequestContext currentContext];
  v15 = [v14 replyProxy];

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = +[IMDClientRequestContext currentContext];
      v18 = [v17 listenerID];
      v19 = @"NO";
      *buf = 138413058;
      v31 = v18;
      if (v10)
      {
        v19 = @"YES";
      }

      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "AUTOMATION Request from %@ to mark as read: %@ messageGUID %@ chatGUID: %@", buf, 0x2Au);
    }
  }

  if (v10)
  {
    buf[0] = 0;
    IMComponentsFromChatGUID();
    v20 = 0;
    v21 = 0;
    if (a6)
    {
      v22 = +[IMDMessageStore sharedInstance];
      v27 = v12;
      v23 = [NSArray arrayWithObjects:&v27 count:1];
      v24 = +[NSDate date];
      v25 = [v22 markMessagesAsReadWithChatGUIDs:v23 upToGUID:v11 readDate:v24 fromMe:1];
    }

    else
    {
      v29 = v20;
      v22 = [NSArray arrayWithObjects:&v29 count:1];
      v26 = buf[0];
      v28 = v21;
      v23 = [NSArray arrayWithObjects:&v28 count:1];
      sub_100020560(v22, v26, v23, 0, 0, 0);
    }
  }

  else
  {
    IMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe();
  }

  [v15 _automation_markAsReadQuery:v13 finishedWithResult:1];
}

- (void)debugUpdateGroupParticipantversion:(int64_t)a3 chatIdentifier:(id)a4
{
  v18 = a4;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [NSNumber numberWithInteger:a3];
      *buf = 138412546;
      v28 = v18;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "debugUpdateGroupParticipantversion Request to update participant version of chat %@ to %@", buf, 0x16u);
    }
  }

  v7 = +[IMDChatRegistry sharedInstance];
  v20 = [v7 allExistingChatsWithIdentifier:v19 style:43];

  if ([v20 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v20;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [[NSNumber alloc] initWithUnsignedInteger:a3];
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v11 guid];
              *buf = 138412546;
              v28 = v14;
              v29 = 2048;
              v30 = a3;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Setting participant version of chat %@ to %ld", buf, 0x16u);
            }
          }

          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v16 = Mutable;
          if (v12)
          {
            CFDictionarySetValue(Mutable, @"pv", v12);
          }

          [v11 updateProperties:v16];
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Did not find chat with guid %@ to update version", buf, 0xCu);
    }
  }
}

- (void)test_firstUnlockCompleted
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "imtool requested first unlock simulation", v4, 2u);
    }
  }

  v3 = +[IMDChatRegistry sharedInstance];
  [v3 systemDidLeaveFirstDataProtectionLock];
}

- (void)simulateMessages:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_10004626C();
  v8 = sub_1000541B4();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a4;
  v11 = self;
  _sSo32IMDaemonAutomationRequestHandlerC7imagentE16simulateMessages_13configuration10completionySaySo18IMSimulatedMessageCG_So0jK13ConfigurationCSgys5Error_pSgctF_0(v8, a4, sub_1000462B8, v9);
}

- (void)updateOffGridSummaryOnChatWithGUID:(id)a3 pendingMessageCount:(int64_t)a4
{
  v6 = objc_opt_self();
  v7 = a3;
  v8 = [v6 sharedInstance];
  v9 = [v8 existingChatWithGUID:v7];

  if (v9)
  {
    [v9 updatePendingIncomingSatelliteMessageCount:a4];
  }
}

- (void)simulateReceivedPendingSatelliteMessageForChatWithGUID:(id)a3
{
  sub_100054164();
  v4 = self;
  _sSo32IMDaemonAutomationRequestHandlerC7imagentE46simulateReceivedPendingSatelliteMessageForChat8withGUIDySS_tF_0();
}

- (void)simulateDowngradeRequestFromID:(id)a3 fromService:(id)a4 toService:(id)a5 expirationDate:(id)a6
{
  v13 = self;
  v6 = sub_100053E44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054164();
  sub_100054164();
  sub_100054164();
  sub_100053E34();
  v11 = v13;
  _sSo32IMDaemonAutomationRequestHandlerC7imagentE017simulateDowngradeC06fromID0H7Service02toJ014expirationDateySS_S2S10Foundation0M0VtF_0();

  (*(v7 + 8))(v10, v6);
}

- (void)relayMessageGUID:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_100054164();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100045C9C(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)simulateAppDeletion
{
  v2 = type metadata accessor for ApplicationWorkspaceObserver();
  v3 = (*(v2 + 112))();
  (*((swift_isaMask & *v3) + 0xE0))();
}

- (void)simulateAppInstallation
{
  v2 = type metadata accessor for ApplicationWorkspaceObserver();
  v3 = (*(v2 + 112))();
  (*((swift_isaMask & *v3) + 0xD8))();
}

- (void)simulateMessageDeliveryControllerDidFlushCacheForRemoteURI:(id)a3 fromURI:(id)a4 guid:(id)a5
{
  sub_100054164();
  sub_100054164();
  sub_100054164();
  v6 = self;
  _sSo32IMDaemonAutomationRequestHandlerC7imagentE46simulateMessageDeliveryControllerDidFlushCache12forRemoteURI04fromO04guidySS_S2StF_0();
}

- (void)resetTranscriptBackgroundForAllChatsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1000460F4(v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end