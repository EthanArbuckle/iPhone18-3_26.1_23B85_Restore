@interface IMAssistantMessageHandler
+ (id)connectToIMDaemonController;
- (NSArray)keysToFetch;
- (id)_initWithDataSource:(id)a3 contactKeysToFetch:(id)a4 intentIdentifier:(id)a5;
- (id)contactIdentifiersForParticipantsInChat:(id)a3;
- (id)contactIdentifiersMatchingHandle:(id)a3;
- (id)contactIdentifiersMatchingHandleID:(id)a3 handleType:(int64_t)a4;
- (id)contactIdentifiersMatchingINPersonHandle:(id)a3;
- (id)contactIdentifiersMatchingSPIHandle:(id)a3;
- (id)contactPredicateFromHandle:(id)a3 handleType:(int64_t)a4;
- (id)contactWithIdentifier:(id)a3;
- (id)contactsMatchingINPerson:(id)a3;
- (id)contactsMatchingPredicate:(id)a3 forPerson:(id)a4;
- (id)meContactIdentifier;
- (id)personFromSPIHandle:(id)a3;
- (id)unifiedContactIdentifierForContactIdentifier:(id)a3;
- (void)forceTriggerResumeNotification;
@end

@implementation IMAssistantMessageHandler

+ (id)connectToIMDaemonController
{
  if (IMIsRunningInUnitTesting())
  {
    v2 = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    if (qword_28118F660 != -1)
    {
      sub_2547C853C();
    }

    v2 = qword_28118F668;
  }

  return v2;
}

- (id)_initWithDataSource:(id)a3 contactKeysToFetch:(id)a4 intentIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = IMAssistantMessageHandler;
  v11 = [(IMAssistantMessageHandler *)&v17 init];
  if (v11)
  {
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = +[IMAssistantMessageHandlerDefaultDataSource sharedInstance];
    }

    messageHandlerDataSource = v11->_messageHandlerDataSource;
    v11->_messageHandlerDataSource = v12;

    objc_storeStrong(&v11->_keysToFetch, a4);
    v14 = [v10 copy];
    intentIdentifier = v11->_intentIdentifier;
    v11->_intentIdentifier = v14;

    [(IMAssistantMessageHandler *)v11 forceTriggerResumeNotification];
  }

  return v11;
}

- (NSArray)keysToFetch
{
  v12[11] = *MEMORY[0x277D85DE8];
  keysToFetch = self->_keysToFetch;
  if (!keysToFetch)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{0, *MEMORY[0x277CBD068], *MEMORY[0x277CBD000], *MEMORY[0x277CBD058], *MEMORY[0x277CBCFF8], *MEMORY[0x277CBD070], *MEMORY[0x277CBD078], *MEMORY[0x277CBD098], *MEMORY[0x277CBCFC0], *MEMORY[0x277CBD0A0]}];
    v12[9] = v5;
    v6 = [MEMORY[0x277CCAC00] descriptorForUsedKeys];
    v12[10] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:11];
    [v4 addObjectsFromArray:v7];

    v8 = [v4 copy];
    v9 = self->_keysToFetch;
    self->_keysToFetch = v8;

    keysToFetch = self->_keysToFetch;
  }

  v10 = *MEMORY[0x277D85DE8];

  return keysToFetch;
}

