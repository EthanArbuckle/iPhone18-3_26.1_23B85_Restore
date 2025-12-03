@interface IMInlineReplyController
- (BOOL)itemMatchesFilter:(id)filter;
- (IMInlineReplyController)initWithChat:(id)chat threadIdentifier:(id)identifier threadOriginator:(id)originator;
- (id)generateChatItemRules;
- (id)itemsToPrepend;
@end

@implementation IMInlineReplyController

- (IMInlineReplyController)initWithChat:(id)chat threadIdentifier:(id)identifier threadOriginator:(id)originator
{
  chatCopy = chat;
  identifierCopy = identifier;
  originatorCopy = originator;
  v20.receiver = self;
  v20.super_class = IMInlineReplyController;
  v11 = [(IMChatItemFilterController *)&v20 initWithChat:chatCopy];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_setThreadIdentifier_(v11, v12, identifierCopy);
    objc_msgSend_setThreadOriginator_(v13, v14, originatorCopy);
    if (originatorCopy)
    {
      v17 = objc_msgSend_chatStyle(chatCopy, v15, v16);
      objc_msgSend__handleItem_forChatStyle_(v13, v18, originatorCopy, v17);
    }
  }

  return v13;
}

- (id)itemsToPrepend
{
  if ((objc_msgSend_hasEarlierMessagesToLoad(self, a2, v2) & 1) != 0 || (objc_msgSend_threadOriginator(self, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = MEMORY[0x1E695DEC8];
    v10 = objc_msgSend_threadOriginator(self, v7, v8);
    v12 = objc_msgSend_arrayWithObject_(v9, v11, v10);
  }

  return v12;
}

- (BOOL)itemMatchesFilter:(id)filter
{
  v71 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v62.receiver = self;
  v62.super_class = IMInlineReplyController;
  if ([(IMChatItemFilterController *)&v62 itemMatchesFilter:filterCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = filterCopy;
      v8 = objc_msgSend_threadIdentifier(v5, v6, v7);
      if (v8)
      {
      }

      else
      {
        v14 = objc_msgSend_guid(v5, v9, v10);
        v17 = objc_msgSend_threadOriginator(self, v15, v16);
        v20 = objc_msgSend_guid(v17, v18, v19);
        isEqualToString = objc_msgSend_isEqualToString_(v14, v21, v20);

        if (isEqualToString)
        {
LABEL_8:
          v13 = 1;
LABEL_32:

          goto LABEL_33;
        }
      }

      v23 = objc_msgSend_threadIdentifier(self, v11, v12);
      v26 = objc_msgSend_threadIdentifier(v5, v24, v25);
      v28 = objc_msgSend_isEqualToString_(v23, v27, v26);

      if (v28)
      {
        goto LABEL_8;
      }

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v34 = objc_msgSend_guid(v5, v32, v33);
          *buf = 136315394;
          v64 = "[IMInlineReplyController itemMatchesFilter:]";
          v65 = 2112;
          v66 = v34;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "%s threadIdentifier does not match for item %@", buf, 0x16u);
        }
      }

      v35 = objc_msgSend_threadIdentifier(v5, v29, v30);
      v36 = v35 == 0;

      if (!v36)
      {
        v13 = 0;
        goto LABEL_32;
      }

      v39 = objc_msgSend_associatedMessageGUID(v5, v37, v38);
      v42 = objc_msgSend_threadIdentifier(self, v40, v41);
      AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();

      v46 = IMAssociatedMessageDecodeGUID();
      if (v39)
      {
        v47 = IMAssociatedMessageDecodeGUID();
        if (objc_msgSend_isEqualToString_(v46, v48, v47))
        {
          goto LABEL_17;
        }

        if (IMOSLoggingEnabled())
        {
          v56 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v59 = objc_msgSend_guid(v5, v57, v58);
            *buf = 136315906;
            v64 = "[IMInlineReplyController itemMatchesFilter:]";
            v65 = 2112;
            v66 = v46;
            v67 = 2112;
            v68 = v47;
            v69 = 2112;
            v70 = v59;
            _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_INFO, "%s guidFromThreadIdentifier %@ does not match guidFromAssociateMessageGUID %@ for item %@", buf, 0x2Au);
          }
        }
      }

      else
      {
        v47 = objc_msgSend_syndicationRanges(v5, v44, v45);
        if (objc_msgSend_count(v47, v49, v50))
        {
          v53 = objc_msgSend_guid(v5, v51, v52);
          v55 = objc_msgSend_isEqualToString_(v46, v54, v53);

          if (v55)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_18;
            }

            v47 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v64 = "[IMInlineReplyController itemMatchesFilter:]";
              v65 = 2112;
              v66 = v46;
              _os_log_impl(&dword_1A823F000, v47, OS_LOG_TYPE_INFO, "%s guidFromThreadIdentifier %@ is the same as the item given, and it has syndication ranges.", buf, 0x16u);
            }

LABEL_17:

LABEL_18:
            v13 = 1;
LABEL_31:

            goto LABEL_32;
          }

LABEL_30:
          v13 = 0;
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }
  }

  v13 = 0;
LABEL_33:

  v60 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)generateChatItemRules
{
  v3 = [IMInlineReplyChatItemRules alloc];
  v6 = objc_msgSend_chat(self, v4, v5);
  v9 = objc_msgSend_threadIdentifier(self, v7, v8);
  v11 = objc_msgSend_initWithChat_threadIdentifier_(v3, v10, v6, v9);

  return v11;
}

@end