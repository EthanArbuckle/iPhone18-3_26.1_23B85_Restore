@interface IMDaemonAutomationRequestHandler
- (void)_automation_markMessagesAsRead:(BOOL)read messageGUID:(id)d forChatGUID:(id)iD fromMe:(BOOL)me queryID:(id)queryID;
- (void)_automation_receiveDictionary:(id)dictionary options:(id)options fromID:(id)d;
- (void)_automation_sendDictionary:(id)dictionary options:(id)options toHandles:(id)handles;
- (void)beginRecordingMessagesToReplayDatabase:(id)database;
- (void)debugUpdateGroupParticipantversion:(int64_t)participantversion chatIdentifier:(id)identifier;
- (void)relayMessageGUID:(id)d completion:(id)completion;
- (void)replayMessagesFromDatabasePath:(id)path;
- (void)resetTranscriptBackgroundForAllChatsWithCompletion:(id)completion;
- (void)simulateAppDeletion;
- (void)simulateAppInstallation;
- (void)simulateDowngradeRequestFromID:(id)d fromService:(id)service toService:(id)toService expirationDate:(id)date;
- (void)simulateMessageDeliveryControllerDidFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid;
- (void)simulateMessageReceive:(id)receive serviceName:(id)name groupID:(id)d handles:(id)handles sender:(id)sender date:(id)date associatedMessageType:(int64_t)type associatedMessageGuid:(id)self0;
- (void)simulateMessages:(id)messages configuration:(id)configuration completion:(id)completion;
- (void)simulateReceivedPendingSatelliteMessageForChatWithGUID:(id)d;
- (void)stopRecordingMessagesReplayDatabase;
- (void)test_firstUnlockCompleted;
- (void)updateOffGridSummaryOnChatWithGUID:(id)d pendingMessageCount:(int64_t)count;
@end

@implementation IMDaemonAutomationRequestHandler

- (void)simulateMessageReceive:(id)receive serviceName:(id)name groupID:(id)d handles:(id)handles sender:(id)sender date:(id)date associatedMessageType:(int64_t)type associatedMessageGuid:(id)self0
{
  receiveCopy = receive;
  nameCopy = name;
  dCopy = d;
  handlesCopy = handles;
  senderCopy = sender;
  dateCopy = date;
  guidCopy = guid;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v25 = receiveCopy;
      v26 = 2112;
      v27 = nameCopy;
      v28 = 2112;
      v29 = dCopy;
      v30 = 2112;
      v31 = handlesCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Received request to simulate receiving a message with content %@ service %@ groupID: %@ handles %@", buf, 0x2Au);
    }
  }

  v23 = +[IMDChatRegistry sharedInstance];
  [v23 simulateMessageReceive:receiveCopy serviceName:nameCopy groupID:dCopy handles:handlesCopy sender:senderCopy date:dateCopy associatedMessageType:type associatedMessageGuid:guidCopy];
}

