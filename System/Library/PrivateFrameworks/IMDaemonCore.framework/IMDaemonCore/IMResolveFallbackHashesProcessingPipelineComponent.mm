@interface IMResolveFallbackHashesProcessingPipelineComponent
- (id)_associatedMessageGUIDForInput:(id)a3 error:(id *)a4;
- (id)_messageGUIDForInput:(id)a3 providedGUID:(id)a4 fallbackHash:(id)a5;
- (id)_messageGUIDForMessageWithFallbackHash:(id)a3 chat:(id)a4;
- (id)_threadIdentifierForInput:(id)a3 error:(id *)a4;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMResolveFallbackHashesProcessingPipelineComponent

- (id)_associatedMessageGUIDForInput:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 associatedMessageGUID];
  v8 = [v6 associatedMessageFallbackHash];
  v9 = [v6 replicationSourceServiceName];
  if ([v9 length] && objc_msgSend(v7, "length"))
  {
    v10 = IMAssociatedMessageDecodeGUID();
    v11 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _messageGUIDForInput:v6 providedGUID:v10 fallbackHash:v8];
    v12 = v11;
    if (v11)
    {
      if (v11 == v10)
      {
        v16 = v7;
      }

      else
      {
        v13 = [v6 associatedMessageGUID];
        v14 = IMAssociatedMessageDecodePartIndex();

        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"p:%ld/%@", v15, v12];
      }

      v17 = v16;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v23 = [v8 length];
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found no source message GUID for fallback hash with length %llu, rejecting replicated message", buf, 0xCu);
        }
      }

      if (a4)
      {
        v19 = objc_alloc(MEMORY[0x277CCA9B8]);
        v17 = 0;
        *a4 = [v19 initWithDomain:*MEMORY[0x277D18DF8] code:17 userInfo:0];
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = v7;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_threadIdentifierForInput:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 threadIdentifierGUID];
  v8 = [v6 threadOriginatorFallbackHash];
  v9 = [v6 replicationSourceServiceName];
  if ([v9 length] && objc_msgSend(v7, "length"))
  {
    IMMessageThreadIdentifierGetComponents();
    v10 = 0;
    v11 = 0;
    v12 = v11;
    if (v10 && v11)
    {
      v13 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _messageGUIDForInput:v6 providedGUID:v10 fallbackHash:v8];
      v14 = v13;
      if (v13)
      {
        if (v13 == v10)
        {
          ThreadIdentifierWithComponents = v7;
        }

        else
        {
          ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();
        }

        v16 = ThreadIdentifierWithComponents;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v22 = [v8 length];
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found no source message GUID for fallback hash with length %llu, rejecting replicated message", buf, 0xCu);
          }
        }

        if (a4)
        {
          v18 = objc_alloc(MEMORY[0x277CCA9B8]);
          v16 = 0;
          *a4 = [v18 initWithDomain:*MEMORY[0x277D18DF8] code:17 userInfo:0];
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = v7;
    }
  }

  else
  {
    v16 = v7;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_messageGUIDForInput:(id)a3 providedGUID:(id)a4 fallbackHash:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 replicationSourceServiceName];
  if (v11)
  {
    v12 = +[IMDMessageStore sharedInstance];
    v13 = [v12 messageWithGUID:v9];

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          v24 = v9;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found existing message for GUID %@", &v23, 0xCu);
        }
      }

      v15 = v9;
LABEL_8:

      goto LABEL_23;
    }

    if ([v10 length])
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          v24 = v9;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found no existing message for GUID %@, using fallback hash", &v23, 0xCu);
        }
      }

      v17 = [v8 chat];
      v15 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _messageGUIDForMessageWithFallbackHash:v10 chat:v17];

      if (v15)
      {
        goto LABEL_8;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v10 length];
      v23 = 138412546;
      v24 = v9;
      v25 = 2048;
      v26 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> No existing message found with provided GUID %@ or fallbackHash (len: %llu)", &v23, 0x16u);
    }
  }

  if ([v8 isFromMe])
  {
    v20 = v9;
  }

  else
  {
    v20 = 0;
  }

  v15 = v20;
LABEL_23:

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_messageGUIDForMessageWithFallbackHash:(id)a3 chat:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 sortedMessageItemsWithFallbackHash:v5 inChat:v6 limit:1];
    v9 = [v8 firstObject];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v9 guid];
        v15 = 138412546;
        v16 = v11;
        v17 = 2048;
        v18 = [v5 length];
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found message %@ for fallback hash with length %llu", &v15, 0x16u);
      }
    }

    v12 = [v9 guid];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Started processing", buf, 2u);
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v13 = 0;
    v6 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _associatedMessageGUIDForInput:v4 error:&v13];
    v7 = v13;
    if (v7)
    {
      v8 = v7;
LABEL_12:
      v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v8];
      goto LABEL_14;
    }

    [v4 setAssociatedMessageGUID:v6];
  }

  v12 = 0;
  v6 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _threadIdentifierForInput:v4 error:&v12];
  v8 = v12;
  if (v8)
  {
    goto LABEL_12;
  }

  [v4 setThreadIdentifierGUID:v6];
  v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
LABEL_14:
  v10 = v9;

  return v10;
}

@end