- (id)contactsMatchingINPerson:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _IMAssistantCoreGeneralSignpostLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = _IMAssistantCoreGeneralSignpostLogHandle();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "contactsMatchingPerson", &unk_2547CAD0B, &v25, 2u);
  }

  v10 = [v4 __im_assistant_allContactIdentifiers];
  if ([v10 count])
  {
    v11 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v10];
    v12 = [(IMAssistantMessageHandler *)self contactsMatchingPredicate:v11 forPerson:v4];
    v13 = IMLogHandleForCategory();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v14)
      {
        v15 = [v12 count];
        v25 = 134218498;
        v26 = v15;
        v27 = 2112;
        v28 = v4;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Person resolved to %ld contacts via siriMatches. Person: %@, Contacts: %@", &v25, 0x20u);
      }

      v16 = _IMAssistantCoreGeneralSignpostLogHandle();
      v17 = v16;
      if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        LOWORD(v25) = 0;
        _os_signpost_emit_with_name_impl(&dword_25479E000, v17, OS_SIGNPOST_INTERVAL_END, v6, "contactsMatchingPerson", &unk_2547CAD0B, &v25, 2u);
      }

      v18 = v12;
    }

    else
    {
      if (v14)
      {
        v25 = 138412290;
        v26 = v4;
        _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Person contained siriMatches that did not resolve to any contacts. Person: %@", &v25, 0xCu);
      }

      v21 = _IMAssistantCoreGeneralSignpostLogHandle();
      v22 = v21;
      if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        LOWORD(v25) = 0;
        _os_signpost_emit_with_name_impl(&dword_25479E000, v22, OS_SIGNPOST_INTERVAL_END, v6, "contactsMatchingPerson", &unk_2547CAD0B, &v25, 2u);
      }

      v18 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v4;
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Person to resolve contains no siriMatches. Person: %@", &v25, 0xCu);
    }

    v20 = _IMAssistantCoreGeneralSignpostLogHandle();
    v11 = v20;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_END, v6, "contactsMatchingPerson", &unk_2547CAD0B, &v25, 2u);
    }

    v18 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)unifiedContactIdentifierForContactIdentifier:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _IMAssistantCoreGeneralSignpostLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = _IMAssistantCoreGeneralSignpostLogHandle();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "unifiedContactIdentifierForContactIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  v10 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v11 = [v10 contactIdentifierToUnifiedContactIdentifierCache];

  v12 = [v11 objectForKey:v4];
  if ([v12 length])
  {
    v13 = _IMAssistantCoreGeneralSignpostLogHandle();
    v14 = v13;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v14, OS_SIGNPOST_INTERVAL_END, v6, "unifiedContactIdentifierForContactIdentifier", &unk_2547CAD0B, buf, 2u);
    }

    v15 = v12;
  }

  else
  {
    v16 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    v17 = [v16 contactsDataSource];
    v31[0] = *MEMORY[0x277CBD018];
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v26 = 0;
    v19 = [v17 unifiedContactWithIdentifier:v4 keysToFetch:v18 error:&v26];
    v20 = v26;

    if (v20)
    {
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v28 = v4;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Error fetching unified contact identifier for contact with identifier %@ from contact store. Error: %@", buf, 0x16u);
      }
    }

    v15 = [v19 identifier];
    if ([v15 length])
    {
      [v11 setObject:v15 forKey:v4];
    }

    v22 = _IMAssistantCoreGeneralSignpostLogHandle();
    v23 = v22;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v23, OS_SIGNPOST_INTERVAL_END, v6, "unifiedContactIdentifierForContactIdentifier", &unk_2547CAD0B, buf, 2u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)contactWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _IMAssistantCoreGeneralSignpostLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = _IMAssistantCoreGeneralSignpostLogHandle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "contactWithIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  v9 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v10 = [v9 contactsDataSource];
  v11 = [(IMAssistantMessageHandler *)self keysToFetch];
  v19 = 0;
  v12 = [v10 unifiedContactWithIdentifier:v4 keysToFetch:v11 error:&v19];
  v13 = v19;

  if (v13)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Error fetching contact with identifier %@ from contact store. Error: %@", buf, 0x16u);
    }
  }

  v15 = _IMAssistantCoreGeneralSignpostLogHandle();
  v16 = v15;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v16, OS_SIGNPOST_INTERVAL_END, v6, "contactWithIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)contactsMatchingPredicate:(id)a3 forPerson:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = _IMAssistantCoreGeneralSignpostLogHandle();
  v9 = os_signpost_id_generate(v8);

  v10 = _IMAssistantCoreGeneralSignpostLogHandle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "contactsMatchingPredicate", &unk_2547CAD0B, buf, 2u);
  }

  v12 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v13 = [v12 contactsDataSource];
  v14 = [(IMAssistantMessageHandler *)self keysToFetch];
  v25 = 0;
  v15 = [v13 unifiedContactsMatchingPredicate:v7 keysToFetch:v14 error:&v25];

  v16 = v25;
  if (v16)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v16;
      v18 = "Error fetching %@ from contact store: %@";
      v19 = v17;
      v20 = 22;
LABEL_7:
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, v18, buf, v20);
    }
  }

  else
  {
    if ([v15 count])
    {
      goto LABEL_10;
    }

    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v6;
      v18 = "Could not find person %@ in contact store with predicate";
      v19 = v17;
      v20 = 12;
      goto LABEL_7;
    }
  }