- (void)replayMessagesFromDatabasePath:(id)path
{
  pathCopy = path;
  v4 = +[NSString stringGUID];
  lastPathComponent = [pathCopy lastPathComponent];
  v6 = [NSString stringWithFormat:@"/tmp/%@-%@", v4, lastPathComponent];

  v7 = +[NSFileManager defaultManager];
  LODWORD(lastPathComponent) = [v7 copyItemAtPath:pathCopy toPath:v6 error:0];

  if (lastPathComponent)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [pathCopy stringByAppendingString:@"-wal"];
    v10 = [v6 stringByAppendingString:@"-wal"];
    [v8 copyItemAtPath:v9 toPath:v10 error:0];

    v11 = +[NSFileManager defaultManager];
    v12 = [pathCopy stringByAppendingString:@"-shm"];
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

- (void)beginRecordingMessagesToReplayDatabase:(id)database
{
  databaseCopy = database;
  v4 = +[IMDReplayController sharedInstance];
  [v4 overrideStorageControllerWithDatabaseFromPath:databaseCopy];

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

- (void)_automation_receiveDictionary:(id)dictionary options:(id)options fromID:(id)d
{
  dCopy = d;
  optionsCopy = options;
  dictionaryCopy = dictionary;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 anySessionForServiceName:IMServiceNameiMessage];

  [v11 _automation_receiveDictionary:dictionaryCopy options:optionsCopy fromHandle:dCopy];
}

- (void)_automation_sendDictionary:(id)dictionary options:(id)options toHandles:(id)handles
{
  handlesCopy = handles;
  optionsCopy = options;
  dictionaryCopy = dictionary;
  v10 = +[IMDAccountController sharedAccountController];
  v11 = [v10 anySessionForServiceName:IMServiceNameiMessage];

  [v11 _automation_sendDictionary:dictionaryCopy options:optionsCopy toHandles:handlesCopy];
}

- (void)_automation_markMessagesAsRead:(BOOL)read messageGUID:(id)d forChatGUID:(id)iD fromMe:(BOOL)me queryID:(id)queryID
{
  readCopy = read;
  dCopy = d;
  iDCopy = iD;
  queryIDCopy = queryID;
  v14 = +[IMDClientRequestContext currentContext];
  replyProxy = [v14 replyProxy];

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = +[IMDClientRequestContext currentContext];
      listenerID = [v17 listenerID];
      v19 = @"NO";
      *buf = 138413058;
      v31 = listenerID;
      if (readCopy)
      {
        v19 = @"YES";
      }

      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = dCopy;
      v36 = 2112;
      v37 = iDCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "AUTOMATION Request from %@ to mark as read: %@ messageGUID %@ chatGUID: %@", buf, 0x2Au);
    }
  }

  if (readCopy)
  {
    buf[0] = 0;
    IMComponentsFromChatGUID();
    v20 = 0;
    v21 = 0;
    if (me)
    {
      v22 = +[IMDMessageStore sharedInstance];
      v27 = iDCopy;
      v23 = [NSArray arrayWithObjects:&v27 count:1];
      v24 = +[NSDate date];
      v25 = [v22 markMessagesAsReadWithChatGUIDs:v23 upToGUID:dCopy readDate:v24 fromMe:1];
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

  [replyProxy _automation_markAsReadQuery:queryIDCopy finishedWithResult:1];
}

- (void)debugUpdateGroupParticipantversion:(int64_t)participantversion chatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [NSNumber numberWithInteger:participantversion];
      *buf = 138412546;
      v28 = identifierCopy;
      v29 = 2112;
      participantversionCopy = v6;
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
          v12 = [[NSNumber alloc] initWithUnsignedInteger:participantversion];
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              guid = [v11 guid];
              *buf = 138412546;
              v28 = guid;
              v29 = 2048;
              participantversionCopy = participantversion;
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

- (void)simulateMessages:(id)messages configuration:(id)configuration completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_10004626C();
  v8 = sub_1000541B4();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  configurationCopy = configuration;
  selfCopy = self;
  _sSo32IMDaemonAutomationRequestHandlerC7imagentE16simulateMessages_13configuration10completionySaySo18IMSimulatedMessageCG_So0jK13ConfigurationCSgys5Error_pSgctF_0(v8, configuration, sub_1000462B8, v9);
}

- (void)updateOffGridSummaryOnChatWithGUID:(id)d pendingMessageCount:(int64_t)count
{
  v6 = objc_opt_self();
  dCopy = d;
  sharedInstance = [v6 sharedInstance];
  v9 = [sharedInstance existingChatWithGUID:dCopy];

  if (v9)
  {
    [v9 updatePendingIncomingSatelliteMessageCount:count];
  }
}

- (void)simulateReceivedPendingSatelliteMessageForChatWithGUID:(id)d
{
  sub_100054164();
  selfCopy = self;
  _sSo32IMDaemonAutomationRequestHandlerC7imagentE46simulateReceivedPendingSatelliteMessageForChat8withGUIDySS_tF_0();
}

- (void)simulateDowngradeRequestFromID:(id)d fromService:(id)service toService:(id)toService expirationDate:(id)date
{
  selfCopy = self;
  v6 = sub_100053E44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100054164();
  sub_100054164();
  sub_100054164();
  sub_100053E34();
  v11 = selfCopy;
  _sSo32IMDaemonAutomationRequestHandlerC7imagentE017simulateDowngradeC06fromID0H7Service02toJ014expirationDateySS_S2S10Foundation0M0VtF_0();

  (*(v7 + 8))(v10, v6);
}

- (void)relayMessageGUID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_100054164();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
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

- (void)simulateMessageDeliveryControllerDidFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid
{
  sub_100054164();
  sub_100054164();
  sub_100054164();
  selfCopy = self;
  _sSo32IMDaemonAutomationRequestHandlerC7imagentE46simulateMessageDeliveryControllerDidFlushCache12forRemoteURI04fromO04guidySS_S2StF_0();
}

- (void)resetTranscriptBackgroundForAllChatsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1000460F4(v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end