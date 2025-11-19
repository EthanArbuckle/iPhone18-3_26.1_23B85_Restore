@interface IMDChorosController
+ (BOOL)needToOpenChatForService:(int64_t)a3 questionnaireDictionary:(id)a4;
+ (BOOL)supportsService:(int64_t)a3;
+ (id)chatSubjectForService:(int64_t)a3;
+ (id)conversationIDDefaultsKeyForService:(int64_t)a3;
+ (id)conversationIDToUUIDsDefaultsKeyForService:(int64_t)a3;
+ (id)generateCTStewieStartMessage:(id)a3 forService:(int64_t)a4 error:(id *)a5;
+ (id)generatePresentationForEmergencyQuestionnaire:(id)a3;
+ (id)generatePresentationForRoadsideQuestionnaire:(id)a3;
+ (id)generatePresentationForStewieQuestionnaire:(id)a3 forService:(int64_t)a4;
+ (id)incomingSequenceNumberDefaultsKeyForService:(int64_t)a3;
+ (id)nameForService:(int64_t)a3;
+ (id)outgoingSequenceNumberDefaultsKeyForService:(int64_t)a3;
+ (id)roadsideProviderIDFromChatIdentifier:(id)a3;
+ (id)sharedController;
+ (int64_t)serviceFromChatIdentifier:(id)a3;
+ (void)recordOffGridTimeFor:(id)a3;
- (BOOL)_createChatIfNecessary:(id)a3 chatIdentifier:(id)a4 service:(int64_t)a5;
- (BOOL)_isMessageStewieCompatible:(id)a3;
- (BOOL)isLiteMessageActiveOverSatellite;
- (BOOL)isSatelliteConnectionActive;
- (BOOL)isStewieActive;
- (IMDChorosController)init;
- (id)_generateLocationUpdateSentStatusItemForChat:(id)a3;
- (id)_generateStopTranscriptSharingStatusItemForChat:(id)a3;
- (id)_simNumber;
- (id)conversationIDToConversationUUIDMapForService:(int64_t)a3;
- (id)conversationUUIDForConversationID:(int64_t)a3 service:(int64_t)a4;
- (id)roadsideProviderForChatIdentifier:(id)a3;
- (id)roadsideProviderForProviderId:(int64_t)a3;
- (void)_enableEmergencyMode;
- (void)_openStewieChatWithChatIdentifier:(id)a3 keepTranscriptStatus:(BOOL)a4;
- (void)_processMessageSendFailure:(id)a3 forSession:(id)a4;
- (void)_processMessageSent:(id)a3 forSession:(id)a4;
- (void)_processReceivedTextMessageForService:(int64_t)a3 chatIdentifier:(id)a4 conversationID:(int64_t)a5 sequenceNum:(int64_t)a6 text:(id)a7;
- (void)addObserver:(id)a3;
- (void)connectedServicesChanged:(int64_t)a3;
- (void)locationUpdateDelivered:(id)a3;
- (void)locationUpdateSent;
- (void)messageReceived:(id)a3 withMetadata:(id)a4 completionBlock:(id)a5;
- (void)openStewieChatWithContext:(id)a3;
- (void)processReceivedEmergencyMessageFromIMTool:(int64_t)a3 message:(id)a4;
- (void)sendEmergencyQuestionnaire:(id)a3;
- (void)sendQuestionnaire:(id)a3;
- (void)sendStewieMessage:(id)a3 forChat:(id)a4;
- (void)setConversationIDToConversationUUIDMap:(id)a3 forService:(int64_t)a4;
- (void)setConversationUUID:(id)a3 forConversationID:(int64_t)a4 service:(int64_t)a5;
- (void)stateChanged:(id)a3;
- (void)stopTranscriptSharingWithChat:(id)a3;
- (void)updateChatPropertiesIfRequiredForChat:(id)a3 service:(int64_t)a4;
- (void)updateChatPropertiesIfRequiredForEmergencyChat:(id)a3;
- (void)updateChatPropertiesIfRequiredForRoadsideChat:(id)a3;
@end

@implementation IMDChorosController

+ (id)nameForService:(int64_t)a3
{
  v3 = @"Unknown service";
  if (a3 == 8)
  {
    v3 = @"Roadside";
  }

  if (a3 == 1)
  {
    return @"Emergency";
  }

  else
  {
    return v3;
  }
}

+ (BOOL)supportsService:(int64_t)a3
{
  if (a3 < 1)
  {
    return 0;
  }

  if (((a3 + 0x7FFFFFFFFFFFFFFFLL) & a3) != 0)
  {
    return 0;
  }

  return (+[IMDChorosController supportedServices]& a3) != 0;
}

+ (id)outgoingSequenceNumberDefaultsKeyForService:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"stewieSequenceNumber";
  }

  if (a3 == 8)
  {
    return @"roadsideSequenceNumber";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = IMFileLocationTrimFileName();
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"outgoingSequenceNumberDefaultsKeyForService: Unsupported service type: %lld", a3];
  v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController outgoingSequenceNumberDefaultsKeyForService:]", v6, 114, v7];

  v9 = IMGetAssertionFailureHandler();
  if (v9)
  {
    v9(v8);
  }

  else
  {
    v10 = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  return 0;
}

+ (id)incomingSequenceNumberDefaultsKeyForService:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"stewieReceivedSequenceNumber";
  }

  if (a3 == 8)
  {
    return @"roadsideReceivedSequenceNumber";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = IMFileLocationTrimFileName();
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"incomingSequenceNumberDefaultsKeyForService: Unsupported service type: %lld", a3];
  v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController incomingSequenceNumberDefaultsKeyForService:]", v6, 128, v7];

  v9 = IMGetAssertionFailureHandler();
  if (v9)
  {
    v9(v8);
  }

  else
  {
    v10 = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  return 0;
}

+ (id)conversationIDDefaultsKeyForService:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"stewieConversationID";
  }

  if (a3 == 8)
  {
    return @"roadsideConversationID";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = IMFileLocationTrimFileName();
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"conversationIDDefaultsKeyForService: Unsupported service type: %lld", a3];
  v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController conversationIDDefaultsKeyForService:]", v6, 142, v7];

  v9 = IMGetAssertionFailureHandler();
  if (v9)
  {
    v9(v8);
  }

  else
  {
    v10 = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  return 0;
}

+ (id)conversationIDToUUIDsDefaultsKeyForService:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"stewieConversationUUIDs";
  }

  if (a3 == 8)
  {
    return @"roadsideConversationUUIDs";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = IMFileLocationTrimFileName();
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"conversationIDToUUIDsDefaultsKeyForService: Unsupported service type: %lld", a3];
  v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController conversationIDToUUIDsDefaultsKeyForService:]", v6, 156, v7];

  v9 = IMGetAssertionFailureHandler();
  if (v9)
  {
    v9(v8);
  }

  else
  {
    v10 = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  return 0;
}

