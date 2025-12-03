@interface IMDaemonChatModifyReadStateRequestHandler
- (void)markHasHadSuccessfulQueryForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services;
- (void)markPlayedExpressiveSendForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services message:(id)message;
- (void)markSavedForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services message:(id)message;
- (void)markSavedForMessageGUID:(id)d;
- (void)sendNotifyRecipientCommandForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services message:(id)message;
@end

@implementation IMDaemonChatModifyReadStateRequestHandler

- (void)markPlayedExpressiveSendForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services message:(id)message
{
  dsCopy = ds;
  servicesCopy = services;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = +[IMDClientRequestContext currentContext];
      listenerID = [v12 listenerID];
      v28 = 138412802;
      v29 = listenerID;
      v30 = 2112;
      v31 = dsCopy;
      v32 = 2112;
      v33 = servicesCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Request from %@ to mark message as played expressive send with IDs: %@  services: %@", &v28, 0x20u);
    }
  }

  if ([dsCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v14 = [dsCopy count];
    if (v14 == [servicesCopy count])
    {
      v15 = +[IMDMessageStore sharedInstance];
      guid = [messageCopy guid];
      v17 = [v15 messageWithGUID:guid];

      if (v17)
      {
        v18 = +[NSDate date];
        [v17 setTimeExpressiveSendPlayed:v18];

        v19 = +[IMDMessageStore sharedInstance];
        v20 = [v19 storeMessage:v17 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];
      }

      else
      {
        v20 = 0;
      }

      v22 = +[IMDMessageStore sharedInstance];
      guid2 = [v20 guid];
      messageCopy = [v22 messageWithGUID:guid2];

      accountID = [messageCopy accountID];
      v25 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatListeners = [v25 broadcasterForChatListeners];

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = messageCopy;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Notifying about message: %@", &v28, 0xCu);
        }
      }

      [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:messageCopy];
    }

    else if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v28 = 138412546;
        v29 = dsCopy;
        v30 = 2112;
        v31 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark as played expressive send (IDs: %@   Service names: %@)", &v28, 0x16u);
      }
    }
  }
}

- (void)markHasHadSuccessfulQueryForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services
{
  dsCopy = ds;
  servicesCopy = services;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = +[IMDClientRequestContext currentContext];
      listenerID = [v9 listenerID];
      *buf = 138412802;
      v31 = listenerID;
      v32 = 2112;
      v33 = dsCopy;
      v34 = 2112;
      v35 = servicesCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request from %@ to mark chat as had successful ID query for IDs: %@  services: %@", buf, 0x20u);
    }
  }

  if ([dsCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v11 = [dsCopy count];
    if (v11 == [servicesCopy count])
    {
      v12 = objc_alloc_init(NSMutableSet);
      if ([dsCopy count])
      {
        v13 = 0;
        do
        {
          v14 = [dsCopy objectAtIndex:v13];
          v15 = [servicesCopy objectAtIndex:v13];
          v16 = IMCopyGUIDForChat();

          [v12 addObject:v16];
          ++v13;
        }

        while (v13 < [dsCopy count]);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = v12;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v18)
      {
        v19 = *v26;
        do
        {
          v20 = 0;
          do
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v25 + 1) + 8 * v20);
            v22 = +[IMDChatRegistry sharedInstance];
            v23 = [v22 existingChatWithGUID:v21];

            [v23 updateHasHadSuccessfulQuery:1];
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v18);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v31 = dsCopy;
        v32 = 2112;
        v33 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark chat as had successful ID query (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }
  }
}

- (void)sendNotifyRecipientCommandForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services message:(id)message
{
  dsCopy = ds;
  servicesCopy = services;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = +[IMDClientRequestContext currentContext];
      listenerID = [v9 listenerID];
      *buf = 138412802;
      v67 = listenerID;
      v68 = 2112;
      v69 = dsCopy;
      v70 = 2112;
      v71 = servicesCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request from %@ to send notify recipient command with IDs: %@  services: %@", buf, 0x20u);
    }
  }

  if ([dsCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v11 = [dsCopy count];
    if (v11 == [servicesCopy count])
    {
      v12 = +[IMDMessageStore sharedInstance];
      guid = [messageCopy guid];
      v14 = [v12 messageWithGUID:guid];

      if (v14)
      {
        [v14 setFlags:{objc_msgSend(v14, "flags") | 0x800000000}];
        v15 = +[IMDMessageStore sharedInstance];
        messageCopy = [v15 storeMessage:v14 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x800000000];
      }

      else
      {
        messageCopy = 0;
      }

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v67 = messageCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Found message to mark as notified recipient: %@", buf, 0xCu);
        }
      }

      v57 = objc_alloc_init(NSMutableSet);
      if ([dsCopy count])
      {
        v18 = 0;
        do
        {
          v19 = [dsCopy objectAtIndex:v18];
          v20 = [servicesCopy objectAtIndex:v18];
          v21 = IMCopyGUIDForChat();

          [v57 addObject:v21];
          ++v18;
        }

        while (v18 < [dsCopy count]);
      }

      if (messageCopy)
      {
        v22 = +[IMDMessageStore sharedInstance];
        v60 = [v22 chatForMessage:messageCopy];

        v23 = [v60 style] == 45;
        v24 = [dsCopy count];
        if (v23)
        {
          if (v24)
          {
            v25 = 0;
            do
            {
              v26 = [dsCopy objectAtIndex:v25];
              v27 = [servicesCopy objectAtIndex:v25];
              v28 = +[IMDChatStore sharedInstance];
              v29 = [v28 chatsWithHandle:v26 onService:v27];

              v30 = [v29 arrayByApplyingSelector:"guid"];
              [v57 addObjectsFromArray:v30];

              ++v25;
            }

            while (v25 < [dsCopy count]);
          }
        }

        else if (v24)
        {
          v31 = 0;
          do
          {
            v32 = [dsCopy objectAtIndex:v31];
            v33 = [servicesCopy objectAtIndex:v31];
            v34 = +[IMDChatStore sharedInstance];
            v35 = [v34 chatsWithRoomname:v32 onService:v33];

            v36 = [v35 arrayByApplyingSelector:"guid"];
            [v57 addObjectsFromArray:v36];

            ++v31;
          }

          while (v31 < [dsCopy count]);
        }

        guid2 = [messageCopy guid];
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v38 = v57;
        v39 = [v38 countByEnumeratingWithState:&v61 objects:v65 count:16];
        if (v39)
        {
          v40 = *v62;
          do
          {
            v41 = 0;
            do
            {
              if (*v62 != v40)
              {
                objc_enumerationMutation(v38);
              }

              v42 = *(*(&v61 + 1) + 8 * v41);
              v43 = +[IMDChatRegistry sharedInstance];
              v44 = [v43 existingChatWithGUID:v42];

              lastMessage = [v44 lastMessage];
              guid3 = [lastMessage guid];
              LODWORD(v43) = [guid3 isEqualToString:guid2];

              if (v43)
              {
                v47 = +[IMDChatRegistry sharedInstance];
                [v47 updateStateForChat:v60 hintMessage:0 shouldRebuildFailedMessageDate:0];
              }

              v41 = v41 + 1;
            }

            while (v39 != v41);
            v39 = [v38 countByEnumeratingWithState:&v61 objects:v65 count:16];
          }

          while (v39);
        }

        accountID = [messageCopy accountID];
        v49 = +[IMDAccountController sharedInstance];
        v50 = [v49 sessionForAccount:accountID];

        if (IMOSLoggingEnabled())
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v67 = messageCopy;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Sending notifiy recipient command for: %@", buf, 0xCu);
          }
        }

        chatIdentifier = [v60 chatIdentifier];
        [v50 sendNotifyRecipientCommandForMessage:messageCopy toChatGuid:0 identifier:chatIdentifier style:{objc_msgSend(v60, "style")}];

        v53 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatListeners = [v53 broadcasterForChatListeners];

        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v67 = messageCopy;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Notifying about message: %@", buf, 0xCu);
          }
        }

        [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:messageCopy];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v67 = dsCopy;
        v68 = 2112;
        v69 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to notify recipient (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }
  }
}

- (void)markSavedForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDClientRequestContext currentContext];
      listenerID = [v5 listenerID];
      *buf = 138412546;
      v29 = listenerID;
      v30 = 2112;
      v31 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request from %@ to mark message as saved with GUID: %@", buf, 0x16u);
    }
  }

  if ([dCopy length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 chatsForMessageGUID:dCopy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v10)
    {
      v12 = *v25;
      *&v11 = 138412802;
      v22 = v11;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          chatIdentifier = [v14 chatIdentifier];
          v16 = IMSingleObjectArray();

          serviceName = [v14 serviceName];
          v18 = IMSingleObjectArray();

          if ([v18 count] && objc_msgSend(v16, "count"))
          {
            v19 = +[IMDMessageStore sharedInstance];
            v20 = [v19 messageWithGUID:dCopy];

            -[IMDaemonChatModifyReadStateRequestHandler markSavedForIDs:style:onServices:message:](self, "markSavedForIDs:style:onServices:message:", v16, [v14 style], v18, v20);
          }

          else if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = v22;
              v29 = v14;
              v30 = 2112;
              v31 = v16;
              v32 = 2112;
              v33 = v18;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Empty IDs or services for chat: %@ (IDs: %@  Services: %@)", buf, 0x20u);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v10);
    }
  }
}

