@interface IMDRoutingAgent
+ (id)sharedInstance;
- (BOOL)__attachmentPassesDurationRestrictions:(id)restrictions;
- (BOOL)__attachmentPassesMMSRestrictions:(id)restrictions;
- (BOOL)__isSendableType:(id)type;
- (BOOL)_attachmentCanBeSentViaMMS:(id)s;
- (BOOL)_messageHasDowngradeMarkers:(id)markers;
- (BOOL)canSendMessage:(id)message;
- (BOOL)shouldSendMessage:(id)message;
- (IMDRoutingAgent)init;
- (double)_lowerDowngradeIntervalForMessage:(id)message;
- (double)_upperDowngradeIntervalForMessage:(id)message;
- (int)_undeliveredMessageWaterMark;
- (int64_t)_bagValueForKey:(id)key defaultValue:(int64_t)value minimumValue:(int64_t)minimumValue;
- (void)_getCandidateMessages:(id)messages;
- (void)getRoutableMessages:(id)messages;
@end

@implementation IMDRoutingAgent

- (BOOL)__isSendableType:(id)type
{
  if (sub_100001FEC(type) || sub_100001F68(type) || sub_100001F94(type))
  {
    return 1;
  }

  return sub_100001FC0(type);
}

- (BOOL)__attachmentPassesDurationRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  uTIType = [restrictions UTIType];
  path = [restrictionsCopy path];
  LOBYTE(restrictionsCopy) = sub_100001F94(uTIType);
  v6 = sub_100001F68(uTIType);
  if ((restrictionsCopy & 1) == 0 && !v6)
  {
    return 1;
  }

  v7 = 0.0;
  if (![path length])
  {
    goto LABEL_8;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [NSURL fileURLWithPath:path];
  if (!v9)
  {
    objc_autoreleasePoolPop(v8);
LABEL_8:
    v12 = 1;
    Seconds = 0.0;
    goto LABEL_16;
  }

  v10 = [[AVURLAsset alloc] initWithURL:v9 options:IMAVURLAssetOptionsDefault()];
  v11 = v10;
  if (v10)
  {
    [v10 duration];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  Seconds = CMTimeGetSeconds(&v18);

  objc_autoreleasePoolPop(v8);
  if (Seconds > 0.0)
  {
    if (sub_100001F94(uTIType))
    {
      [IMCTSMSUtilities IMMMSMaximumVideoDurationForPhoneNumber:0 simID:0];
    }

    else
    {
      [IMCTSMSUtilities IMMMSMaximumAudioDurationForPhoneNumber:0 simID:0];
    }

    v7 = v14;
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

LABEL_16:
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(v18.value) = 134218240;
      *(&v18.value + 4) = Seconds;
      LOWORD(v18.flags) = 2048;
      *(&v18.flags + 2) = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Comparing media duration (%f) against maximum: %f", &v18, 0x16u);
    }
  }

  if (v7 <= 0.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v12;
  }

  result = Seconds < v7;
  if (v16)
  {
    return 1;
  }

  return result;
}

