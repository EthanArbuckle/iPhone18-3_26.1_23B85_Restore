@interface IMDCollaborationNoticeTypeGenerator
+ (id)sharedGenerator;
- (IMDCollaborationNoticeTypeGenerator)init;
- (int64_t)processMentionForPersonHandle:(id)a3;
- (int64_t)processMentionForPersonIdentity:(id)a3 highlightURL:(id)a4;
- (int64_t)typeForHighlightEvent:(id)a3;
@end

@implementation IMDCollaborationNoticeTypeGenerator

+ (id)sharedGenerator
{
  if (qword_27D8CFDD8 != -1)
  {
    sub_22B7D005C();
  }

  v3 = qword_27D8CFDD0;

  return v3;
}

- (IMDCollaborationNoticeTypeGenerator)init
{
  v6.receiver = self;
  v6.super_class = IMDCollaborationNoticeTypeGenerator;
  v2 = [(IMDCollaborationNoticeTypeGenerator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x231897B40](@"SWHighlightCenter", @"SharedWithYou"));
    highlightCenter = v2->_highlightCenter;
    v2->_highlightCenter = v3;
  }

  return v2;
}

- (int64_t)typeForHighlightEvent:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 changeEventType];
    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = -1;
    }

    if (v5 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 mentionedPersonHandle], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
      {
        v12 = [v4 mentionedPersonHandle];
        v7 = [(IMDCollaborationNoticeTypeGenerator *)self processMentionForPersonHandle:v12];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          if (objc_opt_respondsToSelector())
          {
            v14 = [v4 persistenceEventType];
            if ((v14 - 1) >= 4)
            {
              v7 = -1;
            }

            else
            {
              v7 = v14 + 3;
            }
          }

          else
          {
            v7 = -1;
          }

          goto LABEL_26;
        }

        v12 = [v4 mentionedPersonIdentity];
        v13 = [v4 highlightURL];
        v7 = [(IMDCollaborationNoticeTypeGenerator *)self processMentionForPersonIdentity:v12 highlightURL:v13];
      }

      goto LABEL_26;
    }

    v8 = [v4 membershipEventType];
    v9 = 9;
    if (v8 != 2)
    {
      v9 = -1;
    }

    if (v8 == 1)
    {
      v7 = 8;
    }

    else
    {
      v7 = v9;
    }
  }

LABEL_26:

  return v7;
}

- (int64_t)processMentionForPersonHandle:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = +[IMDAccountController sharedAccountController];
    v6 = [v5 activeAliases];
    v7 = [v4 setWithArray:v6];

    if ([v7 containsObject:v3])
    {
      v8 = 3;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v3;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received a mention for a handle not associated with local account: %@", &v13, 0xCu);
        }
      }

      v8 = -1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Received a mention for a handle not associated with local account: %@", &v13, 0xCu);
      }
    }

    v8 = -1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)processMentionForPersonIdentity:(id)a3 highlightURL:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v34 = a4;
  v6 = [(IMDCollaborationNoticeTypeGenerator *)self highlightCenter];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(IMDCollaborationNoticeTypeGenerator *)self highlightCenter];
    v45 = 0;
    v33 = [v8 collaborationHighlightForURL:v34 error:&v45];
    v32 = v45;

    if (v32)
    {
      v9 = 1;
    }

    else
    {
      v9 = v33 == 0;
    }

    v10 = !v9;
    v11 = IMOSLoggingEnabled();
    if (v10)
    {
      if (v11)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v33 stringIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v13;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Received a mention with a person identity for highlight: %@. Attempting to find the handle for the mentioned identity.", &buf, 0xCu);
        }
      }

      v14 = MEMORY[0x277CBEB98];
      v15 = +[IMDAccountController sharedAccountController];
      v16 = [v15 activeAliases];
      v35 = [v14 setWithArray:v16];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x2020000000;
      v51 = -1;
      v17 = [(IMDCollaborationNoticeTypeGenerator *)self highlightCenter];
      v31 = [v17 fetchAttributionsForHighlight:v33];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = [v31 attributions];
      v19 = [v18 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v19)
      {
        v20 = *v42;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = [*(*(&v41 + 1) + 8 * i) collaborationMetadata];
            if (objc_opt_respondsToSelector())
            {
              v23 = [v22 handleToIdentityMap];
              v37[0] = MEMORY[0x277D85DD0];
              v37[1] = 3221225472;
              v37[2] = sub_22B50AF2C;
              v37[3] = &unk_278703250;
              v38 = v36;
              v39 = v35;
              p_buf = &buf;
              [v23 enumerateKeysAndObjectsUsingBlock:v37];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v19);
      }

      if (*(*(&buf + 1) + 24) == 3)
      {
        v24 = @"IMCollaborationNoticeTypeMentionedMe";
      }

      else
      {
        v24 = @"IMCollaborationNoticeTypeInvalid";
      }

      v25 = v24;
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v46 = 138412290;
          v47 = v25;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "processMentionForPersonIdentity returning: %@", v46, 0xCu);
        }
      }

      v27 = *(*(&buf + 1) + 24);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (v11)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v32;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Received a notice for a URL without a tracked highlight, returning invalid for this notice. error: %@", &buf, 0xCu);
        }
      }

      v27 = -1;
    }
  }

  else
  {
    v27 = -1;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

@end