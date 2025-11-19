@interface IMDaemonChatModifyReadStateRequestHandler
- (void)markHasHadSuccessfulQueryForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5;
- (void)markPlayedExpressiveSendForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 message:(id)a6;
- (void)markSavedForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 message:(id)a6;
- (void)markSavedForMessageGUID:(id)a3;
- (void)sendNotifyRecipientCommandForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 message:(id)a6;
@end

@implementation IMDaemonChatModifyReadStateRequestHandler

- (void)markPlayedExpressiveSendForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 message:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = +[IMDClientRequestContext currentContext];
      v13 = [v12 listenerID];
      v28 = 138412802;
      v29 = v13;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Request from %@ to mark message as played expressive send with IDs: %@  services: %@", &v28, 0x20u);
    }
  }

  if ([v8 count] && objc_msgSend(v9, "count"))
  {
    v14 = [v8 count];
    if (v14 == [v9 count])
    {
      v15 = +[IMDMessageStore sharedInstance];
      v16 = [v10 guid];
      v17 = [v15 messageWithGUID:v16];

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
      v23 = [v20 guid];
      v10 = [v22 messageWithGUID:v23];

      v24 = [v10 accountID];
      v25 = +[IMDBroadcastController sharedProvider];
      v26 = [v25 broadcasterForChatListeners];

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = v10;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Notifying about message: %@", &v28, 0xCu);
        }
      }

      [v26 account:v24 chat:0 style:0 messageUpdated:v10];
    }

    else if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v28 = 138412546;
        v29 = v8;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark as played expressive send (IDs: %@   Service names: %@)", &v28, 0x16u);
      }
    }
  }
}

- (void)markHasHadSuccessfulQueryForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5
{
  v6 = a3;
  v7 = a5;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = +[IMDClientRequestContext currentContext];
      v10 = [v9 listenerID];
      *buf = 138412802;
      v31 = v10;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request from %@ to mark chat as had successful ID query for IDs: %@  services: %@", buf, 0x20u);
    }
  }

  if ([v6 count] && objc_msgSend(v7, "count"))
  {
    v11 = [v6 count];
    if (v11 == [v7 count])
    {
      v12 = objc_alloc_init(NSMutableSet);
      if ([v6 count])
      {
        v13 = 0;
        do
        {
          v14 = [v6 objectAtIndex:v13];
          v15 = [v7 objectAtIndex:v13];
          v16 = IMCopyGUIDForChat();

          [v12 addObject:v16];
          ++v13;
        }

        while (v13 < [v6 count]);
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
        v31 = v6;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark chat as had successful ID query (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }
  }
}

- (void)sendNotifyRecipientCommandForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 message:(id)a6
{
  v59 = a3;
  v58 = a5;
  v56 = a6;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = +[IMDClientRequestContext currentContext];
      v10 = [v9 listenerID];
      *buf = 138412802;
      v67 = v10;
      v68 = 2112;
      v69 = v59;
      v70 = 2112;
      v71 = v58;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request from %@ to send notify recipient command with IDs: %@  services: %@", buf, 0x20u);
    }
  }

  if ([v59 count] && objc_msgSend(v58, "count"))
  {
    v11 = [v59 count];
    if (v11 == [v58 count])
    {
      v12 = +[IMDMessageStore sharedInstance];
      v13 = [v56 guid];
      v14 = [v12 messageWithGUID:v13];

      if (v14)
      {
        [v14 setFlags:{objc_msgSend(v14, "flags") | 0x800000000}];
        v15 = +[IMDMessageStore sharedInstance];
        v56 = [v15 storeMessage:v14 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x800000000];
      }

      else
      {
        v56 = 0;
      }

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v67 = v56;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Found message to mark as notified recipient: %@", buf, 0xCu);
        }
      }

      v57 = objc_alloc_init(NSMutableSet);
      if ([v59 count])
      {
        v18 = 0;
        do
        {
          v19 = [v59 objectAtIndex:v18];
          v20 = [v58 objectAtIndex:v18];
          v21 = IMCopyGUIDForChat();

          [v57 addObject:v21];
          ++v18;
        }

        while (v18 < [v59 count]);
      }

      if (v56)
      {
        v22 = +[IMDMessageStore sharedInstance];
        v60 = [v22 chatForMessage:v56];

        v23 = [v60 style] == 45;
        v24 = [v59 count];
        if (v23)
        {
          if (v24)
          {
            v25 = 0;
            do
            {
              v26 = [v59 objectAtIndex:v25];
              v27 = [v58 objectAtIndex:v25];
              v28 = +[IMDChatStore sharedInstance];
              v29 = [v28 chatsWithHandle:v26 onService:v27];

              v30 = [v29 arrayByApplyingSelector:"guid"];
              [v57 addObjectsFromArray:v30];

              ++v25;
            }

            while (v25 < [v59 count]);
          }
        }

        else if (v24)
        {
          v31 = 0;
          do
          {
            v32 = [v59 objectAtIndex:v31];
            v33 = [v58 objectAtIndex:v31];
            v34 = +[IMDChatStore sharedInstance];
            v35 = [v34 chatsWithRoomname:v32 onService:v33];

            v36 = [v35 arrayByApplyingSelector:"guid"];
            [v57 addObjectsFromArray:v36];

            ++v31;
          }

          while (v31 < [v59 count]);
        }

        v37 = [v56 guid];
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

              v45 = [v44 lastMessage];
              v46 = [v45 guid];
              LODWORD(v43) = [v46 isEqualToString:v37];

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

        v48 = [v56 accountID];
        v49 = +[IMDAccountController sharedInstance];
        v50 = [v49 sessionForAccount:v48];

        if (IMOSLoggingEnabled())
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v67 = v56;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Sending notifiy recipient command for: %@", buf, 0xCu);
          }
        }

        v52 = [v60 chatIdentifier];
        [v50 sendNotifyRecipientCommandForMessage:v56 toChatGuid:0 identifier:v52 style:{objc_msgSend(v60, "style")}];

        v53 = +[IMDBroadcastController sharedProvider];
        v54 = [v53 broadcasterForChatListeners];

        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v67 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Notifying about message: %@", buf, 0xCu);
          }
        }

        [v54 account:v48 chat:0 style:0 messageUpdated:v56];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v67 = v59;
        v68 = 2112;
        v69 = v58;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to notify recipient (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }
  }
}