- (BOOL)__attachmentPassesMMSRestrictions:(id)restrictions
{
  if (![IMCTSMSUtilities IMMMSRestrictedModeEnabledForPhoneNumber:0 simID:0])
  {
    return 1;
  }

  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v6 = objc_alloc_init(NSFileManager);
  path = [restrictions path];
  uTIType = [restrictions UTIType];
  mimeType = [restrictions mimeType];
  if ([v6 fileExistsAtPath:path])
  {
    LODWORD(v10) = [objc_msgSend(objc_msgSend(v6 attributesOfItemAtPath:path error:{0), "objectForKey:", NSFileSize), "intValue"}];
    if (sub_100001FEC(uTIType))
    {
      v11 = CFURLCreateWithFileSystemPath(0, path, kCFURLPOSIXPathStyle, 0);
      if (v11)
      {
        v12 = v11;
        v13 = CGImageSourceCreateWithURL(v11, 0);
        if (v13)
        {
          v14 = v13;
          Count = CGImageSourceGetCount(v13);
          v16 = CGImageSourceCopyProperties(v14, 0);
          if (v16)
          {
            v17 = v16;
            v18 = [(__CFDictionary *)v16 objectForKey:?];
            v19 = [(__CFDictionary *)v17 objectForKey:kCGImagePropertyPixelHeight];
            if (v19)
            {
              v20 = v18 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (v20)
            {
              if (Count)
              {
                v21 = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
                if (v21)
                {
                  v22 = v21;
                  v18 = [(__CFDictionary *)v21 objectForKey:kCGImagePropertyPixelWidth];
                  v19 = [(__CFDictionary *)v22 objectForKey:kCGImagePropertyPixelHeight];
                  CFRelease(v22);
                }
              }
            }

            [v18 doubleValue];
            width = v23;
            [v19 doubleValue];
            height = v24;
            CFRelease(v17);
          }

          CFRelease(v14);
        }

        CFRelease(v12);
      }
    }

    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  v26.n128_f64[0] = width;
  v27.n128_f64[0] = height;

  return _IMMMSPartCanBeSent(mimeType, v10, v26, v27);
}

- (BOOL)_attachmentCanBeSentViaMMS:(id)s
{
  if (-[IMDRoutingAgent __isSendableType:](self, "__isSendableType:", [s UTIType]))
  {
    if ([(IMDRoutingAgent *)self __attachmentPassesMMSRestrictions:s])
    {
      if ([(IMDRoutingAgent *)self __attachmentPassesDurationRestrictions:s])
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      v5 = IMOSLoggingEnabled();
      if (v5)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        v5 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v5)
        {
          LOWORD(v12) = 0;
          v7 = "Attachment does not pass duration restrictions";
          goto LABEL_14;
        }
      }
    }

    else
    {
      v5 = IMOSLoggingEnabled();
      if (v5)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        v5 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v5)
        {
          LOWORD(v12) = 0;
          v7 = "Attachment does not pass MMS restrictions";
LABEL_14:
          v8 = v10;
          v9 = 2;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v5 = IMOSLoggingEnabled();
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      v5 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v5)
      {
        v12 = 138412290;
        uTIType = [s UTIType];
        v7 = "UTI type (%@) is not sendable via MMS";
        v8 = v6;
        v9 = 12;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, &v12, v9);
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (double)_upperDowngradeIntervalForMessage:(id)message
{
  service = [message service];
  if ([service isEqualToString:IMServiceNameiMessage])
  {
    return [(IMDRoutingAgent *)self _bagValueForKey:@"md-auto-resend-as-sms-timeout-upper" defaultValue:600 minimumValue:30];
  }

  [(IMDRoutingAgent *)self _lowerDowngradeIntervalForMessage:message];
  return v7 + v7;
}

- (int)_undeliveredMessageWaterMark
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v9 = IMGetDomainIntForKey();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005E18;
  v5[3] = &unk_100010760;
  v5[4] = self;
  v5[5] = &v6;
  if (qword_100014CB8 != -1)
  {
    dispatch_once(&qword_100014CB8, v5);
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_getCandidateMessages:(id)messages
{
  [(IMDRoutingAgent *)self _undeliveredMessageWaterMark];
  v4 = IMDMessageRecordCopyUndeliveredOneToOneiMessages();
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    v20 = 0;
    goto LABEL_32;
  }

  messagesCopy = messages;
  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  v9 = *v24;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      v12 = IMDMessageRecordCopyChats();
      if (v12)
      {
        v13 = v12;
        if (CFArrayGetCount(v12) < 1)
        {
          v15 = 0;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
          v15 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }
        }

        CFRelease(v13);
        if (v11)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = [[IMDMSAMessage alloc] initWithMessage:v11 inChat:v15];
          service = [(IMDMSAMessage *)v17 service];
          if (![(NSString *)service isEqualToString:IMServiceNameiMessage]|| IMSMSFallbackEnabled())
          {
            service2 = [(IMDMSAMessage *)v17 service];
            if (![(NSString *)service2 isEqualToString:IMServiceNameRCS]|| ![(IMDMSAMessage *)v17 isEncrypted]|| IMSMSFallbackEnabled())
            {
              [v6 addObject:v17];
            }
          }

LABEL_27:
          CFRelease(v15);
          continue;
        }

        if (v15)
        {
          goto LABEL_27;
        }
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v8);
LABEL_30:
  v20 = [v6 copy];

  messages = messagesCopy;
LABEL_32:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000611C;
  block[3] = &unk_100010788;
  block[4] = v20;
  block[5] = messages;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_messageHasDowngradeMarkers:(id)markers
{
  chatProperties = [markers chatProperties];
  v4 = [chatProperties objectForKey:kFZChatPropertyLastDowngradedMessageTime];
  if (v4)
  {
    v5 = [chatProperties objectForKey:kFZChatPropertyManuallyDowngradedMessageCount];
    v6 = [chatProperties objectForKey:kFZChatPropertyAutoDowngradedMessageCount];
    LOBYTE(v4) = [v5 integerValue] > 0 || objc_msgSend(v6, "integerValue") > 0;
  }

  return v4;
}

- (double)_lowerDowngradeIntervalForMessage:(id)message
{
  v5 = IMGetCachedDomainValueForKey();
  if (v5)
  {
LABEL_2:

    [v5 doubleValue];
    return result;
  }

  service = [message service];
  if (![service isEqualToString:IMServiceNameiMessage])
  {
    service2 = [message service];
    if (![service2 isEqualToString:IMServiceNameRCS])
    {
      return 300.0;
    }

    v5 = [+[IMCTRCSUtilitiesManager sharedManager](IMCTRCSUtilitiesManager "sharedManager")];
    goto LABEL_2;
  }

  if ([(IMDRoutingAgent *)self _messageHasDowngradeMarkers:message])
  {
    v8 = @"md-auto-resend-as-sms-timeout-shortened";
    selfCopy2 = self;
    v10 = 25;
  }

  else
  {
    v8 = @"md-auto-resend-as-sms-timeout-lower";
    selfCopy2 = self;
    v10 = 300;
  }

  return [(IMDRoutingAgent *)selfCopy2 _bagValueForKey:v8 defaultValue:v10 minimumValue:20];
}

+ (id)sharedInstance
{
  if (qword_100014CC8 != -1)
  {
    sub_100007EC8();
  }

  if (qword_100014CD0 != -1)
  {
    sub_100007EDC();
  }

  if (qword_100014CD8 != -1)
  {
    sub_100007EF0();
  }

  return qword_100014CE0;
}

- (IMDRoutingAgent)init
{
  v3.receiver = self;
  v3.super_class = IMDRoutingAgent;
  return [(IMDRoutingAgent *)&v3 init];
}

- (int64_t)_bagValueForKey:(id)key defaultValue:(int64_t)value minimumValue:(int64_t)minimumValue
{
  v7 = [+[FTServerBag sharedInstanceForBagType:](FTServerBag sharedInstanceForBagType:{1), "objectForKey:", key}];
  if (!v7)
  {
    return value;
  }

  v8 = v7;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  value = minimumValue;
  if ([v8 integerValue] < minimumValue)
  {
    return value;
  }

  return [v8 integerValue];
}

- (BOOL)shouldSendMessage:(id)message
{
  gUID = [message GUID];
  v6 = [objc_msgSend(message "participants")];
  if (v6 != 1)
  {
    v9 = v6;
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v15 = 138412546;
    v16 = gUID;
    v17 = 1024;
    LODWORD(v18) = v9;
    v11 = "Cannot send message (%@) via SMS because it has an incorrect number of recipients (%d)";
    v12 = v10;
    v13 = 18;
    goto LABEL_12;
  }

  v7 = [objc_msgSend(message "participants")];
  if (([v7 _appearsToBePhoneNumber] & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v15 = 138412546;
    v16 = gUID;
    v17 = 2112;
    v18 = v7;
    v11 = "Cannot send message (%@) via SMS because it is not to a phone number: %@";
    v12 = v14;
    v13 = 22;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, &v15, v13);
    return 0;
  }

  return [(IMDRoutingAgent *)self canSendMessage:message];
}

- (BOOL)canSendMessage:(id)message
{
  if ([message iMessageOnly])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    *&buf[4] = [message GUID];
    v6 = "Message (%@) cannot be sent via SMS because it uses an iMessage only feature";
    goto LABEL_26;
  }

  if ([message isKeyTransparencyVerifiedMessage])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    *&buf[4] = [message GUID];
    v6 = "Message (%@) cannot be sent via SMS because it is in a verified chat";
    goto LABEL_26;
  }

  if ([message isCheckInMessage])
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    *&buf[4] = [message GUID];
    v6 = "Check In Message (%@) cannot be sent via SMS as its not supported";
    goto LABEL_26;
  }

  if (IMSMSEnabled())
  {
    if ((+[IMCTSMSUtilities isMessagesTheDefaultTextApp]& 1) != 0)
    {
      service = [message service];
      if ([service isEqualToString:IMServiceNameRCS] && objc_msgSend(message, "isEncrypted"))
      {
        if (!IMOSLoggingEnabled())
        {
          return 0;
        }

        v5 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          return 0;
        }

        *buf = 138412290;
        *&buf[4] = [message GUID];
        v6 = "Message (%@) cannot be sent via SMS because it is using RCS Encryption.";
        goto LABEL_26;
      }

      v12 = [objc_msgSend(message "attachments")];
      if (!(v12 | [objc_msgSend(message "subject")]))
      {
        return 1;
      }

      if (([IMCTSMSUtilities IMMMSEnabledForPhoneNumber:0 simID:0]& 1) != 0)
      {
        if (v12 > [IMCTSMSUtilities IMMMSMaximumSlideCountForPhoneNumber:0 simID:0])
        {
          if (!IMOSLoggingEnabled())
          {
            return 0;
          }

          v13 = OSLogHandleForIMFoundationCategory();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            return 0;
          }

          *buf = 138412546;
          *&buf[4] = [message GUID];
          *&buf[12] = 1024;
          *&buf[14] = v12;
          v6 = "Message (%@) cannot be sent via MMS because it has too many attachments (%d)";
          v8 = v13;
          v9 = 18;
          goto LABEL_27;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v49 = 0;
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 0;
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = 1;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000075E4;
        v27[3] = &unk_100010810;
        v27[4] = self;
        v27[5] = &v28;
        v27[6] = buf;
        v27[7] = &v36;
        v27[8] = &v32;
        [objc_msgSend(message "attachments")];
        if ((v29[3] & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v37[3] <= 0)
        {
          if (v33[3] < 1 || v12 <= 1)
          {
LABEL_49:
            v21 = [IMCTSMSUtilities IMMMSMaximumMessageByteCountForPhoneNumber:0 simID:0]* 0.95 / 102400.0;
            if (floorf(v21) <= 1.0)
            {
              v23 = 1;
            }

            else
            {
              v22 = [IMCTSMSUtilities IMMMSMaximumMessageByteCountForPhoneNumber:0 simID:0]* 0.95 / 102400.0;
              v23 = vcvtms_s32_f32(v22);
            }

            if (*(*&buf[8] + 24) <= v23)
            {
              v10 = 1;
              goto LABEL_58;
            }

            if (!IMOSLoggingEnabled() || (v24 = OSLogHandleForIMFoundationCategory(), !os_log_type_enabled(v24, OS_LOG_TYPE_INFO)))
            {
LABEL_57:
              v10 = 0;
LABEL_58:
              _Block_object_dispose(&v28, 8);
              _Block_object_dispose(&v32, 8);
              _Block_object_dispose(&v36, 8);
              _Block_object_dispose(buf, 8);
              return v10;
            }

            gUID = [message GUID];
            v26 = *(*&buf[8] + 24);
            *v40 = 138412802;
            v41 = gUID;
            v42 = 1024;
            v43 = v26;
            v44 = 1024;
            v45 = v23;
            v18 = "Cannot send message (%@) via MMS because it has too may images (total:%d  max:%d)";
            v19 = v24;
            v20 = 24;
LABEL_56:
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v18, v40, v20);
            goto LABEL_57;
          }
        }

        else if (v12 < 2)
        {
          goto LABEL_49;
        }

        if (!IMOSLoggingEnabled())
        {
          goto LABEL_57;
        }

        v14 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          goto LABEL_57;
        }

        gUID2 = [message GUID];
        v16 = v33[3];
        v17 = v37[3];
        *v40 = 138413058;
        v41 = gUID2;
        v42 = 1024;
        v43 = v16;
        v44 = 1024;
        v45 = v17;
        v46 = 1024;
        v47 = v12;
        v18 = "Cannot send message (%@) via MMS because it has too may rich attachments (video:%d  audio:%d  total:%d)";
        v19 = v14;
        v20 = 30;
        goto LABEL_56;
      }

      if (!IMOSLoggingEnabled())
      {
        return 0;
      }

      v5 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      *buf = 138412290;
      *&buf[4] = [message GUID];
      v6 = "Message (%@) cannot be sent via SMS because it needs MMS which is not enabled";
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        return 0;
      }

      v5 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      *buf = 138412290;
      *&buf[4] = [message GUID];
      v6 = "Message (%@) cannot be sent via SMS because it is not the default text app";
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    *&buf[4] = [message GUID];
    v6 = "Message (%@) cannot be sent via SMS because sms is not enabled";
  }

LABEL_26:
  v8 = v5;
  v9 = 12;
LABEL_27:
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v6, buf, v9);
  return 0;
}

- (void)getRoutableMessages:(id)messages
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000077B4;
  v3[3] = &unk_100010838;
  v3[4] = self;
  v3[5] = messages;
  [(IMDRoutingAgent *)self _getCandidateMessages:v3];
}

@end