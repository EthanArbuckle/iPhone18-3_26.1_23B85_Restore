@interface IMBlastdoor
+ (BOOL)_commandReadyForBlastdoor:(int64_t)a3;
+ (BOOL)_messageBlastdoorMetricsEnabled;
+ (BOOL)supportsFeature:(id)a3;
+ (id)blastdoorInterfaceForSenderContext:(id)a3;
+ (id)logger;
+ (id)sendLiteData:(id)a3 senderContext:(id)a4 error:(id *)a5;
+ (id)sendLiteRelayData:(id)a3 senderContext:(id)a4 error:(id *)a5;
+ (id)sendRelayGroupMutationData:(id)a3 error:(id *)a4;
+ (id)sendRelayReachabilityRequest:(id)a3 error:(id *)a4;
+ (id)sendRelayReachabilityResponse:(id)a3 error:(id *)a4;
+ (id)sendSatelliteSMSDictionary:(id)a3 senderContext:(id)a4 error:(id *)a5;
+ (int64_t)_convertErrorToBlastdoorError:(id)a3;
+ (void)_askToTapToRadarForGUID:(id)a3 messageTypeString:(id)a4 sender:(id)a5 errorString:(id)a6 payloadAttachmentURL:(id)a7;
+ (void)sendBlastDoorError:(id)a3 guid:(id)a4 messageTypeString:(id)a5 senderURI:(id)a6 senderToken:(id)a7 messageContext:(id)a8 payloadAttachmentURL:(id)a9;
+ (void)sendClearNoticeData:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5;
+ (void)sendCollaborationNoticeActionDictionary:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5;
+ (void)sendCollaborationNoticeData:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5;
+ (void)sendDictionary:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5;
+ (void)sendSMSDictionary:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation IMBlastdoor

+ (id)logger
{
  if (qword_281421270 != -1)
  {
    sub_22B7D3B14();
  }

  v3 = qword_281421280;

  return v3;
}

+ (BOOL)supportsFeature:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D28680] supportsFeature:v3];
  v5 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Installed BlastDoor supports feature %@ (%@)", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)_commandReadyForBlastdoor:(int64_t)a3
{
  result = 0;
  switch(a3)
  {
    case 100:
    case 101:
    case 102:
    case 105:
    case 111:
    case 112:
    case 113:
    case 116:
    case 118:
    case 119:
    case 122:
    case 124:
    case 125:
    case 126:
    case 127:
    case 134:
    case 135:
    case 138:
    case 139:
      result = 1;
      break;
    case 103:
    case 104:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 114:
    case 115:
    case 117:
    case 120:
    case 121:
    case 123:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 136:
    case 137:
      return result;
    default:
      result = a3 == 170;
      break;
  }

  return result;
}

+ (id)blastdoorInterfaceForSenderContext:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v5 = [v4 isUnknownSenderBlastDoorEnabled];

  if (v5)
  {
    if (qword_281422570 != -1)
    {
      sub_22B7D3B3C();
    }

    if (qword_281422580 != -1)
    {
      sub_22B7D3B50();
    }

    v6 = [v3 isTrustedSender];
    v7 = &qword_281422578;
    if (!v6)
    {
      v7 = &qword_281422588;
    }

    v8 = *v7;
  }

  else
  {
    if (qword_27D8CFE98 != -1)
    {
      sub_22B7D3B28();
    }

    v8 = qword_27D8CFEA0;
  }

  v9 = v8;

  return v8;
}

+ (BOOL)_messageBlastdoorMetricsEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-bd-metrics"];
  LOBYTE(v4) = [v3 BOOLValue];

  v5 = IMGetCachedDomainValueForKey();
  v6 = v5;
  if (v5)
  {
    v4 = [v5 BOOLValue];
    v7 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v4)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Metrics manually enabled (%@)", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 ^ 1;
}