- (IMDChorosController)init
{
  v18.receiver = self;
  v18.super_class = IMDChorosController;
  v2 = [(IMDChorosController *)&v18 init];
  if (!v2)
  {
    return v2;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  observers = v2->_observers;
  v2->_observers = v3;

  v5 = objc_alloc(MEMORY[0x277CC3728]);
  v6 = +[IMDChorosController supportedServices];
  v7 = [v5 initWithServices:v6 delegate:v2 delegateQueue:MEMORY[0x277D85CD0]];
  coreTelephonyStewieClient = v2->_coreTelephonyStewieClient;
  v2->_coreTelephonyStewieClient = v7;

  v9 = v2->_coreTelephonyStewieClient;
  if (!v9)
  {
    if (!IMOSLoggingEnabled())
    {
      return v2;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      v15 = "Failed to load data client";
LABEL_15:
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, v15, v17, 2u);
    }

LABEL_16:

    return v2;
  }

  v10 = [(CTStewieDataClient *)v9 start];
  v11 = IMOSLoggingEnabled();
  if ((v10 & 1) == 0)
  {
    if (!v11)
    {
      return v2;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      v15 = "Failed to start the data client";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Loaded data client", v17, 2u);
    }
  }

  v13 = [(CTStewieDataClient *)v2->_coreTelephonyStewieClient getState];
  [IMDChorosController recordOffGridTimeFor:v13];

  return v2;
}

+ (id)sharedController
{
  if (qword_281421228 != -1)
  {
    sub_22B7D739C();
  }

  v3 = qword_281421210;

  return v3;
}

- (void)sendStewieMessage:(id)a3 forChat:(id)a4
{
  v73[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 chatIdentifier];
  v9 = [IMDChorosController serviceFromChatIdentifier:v8];

  if ([IMDChorosController supportsService:v9])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Sending Stewie message to CT", buf, 2u);
      }
    }

    [v7 updateIsEmergencyChat:v9 == 1];
    v11 = [v6 body];
    v12 = [v11 string];

    if (!v6 || ![v12 length])
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D745C();
      }

      goto LABEL_61;
    }

    v13 = +[IMDAccountController sharedInstance];
    v14 = [v13 anySessionForServiceName:*MEMORY[0x277D1A610]];

    if (!v14)
    {
      v27 = IMLogHandleForCategory();
      v28 = v27;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7420();
        v28 = v27;
      }

      goto LABEL_60;
    }

    v57 = [(IMDChorosController *)self _isMessageStewieCompatible:v6];
    if (!v57 && IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Content to send is not allowed", buf, 2u);
      }
    }

    v16 = [v6 time];
    v17 = v16 == 0;

    if (v17)
    {
      v18 = [MEMORY[0x277CBEAA8] date];
      [v6 setTime:v18];
    }

    v59 = [IMDChorosController outgoingSequenceNumberDefaultsKeyForService:v9];
    v19 = IMGetDomainIntForKey();
    if (v19 + 1 <= 0)
    {
      v20 = -(-(v19 + 1) & 0x1FFF);
    }

    else
    {
      v20 = (v19 + 1) & 0x1FFF;
    }

    IMSetDomainIntForKey();
    [v6 setReplaceID:-1];
    v56 = [IMDChorosController incomingSequenceNumberDefaultsKeyForService:v9];
    [v6 setStewieSequenceNumber:IMGetDomainIntForKey()];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = v20;
        v23 = [IMDChorosController nameForService:v9];
        *buf = 138412290;
        *&buf[4] = v23;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Generating outgoing text message for %@", buf, 0xCu);

        v20 = v22;
      }
    }

    v24 = [IMDChorosController conversationIDDefaultsKeyForService:v9];
    v58 = IMGetDomainIntForKey();

    v55 = [(IMDChorosController *)self conversationUUIDForConversationID:v58 service:v9];
    if (v9 == 8)
    {
      v29 = [v7 chatIdentifier];
      v30 = [IMDChorosController roadsideProviderIDFromChatIdentifier:v29];

      if (v30)
      {
        v68 = 0;
        v54 = [objc_alloc(MEMORY[0x277CC3760]) initWithConversationID:v58 providerId:objc_msgSend(v30 sequenceNum:"integerValue") text:v20 error:{v12, &v68}];
        v31 = v68;
      }

      else
      {
        v38 = MEMORY[0x277CCA9B8];
        v72 = *MEMORY[0x277CCA450];
        v73[0] = @"Failed to send message. ProviderId is invalid";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
        v31 = [v38 errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v39];

        v54 = 0;
      }

      v25 = v31;
      if (v31)
      {
LABEL_26:
        v53 = v25;
        v26 = IMLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v50 = [IMDChorosController nameForService:v9];
          v51 = [v53 localizedDescription];
          *buf = 138412802;
          *&buf[4] = v50;
          *&buf[12] = 2112;
          *&buf[14] = v51;
          *&buf[22] = 2112;
          *&buf[24] = v54;
          _os_log_error_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_ERROR, "Stewie %@ text message reported error: %@, message: %@", buf, 0x20u);
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (v9 != 1)
      {
        *buf = xmmword_278706AE0;
        *&buf[16] = *off_278706AF0;
        v71 = 263;
        v32 = MEMORY[0x277CCACA8];
        v33 = IMFileLocationTrimFileName();
        v34 = v71;
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"outgoingSequenceNumberDefaultsKeyForService: Unsupported service type: %lld", v9];
        v36 = [v32 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "-[IMDChorosController sendStewieMessage:forChat:]", v33, v34, v35];

        v37 = IMGetAssertionFailureHandler();
        if (v37)
        {
          v37(v36);
        }

        else
        {
          v40 = [MEMORY[0x277D19298] warning];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D732C();
          }
        }

        v53 = 0;
        v54 = 0;
        goto LABEL_46;
      }

      v69 = 0;
      v54 = [objc_alloc(MEMORY[0x277CC3740]) initWithConversationID:v58 sequenceNum:v20 emergencyText:v12 error:&v69];
      v25 = v69;
      if (v25)
      {
        goto LABEL_26;
      }
    }

    v53 = 0;
LABEL_46:
    [v6 setStewieConversationID:v58];
    [v6 setStewieConversationUUID:v55];
    [v6 setIsStewie:1];
    v41 = +[IMDMessageStore sharedInstance];
    LOBYTE(v52) = 0;
    v42 = [v41 storeMessage:v6 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:objc_msgSend(v6 updateMessageCache:"flags") calculateUnreadCount:{1, v52}];

    v43 = [v6 guid];
    v44 = !v57;
    if (!v43)
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_65;
    }

    [(IMDChorosController *)self _enableEmergencyMode];
    v45 = [(IMDChorosController *)self coreTelephonyStewieClient];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_22B63B1B4;
    v63[3] = &unk_278706B10;
    v64 = v6;
    v65 = v43;
    v66 = self;
    v67 = v14;
    v46 = [v45 sendMessage:v54 completion:v63];

    if (!v46)
    {
LABEL_65:
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v54;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "**** Failed sending message (%@)", buf, 0xCu);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B63B3AC;
      block[3] = &unk_2787038F8;
      block[4] = self;
      v61 = v43;
      v62 = v14;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v54;
        _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Message transmitted to CT: %@", buf, 0xCu);
      }
    }

    v28 = v59;