- (void)markSavedForIDs:(id)ds style:(unsigned __int8)style onServices:(id)services message:(id)message
{
  dsCopy = ds;
  servicesCopy = services;
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = +[IMDClientRequestContext currentContext];
      listenerID = [v9 listenerID];
      *buf = 138412802;
      v71 = listenerID;
      v72 = 2112;
      v73 = dsCopy;
      v74 = 2112;
      v75 = servicesCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request from %@ to mark message as saved with IDs: %@  services: %@", buf, 0x20u);
    }
  }

  if ([dsCopy count] && objc_msgSend(servicesCopy, "count"))
  {
    v11 = [dsCopy count];
    if (v11 == [servicesCopy count])
    {
      guid = [v60 guid];
      if ([guid length])
      {
        v13 = +[IMDMessageStore sharedInstance];
        v14 = [v13 messageWithGUID:guid];

        if (v14)
        {
          [v14 setExpireState:3];
          v15 = +[IMDMessageStore sharedInstance];
          v61 = [v15 storeMessage:v14 forceReplace:0 modifyError:1 modifyFlags:0 flagMask:0];

          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v71 = v61;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found message to mark as saved: %@", buf, 0xCu);
            }
          }

          v17 = objc_alloc_init(NSMutableSet);
          if ([dsCopy count])
          {
            v18 = 0;
            do
            {
              v19 = [dsCopy objectAtIndex:{v18, v61}];
              v20 = [servicesCopy objectAtIndex:v18];
              v21 = IMCopyGUIDForChat();

              [v17 addObject:v21];
              ++v18;
            }

            while (v18 < [dsCopy count]);
          }

          v22 = +[IMDMessageStore sharedInstance];
          v64 = [v22 chatForMessage:v60];

          v23 = [v64 style] == 45;
          v24 = [dsCopy count];
          if (v23)
          {
            if (v24)
            {
              v25 = 0;
              do
              {
                v26 = [dsCopy objectAtIndex:v25];
                v27 = [servicesCopy objectAtIndex:v25];
                v28 = +[IMDChatStore sharedInstance];
                v29 = [v28 chatsWithHandle:v26 onService:v27];

                v30 = [v29 arrayByApplyingSelector:"guid"];
                [v17 addObjectsFromArray:v30];

                ++v25;
              }

              while (v25 < [dsCopy count]);
            }
          }

          else if (v24)
          {
            v34 = 0;
            do
            {
              v35 = [dsCopy objectAtIndex:v34];
              v36 = [servicesCopy objectAtIndex:v34];
              v37 = +[IMDChatStore sharedInstance];
              v38 = [v37 chatsWithRoomname:v35 onService:v36];

              v39 = [v38 arrayByApplyingSelector:"guid"];
              [v17 addObjectsFromArray:v39];

              ++v34;
            }

            while (v34 < [dsCopy count]);
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v40 = v17;
          v41 = [v40 countByEnumeratingWithState:&v65 objects:v69 count:16];
          if (v41)
          {
            v42 = *v66;
            do
            {
              v43 = 0;
              do
              {
                if (*v66 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v65 + 1) + 8 * v43);
                v45 = +[IMDChatRegistry sharedInstance];
                v46 = [v45 existingChatWithGUID:v44];

                lastMessage = [v46 lastMessage];
                guid2 = [lastMessage guid];
                v49 = [guid2 isEqualToString:guid];

                if (v49)
                {
                  v50 = +[IMDChatRegistry sharedInstance];
                  [v50 updateStateForChat:v64 hintMessage:0 shouldRebuildFailedMessageDate:0];
                }

                v43 = v43 + 1;
              }

              while (v41 != v43);
              v41 = [v40 countByEnumeratingWithState:&v65 objects:v69 count:16];
            }

            while (v41);
          }

          accountID = [v60 accountID];
          v52 = +[IMDAccountController sharedInstance];
          v53 = [v52 sessionForAccount:accountID];

          if (IMOSLoggingEnabled())
          {
            v54 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v71 = v60;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Sending saved receipt for: %@", buf, 0xCu);
            }
          }

          chatIdentifier = [v64 chatIdentifier];
          [v53 sendSavedReceiptForMessage:v60 toChatID:0 identifier:chatIdentifier style:{objc_msgSend(v64, "style")}];

          v56 = +[IMDBroadcastController sharedProvider];
          broadcasterForChatListeners = [v56 broadcasterForChatListeners];

          if (IMOSLoggingEnabled())
          {
            v58 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v71 = v60;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Notifying about message: %@", buf, 0xCu);
            }
          }

          [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v60];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v71 = guid;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "No message found for message guid: %@", buf, 0xCu);
            }
          }

          v60 = 0;
        }
      }

      else
      {
        v32 = IMLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000538A8(v60, v32);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v71 = dsCopy;
        v72 = 2112;
        v73 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark as saved (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }
  }
}

@end