@interface IMBlastdoor
+ (BOOL)_commandReadyForBlastdoor:(int64_t)blastdoor;
+ (BOOL)_messageBlastdoorMetricsEnabled;
+ (BOOL)supportsFeature:(id)feature;
+ (id)blastdoorInterfaceForSenderContext:(id)context;
+ (id)logger;
+ (id)sendLiteData:(id)data senderContext:(id)context error:(id *)error;
+ (id)sendLiteRelayData:(id)data senderContext:(id)context error:(id *)error;
+ (id)sendRelayGroupMutationData:(id)data error:(id *)error;
+ (id)sendRelayReachabilityRequest:(id)request error:(id *)error;
+ (id)sendRelayReachabilityResponse:(id)response error:(id *)error;
+ (id)sendSatelliteSMSDictionary:(id)dictionary senderContext:(id)context error:(id *)error;
+ (int64_t)_convertErrorToBlastdoorError:(id)error;
+ (void)_askToTapToRadarForGUID:(id)d messageTypeString:(id)string sender:(id)sender errorString:(id)errorString payloadAttachmentURL:(id)l;
+ (void)sendBlastDoorError:(id)error guid:(id)guid messageTypeString:(id)string senderURI:(id)i senderToken:(id)token messageContext:(id)context payloadAttachmentURL:(id)l;
+ (void)sendClearNoticeData:(id)data senderContext:(id)context withCompletionBlock:(id)block;
+ (void)sendCollaborationNoticeActionDictionary:(id)dictionary senderContext:(id)context withCompletionBlock:(id)block;
+ (void)sendCollaborationNoticeData:(id)data senderContext:(id)context withCompletionBlock:(id)block;
+ (void)sendDictionary:(id)dictionary senderContext:(id)context withCompletionBlock:(id)block;
+ (void)sendSMSDictionary:(id)dictionary withCompletionBlock:(id)block;
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

+ (BOOL)supportsFeature:(id)feature
{
  v13 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v4 = [MEMORY[0x277D28680] supportsFeature:featureCopy];
  v5 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v9 = 138412546;
    v10 = featureCopy;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Installed BlastDoor supports feature %@ (%@)", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)_commandReadyForBlastdoor:(int64_t)blastdoor
{
  result = 0;
  switch(blastdoor)
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
      result = blastdoor == 170;
      break;
  }

  return result;
}

+ (id)blastdoorInterfaceForSenderContext:(id)context
{
  contextCopy = context;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnknownSenderBlastDoorEnabled = [mEMORY[0x277D1A9B8] isUnknownSenderBlastDoorEnabled];

  if (isUnknownSenderBlastDoorEnabled)
  {
    if (qword_281422570 != -1)
    {
      sub_22B7D3B3C();
    }

    if (qword_281422580 != -1)
    {
      sub_22B7D3B50();
    }

    isTrustedSender = [contextCopy isTrustedSender];
    v7 = &qword_281422578;
    if (!isTrustedSender)
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
  LOBYTE(bOOLValue) = [v3 BOOLValue];

  v5 = IMGetCachedDomainValueForKey();
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
    v7 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (bOOLValue)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Metrics manually enabled (%@)", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return bOOLValue ^ 1;
}

+ (int64_t)_convertErrorToBlastdoorError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CCA050]];

  if (v5)
  {
    v6 = [errorCopy code] == 4864;
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

  domain2 = [errorCopy domain];
  v12 = [domain2 isEqualToString:*MEMORY[0x277D18DF8]];

  if (!v12)
  {
    domain3 = [errorCopy domain];
    v15 = [domain3 isEqualToString:*MEMORY[0x277D19CE0]];

    if (v15)
    {
      v9 = 13300;
      goto LABEL_6;
    }

    domain4 = [errorCopy domain];
    if ([domain4 isEqualToString:@"BlastDoor.Explosion"])
    {
    }

    else
    {
      domain5 = [errorCopy domain];
      v18 = [domain5 isEqualToString:@"com.apple.BlastDoor"];

      if ((v18 & 1) == 0)
      {
        domain6 = [errorCopy domain];
        v20 = [domain6 isEqualToString:*MEMORY[0x277D18DF0]];

        if (v20)
        {
          v9 = 13600;
          goto LABEL_6;
        }

        userInfo = [errorCopy userInfo];
        v22 = [userInfo objectForKeyedSubscript:@"errorMetric"];

        v6 = v22 == 0;
        v7 = 13250;
        v8 = 13000;
        goto LABEL_3;
      }
    }

    v9 = 13500;
    goto LABEL_6;
  }

  code = [errorCopy code];
  if ((code - 1) >= 0x17)
  {
    v9 = 13250;
  }

  else
  {
    v9 = qword_22B7F8638[code - 1];
  }

LABEL_6:

  return v9;
}

