@interface IMDMessageServicesAgentController
+ (id)sharedInstance;
- (_IMDChatRecordStruct)copyBestChatWithGuid:(id)guid message:(_IMDMessageRecordStruct *)message;
- (void)_chooseRouteForMessage:(id)message downgradableServices:(id)services error:(unsigned int)error handler:(id)handler;
- (void)checkExpireStateForMessage:(id)message handler:(id)handler;
- (void)checkExpireStateWithHandler:(id)handler;
- (void)checkForPendingRoutingWithHandler:(id)handler;
- (void)checkScheduledMessageForGUID:(id)d handler:(id)handler;
- (void)checkScheduledMessageWithHandler:(id)handler;
- (void)checkWatchdogForMessage:(id)message handler:(id)handler;
- (void)checkWatchdogWithHandler:(id)handler;
- (void)chooseRouteForMessage:(id)message downgradableServices:(id)services withError:(unsigned int)error inChat:(id)chat handler:(id)handler;
@end

@implementation IMDMessageServicesAgentController

+ (id)sharedInstance
{
  if (qword_100014CA0 != -1)
  {
    sub_100007EB4();
  }

  return qword_100014CA8;
}

- (_IMDChatRecordStruct)copyBestChatWithGuid:(id)guid message:(_IMDMessageRecordStruct *)message
{
  if ([guid length])
  {
    v6 = IMDChatRecordCopyChatForGUID();
    if (!message)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
    if (!message)
    {
      return v6;
    }
  }

  if (!v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        guidCopy = guid;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Could not find message with chatGUID:%@", &v12, 0xCu);
      }
    }

    v8 = IMDMessageRecordCopyChats();
    v9 = v8;
    if (v8)
    {
      if (CFArrayGetCount(v8) < 1)
      {
        v6 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
        v6 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }
      }

      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)_chooseRouteForMessage:(id)message downgradableServices:(id)services error:(unsigned int)error handler:(id)handler
{
  messageCopy = message;
  if (message)
  {
    if ([message service] && objc_msgSend(services, "containsObject:", objc_msgSend(messageCopy, "service")))
    {
      if (IMSMSFallbackEnabled())
      {
        if ([+[IMDRoutingAgent shouldSendMessage:"shouldSendMessage:"]
        {
          gUID = [messageCopy GUID];
          messageCopy = IMServiceNameSMS;
          v12 = (error != 22) << 19;
          v13 = error - 12 < 0xFFFFFFFA;
          goto LABEL_13;
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v17 = 138412290;
          gUID2 = [messageCopy GUID];
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Message (%@) cannot be sent via SMS because sms fallback is not enabled", &v17, 0xCu);
        }
      }
    }

    v13 = 0;
    v12 = 0;
    messageCopy = 0;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  gUID = 0;
LABEL_13:
  v15 = [(IMDMessageServicesAgentController *)self _routingDictionaryForService:messageCopy extraFlags:v12 updateProperties:v13];
  if (!v15)
  {
    goto LABEL_16;
  }

  if ([gUID length])
  {
    v15 = [NSDictionary dictionaryWithObject:v15 forKey:gUID];
LABEL_16:
    if (!handler)
    {
      return;
    }

    goto LABEL_17;
  }

  v15 = 0;
  if (!handler)
  {
    return;
  }

LABEL_17:
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      gUID2 = messageCopy;
      v19 = 2112;
      v20 = gUID;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Chose route:%@ for message:%@", &v17, 0x16u);
    }
  }

  (*(handler + 2))(handler, v15, 0.0);
}

- (void)chooseRouteForMessage:(id)message downgradableServices:(id)services withError:(unsigned int)error inChat:(id)chat handler:(id)handler
{
  v13 = IMDMessageRecordCopyMessageForGUID();
  v14 = [(IMDMessageServicesAgentController *)self copyBestChatWithGuid:chat message:v13];
  if (!v14)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        messageCopy = message;
        v21 = 2112;
        chatCopy = chat;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Could not find a chat for message with GUID:%@   chatGUID:%@", buf, 0x16u);
      }
    }
  }

  v16 = [[IMDMSAMessage alloc] initWithMessage:v13 inChat:v14];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026B0;
  block[3] = &unk_100010620;
  block[4] = message;
  block[5] = chat;
  block[6] = v16;
  block[7] = self;
  errorCopy = error;
  block[8] = services;
  block[9] = handler;
  dispatch_async(&_dispatch_main_q, block);

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }
}