LABEL_10:
  v21 = _IMAssistantCoreGeneralSignpostLogHandle();
  v22 = v21;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v22, OS_SIGNPOST_INTERVAL_END, v9, "contactsMatchingPredicate", &unk_2547CAD0B, buf, 2u);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)contactIdentifiersMatchingHandleID:(id)a3 handleType:(int64_t)a4
{
  v56[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _IMAssistantCoreGeneralSignpostLogHandle();
  v8 = os_signpost_id_generate(v7);

  v9 = _IMAssistantCoreGeneralSignpostLogHandle();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "contactIdentifiersMatchingHandleID", &unk_2547CAD0B, buf, 2u);
  }

  if (![v6 length])
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Returning empty contactID array for nil handleID", buf, 2u);
    }

    v16 = _IMAssistantCoreGeneralSignpostLogHandle();
    v14 = v16;
    if (v11 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
    {
      goto LABEL_17;
    }

    *buf = 0;
    goto LABEL_16;
  }

  if (MEMORY[0x259C19110](v6))
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v6;
      _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Returning empty contactID array for handleID that is a businessID: %@", buf, 0xCu);
    }

    v13 = _IMAssistantCoreGeneralSignpostLogHandle();
    v14 = v13;
    if (v11 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
    {
      goto LABEL_17;
    }

    *buf = 0;
LABEL_16:
    _os_signpost_emit_with_name_impl(&dword_25479E000, v14, OS_SIGNPOST_INTERVAL_END, v8, "contactIdentifiersMatchingHandleID", &unk_2547CAD0B, buf, 2u);
LABEL_17:
    v17 = MEMORY[0x277CBEBF8];
    goto LABEL_43;
  }

  v18 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v14 = [v18 handleToContactIdentifierCache];

  v19 = [v14 objectForKey:v6];
  if (v19)
  {
    v20 = _IMAssistantCoreGeneralSignpostLogHandle();
    v21 = v20;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v21, OS_SIGNPOST_INTERVAL_END, v8, "contactIdentifiersMatchingHandleID", &unk_2547CAD0B, buf, 2u);
    }

    v17 = v19;
  }

  else
  {
    v22 = [(IMAssistantMessageHandler *)self contactPredicateFromHandle:v6 handleType:a4];
    v23 = objc_alloc_init(MEMORY[0x277CBEB40]);
    if (v22)
    {
      v24 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      v25 = [v24 contactsDataSource];
      v26 = *MEMORY[0x277CBCFC0];
      v56[0] = *MEMORY[0x277CBD018];
      v56[1] = v26;
      v56[2] = *MEMORY[0x277CBD098];
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
      v28 = v22;
      v29 = v27;
      v50 = 0;
      v45 = v28;
      v43 = [v25 unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
      v30 = 0;

      if (v30)
      {
        v31 = IMLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v53 = v6;
          v54 = 2112;
          v55 = v30;
          _os_log_impl(&dword_25479E000, v31, OS_LOG_TYPE_INFO, "Error fetching contact identifiers matching handle %@ from contact store: %@", buf, 0x16u);
        }
      }

      v44 = v30;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v32 = v43;
      v33 = [v32 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = [*(*(&v46 + 1) + 8 * i) identifier];
            [v23 addObject:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v34);
      }

      v22 = v45;
      v19 = 0;
      v38 = v44;
    }

    else
    {
      v38 = IMLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v53 = v6;
        _os_log_impl(&dword_25479E000, v38, OS_LOG_TYPE_INFO, "Could not search for contacts matching handle because a predicate could not be consrtuced from handle ID: %@", buf, 0xCu);
      }
    }

    v17 = [v23 array];
    v39 = _IMAssistantCoreGeneralSignpostLogHandle();
    v40 = v39;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v40, OS_SIGNPOST_INTERVAL_END, v8, "contactIdentifiersMatchingHandleID", &unk_2547CAD0B, buf, 2u);
    }
  }

