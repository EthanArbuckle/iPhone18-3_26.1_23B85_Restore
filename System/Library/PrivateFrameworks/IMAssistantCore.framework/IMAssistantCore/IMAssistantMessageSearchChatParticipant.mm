@interface IMAssistantMessageSearchChatParticipant
- (BOOL)matchesPerson:(id)a3 withUnifiedContactIdentifiers:(id)a4;
- (IMAssistantMessageSearchChatParticipant)initWithHandle:(id)a3 contactIdentifiers:(id)a4 isMe:(BOOL)a5;
@end

@implementation IMAssistantMessageSearchChatParticipant

- (IMAssistantMessageSearchChatParticipant)initWithHandle:(id)a3 contactIdentifiers:(id)a4 isMe:(BOOL)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = IMAssistantMessageSearchChatParticipant;
  v10 = [(IMAssistantMessageSearchChatParticipant *)&v20 init];
  if (v10)
  {
    v11 = v8;
    if (MEMORY[0x259C19130]() || IMStringIsEmail())
    {
      v12 = IMCanonicalizeFormattedString();
    }

    else
    {
      if (!MEMORY[0x259C19110](v11))
      {
        v13 = IMLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v22 = v11;
          _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Could not canonicalize handle %@ because it is neither a phone number nor an email address.", buf, 0xCu);
        }
      }

      v12 = v11;
    }

    v14 = v12;

    handle = v10->_handle;
    v10->_handle = v14;

    v16 = [v9 copy];
    contactIdentifiers = v10->_contactIdentifiers;
    v10->_contactIdentifiers = v16;

    v10->_isMe = a5;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)matchesPerson:(id)a3 withUnifiedContactIdentifiers:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_isMe || ([v6 isMe] & 1) == 0)
  {
    v9 = [v6 __im_assistant_allContactIdentifiers];
    if ([v9 count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
LABEL_7:
        v14 = 0;
        while (1)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([(NSArray *)self->_contactIdentifiers containsObject:*(*(&v29 + 1) + 8 * v14)])
          {
            goto LABEL_34;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v12)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }
    }

    if ([v7 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = v7;
      v15 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
LABEL_17:
        v18 = 0;
        while (1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v10);
          }

          if ([(NSArray *)self->_contactIdentifiers containsObject:*(*(&v25 + 1) + 8 * v18), v25])
          {
            goto LABEL_34;
          }

          if (v16 == ++v18)
          {
            v16 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v16)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }
    }

    v19 = [v6 personHandle];
    v20 = [v19 value];
    if (MEMORY[0x259C19130]() || IMStringIsEmail())
    {
      v21 = IMCanonicalizeFormattedString();
    }

    else
    {
      if (!MEMORY[0x259C19110](v20))
      {
        v22 = IMLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = v20;
          _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Could not canonicalize handle %@ because it is neither a phone number nor an email address.", buf, 0xCu);
        }
      }

      v21 = v20;
    }

    v10 = v21;

    if (![v10 length] || (objc_msgSend(v10, "isEqualToString:", self->_handle) & 1) == 0)
    {
      v8 = 0;
      goto LABEL_36;
    }

LABEL_34:
    v8 = 1;
LABEL_36:

    goto LABEL_37;
  }

  v8 = 1;
LABEL_37:

  v23 = *MEMORY[0x277D85DE8];
  return v8;
}

@end