- (void)checkForPendingRoutingWithHandler:(id)handler
{
  v5 = +[IMCTSMSUtilities isMessagesTheDefaultTextApp];
  v6 = IMSMSEnabled();
  v7 = IMSMSFallbackEnabled();
  isRCSEnabled = [+[IMSharedMessageSendingUtilities sharedInstance](IMSharedMessageSendingUtilities isRCSEnabled];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v5)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (v6)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138413058;
      *&buf[4] = v11;
      if (v7)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v32 = v13;
      if (isRCSEnabled)
      {
        v10 = @"YES";
      }

      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Checking pending route  (Default Text App: %@    SMS Enabled: %@    Fallback Enabled: %@   RCSEnabled: %@)", buf, 0x2Au);
    }
  }

  v14 = objc_alloc_init(NSMutableDictionary);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v32) = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  if ((v5 & (v6 & v7 | isRCSEnabled)) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Checking for fallback messages...", v25, 2u);
      }
    }

    v17 = +[IMDRoutingAgent sharedInstance];
    dispatch_group_enter(v15);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100002BB0;
    v23[3] = &unk_100010648;
    v23[4] = self;
    v23[5] = v14;
    v23[7] = buf;
    v23[8] = v24;
    v23[6] = v15;
    [(IMDRoutingAgent *)v17 getRoutableMessages:v23];
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (v5)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      if (v6)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      *v25 = 138412802;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      if (v7)
      {
        v19 = @"YES";
      }

      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Not getting pending routes (isDefaultTextApp:%@  isSMSEnabled:%@  isSMSFallBackEnabled:%@)", v25, 0x20u);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002E34;
  block[3] = &unk_100010670;
  block[6] = handler;
  block[7] = v24;
  block[4] = v14;
  block[5] = v15;
  dispatch_group_notify(v15, &_dispatch_main_q, block);
  dispatch_group_leave(v15);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(buf, 8);
}

- (void)checkExpireStateForMessage:(id)message handler:(id)handler
{
  v5 = [handler copy];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = message;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Check expire state for message: %@", buf, 0xCu);
    }
  }

  if (message)
  {
    v7 = IMDMessageRecordCopyMessageForGUID();
    v8 = v7;
    *buf = 0;
    v16 = 0;
    v15 = 0;
    if (v7 && sub_1000045EC(v7, buf, &v16, &v15, 0, 0))
    {
      v9 = [NSDictionary alloc];
      v10 = [NSNumber numberWithLongLong:*buf];
      v11 = [NSNumber numberWithBool:v16];
      v12 = [v9 initWithObjectsAndKeys:{v10, IMDMessageServicesExpireStateKey, v11, IMDMessageServicesExpireStateShouldDeleteKey, 0}];
      v13 = [NSDictionary dictionaryWithObject:v12 forKey:message];
    }

    else
    {
      v13 = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000031EC;
    block[3] = &unk_1000106C0;
    block[4] = v13;
    block[5] = v5;
    block[6] = v15;
    dispatch_async(&_dispatch_main_q, block);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100003108;
    v17[3] = &unk_100010698;
    v17[4] = v5;
    dispatch_async(&_dispatch_main_q, v17);
  }
}