LABEL_60:

LABEL_61:
    goto LABEL_62;
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D73B0();
  }

LABEL_62:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)_processMessageSent:(id)a3 forSession:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "ACK - Sent message for guid: %@", &v10, 0xCu);
    }
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  [v6 didReceiveMessageDeliveryReceiptForMessageID:v5 date:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processMessageSendFailure:(id)a3 forSession:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "ACK - Failed to send message for guid: %@", &v9, 0xCu);
    }
  }

  [v6 didReceiveError:4 forMessageID:v5 forceError:1];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isMessageStewieCompatible:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  if ([v4 isEqual:objc_opt_class()])
  {
    v5 = [v3 fileTransferGUIDs];
    v6 = [v5 count];

    if (v6)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [v3 fileTransferGUIDs];
          v9 = [v8 firstObject];
          v17 = 138412290;
          v18 = v9;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Emergency stewie is not allowed to send a file: %@", &v17, 0xCu);
        }

LABEL_10:
      }
    }

    else
    {
      v14 = [v3 payloadData];
      v15 = [v14 length];

      if (!v15)
      {
        v11 = 1;
        goto LABEL_12;
      }

      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v16 = [v3 payloadData];
          v17 = 138412290;
          v18 = v16;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Emergency stewie is not allowed to process payload data: %@", &v17, 0xCu);
        }

        goto LABEL_10;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      v10 = v18;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Emergency stewie is not of class IMMessageItem: %@", &v17, 0xCu);
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)generatePresentationForEmergencyQuestionnaire:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_283F23018];
    v30 = v4;
    v33 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC42D8]];
    if ([v33 length])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = IMDaemonCoreBundle();
      v8 = [v7 __im_localizedStringForKey:@"STEWIE_EMERGENCY_MESSAGE_INFO_LIST" table:@"DaemonCoreLocalizable-SOS"];
      v9 = [v6 localizedStringWithFormat:v8, v33];

      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v9];
      [v5 appendAttributedString:v10];

      v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n"];
      [v5 appendAttributedString:v11];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "No emergency type provided", buf, 2u);
        }
      }

      v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
      [v5 appendAttributedString:v14];
    }

    v15 = IMDaemonCoreBundle();
    v31 = [v15 __im_localizedStringForKey:@"STEWIE_EMERGENCY_MESSAGE_INFO" table:@"DaemonCoreLocalizable-SOS"];

    v34 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v31];
    v16 = [v34 length];
    [v34 addAttribute:*MEMORY[0x277D196A8] value:@"boldValue" range:{0, v16}];
    [v5 appendAttributedString:v34];
    v32 = [v30 objectForKeyedSubscript:*MEMORY[0x277CC42E0]];
    if ([v32 count])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v32;
      v17 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v17)
      {
        v18 = *v37;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v36 + 1) + 8 * i);
            v21 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
            [v5 appendAttributedString:v21];

            v22 = MEMORY[0x277CCACA8];
            v23 = IMDaemonCoreBundle();
            v24 = [v23 __im_localizedStringForKey:@"STEWIE_EMERGENCY_MESSAGE_INFO_LIST" table:@"DaemonCoreLocalizable-SOS"];
            v25 = [v22 localizedStringWithFormat:v24, v20];

            v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v25];
            [v5 appendAttributedString:v26];
          }

          v17 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v17);
      }

      v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v5];
      v12 = [v27 __im_attributedStringByAssigningMessagePartNumbers];
    }

    else
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7498();
      }

      v12 = 0;
    }

    v3 = v30;
  }

  else
  {
    v12 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)generatePresentationForRoadsideQuestionnaire:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v33 = a3;
  if (v33)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_283F23018];
    v4 = +[IMDChorosController reportTypeKey];
    v31 = [v33 objectForKeyedSubscript:v4];

    if ([v31 length])
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = IMDaemonCoreBundle();
      v7 = [v6 __im_localizedStringForKey:@"STEWIE_ROADSIDE_MESSAGE_INFO_LIST" table:@"DaemonCoreLocalizable-Avocet"];
      v8 = [v5 localizedStringWithFormat:v7, v31];

      v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];
      [v3 appendAttributedString:v9];

      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n"];
      [v3 appendAttributedString:v10];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "No roadside type provided", buf, 2u);
        }
      }

      v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
      [v3 appendAttributedString:v13];
    }

    v14 = IMDaemonCoreBundle();
    v29 = [v14 __im_localizedStringForKey:@"STEWIE_ROADSIDE_MESSAGE_INFO" table:@"DaemonCoreLocalizable-Avocet"];

    v32 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v29];
    v15 = [v32 length];
    [v32 addAttribute:*MEMORY[0x277D196A8] value:@"boldValue" range:{0, v15}];
    [v3 appendAttributedString:v32];
    v30 = [v33 objectForKeyedSubscript:*MEMORY[0x277CC42E0]];
    if ([v30 count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v30;
      v16 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v16)
      {
        v17 = *v36;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v35 + 1) + 8 * i);
            v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
            [v3 appendAttributedString:v20];

            v21 = MEMORY[0x277CCACA8];
            v22 = IMDaemonCoreBundle();
            v23 = [v22 __im_localizedStringForKey:@"STEWIE_ROADSIDE_MESSAGE_INFO_LIST" table:@"DaemonCoreLocalizable-Avocet"];
            v24 = [v21 localizedStringWithFormat:v23, v19];

            v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v24];
            [v3 appendAttributedString:v25];
          }

          v16 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v16);
      }

      v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v3];
      v11 = [v26 __im_attributedStringByAssigningMessagePartNumbers];
    }

    else
    {
      v26 = IMLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D74D4();
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)generatePresentationForStewieQuestionnaire:(id)a3 forService:(int64_t)a4
{
  v5 = a3;
  if (a4 == 8)
  {
    v6 = [IMDChorosController generatePresentationForRoadsideQuestionnaire:v5];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v6 = [IMDChorosController generatePresentationForEmergencyQuestionnaire:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_12;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = IMFileLocationTrimFileName();
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"generatePresentationForStewieQuestionnaire: Unsupported service type: %lld", a4];
  v11 = [v8 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController generatePresentationForStewieQuestionnaire:forService:]", v9, 448, v10];

  v12 = IMGetAssertionFailureHandler();
  if (v12)
  {
    v12(v11);
  }

  else
  {
    v13 = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

+ (id)generateCTStewieStartMessage:(id)a3 forService:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  if (a4 == 8)
  {
    v8 = MEMORY[0x277CC3758];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v8 = MEMORY[0x277CC3738];
LABEL_5:
    v9 = [[v8 alloc] initWithDictionary:v7 error:a5];
    goto LABEL_12;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = IMFileLocationTrimFileName();
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"generateCTStewieStartMessage: Unsupported service type: %lld", a4];
  v13 = [v10 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController generateCTStewieStartMessage:forService:error:]", v11, 462, v12];

  v14 = IMGetAssertionFailureHandler();
  if (v14)
  {
    v14(v13);
  }

  else
  {
    v15 = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (BOOL)needToOpenChatForService:(int64_t)a3 questionnaireDictionary:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1 && ([v5 objectForKey:*MEMORY[0x277CC42F8]], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No questionnaire answers provided", v11, 2u);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)chatSubjectForService:(int64_t)a3
{
  if (a3 == 8)
  {
    v4 = IMDaemonCoreBundle();
    v5 = v4;
    v6 = @"STEWIE_ROADSIDE_MESSAGE_SUBJECT";
    v7 = @"DaemonCoreLocalizable-Avocet";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = IMDaemonCoreBundle();
    v5 = v4;
    v6 = @"STEWIE_EMERGENCY_MESSAGE_SUBJECT";
    v7 = @"DaemonCoreLocalizable-SOS";
LABEL_5:
    v8 = [v4 __im_localizedStringForKey:v6 table:v7];

    goto LABEL_12;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = IMFileLocationTrimFileName();
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"generateCTStewieStartMessage: Unsupported service type: %lld", a3];
  v12 = [v9 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController chatSubjectForService:]", v10, 491, v11];

  v13 = IMGetAssertionFailureHandler();
  if (v13)
  {
    v13(v12);
  }

  else
  {
    v14 = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)updateChatPropertiesIfRequiredForEmergencyChat:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IMDaemonCoreBundle();
  v5 = [v4 __im_localizedStringForKey:@"STEWIE_EMERGENCY_DISPLAY_NAME" table:@"DaemonCoreLocalizable-SOS"];

  v6 = [v3 displayName];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Updating chat: %@ display name to: %@", &v10, 0x16u);
      }
    }

    [v3 updateDisplayName:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateChatPropertiesIfRequiredForRoadsideChat:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 chatIdentifier];
  v6 = [(IMDChorosController *)self roadsideProviderForChatIdentifier:v5];

  v7 = [v6 providerName];
  if (!v7)
  {
    v8 = IMDaemonCoreBundle();
    v7 = [v8 __im_localizedStringForKey:@"STEWIE_ROADSIDE_FALLBACK_DISPLAY_NAME" table:@"DaemonCoreLocalizable-Avocet"];
  }

  v9 = [v4 displayName];
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 138412546;
        v18 = v4;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Updating chat: %@ display name to: %@", &v17, 0x16u);
      }
    }

    [v4 updateDisplayName:v7];
  }

  v12 = [v6 bizId];
  if (v12)
  {
    v13 = [v4 associatedBusinessID];
    v14 = [v12 isEqualToString:v13];

    if ((v14 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = 138412546;
          v18 = v4;
          v19 = 2112;
          v20 = v12;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Updating chat: %@ associated business ID to: %@", &v17, 0x16u);
        }
      }

      [v4 updateAssociatedBusinessID:v12];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateChatPropertiesIfRequiredForChat:(id)a3 service:(int64_t)a4
{
  v6 = a3;
  if (a4 == 8)
  {
    [(IMDChorosController *)self updateChatPropertiesIfRequiredForRoadsideChat:v6];
  }

  else if (a4 == 1)
  {
    [(IMDChorosController *)self updateChatPropertiesIfRequiredForEmergencyChat:v6];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = IMFileLocationTrimFileName();
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"updateChatPropertiesIfRequiredForChat: Unsupported service type: %lld", a4];
    v10 = [v7 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "-[IMDChorosController updateChatPropertiesIfRequiredForChat:service:]", v8, 539, v9];

    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v12 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D732C();
      }
    }
  }
}