+ (int64_t)_convertErrorToBlastdoorError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCA050]];

  if (v5)
  {
    v6 = [v3 code] == 4864;
    v7 = 13001;
    v8 = 13003;
LABEL_3:
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_6;
  }

  v11 = [v3 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x277D18DF8]];

  if (!v12)
  {
    v14 = [v3 domain];
    v15 = [v14 isEqualToString:*MEMORY[0x277D19CE0]];

    if (v15)
    {
      v9 = 13300;
      goto LABEL_6;
    }

    v16 = [v3 domain];
    if ([v16 isEqualToString:@"BlastDoor.Explosion"])
    {
    }

    else
    {
      v17 = [v3 domain];
      v18 = [v17 isEqualToString:@"com.apple.BlastDoor"];

      if ((v18 & 1) == 0)
      {
        v19 = [v3 domain];
        v20 = [v19 isEqualToString:*MEMORY[0x277D18DF0]];

        if (v20)
        {
          v9 = 13600;
          goto LABEL_6;
        }

        v21 = [v3 userInfo];
        v22 = [v21 objectForKeyedSubscript:@"errorMetric"];

        v6 = v22 == 0;
        v7 = 13250;
        v8 = 13000;
        goto LABEL_3;
      }
    }

    v9 = 13500;
    goto LABEL_6;
  }

  v13 = [v3 code];
  if ((v13 - 1) >= 0x17)
  {
    v9 = 13250;
  }

  else
  {
    v9 = qword_22B7F8638[v13 - 1];
  }

LABEL_6:

  return v9;
}

+ (void)_askToTapToRadarForGUID:(id)a3 messageTypeString:(id)a4 sender:(id)a5 errorString:(id)a6 payloadAttachmentURL:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277D19268] sharedInstance];
  if (![v16 isInternalInstall])
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  if (v17)
  {
    v16 = IMGetCachedDomainValueForKey();
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([MEMORY[0x277CBEAA8] date], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceDate:", v16), v20 = v19, v18, v20 < 3600.0))
    {
      v23 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v37 = v20;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Skipping blastdoor validation prompt because last fire date was %f seconds ago", buf, 0xCu);
      }
    }

    else
    {
      if (qword_27D8CFEB0 != -1)
      {
        sub_22B7D3B64();
      }

      v21 = MEMORY[0x277D192D0];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"An incoming iMessage from %@ failed validation.\n\nA copy of the message will be attached.", v13];
      v23 = [v21 userNotificationWithIdentifier:@"com.apple.Messages.BlastdoorValidationFailureInternalPrompt" title:@"iMessage Validation Failure" message:v22 defaultButton:@"File a Radar" alternateButton:@"Dismiss" otherButton:0];

      if (v23)
      {
        v24 = [MEMORY[0x277D192D8] sharedInstance];
        v25 = [v24 countForIdentifier:@"com.apple.Messages.BlastdoorValidationFailureInternalPrompt"];

        if (!v25)
        {
          v26 = +[IMBlastdoor logger];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Presenting BD TTR UI", buf, 2u);
          }

          v27 = [MEMORY[0x277CBEAA8] date];
          IMSetDomainValueForKey();

          v28 = [MEMORY[0x277D1AAA8] sharedInstance];
          [v28 trackEvent:*MEMORY[0x277D1A1E0]];

          [v23 setUsesNotificationCenter:0];
          [v23 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
          v29 = [MEMORY[0x277D192D8] sharedInstance];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = sub_22B58DF00;
          v31[3] = &unk_2787051C8;
          v32 = v14;
          v33 = v12;
          v34 = v11;
          v35 = v15;
          [v29 addUserNotification:v23 listener:0 completionHandler:v31];
        }
      }
    }

    goto LABEL_16;
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