- (void)checkExpireStateWithHandler:(id)handler
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Check expire state for messages", buf, 2u);
    }
  }

  sub_100004904();
  v4 = IMDMessageRecordCopyExpiringOrExpiredMessages();
  v22 = objc_alloc_init(NSMutableDictionary);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v30;
    v8 = IMDMessageServicesExpireStateKey;
    v9 = IMDMessageServicesExpireStateShouldDeleteKey;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        *buf = 0;
        v27 = 0;
        v25 = 0;
        v26 = 0.0;
        v24 = 0;
        v13 = sub_1000045EC(v12, buf, &v27, &v26, &v25, &v24);
        if (v24)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14 == 1)
        {
          v15 = [NSDictionary alloc];
          v16 = [NSNumber numberWithLongLong:*buf];
          v17 = [v15 initWithObjectsAndKeys:{v16, v8, +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v27), v9, 0}];
          [v22 setObject:v17 forKey:v24];
        }

        if (v27 == 1)
        {
          if (v6 >= v25)
          {
            v18 = v25;
          }

          else
          {
            v18 = v6;
          }

          if (v6 <= 0)
          {
            v6 = v25;
          }

          else
          {
            v6 = v18;
          }
        }

        if (v10 >= v26 || v10 <= 0.0)
        {
          v20 = v26;
        }

        else
        {
          v20 = v10;
        }

        if (v26 > 0.0)
        {
          v10 = v20;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
    if (v6 >= 1)
    {
      sub_1000048EC();
    }
  }

  else
  {
    v10 = 0.0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000035BC;
  block[3] = &unk_1000106C0;
  block[4] = v22;
  block[5] = handler;
  *&block[6] = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)checkScheduledMessageForGUID:(id)d handler:(id)handler
{
  v5 = [handler copy];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Check scheduled message for guid: %@", buf, 0xCu);
    }
  }

  if (d)
  {
    v7 = IMDMessageRecordCopyMessageForGUID();
    Date = IMDMessageRecordGetDate();
    v9 = [NSDictionary alloc];
    v10 = [NSNumber numberWithLongLong:Date];
    v11 = [v9 initWithObjectsAndKeys:{v10, IMDMessageServicesScheduledDateKey, 0}];
    v12 = [NSDictionary dictionaryWithObject:v11 forKey:d];

    [+[NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:](NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{Date), "timeIntervalSinceNow"}];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000039B4;
    block[3] = &unk_1000106C0;
    block[4] = v12;
    block[5] = v5;
    block[6] = v13;
    dispatch_async(&_dispatch_main_q, block);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000038D0;
    v15[3] = &unk_100010698;
    v15[4] = v5;
    dispatch_async(&_dispatch_main_q, v15);
  }
}

- (void)checkScheduledMessageWithHandler:(id)handler
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003B24;
  v3[3] = &unk_1000106E8;
  v3[4] = handler;
  [+[IMDDatabase synchronousDatabase](IMDDatabase "synchronousDatabase")];
}

- (void)checkWatchdogForMessage:(id)message handler:(id)handler
{
  v5 = [handler copy];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = message;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Check watchdog for message: %@", buf, 0xCu);
    }
  }

  if (message)
  {
    v7 = IMDMessageRecordCopyMessageForGUID();
    v8 = v7;
    v14 = 0;
    *buf = 0;
    if (v7 && sub_100006434(v7, &v14, buf, 0, 0))
    {
      v9 = [NSDictionary alloc];
      v10 = [NSNumber numberWithBool:v14];
      v11 = [v9 initWithObjectsAndKeys:{v10, IMDMessageServicesWatchdogShouldFailSendKey, 0}];
      v12 = [NSDictionary dictionaryWithObject:v11 forKey:message];
    }

    else
    {
      v12 = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004164;
    block[3] = &unk_1000106C0;
    block[4] = v12;
    block[5] = v5;
    block[6] = *buf;
    dispatch_async(&_dispatch_main_q, block);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004080;
    v15[3] = &unk_100010698;
    v15[4] = v5;
    dispatch_async(&_dispatch_main_q, v15);
  }
}

- (void)checkWatchdogWithHandler:(id)handler
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Check watchdog for messages", buf, 2u);
    }
  }

  sub_100006880();
  v4 = IMDMessageRecordCopyUnsentUnfailedMessages();
  v5 = objc_alloc_init(NSMutableDictionary);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v27;
    v9 = IMDMessageServicesWatchdogShouldFailSendKey;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v25 = 0;
        v23 = 0;
        *buf = 0.0;
        v22 = 0;
        v13 = sub_100006434(v12, &v25, buf, &v23, &v22);
        if (v22)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14 == 1)
        {
          v15 = [NSDictionary alloc];
          v16 = [v15 initWithObjectsAndKeys:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v25), v9, 0}];
          [v5 setObject:v16 forKey:v22];
        }

        if (v25 == 1)
        {
          if (v7 >= v23)
          {
            v17 = v23;
          }

          else
          {
            v17 = v7;
          }

          if (v7 <= 0)
          {
            v7 = v23;
          }

          else
          {
            v7 = v17;
          }
        }

        if (v10 >= *buf || v10 <= 0.0)
        {
          v19 = *buf;
        }

        else
        {
          v19 = v10;
        }

        if (*buf > 0.0)
        {
          v10 = v19;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
    if (v7 >= 1)
    {
      sub_1000067A4(v7);
    }
  }

  else
  {
    v10 = 0.0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004508;
  block[3] = &unk_1000106C0;
  block[4] = v5;
  block[5] = handler;
  *&block[6] = v10;
  dispatch_async(&_dispatch_main_q, block);
}

@end