- (void)sendQuestionnaire:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v75 = self;
    v5 = +[IMDChorosController serviceTypeKey];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = [v6 integerValue];
    if (![IMDChorosController supportsService:v7])
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7510();
      }

      goto LABEL_84;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [IMDChorosController nameForService:v7];
        *buf = 138412290;
        v88 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "sendQuestionnaire: invoked for service type: %@", buf, 0xCu);
      }
    }

    v10 = +[IMDAccountController sharedInstance];
    v11 = MEMORY[0x277D1A610];
    v12 = [v10 anySessionForServiceName:*MEMORY[0x277D1A610]];

    if (!v12)
    {
      v16 = IMLogHandleForCategory();
      v14 = v16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D76F4();
        v14 = v16;
      }

      goto LABEL_83;
    }

    v13 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC4300]];
    v74 = [IMDChorosController generatePresentationForStewieQuestionnaire:v13 forService:v7];

    v14 = v74;
    if (!v74)
    {
LABEL_83:

LABEL_84:
      goto LABEL_85;
    }

    v72 = [v4 objectForKey:*MEMORY[0x277CC42D0]];
    if (!v72)
    {
      v15 = IMLogHandleForCategory();
      v17 = v15;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_82:

        v14 = v74;
        goto LABEL_83;
      }

      sub_22B7D76B8();
LABEL_36:
      v17 = v15;
      goto LABEL_82;
    }

    if (v7 == 1)
    {
      v71 = +[IMDChorosController chatIdentifierForEmergency];
      v15 = 0;
    }

    else
    {
      if (v7 != 8)
      {
        v15 = 0;
LABEL_33:
        v23 = IMLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D767C();
        }

        goto LABEL_36;
      }

      v18 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC42F0]];
      v15 = v18;
      if (!v18)
      {
        v15 = IMLogHandleForCategory();
        v17 = v15;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        sub_22B7D7580();
        goto LABEL_36;
      }

      v71 = [IMDChorosController chatIdentifierForRoadside:[v18 integerValue]];
    }

    if (v71)
    {
      v67 = v15;
      v19 = [v72 integerValue];
      if (v19 < 0)
      {
        v22 = IMLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D75BC();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v88 = v19;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Conversation ID: %ld", buf, 0xCu);
          }
        }

        v21 = [IMDChorosController conversationIDDefaultsKeyForService:v7];
        IMSetDomainIntForKey();

        if (v15)
        {
          [v15 integerValue];
          IMSetDomainIntForKey();
        }

        v22 = [MEMORY[0x277CCAB98] defaultCenter];
        [v22 __mainThreadPostNotificationName:*MEMORY[0x277D1A6F0] object:0];
      }

      v86 = 0;
      v69 = [IMDChorosController generateCTStewieStartMessage:v4 forService:v7 error:&v86];
      v64 = v86;
      if (v64 || !v69)
      {
        v24 = IMLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D75F8();
        }
      }

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [IMDChorosController nameForService:v7];
          *buf = 138412290;
          v88 = v26;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Sending %@ start message to CT", buf, 0xCu);
        }
      }

      v65 = [MEMORY[0x277CBEAA8] date];
      v66 = StringGUID();
      v73 = [objc_alloc(MEMORY[0x277D1AA70]) initWithSender:v71 time:v65 body:v74 attributes:0 fileTransferGUIDs:0 flags:0x200000005 error:0 guid:v66 threadIdentifier:0];
      v27 = [(IMDChorosController *)v75 _createChatIfNecessary:v12 chatIdentifier:v71 service:v7];
      v28 = +[IMDChatRegistry sharedInstance];
      v29 = [v12 account];
      v70 = [v28 existingChatWithIdentifier:v71 account:v29];

      if (!v27)
      {
        [(IMDChorosController *)v75 updateChatPropertiesIfRequiredForChat:v70 service:v7];
      }

      if (v7 == 1)
      {
        v30 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC42E8]];
        v31 = [v30 integerValue];

        v32 = IMOSLoggingEnabled();
        if (v31 == 3)
        {
          if (v32)
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Transcript sharing turned on", buf, 2u);
            }
          }

          v34 = 1;
          goto LABEL_62;
        }

        if (v32)
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v88 = v31;
            _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Transcript sharing off: %ld", buf, 0xCu);
          }
        }
      }

      v34 = 0;