+ (void)sendBlastDoorError:(id)a3 guid:(id)a4 messageTypeString:(id)a5 senderURI:(id)a6 senderToken:(id)a7 messageContext:(id)a8 payloadAttachmentURL:(id)a9
{
  v65 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (([objc_opt_class() _messageBlastdoorMetricsEnabled] & 1) == 0)
  {
    v21 = +[IMBlastdoor logger];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Wanted to send BlastDoor metric, but disabled via server bag.";
LABEL_12:
    v23 = v21;
    v24 = 2;
    goto LABEL_13;
  }

  if (![v15 length])
  {
    v21 = +[IMBlastdoor logger];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Wanted to send BlastDoor metric, guid was nil";
    goto LABEL_12;
  }

  if (qword_27D8CFEC0 != -1)
  {
    sub_22B7D3B78();
  }

  if ([qword_27D8CFEB8 containsObject:v15])
  {
    v21 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v15;
      v22 = "Already submitted metric for GUID, ignoring (%@)";
      v23 = v21;
      v24 = 12;
LABEL_13:
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }

LABEL_14:

    goto LABEL_15;
  }

  [qword_27D8CFEB8 addObject:v15];
  v26 = im_checkpointIDSService();

  if (v26)
  {
    v27 = [objc_opt_class() _convertErrorToBlastdoorError:v14];
    if (v27 != -1)
    {
      v28 = v27;
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v47 = v28;
      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v28];
      [v21 setObject:v29 forKey:@"fR"];

      v30 = IDSGetUUIDData();
      if (v30)
      {
        [v21 setObject:v30 forKey:@"fU"];
      }

      v51 = v30;
      if (v18)
      {
        [v21 setObject:v18 forKey:@"t"];
      }

      v31 = [v14 userInfo];
      v32 = [v31 objectForKeyedSubscript:@"errorMetric"];

      v33 = [MEMORY[0x277D1A9A0] deviceIsLockedDown];
      v34 = &stru_283F23018;
      if (v33)
      {
        v34 = @"-Lockdown";
      }

      v50 = v34;
      v52 = v32;
      v35 = [v32 length];
      v48 = MEMORY[0x277CCACA8];
      v53 = [v14 domain];
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
      v49 = v36;
      if (v35)
      {
        [v48 stringWithFormat:@"type-%@-%@-%@-%@%@", v16, v53, v36, v52, v50];
      }

      else
      {
        [v48 stringWithFormat:@"type-%@-%@-%@%@", v16, v53, v36, v50, v46];
      }
      v37 = ;

      v54 = v37;
      [v21 setObject:v37 forKey:@"fRM"];
      v38 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v62 = v15;
        v63 = 2112;
        v64 = v21;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_DEFAULT, "Sending BlastDoor metric (guid: %@): %@", buf, 0x16u);
      }

      v39 = im_checkpointIDSService();
      [v39 sendServerMessage:v21 command:&unk_283F4E720 fromAccount:0];

      if (v15 && v19)
      {
        v40 = im_checkpointIDSService();
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
        im_sendCertifiedDeliveryReceiptIfPossible();
      }

      v42 = [MEMORY[0x277D19268] sharedInstance];
      v43 = [v42 isInternalInstall];

      if (v43)
      {
        if (([v52 containsString:@"AVFoundationErrorDomain--11869"] & 1) != 0 || objc_msgSend(v16, "containsString:", @"131"))
        {
          v44 = +[IMBlastdoor logger];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v62 = v54;
            v63 = 2112;
            v64 = v15;
            _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_DEFAULT, "Don't show BlastDoor TTR for error metric: %@ (guid: %@)", buf, 0x16u);
          }

          goto LABEL_40;
        }

        v45 = dispatch_time(0, 5000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B58E884;
        block[3] = &unk_2787051F0;
        v56 = v15;
        v57 = v16;
        v58 = v17;
        v59 = v54;
        v60 = v20;
        dispatch_after(v45, MEMORY[0x277D85CD0], block);
      }

LABEL_40:
      goto LABEL_14;
    }
  }

LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)sendDictionary:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      v11 = [v8 objectForKey:*MEMORY[0x277D18810]];
      v12 = [v11 objectForKey:*MEMORY[0x277D18848]];
      if (!v12)
      {
        v12 = [v11 objectForKey:*MEMORY[0x277D187D8]];
      }

      v13 = [v12 integerValue];
      v14 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v27 = v13;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping command through BlastDoor: %ld", buf, 0xCu);
      }

      v15 = [a1 blastdoorInterfaceForSenderContext:v9];
      v16 = objc_alloc(MEMORY[0x277CF3148]);
      v17 = [v9 serviceName];
      v18 = [v16 initForBusinessChat:{objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277D186B8])}];

      v25 = 0;
      v19 = [v15 defuseTopLevelDictionary:v8 context:v18 error:&v25];
      v20 = v25;
      v21 = v10[2];
      if (v19)
      {
        v21(v10, v13, v19, 0);
      }

      else
      {
        v21(v10, v13, 0, v20);
      }
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v23 = [v22 initWithDomain:*MEMORY[0x277D18DF0] code:1 userInfo:0];
      (v10[2])(v10, 0, 0, v23);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)sendSMSDictionary:(id)a3 withCompletionBlock:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 objectForKey:@"g"];
      v9 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Piping SMS/MMS dictionary for GUID (%@) through BlastDoor", buf, 0xCu);
      }

      v10 = [MEMORY[0x277D1AB80] contextWithKnownSender:0 serviceName:*MEMORY[0x277D1A610]];
      v11 = [a1 blastdoorInterfaceForSenderContext:v10];
      if (objc_opt_respondsToSelector())
      {
        v24 = 0;
        v12 = [v11 defuseSMSDictionary:v6 error:&v24];
        v13 = v24;
        v14 = v7[2];
        if (v12)
        {
          v14(v7, v12, 0);
        }

        else
        {
          v14(v7, 0, v13);
        }
      }

      else
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = sub_22B58F014;
        v21[3] = &unk_278705218;
        v22 = v8;
        v23 = v7;
        [v11 defuseSMSDictionary:v6 resultHandler:v21];

        v13 = v22;
      }
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = [v15 initWithDomain:*MEMORY[0x277D18DF0] code:2 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58F1B0;
      block[3] = &unk_2787028B0;
      v19 = v16;
      v20 = v7;
      v8 = v16;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)sendClearNoticeData:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:8 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58F54C;
      block[3] = &unk_2787028B0;
      v20 = v12;
      v21 = v10;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Clear Notices through Blastdoor", buf, 2u);
    }

    v15 = [a1 blastdoorInterfaceForSenderContext:v9];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B58F564;
    v17[3] = &unk_278705240;
    v18 = v10;
    [v15 defuseCollaborationClearNoticePayload:v8 resultHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)sendCollaborationNoticeData:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:4 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58FA74;
      block[3] = &unk_2787028B0;
      v20 = v12;
      v21 = v10;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Collaboration Notices through Blastdoor", buf, 2u);
    }

    v15 = [a1 blastdoorInterfaceForSenderContext:v9];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B58FA8C;
    v17[3] = &unk_278705268;
    v18 = v10;
    [v15 defuseCollaborationNoticePayload:v8 resultHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)sendCollaborationNoticeActionDictionary:(id)a3 senderContext:(id)a4 withCompletionBlock:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:6 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58FF9C;
      block[3] = &unk_2787028B0;
      v20 = v12;
      v21 = v10;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Collaboration Notice Action through Blastdoor", buf, 2u);
    }

    v15 = [a1 blastdoorInterfaceForSenderContext:v9];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B58FFB8;
    v17[3] = &unk_2787052B8;
    v18 = v10;
    [v15 defuseCollaborationNoticeActionDictionary:v8 resultHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)sendLiteData:(id)a3 senderContext:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite message through Blastdoor", &v16, 2u);
  }

  v11 = [a1 blastdoorInterfaceForSenderContext:v9];
  v12 = [v11 defuseLiteTextMessage:v8 error:a5];

  v13 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v12;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Blastdoor lite message response %p received", &v16, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)sendLiteRelayData:(id)a3 senderContext:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite relay message through Blastdoor", &v16, 2u);
  }

  v11 = [a1 blastdoorInterfaceForSenderContext:v9];
  v12 = [v11 defuseLiteRelayTextMessage:v8 error:a5];

  v13 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v12;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Blastdoor lite relay message response %p received", &v16, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)sendSatelliteSMSDictionary:(id)a3 senderContext:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite message through Blastdoor", &v16, 2u);
  }

  v11 = [a1 blastdoorInterfaceForSenderContext:v9];
  v12 = [v11 defuseSatelliteSMSTextMessageDictionary:v8 error:a5];

  v13 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v12;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Blastdoor satellite SMS message response %p received", &v16, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)sendRelayGroupMutationData:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping group relay message through Blastdoor", &v14, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:0 serviceName:*MEMORY[0x277D1A608]];
  v9 = [a1 blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayGroupMutationPayload:v6 error:a4];

  v11 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v10;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Blastdoor group relay message response %p received", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)sendRelayReachabilityRequest:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping relay reachability request through Blastdoor", &v14, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:1 serviceName:*MEMORY[0x277D1A608]];
  v9 = [a1 blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayReachabilityRequestPayload:v6 error:a4];

  v11 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v10;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Blastdoor relay reachability request response %p received", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)sendRelayReachabilityResponse:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping relay reachability response through Blastdoor", &v14, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:1 serviceName:*MEMORY[0x277D1A608]];
  v9 = [a1 blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayReachabilityResponsePayload:v6 error:a4];

  v11 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v10;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Blastdoor relay reachability response response %p received", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end