@interface UIInputContextHistory(ChatKit)
- (uint64_t)addChatItems:()ChatKit withConversation:;
@end

@implementation UIInputContextHistory(ChatKit)

- (uint64_t)addChatItems:()ChatKit withConversation:
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  _shouldMarkAllInputContextHistoryEntriesAsJunk = [a4 _shouldMarkAllInputContextHistoryEntriesAsJunk];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (!v7)
  {
    v44 = 0;
    goto LABEL_50;
  }

  v8 = v7;
  v44 = 0;
  v9 = *v53;
  v43 = *MEMORY[0x1E69A5FF0];
  selfCopy = self;
  v45 = *v53;
  do
  {
    v10 = 0;
    v47 = v8;
    do
    {
      if (*v53 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v52 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        messageItem = [v12 messageItem];
        guid = [messageItem guid];
        index = [v12 index];
        v51 = [MEMORY[0x1E69A5BF8] chatItemGUIDForMessageGUID:guid partIndex:index];
        time = [messageItem time];
        sender = [messageItem sender];
        v17 = MEMORY[0x193AF5D70]();

        if (![v17 length] && objc_msgSend(messageItem, "isFromMe"))
        {
          destinationCallerID = [messageItem destinationCallerID];
          v19 = MEMORY[0x193AF5D70]();

          v17 = v19;
        }

        threadIdentifier = [messageItem threadIdentifier];
        if (_shouldMarkAllInputContextHistoryEntriesAsJunk)
        {
          string = 0;
          v22 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            text = [v12 text];
            if ([text attribute:v43 existsInRange:{0, objc_msgSend(text, "length")}])
            {
              v22 = 2;
            }

            else
            {
              v22 = 0;
            }

            string = [text string];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              string = 0;
              v22 = 1;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                message = [v12 message];
                balloonBundleID = [message balloonBundleID];
                v35 = IMBalloonExtensionIDWithSuffix();
                v42 = [balloonBundleID isEqualToString:v35];

                string = 0;
                if (v42)
                {
                  v22 = 5;
                }

                else
                {
                  v22 = 4;
                }
              }

              else
              {
                string = 0;
                v22 = 4;
              }
            }
          }
        }

        if ([v17 length])
        {
          v36 = objc_alloc_init(MEMORY[0x1E69D9678]);
          v37 = v36;
          if (string)
          {
            v38 = string;
          }

          else
          {
            v38 = &stru_1F04268F8;
          }

          [v36 setText:v38];
          [v37 setSenderIdentifier:v17];
          [v37 setTimestamp:time];
          [v37 setEntryIdentifier:v51];
          [v37 setEntryType:v22];
          [v37 setThreadIdentifier:threadIdentifier];
          [v37 setSpotlightCacheKey:guid];
          if (objc_opt_respondsToSelector())
          {
            -[NSObject setIsFromMe:](v37, "setIsFromMe:", [messageItem isFromMe]);
          }

          v39 = [v37 copy];
          self = selfCopy;
          [selfCopy addEntry:v39];

          v44 = 1;
        }

        else
        {
          v37 = IMLogHandleForCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [(UIInputContextHistory(ChatKit) *)v57 addChatItems:v12 withConversation:&v58, v37];
          }

          self = selfCopy;
        }

        v8 = v47;
        v9 = v45;
        v31 = time;
        goto LABEL_41;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_44;
      }

      v23 = v11;
      if (objc_opt_respondsToSelector())
      {
        messageItem = [v23 handle];
        v24 = [messageItem ID];
        guid = MEMORY[0x193AF5D70]();

        recipientIdentifiers = [self recipientIdentifiers];
        v26 = [recipientIdentifiers containsObject:guid];

        if ((v26 & 1) == 0)
        {
          descriptorForUsedKeys = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
          v56 = descriptorForUsedKeys;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
          v29 = [messageItem cnContactWithKeys:v28];

          v51 = v29;
          v30 = [MEMORY[0x1E696ADF0] componentsForContact:v29];
          v31 = v30;
          if (guid)
          {
            self = selfCopy;
            if (v30)
            {
              [selfCopy addNewParticipantWithIdentifier:guid name:v30];
              v44 = 1;
            }
          }

          else
          {
            self = selfCopy;
          }

LABEL_41:
        }
      }

LABEL_44:
      ++v10;
    }

    while (v8 != v10);
    v40 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    v8 = v40;
  }

  while (v40);
LABEL_50:

  return v44 & 1;
}

- (void)addChatItems:()ChatKit withConversation:.cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 IMChatItem];
  v8 = [v7 guid];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&dword_19020E000, a4, OS_LOG_TYPE_ERROR, "Could not determine sender identifier for chat item %@, not adding to input context history.", a1, 0xCu);
}

@end