LABEL_62:
      [v70 updateEmergencyTranscriptSharingStateChatProperty:v34];
      v68 = [MEMORY[0x277CCAD78] UUID];
      [(IMDChorosController *)v75 setConversationUUID:v68 forConversationID:v19 service:v7];
      v36 = [IMDChorosController outgoingSequenceNumberDefaultsKeyForService:v7];
      IMSetDomainIntForKey();

      v37 = [IMDChorosController incomingSequenceNumberDefaultsKeyForService:v7];
      IMSetDomainIntForKey();

      v38 = [v70 lastAddressedLocalHandle];
      if (!v38)
      {
        v38 = [(IMDChorosController *)v75 _simNumber];
      }

      v63 = v38;
      [v73 setDestinationCallerID:?];
      v39 = [v12 accountID];
      [v73 setAccountID:v39];

      [v73 setIsStewie:1];
      [v73 setService:*v11];
      [v73 setHandle:v71];
      [v73 setReplaceID:-1];
      [v73 setStewieConversationID:v19];
      [v73 setStewieConversationUUID:v68];
      v40 = [IMDChorosController chatSubjectForService:v7];
      [v73 setSubject:v40];

      v41 = +[IMDMessageStore sharedInstance];
      LOBYTE(v62) = 0;
      v42 = [v41 storeMessage:v73 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x200000005 updateMessageCache:1 calculateUnreadCount:v62];

      v43 = +[IMDChatRegistry sharedInstance];
      [v43 addMessage:v73 toChat:v70];

      v44 = +[IMDChatRegistry sharedInstance];
      [v44 updateStateForChat:v70 hintMessage:v73 shouldRebuildFailedMessageDate:1 shouldCalculateUnreadCount:0];

      [(IMDChorosController *)v75 _enableEmergencyMode];
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v88 = v71;
          _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Will broadcast initialEmergencyQuestionnaireReceived for chatIdentifier: %@", buf, 0xCu);
        }
      }

      v46 = [v12 broadcasterForChatListeners];
      v47 = [v12 account];
      v48 = [v47 accountID];
      v49 = [v70 chatProperties];
      v50 = [v70 groupID];
      v51 = [v70 personCentricID];
      [v46 account:v48 chat:v71 style:45 chatProperties:v49 groupID:v50 chatPersonCentricID:v51 initialEmergencyQuestionnaireReceived:v73];

      if ((IMIsRunningInUnitTesting() & 1) == 0 && [IMDChorosController needToOpenChatForService:v7 questionnaireDictionary:v4])
      {
        [(IMDChorosController *)v75 _openStewieChatWithChatIdentifier:v71 keepTranscriptStatus:0];
      }

      v52 = [(IMDChorosController *)v75 coreTelephonyStewieClient];
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = sub_22B63D948;
      v79[3] = &unk_278706BD8;
      v53 = v73;
      v80 = v53;
      v54 = v66;
      v81 = v54;
      v82 = v75;
      v55 = v12;
      v83 = v55;
      v85 = v7;
      v56 = v67;
      v84 = v56;
      v57 = [v52 sendMessage:v69 completion:v79];

      v58 = IMOSLoggingEnabled();
      if (v57)
      {
        if (v58)
        {
          v59 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v88 = v69;
            _os_log_impl(&dword_22B4CC000, v59, OS_LOG_TYPE_INFO, "Message transmitted to CT: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (v58)
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v88 = v69;
            _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "**** Failed sending start Stewie message (%@)", buf, 0xCu);
          }
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B63DC4C;
        block[3] = &unk_2787038F8;
        block[4] = v75;
        v77 = v54;
        v78 = v55;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      v17 = v71;
      goto LABEL_82;
    }

    goto LABEL_33;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D7730();
  }

LABEL_85:

  v61 = *MEMORY[0x277D85DE8];
}

- (void)sendEmergencyQuestionnaire:(id)a3
{
  v5 = [a3 mutableCopy];
  v4 = +[IMDChorosController serviceTypeKey];
  [v5 setObject:&unk_283F4EB40 forKeyedSubscript:v4];

  [(IMDChorosController *)self sendQuestionnaire:v5];
}

- (void)stopTranscriptSharingWithChat:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Stopping sharing transcript", buf, 2u);
    }
  }

  v5 = +[IMDAccountController sharedInstance];
  v6 = [v5 anySessionForServiceName:*MEMORY[0x277D1A610]];

  if (v6)
  {
    v23 = 0;
    v21 = [objc_alloc(MEMORY[0x277CC3730]) initWithNotifyOption:1 error:&v23];
    v7 = v23;
    if (v7)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D776C(v7);
      }
    }

    v20 = [(IMDChorosController *)self _generateStopTranscriptSharingStatusItemForChat:v22];
    [(IMDChorosController *)self _enableEmergencyMode];
    v9 = [v6 broadcasterForChatListeners];
    v10 = [v6 account];
    v11 = [v10 accountID];
    v12 = +[IMDChorosController chatIdentifierForEmergency];
    v13 = [v22 chatProperties];
    v14 = [v22 groupID];
    v15 = [v22 personCentricID];
    [v9 account:v11 chat:v12 style:45 chatProperties:v13 groupID:v14 chatPersonCentricID:v15 messageReceived:v20];

    v16 = [(IMDChorosController *)self coreTelephonyStewieClient];
    LODWORD(v15) = [v16 sendMessage:v21 completion:&unk_283F1A888];

    v17 = IMOSLoggingEnabled();
    if (v15)
    {
      if (v17)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v21;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Message transmitted to CT: %@", buf, 0xCu);
        }

LABEL_20:
      }
    }

    else if (v17)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v21;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "**** Failed sending message (%@)", buf, 0xCu);
      }

      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D77F4();
  }