- (void)markSavedForMessageGUID:(id)a3
{
  v23 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = +[IMDClientRequestContext currentContext];
      v6 = [v5 listenerID];
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Request from %@ to mark message as saved with GUID: %@", buf, 0x16u);
    }
  }

  if ([v23 length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 chatsForMessageGUID:v23];

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
          v15 = [v14 chatIdentifier];
          v16 = IMSingleObjectArray();

          v17 = [v14 serviceName];
          v18 = IMSingleObjectArray();

          if ([v18 count] && objc_msgSend(v16, "count"))
          {
            v19 = +[IMDMessageStore sharedInstance];
            v20 = [v19 messageWithGUID:v23];

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

- (void)markSavedForIDs:(id)a3 style:(unsigned __int8)a4 onServices:(id)a5 message:(id)a6
{
  v63 = a3;
  v62 = a5;
  v59 = a6;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = +[IMDClientRequestContext currentContext];
      v10 = [v9 listenerID];
      *buf = 138412802;
      v71 = v10;
      v72 = 2112;
      v73 = v63;
      v74 = 2112;
      v75 = v62;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Request from %@ to mark message as saved with IDs: %@  services: %@", buf, 0x20u);
    }
  }

  if ([v63 count] && objc_msgSend(v62, "count"))
  {
    v11 = [v63 count];
    if (v11 == [v62 count])
    {
      v12 = [v60 guid];
      if ([v12 length])
      {
        v13 = +[IMDMessageStore sharedInstance];
        v14 = [v13 messageWithGUID:v12];

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
          if ([v63 count])
          {
            v18 = 0;
            do
            {
              v19 = [v63 objectAtIndex:{v18, v61}];
              v20 = [v62 objectAtIndex:v18];
              v21 = IMCopyGUIDForChat();

              [v17 addObject:v21];
              ++v18;
            }

            while (v18 < [v63 count]);
          }

          v22 = +[IMDMessageStore sharedInstance];
          v64 = [v22 chatForMessage:v60];

          v23 = [v64 style] == 45;
          v24 = [v63 count];
          if (v23)
          {
            if (v24)
            {
              v25 = 0;
              do
              {
                v26 = [v63 objectAtIndex:v25];
                v27 = [v62 objectAtIndex:v25];
                v28 = +[IMDChatStore sharedInstance];
                v29 = [v28 chatsWithHandle:v26 onService:v27];

                v30 = [v29 arrayByApplyingSelector:"guid"];
                [v17 addObjectsFromArray:v30];

                ++v25;
              }

              while (v25 < [v63 count]);
            }
          }

          else if (v24)
          {
            v34 = 0;
            do
            {
              v35 = [v63 objectAtIndex:v34];
              v36 = [v62 objectAtIndex:v34];
              v37 = +[IMDChatStore sharedInstance];
              v38 = [v37 chatsWithRoomname:v35 onService:v36];

              v39 = [v38 arrayByApplyingSelector:"guid"];
              [v17 addObjectsFromArray:v39];

              ++v34;
            }

            while (v34 < [v63 count]);
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

                v47 = [v46 lastMessage];
                v48 = [v47 guid];
                v49 = [v48 isEqualToString:v12];

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

          v51 = [v60 accountID];
          v52 = +[IMDAccountController sharedInstance];
          v53 = [v52 sessionForAccount:v51];

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

          v55 = [v64 chatIdentifier];
          [v53 sendSavedReceiptForMessage:v60 toChatID:0 identifier:v55 style:{objc_msgSend(v64, "style")}];

          v56 = +[IMDBroadcastController sharedProvider];
          v57 = [v56 broadcasterForChatListeners];

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

          [v57 account:v51 chat:0 style:0 messageUpdated:v60];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v71 = v12;
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
        v71 = v63;
        v72 = 2112;
        v73 = v62;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Mismatched IDs and serviceNames array to mark as saved (IDs: %@   Service names: %@)", buf, 0x16u);
      }
    }
  }
}

@end