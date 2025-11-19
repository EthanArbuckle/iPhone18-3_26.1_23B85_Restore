@interface IMAssistantIntentHandler
- (IMAssistantIntentHandler)init;
- (id)existingHandlerForIntentIdentifier:(id)a3;
- (id)handlerForIntent:(id)a3;
- (void)updateRecentlyUsedHandlersWithHandler:(id)a3;
@end

@implementation IMAssistantIntentHandler

- (IMAssistantIntentHandler)init
{
  v9.receiver = self;
  v9.super_class = IMAssistantIntentHandler;
  v2 = [(IMAssistantIntentHandler *)&v9 init];
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "Intent Extension initialized", v8, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recentIntentHandlers = v2->_recentIntentHandlers;
    v2->_recentIntentHandlers = v4;

    IMSetEmbeddedTempDirectory();
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &unk_2866930B8);
    v6[2]();
  }

  return v2;
}

- (id)handlerForIntent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(IMAssistantIntentHandler *)self existingHandlerForIntentIdentifier:v5];
  if (v6)
  {
LABEL_17:
    v8 = v6;
    [(IMAssistantIntentHandler *)self updateRecentlyUsedHandlersWithHandler:v6];
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v14 = 138412802;
      v15 = v11;
      v16 = 2048;
      v17 = v8;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Using %@ %p for intent %@", &v14, 0x20u);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = off_279785D60;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = off_279785D68;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = off_279785D70;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = off_279785D40;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = off_279785D48;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7 = &off_279785D80;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_19;
              }

              v7 = off_279785D18;
            }
          }
        }
      }
    }
  }

  v6 = [objc_alloc(*v7) initWithIntentIdentifier:v5];
  if (v6)
  {
    goto LABEL_17;
  }

LABEL_19:
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Received an unknown intent: %@", &v14, 0xCu);
  }

  v8 = 0;
LABEL_22:

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)existingHandlerForIntentIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 length])
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Intent does not have an intentIdentifier set. Creating new handler.", buf, 2u);
    }

    v13 = 0;
    goto LABEL_20;
  }

  v5 = self->_recentIntentHandlers;
  objc_sync_enter(v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_recentIntentHandlers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 intentIdentifier];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          v14 = IMLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v23 = v4;
            _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Found existing handler for intent identifier: %@.", buf, 0xCu);
          }

          v13 = v10;
          goto LABEL_14;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  objc_sync_exit(v5);
  if (!v13)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Existing handler not found for intent identifier: %@. Creating new handler.", buf, 0xCu);
    }

LABEL_20:
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)updateRecentlyUsedHandlersWithHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 intentIdentifier];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "Updating recently used intent handler cache for an intent with no intentIdentifier.", v10, 2u);
    }
  }

  v8 = self->_recentIntentHandlers;
  objc_sync_enter(v8);
  v9 = [(NSMutableArray *)self->_recentIntentHandlers indexOfObjectIdenticalTo:v4];
  if (v9)
  {
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_recentIntentHandlers removeObjectAtIndex:v9];
    }

    [(NSMutableArray *)self->_recentIntentHandlers insertObject:v4 atIndex:0];
    if ([(NSMutableArray *)self->_recentIntentHandlers count]>= 6)
    {
      [(NSMutableArray *)self->_recentIntentHandlers removeLastObject];
    }
  }

  objc_sync_exit(v8);
}

@end