LABEL_22:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_processReceivedTextMessageForService:(int64_t)a3 chatIdentifier:(id)a4 conversationID:(int64_t)a5 sequenceNum:(int64_t)a6 text:(id)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a7;
  if ([IMDChorosController supportsService:a3])
  {
    v43 = a5;
    v44 = a6;
    v14 = +[IMDAccountController sharedInstance];
    v15 = MEMORY[0x277D1A610];
    v16 = [v14 anySessionForServiceName:*MEMORY[0x277D1A610]];

    if (!v16)
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7918();
      }

      goto LABEL_46;
    }

    if (!v13 || ![v13 length])
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D78DC();
      }

      goto LABEL_46;
    }

    if (!v12 || ![v12 length])
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D78A0();
      }

      goto LABEL_46;
    }

    v17 = [MEMORY[0x277D1AA78] sharedInstance];
    [v17 acquireAssertionToUnsuspendProcess];

    v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v13];
    v19 = [v18 __im_attributedStringByAssigningMessagePartNumbers];

    v41 = [MEMORY[0x277CBEAA8] date];
    v20 = objc_alloc(MEMORY[0x277D1AA70]);
    v21 = StringGUID();
    v22 = [v20 initWithSender:v12 time:v41 body:v19 attributes:0 fileTransferGUIDs:0 flags:0x200000001 error:0 guid:v21 threadIdentifier:0];

    [(IMDChorosController *)self _createChatIfNecessary:v16 chatIdentifier:v12 service:a3];
    [v22 setStewieSequenceNumber:v44];
    v40 = [(IMDChorosController *)self conversationUUIDForConversationID:v43 service:a3];
    v23 = [IMDChorosController incomingSequenceNumberDefaultsKeyForService:a3];
    v39 = v22;
    v24 = IMGetDomainIntForKey();

    if (v24 < v44)
    {
      v25 = [IMDChorosController incomingSequenceNumberDefaultsKeyForService:a3];
      IMSetDomainIntForKey();
    }

    v26 = +[IMDMessageStore sharedInstance];
    v27 = [v26 messageWithReplaceMessageID:v44 fromHandle:v12 onService:*v15];

    if (v27)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Found a message with the same sequence number", buf, 2u);
        }
      }

      if ([v27 stewieConversationID] == v43)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Found a message with the same Conversation ID", buf, 2u);
          }
        }

        v30 = [v27 body];
        v42 = [v30 string];

        LODWORD(v30) = [v42 isEqualToString:v13];
        v31 = IMOSLoggingEnabled();
        if (v30)
        {
          if (v31)
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Dropping message", buf, 2u);
            }
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_45;
          }

          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v46 = v43;
            v47 = 2048;
            v48 = v44;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Message has the same text, conversation ID: %lld and sequence number: %lld", buf, 0x16u);
          }

          goto LABEL_44;
        }

        if (v31)
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Text is not the same, keeping message", buf, 2u);
          }
        }
      }
    }

    v42 = [(IMDChorosController *)self _simNumber];
    [v39 setDestinationCallerID:v42];
    v35 = [v16 accountID];
    [v39 setAccountID:v35];

    [v39 setIsStewie:1];
    [v39 setReplaceID:v44];
    [v39 setStewieConversationID:v43];
    [v39 setStewieConversationUUID:v40];
    [(IMDChorosController *)self _enableEmergencyMode];
    v36 = [MEMORY[0x277D1AA78] sharedInstance];
    [v36 sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:v12];

    [v16 didReceiveMessage:v39 forChat:v12 style:45 fromIDSID:0];
    if (!IMOSLoggingEnabled())
    {
LABEL_45:

LABEL_46:
      goto LABEL_47;
    }

    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v37 = [IMDChorosController nameForService:a3];
      *buf = 138412802;
      v46 = v37;
      v47 = 2048;
      v48 = v43;
      v49 = 2048;
      v50 = v44;
      _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Session received Stewie %@ text message with Conversation ID: %lld, sequence number: %lld", buf, 0x20u);
    }

LABEL_44:

    goto LABEL_45;
  }

  v16 = IMLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D7830();
  }

LABEL_47:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)locationUpdateSent
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = +[IMDChorosController serviceTypeKey];
  v6 = v3;
  v7[0] = &unk_283F4EB40;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(IMDChorosController *)self locationUpdateDelivered:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)locationUpdateDelivered:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[IMDChorosController serviceTypeKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 integerValue];
  if ([IMDChorosController supportsService:v7])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Location update sent", buf, 2u);
      }
    }

    v9 = +[IMDAccountController sharedInstance];
    v10 = [v9 anySessionForServiceName:*MEMORY[0x277D1A610]];

    if (!v10)
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7A3C();
      }

      goto LABEL_30;
    }

    if (v7 == 8)
    {
      v12 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC42F0]];
      v13 = v12;
      if (!v12)
      {
        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D79C4();
        }

        goto LABEL_30;
      }

      v11 = +[IMDChorosController chatIdentifierForRoadside:](IMDChorosController, "chatIdentifierForRoadside:", [v12 integerValue]);
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_28;
      }

      v11 = +[IMDChorosController chatIdentifierForEmergency];
    }

    if (v11)
    {
      v14 = [(IMDChorosController *)self _createChatIfNecessary:v10 chatIdentifier:v11 service:v7];
      v25 = [v10 chatForChatIdentifier:v11 style:45 updatingAccount:1];
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v25;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Location sent with chat %@", buf, 0xCu);
        }
      }

      if (!v14)
      {
        [(IMDChorosController *)self updateChatPropertiesIfRequiredForChat:v25 service:v7];
      }

      v24 = [(IMDChorosController *)self _generateLocationUpdateSentStatusItemForChat:v25];
      [(IMDChorosController *)self _enableEmergencyMode];
      v16 = [v10 broadcasterForChatListeners];
      v17 = [v10 account];
      v18 = [v17 accountID];
      v19 = [v25 chatProperties];
      v20 = [v25 groupID];
      v21 = [v25 personCentricID];
      [v16 account:v18 chat:v11 style:45 chatProperties:v19 groupID:v20 chatPersonCentricID:v21 messageReceived:v24];

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Location update sent broadcasted to client", buf, 2u);
        }
      }

LABEL_30:
      goto LABEL_31;
    }

LABEL_28:
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7A00();
    }

    goto LABEL_30;
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D7954();
  }

LABEL_31:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)openStewieChatWithContext:(id)a3
{
  v4 = a3;
  v5 = +[IMDChorosController serviceTypeKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D1A700]];
  v8 = [v7 integerValue];
  v9 = [v6 integerValue];
  if (![IMDChorosController supportsService:v9])
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7A78();
    }

    goto LABEL_17;
  }

  if (v9 != 8)
  {
    if (v9 == 1)
    {
      v10 = +[IMDChorosController chatIdentifierForEmergency];
      if (v10)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_10;
  }

  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC42F0]];
  if (!v12)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7AE8();
    }

    goto LABEL_17;
  }

  v13 = v12;
  v10 = +[IMDChorosController chatIdentifierForRoadside:](IMDChorosController, "chatIdentifierForRoadside:", [v12 integerValue]);

  if (!v10)
  {
LABEL_10:
    v14 = MEMORY[0x277CCACA8];
    v15 = IMFileLocationTrimFileName();
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"openStewieChatWithContext: Chat identifier cannot be nil if we got here"];
    v11 = [v14 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "-[IMDChorosController openStewieChatWithContext:]", v15, 982, v16];

    v17 = IMGetAssertionFailureHandler();
    if (v17)
    {
      v17(v11);
    }

    else
    {
      v18 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D732C();
      }
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_5:
  [(IMDChorosController *)self _openStewieChatWithChatIdentifier:v10 keepTranscriptStatus:v8 > 0];

LABEL_18:
}

