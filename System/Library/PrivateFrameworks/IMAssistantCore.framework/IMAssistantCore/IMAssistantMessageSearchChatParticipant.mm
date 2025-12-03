@interface IMAssistantMessageSearchChatParticipant
- (BOOL)matchesPerson:(id)person withUnifiedContactIdentifiers:(id)identifiers;
- (IMAssistantMessageSearchChatParticipant)initWithHandle:(id)handle contactIdentifiers:(id)identifiers isMe:(BOOL)me;
@end

@implementation IMAssistantMessageSearchChatParticipant

- (IMAssistantMessageSearchChatParticipant)initWithHandle:(id)handle contactIdentifiers:(id)identifiers isMe:(BOOL)me
{
  v23 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  identifiersCopy = identifiers;
  v20.receiver = self;
  v20.super_class = IMAssistantMessageSearchChatParticipant;
  v10 = [(IMAssistantMessageSearchChatParticipant *)&v20 init];
  if (v10)
  {
    v11 = handleCopy;
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

    v16 = [identifiersCopy copy];
    contactIdentifiers = v10->_contactIdentifiers;
    v10->_contactIdentifiers = v16;

    v10->_isMe = me;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)matchesPerson:(id)person withUnifiedContactIdentifiers:(id)identifiers
{
  v37 = *MEMORY[0x277D85DE8];
  personCopy = person;
  identifiersCopy = identifiers;
  if (!self->_isMe || ([personCopy isMe] & 1) == 0)
  {
    __im_assistant_allContactIdentifiers = [personCopy __im_assistant_allContactIdentifiers];
    if ([__im_assistant_allContactIdentifiers count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = __im_assistant_allContactIdentifiers;
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

    if ([identifiersCopy count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = identifiersCopy;
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

    personHandle = [personCopy personHandle];
    value = [personHandle value];
    if (MEMORY[0x259C19130]() || IMStringIsEmail())
    {
      v21 = IMCanonicalizeFormattedString();
    }

    else
    {
      if (!MEMORY[0x259C19110](value))
      {
        v22 = IMLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = value;
          _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Could not canonicalize handle %@ because it is neither a phone number nor an email address.", buf, 0xCu);
        }
      }

      v21 = value;
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