+ (void)_askToTapToRadarForGUID:(id)d messageTypeString:(id)string sender:(id)sender errorString:(id)errorString payloadAttachmentURL:(id)l
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stringCopy = string;
  senderCopy = sender;
  errorStringCopy = errorString;
  lCopy = l;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if (![mEMORY[0x277D19268] isInternalInstall])
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  if (v17)
  {
    mEMORY[0x277D19268] = IMGetCachedDomainValueForKey();
    if (mEMORY[0x277D19268] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([MEMORY[0x277CBEAA8] date], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceDate:", mEMORY[0x277D19268]), v20 = v19, v18, v20 < 3600.0))
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
      senderCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"An incoming iMessage from %@ failed validation.\n\nA copy of the message will be attached.", senderCopy];
      v23 = [v21 userNotificationWithIdentifier:@"com.apple.Messages.BlastdoorValidationFailureInternalPrompt" title:@"iMessage Validation Failure" message:senderCopy defaultButton:@"File a Radar" alternateButton:@"Dismiss" otherButton:0];

      if (v23)
      {
        mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
        v25 = [mEMORY[0x277D192D8] countForIdentifier:@"com.apple.Messages.BlastdoorValidationFailureInternalPrompt"];

        if (!v25)
        {
          v26 = +[IMBlastdoor logger];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Presenting BD TTR UI", buf, 2u);
          }

          date = [MEMORY[0x277CBEAA8] date];
          IMSetDomainValueForKey();

          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A1E0]];

          [v23 setUsesNotificationCenter:0];
          [v23 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
          mEMORY[0x277D192D8]2 = [MEMORY[0x277D192D8] sharedInstance];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = sub_22B58DF00;
          v31[3] = &unk_2787051C8;
          v32 = errorStringCopy;
          v33 = stringCopy;
          v34 = dCopy;
          v35 = lCopy;
          [mEMORY[0x277D192D8]2 addUserNotification:v23 listener:0 completionHandler:v31];
        }
      }
    }

    goto LABEL_16;
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