- (void)processReceivedEmergencyMessageFromIMTool:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  v7 = +[IMDAccountController sharedInstance];
  v8 = [v7 anySessionForServiceName:*MEMORY[0x277D1A610]];

  v9 = +[IMDChorosController chatIdentifierForEmergency];
  [(IMDChorosController *)self _createChatIfNecessary:v8 chatIdentifier:v9 service:1];

  v10 = [IMDChorosController conversationIDDefaultsKeyForService:1];
  v11 = IMGetDomainIntForKey();

  if (v11 < 0)
  {
    v11 = arc4random_uniform(0xFAu);
    v12 = [IMDChorosController conversationIDDefaultsKeyForService:1];
    IMSetDomainIntForKey();
  }

  v13 = v6;
  v24 = v13;
  if (a3 == -1)
  {
    v14 = [IMDChorosController outgoingSequenceNumberDefaultsKeyForService:1];
    v15 = IMGetDomainIntForKey();
    v16 = v15 + 0x2000;
    if (v15 >= -1)
    {
      v16 = v15 + 1;
    }

    a3 = v16 >> 13;

    v17 = [IMDChorosController outgoingSequenceNumberDefaultsKeyForService:1];
    IMSetDomainIntForKey();

    v13 = v24;
  }

  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = @"Are you still breathing?";
  }

  v19 = [objc_alloc(MEMORY[0x277CC3740]) initWithConversationID:v11 sequenceNum:a3 emergencyText:v18 error:0];
  v20 = +[IMDChorosController chatIdentifierForEmergency];
  v21 = [v19 conversationID];
  v22 = [v19 sequenceNum];
  v23 = [v19 text];
  [(IMDChorosController *)self _processReceivedTextMessageForService:1 chatIdentifier:v20 conversationID:v21 sequenceNum:v22 text:v23];
}

+ (id)roadsideProviderIDFromChatIdentifier:(id)a3
{
  v3 = a3;
  if ([IMDChorosController serviceFromChatIdentifier:v3]== 8)
  {
    v4 = [v3 componentsSeparatedByString:@":"];
    if ([v4 count] >= 3)
    {
      v6 = objc_opt_new();
      v7 = [v4 objectAtIndexedSubscript:2];
      v5 = [v6 numberFromString:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)roadsideProviderForProviderId:(int64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v5 = [v4 initWithQueue:MEMORY[0x277D85CD0]];
  v6 = objc_opt_new();
  v13 = 0;
  v7 = [v5 fetchRoadsideProvidersWithContext:v6 error:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7B24();
    }

LABEL_4:
    v10 = 0;
    goto LABEL_7;
  }

  if (!v7)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7B94();
    }

    goto LABEL_4;
  }

  v9 = [v7 providers];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10 = [v9 objectForKeyedSubscript:v11];

LABEL_7:

  return v10;
}

- (id)roadsideProviderForChatIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [IMDChorosController roadsideProviderIDFromChatIdentifier:?];
    v5 = v4;
    if (v4)
    {
      v6 = -[IMDChorosController roadsideProviderForProviderId:](self, "roadsideProviderForProviderId:", [v4 integerValue]);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)serviceFromChatIdentifier:(id)a3
{
  v3 = a3;
  if (IMIsStringStewieEmergency())
  {
    v4 = 1;
  }

  else if (IMIsStringStewieRoadside())
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_createChatIfNecessary:(id)a3 chatIdentifier:(id)a4 service:(int64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v8 account];
  v12 = [v10 existingChatForID:v9 account:v11];

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"YES";
      if (!v12)
      {
        v14 = @"NO";
      }

      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found existing Stewie %@ chat: %@", buf, 0x16u);
    }
  }

  if (!v12)
  {
    v15 = *MEMORY[0x277D193A8];
    v25[0] = *MEMORY[0x277D192F8];
    v25[1] = v15;
    v26[0] = &unk_283F4EB58;
    v26[1] = v9;
    v16 = *MEMORY[0x277D193A0];
    v25[2] = *MEMORY[0x277D193C0];
    v25[3] = v16;
    v26[2] = v9;
    v26[3] = @"us";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
    v24 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [v8 didJoinChat:v9 style:45 displayName:0 groupID:0 originalGroupID:0 handleInfo:v18 category:0 spamExtensionName:0];
    v19 = +[IMDChatRegistry sharedInstance];
    v20 = [v8 account];
    v21 = [v19 existingChatWithIdentifier:v9 account:v20];

    [v21 updateIsEmergencyChat:a5 == 1];
    [v21 updateIsFiltered:0];
    [(IMDChorosController *)self updateChatPropertiesIfRequiredForChat:v21 service:a5];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

- (id)_simNumber
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1A908] sharedInstance];
  v3 = [v2 ctPhoneNumber];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "My CT Phone Number from subscription context is: %@", &v9, 0xCu);
    }
  }

  v5 = IMNormalizePhoneNumber();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "My CT SIM Phone Number is: %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_openStewieChatWithChatIdentifier:(id)a3 keepTranscriptStatus:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (qword_27D8CFF90 != -1)
  {
    sub_22B7D7BD0();
  }

  v6 = +[IMDAccountController sharedInstance];
  v7 = [v6 anySessionForServiceName:*MEMORY[0x277D1A610]];

  v8 = +[IMDChatRegistry sharedInstance];
  v9 = [v7 account];
  v10 = [v8 existingChatWithIdentifier:v5 account:v9];

  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Found an emergency chat, launching messages", buf, 2u);
      }
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"messages://open?groupid=%@", v5];
    v14 = v13;
    if (v4)
    {
      v15 = [(__CFString *)v13 stringByAppendingString:@"&keepTranscriptStatus=true"];

      v14 = v15;
    }
  }

  else
  {
    if (v11)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No emergency chat found, launching Messages to conversation list", v19, 2u);
      }
    }

    v14 = @"messages://compose=false";
  }

  v17 = [qword_27D8CFF88 defaultWorkspace];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:v14];
  [v17 openURL:v18 configuration:0 completionHandler:0];
}

- (BOOL)isStewieActive
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CTStewieDataClient *)self->_coreTelephonyStewieClient getState];
  v6 = 1;
  if (([v5 isActiveService:1] & 1) == 0)
  {
    v6 = [v5 isActiveService:8];
  }

  return v6;
}

- (BOOL)isSatelliteConnectionActive
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    return 1;
  }

  v4 = [(CTStewieDataClient *)self->_coreTelephonyStewieClient getState];
  v5 = [v4 activeServices];
  v6 = [v4 transportType];
  v3 = (v5 & 0x39) != 0 && v6 == 1;

  return v3;
}