LABEL_43:
  v41 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)contactPredicateFromHandle:(id)a3 handleType:(int64_t)a4
{
  v5 = a3;
  if (a4)
  {
    if (a4 != 2)
    {
      if (a4 != 1)
      {
LABEL_4:
        v6 = 0;
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "Unknown handle type, determining type from handle string value", v10, 2u);
    }

    if (IMStringIsEmail())
    {
LABEL_8:
      v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v5];
      goto LABEL_11;
    }

    if (!MEMORY[0x259C19130](v5))
    {
      goto LABEL_4;
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v5];
  v6 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v8];

LABEL_11:

  return v6;
}

- (id)contactIdentifiersMatchingINPersonHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  if (v5)
  {
    v6 = -[IMAssistantMessageHandler contactIdentifiersMatchingHandleID:handleType:](self, "contactIdentifiersMatchingHandleID:handleType:", v5, [v4 type]);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)contactIdentifiersMatchingHandle:(id)a3
{
  v4 = [a3 normalizedID];
  if (v4)
  {
    v5 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingHandleID:v4 handleType:0];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)contactIdentifiersMatchingSPIHandle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ([v4 isMe])
  {
    v6 = [(IMAssistantMessageHandler *)self meContactIdentifier];
    if ([v6 length])
    {
      [v5 addObject:v6];
    }
  }

  v7 = [v4 address];
  if (v7)
  {
    v8 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingHandleID:v7 handleType:0];
    [v5 addObjectsFromArray:v8];
  }

  v9 = [v5 array];

  return v9;
}

- (id)meContactIdentifier
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = _IMAssistantCoreGeneralSignpostLogHandle();
  v4 = os_signpost_id_generate(v3);

  v5 = _IMAssistantCoreGeneralSignpostLogHandle();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "meContactIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  v7 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v8 = [v7 contactsDataSource];

  v22[0] = *MEMORY[0x277CBD018];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v19 = 0;
  v10 = [v8 _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v19];
  v11 = v19;
  if (v11)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Error fetching me contact: %@", buf, 0xCu);
    }
  }

  if (!v10)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Could not find me contact identifier", buf, 2u);
    }
  }

  v14 = [v10 identifier];
  v15 = _IMAssistantCoreGeneralSignpostLogHandle();
  v16 = v15;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v16, OS_SIGNPOST_INTERVAL_END, v4, "meContactIdentifier", &unk_2547CAD0B, buf, 2u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)contactIdentifiersForParticipantsInChat:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 participantsWithState:16];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingHandle:*(*(&v15 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)personFromSPIHandle:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _IMAssistantCoreGeneralSignpostLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = _IMAssistantCoreGeneralSignpostLogHandle();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "personFromSPIHandle", &unk_2547CAD0B, &v25, 2u);
  }

  v10 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v11 = [v10 spiHandleToPersonCache];

  v12 = [v11 objectForKey:v4];
  if (v12)
  {
    v13 = _IMAssistantCoreGeneralSignpostLogHandle();
    v14 = v13;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v14, OS_SIGNPOST_INTERVAL_END, v6, "personFromSPIHandle", &unk_2547CAD0B, &v25, 2u);
    }

    v15 = v12;
  }

  else
  {
    v16 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingSPIHandle:v4];
    if ([v16 count])
    {
      v17 = [v16 firstObject];
      v18 = [(IMAssistantMessageHandler *)self contactWithIdentifier:v17];
      if ([v16 count] >= 2)
      {
        v19 = IMLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v16 count];
          v25 = 134218754;
          v26 = v20;
          v27 = 2112;
          v28 = v4;
          v29 = 2112;
          v30 = v16;
          v31 = 2112;
          v32 = v18;
          _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "%ld contacts matched handle %@. Matching identifiers: %@. Using contact: %@", &v25, 0x2Au);
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v15 = [MEMORY[0x277CD3E90] __im_personFromSPIHandle:v4 contact:v18];
    [v11 setObject:v15 forKey:v4];
    v21 = _IMAssistantCoreGeneralSignpostLogHandle();
    v22 = v21;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v22, OS_SIGNPOST_INTERVAL_END, v6, "personFromSPIHandle", &unk_2547CAD0B, &v25, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)forceTriggerResumeNotification
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_25479F654;
  v5[3] = &unk_279786A58;
  v5[4] = self;
  v2 = MEMORY[0x259C19590](v5, a2);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_25479F644;
    v3[3] = &unk_279786928;
    v4 = v2;
    dispatch_sync(MEMORY[0x277D85CD0], v3);
  }
}

@end