+ (void)sendBlastDoorError:(id)error guid:(id)guid messageTypeString:(id)string senderURI:(id)i senderToken:(id)token messageContext:(id)context payloadAttachmentURL:(id)l
{
  v65 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  guidCopy = guid;
  stringCopy = string;
  iCopy = i;
  tokenCopy = token;
  contextCopy = context;
  lCopy = l;
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

  if (![guidCopy length])
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

  if ([qword_27D8CFEB8 containsObject:guidCopy])
  {
    v21 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = guidCopy;
      v22 = "Already submitted metric for GUID, ignoring (%@)";
      v23 = v21;
      v24 = 12;
LABEL_13:
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }

LABEL_14:

    goto LABEL_15;
  }

  [qword_27D8CFEB8 addObject:guidCopy];
  v26 = im_checkpointIDSService();

  if (v26)
  {
    v27 = [objc_opt_class() _convertErrorToBlastdoorError:errorCopy];
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
      if (tokenCopy)
      {
        [v21 setObject:tokenCopy forKey:@"t"];
      }

      userInfo = [errorCopy userInfo];
      v32 = [userInfo objectForKeyedSubscript:@"errorMetric"];

      deviceIsLockedDown = [MEMORY[0x277D1A9A0] deviceIsLockedDown];
      v34 = &stru_283F23018;
      if (deviceIsLockedDown)
      {
        v34 = @"-Lockdown";
      }

      v50 = v34;
      v52 = v32;
      v35 = [v32 length];
      v48 = MEMORY[0x277CCACA8];
      domain = [errorCopy domain];
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      v49 = v36;
      if (v35)
      {
        [v48 stringWithFormat:@"type-%@-%@-%@-%@%@", stringCopy, domain, v36, v52, v50];
      }

      else
      {
        [v48 stringWithFormat:@"type-%@-%@-%@%@", stringCopy, domain, v36, v50, v46];
      }
      v37 = ;

      v54 = v37;
      [v21 setObject:v37 forKey:@"fRM"];
      v38 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v62 = guidCopy;
        v63 = 2112;
        v64 = v21;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_DEFAULT, "Sending BlastDoor metric (guid: %@): %@", buf, 0x16u);
      }

      v39 = im_checkpointIDSService();
      [v39 sendServerMessage:v21 command:&unk_283F4E720 fromAccount:0];

      if (guidCopy && contextCopy)
      {
        v40 = im_checkpointIDSService();
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
        im_sendCertifiedDeliveryReceiptIfPossible();
      }

      mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
      isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

      if (isInternalInstall)
      {
        if (([v52 containsString:@"AVFoundationErrorDomain--11869"] & 1) != 0 || objc_msgSend(stringCopy, "containsString:", @"131"))
        {
          v44 = +[IMBlastdoor logger];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v62 = v54;
            v63 = 2112;
            v64 = guidCopy;
            _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_DEFAULT, "Don't show BlastDoor TTR for error metric: %@ (guid: %@)", buf, 0x16u);
          }

          goto LABEL_40;
        }

        v45 = dispatch_time(0, 5000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B58E884;
        block[3] = &unk_2787051F0;
        v56 = guidCopy;
        v57 = stringCopy;
        v58 = iCopy;
        v59 = v54;
        v60 = lCopy;
        dispatch_after(v45, MEMORY[0x277D85CD0], block);
      }

LABEL_40:
      goto LABEL_14;
    }
  }

LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)sendDictionary:(id)dictionary senderContext:(id)context withCompletionBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy)
  {
    if (dictionaryCopy)
    {
      v11 = [dictionaryCopy objectForKey:*MEMORY[0x277D18810]];
      v12 = [v11 objectForKey:*MEMORY[0x277D18848]];
      if (!v12)
      {
        v12 = [v11 objectForKey:*MEMORY[0x277D187D8]];
      }

      integerValue = [v12 integerValue];
      v14 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v27 = integerValue;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping command through BlastDoor: %ld", buf, 0xCu);
      }

      v15 = [self blastdoorInterfaceForSenderContext:contextCopy];
      v16 = objc_alloc(MEMORY[0x277CF3148]);
      serviceName = [contextCopy serviceName];
      v18 = [v16 initForBusinessChat:{objc_msgSend(serviceName, "isEqualToString:", *MEMORY[0x277D186B8])}];

      v25 = 0;
      v19 = [v15 defuseTopLevelDictionary:dictionaryCopy context:v18 error:&v25];
      v20 = v25;
      v21 = blockCopy[2];
      if (v19)
      {
        v21(blockCopy, integerValue, v19, 0);
      }

      else
      {
        v21(blockCopy, integerValue, 0, v20);
      }
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v23 = [v22 initWithDomain:*MEMORY[0x277D18DF0] code:1 userInfo:0];
      (blockCopy[2])(blockCopy, 0, 0, v23);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)sendSMSDictionary:(id)dictionary withCompletionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  blockCopy = block;
  if (blockCopy)
  {
    if (dictionaryCopy)
    {
      v8 = [dictionaryCopy objectForKey:@"g"];
      v9 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Piping SMS/MMS dictionary for GUID (%@) through BlastDoor", buf, 0xCu);
      }

      v10 = [MEMORY[0x277D1AB80] contextWithKnownSender:0 serviceName:*MEMORY[0x277D1A610]];
      v11 = [self blastdoorInterfaceForSenderContext:v10];
      if (objc_opt_respondsToSelector())
      {
        v24 = 0;
        v12 = [v11 defuseSMSDictionary:dictionaryCopy error:&v24];
        v13 = v24;
        v14 = blockCopy[2];
        if (v12)
        {
          v14(blockCopy, v12, 0);
        }

        else
        {
          v14(blockCopy, 0, v13);
        }
      }

      else
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = sub_22B58F014;
        v21[3] = &unk_278705218;
        v22 = v8;
        v23 = blockCopy;
        [v11 defuseSMSDictionary:dictionaryCopy resultHandler:v21];

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
      v20 = blockCopy;
      v8 = v16;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)sendClearNoticeData:(id)data senderContext:(id)context withCompletionBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy)
  {
    if (!dataCopy)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:8 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58F54C;
      block[3] = &unk_2787028B0;
      v20 = v12;
      v21 = blockCopy;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Clear Notices through Blastdoor", buf, 2u);
    }

    v15 = [self blastdoorInterfaceForSenderContext:contextCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B58F564;
    v17[3] = &unk_278705240;
    v18 = blockCopy;
    [v15 defuseCollaborationClearNoticePayload:dataCopy resultHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)sendCollaborationNoticeData:(id)data senderContext:(id)context withCompletionBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy)
  {
    if (!dataCopy)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:4 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58FA74;
      block[3] = &unk_2787028B0;
      v20 = v12;
      v21 = blockCopy;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Collaboration Notices through Blastdoor", buf, 2u);
    }

    v15 = [self blastdoorInterfaceForSenderContext:contextCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B58FA8C;
    v17[3] = &unk_278705268;
    v18 = blockCopy;
    [v15 defuseCollaborationNoticePayload:dataCopy resultHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)sendCollaborationNoticeActionDictionary:(id)dictionary senderContext:(id)context withCompletionBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy)
  {
    if (!dictionaryCopy)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:6 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58FF9C;
      block[3] = &unk_2787028B0;
      v20 = v12;
      v21 = blockCopy;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Collaboration Notice Action through Blastdoor", buf, 2u);
    }

    v15 = [self blastdoorInterfaceForSenderContext:contextCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B58FFB8;
    v17[3] = &unk_2787052B8;
    v18 = blockCopy;
    [v15 defuseCollaborationNoticeActionDictionary:dictionaryCopy resultHandler:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)sendLiteData:(id)data senderContext:(id)context error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite message through Blastdoor", &v16, 2u);
  }

  v11 = [self blastdoorInterfaceForSenderContext:contextCopy];
  v12 = [v11 defuseLiteTextMessage:dataCopy error:error];

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

+ (id)sendLiteRelayData:(id)data senderContext:(id)context error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite relay message through Blastdoor", &v16, 2u);
  }

  v11 = [self blastdoorInterfaceForSenderContext:contextCopy];
  v12 = [v11 defuseLiteRelayTextMessage:dataCopy error:error];

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

+ (id)sendSatelliteSMSDictionary:(id)dictionary senderContext:(id)context error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contextCopy = context;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite message through Blastdoor", &v16, 2u);
  }

  v11 = [self blastdoorInterfaceForSenderContext:contextCopy];
  v12 = [v11 defuseSatelliteSMSTextMessageDictionary:dictionaryCopy error:error];

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

+ (id)sendRelayGroupMutationData:(id)data error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping group relay message through Blastdoor", &v14, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:0 serviceName:*MEMORY[0x277D1A608]];
  v9 = [self blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayGroupMutationPayload:dataCopy error:error];

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

+ (id)sendRelayReachabilityRequest:(id)request error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping relay reachability request through Blastdoor", &v14, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:1 serviceName:*MEMORY[0x277D1A608]];
  v9 = [self blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayReachabilityRequestPayload:requestCopy error:error];

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

+ (id)sendRelayReachabilityResponse:(id)response error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping relay reachability response through Blastdoor", &v14, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:1 serviceName:*MEMORY[0x277D1A608]];
  v9 = [self blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayReachabilityResponsePayload:responseCopy error:error];

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