- (BOOL)isLiteMessageActiveOverSatellite
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    return 1;
  }

  v4 = [(CTStewieDataClient *)self->_coreTelephonyStewieClient getState];
  if ([v4 isActiveService:16])
  {
    v3 = [v4 isStewieActiveOverBB];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_generateStopTranscriptSharingStatusItemForChat:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "generateStopTranscriptSharingStatusItemForChat passed a nil chat, early returning nil", buf, 2u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (([v3 isStewieEmergencyChat] & 1) == 0)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7BE4(v4);
    }

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Generating a Stewie stop sharing item", v21, 2u);
    }
  }

  v6 = objc_alloc(MEMORY[0x277D1ACA8]);
  v7 = +[IMDChorosController chatIdentifierForEmergency];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277CCACA8] stringGUID];
  v10 = [v6 initWithSender:v7 time:v8 guid:v9 type:7];

  [v10 setService:*MEMORY[0x277D1A610]];
  v11 = [v4 account];
  v12 = [v11 accountID];
  [v10 setAccountID:v12];

  v13 = [v4 account];
  v14 = [v13 loginID];
  [v10 setAccount:v14];

  v15 = +[IMDMessageStore sharedInstance];
  v16 = [v15 storeItem:v10 forceReplace:0];

  v17 = +[IMDChatStore sharedInstance];
  v18 = [v16 guid];
  [v17 addMessageWithGUID:v18 toChat:v4];

LABEL_15:

  return v16;
}

- (id)_generateLocationUpdateSentStatusItemForChat:(id)a3
{
  v3 = a3;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Generating a Stewie location update item", v21, 2u);
      }
    }

    v6 = objc_alloc(MEMORY[0x277D1AA40]);
    v7 = [v3 chatIdentifier];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [MEMORY[0x277CCACA8] stringGUID];
    v10 = [v6 initWithSender:v7 time:v8 guid:v9 type:8];

    [v10 setService:*MEMORY[0x277D1A610]];
    v11 = [v3 account];
    v12 = [v11 accountID];
    [v10 setAccountID:v12];

    v13 = [v3 account];
    v14 = [v13 loginID];
    [v10 setAccount:v14];

    v15 = +[IMDMessageStore sharedInstance];
    v16 = [v15 storeItem:v10 forceReplace:0];

    v17 = +[IMDChatStore sharedInstance];
    v18 = [v16 guid];
    [v17 addMessageWithGUID:v18 toChat:v3];
  }

  else
  {
    if (v4)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "generateLocationUpdateSentStatusItemForChat passed a nil chat, early returning nil", buf, 2u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (id)conversationIDToConversationUUIDMapForService:(int64_t)a3
{
  v3 = [IMDChorosController conversationIDToUUIDsDefaultsKeyForService:a3];
  v4 = IMGetCachedDomainValueForKey();

  return v4;
}

- (void)setConversationIDToConversationUUIDMap:(id)a3 forService:(int64_t)a4
{
  v5 = a3;
  v6 = [IMDChorosController conversationIDToUUIDsDefaultsKeyForService:a4];
  IMSetDomainValueForKey();
}

- (id)conversationUUIDForConversationID:(int64_t)a3 service:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [(IMDChorosController *)self _stringKeyForConversationID:?];
  v8 = [(IMDChorosController *)self conversationIDToConversationUUIDMapForService:a4];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9 || (v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9]) == 0)
  {
    v10 = [MEMORY[0x277CCAD78] UUID];
    [(IMDChorosController *)self setConversationUUID:v10 forConversationID:a3 service:a4];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
        v15 = 138412802;
        v16 = v12;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No existing conversationUUID for conversationID %@ (key %@), assigning %@", &v15, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setConversationUUID:(id)a3 forConversationID:(int64_t)a4 service:(int64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(IMDChorosController *)self conversationIDToConversationUUIDMapForService:a5];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = v12;

  v14 = [(IMDChorosController *)self _stringKeyForConversationID:a4];
  v15 = [v8 UUIDString];
  [v13 setObject:v15 forKeyedSubscript:v14];

  [(IMDChorosController *)self setConversationIDToConversationUUIDMap:v13 forService:a5];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v19 = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Assigning conversationUUID %@ to conversationID %@ (key %@)", &v19, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_enableEmergencyMode
{
  v20 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Disabling ScreenTime restrictions as sending message to an Emergency number", buf, 2u);
    }
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v3 = qword_27D8CFF98;
  v16 = qword_27D8CFF98;
  if (!qword_27D8CFF98)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_22B641334;
    v18 = &unk_278703200;
    v19 = &v13;
    sub_22B641334(buf);
    v3 = v14[3];
  }

  v4 = v3;
  _Block_object_dispose(&v13, 8);
  v5 = [v3 sharedMonitor];
  v12 = 0;
  v6 = [v5 enableEmergencyModeWithError:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 1) == 0 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v6)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Enabling Emergency Mode reported %@ when sending message to an Emergency number with error: %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)connectedServicesChanged:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Connected services: %ld", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stateChanged:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Stewie state changed to: %@", buf, 0xCu);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 satelliteStateDidChange:{-[IMDChorosController isSatelliteConnectionActive](self, "isSatelliteConnectionActive", v14)}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [IMDChorosController recordOffGridTimeFor:v4];
  if ([(IMDChorosController *)self isSatelliteConnectionActive]&& ![(IMDChorosController *)self wasLastStateSatelliteConnectionActive])
  {
    [(IMDChorosController *)self setWasLastStateSatelliteConnectionActive:1];
    v11 = [MEMORY[0x277CBEBD0] messagesAppDomain];
    [v11 setInteger:0 forKey:*MEMORY[0x277D1A7C8]];

    v12 = [MEMORY[0x277CBEBD0] messagesAppDomain];
    [v12 setInteger:0 forKey:*MEMORY[0x277D1A450]];
  }

  else
  {
    [(IMDChorosController *)self setWasLastStateSatelliteConnectionActive:0, v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)messageReceived:(id)a3 withMetadata:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v12 = [v11 stewieEnabled];

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Received message from Stewie", buf, 2u);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Processing received Stewie emergency message", buf, 2u);
        }
      }

      v15 = v8;
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v16 = +[IMDChorosController chatIdentifierForEmergency];
        v17 = [v15 conversationID];
        v18 = [v15 sequenceNum];
        v19 = [v15 text];
        [(IMDChorosController *)self _processReceivedTextMessageForService:1 chatIdentifier:v16 conversationID:v17 sequenceNum:v18 text:v19];
      }

      else
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_22B6411EC;
        v25[3] = &unk_278702FA0;
        v25[4] = self;
        v15 = v15;
        v26 = v15;
        dispatch_sync(MEMORY[0x277D85CD0], v25);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Processing received Stewie Roadside Text Message", buf, 2u);
          }
        }

        v21 = v8;
        dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
        v15 = +[IMDChorosController chatIdentifierForRoadside:](IMDChorosController, "chatIdentifierForRoadside:", [v21 providerId]);
        v22 = [v21 conversationID];
        v23 = [v21 sequenceNum];
        v24 = [v21 text];

        [(IMDChorosController *)self _processReceivedTextMessageForService:8 chatIdentifier:v15 conversationID:v22 sequenceNum:v23 text:v24];
      }

      else
      {
        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D7C6C();
        }
      }
    }

    v10[2](v10);
  }
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_observers addObject:?];
  }
}

+ (void)recordOffGridTimeFor:(id)a3
{
  v3 = a3;
  _sSo19IMDChorosControllerC12IMDaemonCoreE17recordOffGridTime3forySo13CTStewieStateC_tFZ_0(v3);
}

@end