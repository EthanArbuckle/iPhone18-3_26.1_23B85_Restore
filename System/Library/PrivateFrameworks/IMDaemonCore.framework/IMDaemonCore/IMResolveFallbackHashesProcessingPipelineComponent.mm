@interface IMResolveFallbackHashesProcessingPipelineComponent
- (id)_associatedMessageGUIDForInput:(id)input error:(id *)error;
- (id)_messageGUIDForInput:(id)input providedGUID:(id)d fallbackHash:(id)hash;
- (id)_messageGUIDForMessageWithFallbackHash:(id)hash chat:(id)chat;
- (id)_threadIdentifierForInput:(id)input error:(id *)error;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMResolveFallbackHashesProcessingPipelineComponent

- (id)_associatedMessageGUIDForInput:(id)input error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  associatedMessageGUID = [inputCopy associatedMessageGUID];
  associatedMessageFallbackHash = [inputCopy associatedMessageFallbackHash];
  replicationSourceServiceName = [inputCopy replicationSourceServiceName];
  if ([replicationSourceServiceName length] && objc_msgSend(associatedMessageGUID, "length"))
  {
    v10 = IMAssociatedMessageDecodeGUID();
    v11 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _messageGUIDForInput:inputCopy providedGUID:v10 fallbackHash:associatedMessageFallbackHash];
    v12 = v11;
    if (v11)
    {
      if (v11 == v10)
      {
        v16 = associatedMessageGUID;
      }

      else
      {
        associatedMessageGUID2 = [inputCopy associatedMessageGUID];
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
          v23 = [associatedMessageFallbackHash length];
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found no source message GUID for fallback hash with length %llu, rejecting replicated message", buf, 0xCu);
        }
      }

      if (error)
      {
        v19 = objc_alloc(MEMORY[0x277CCA9B8]);
        v17 = 0;
        *error = [v19 initWithDomain:*MEMORY[0x277D18DF8] code:17 userInfo:0];
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = associatedMessageGUID;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_threadIdentifierForInput:(id)input error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  threadIdentifierGUID = [inputCopy threadIdentifierGUID];
  threadOriginatorFallbackHash = [inputCopy threadOriginatorFallbackHash];
  replicationSourceServiceName = [inputCopy replicationSourceServiceName];
  if ([replicationSourceServiceName length] && objc_msgSend(threadIdentifierGUID, "length"))
  {
    IMMessageThreadIdentifierGetComponents();
    v10 = 0;
    v11 = 0;
    v12 = v11;
    if (v10 && v11)
    {
      v13 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _messageGUIDForInput:inputCopy providedGUID:v10 fallbackHash:threadOriginatorFallbackHash];
      v14 = v13;
      if (v13)
      {
        if (v13 == v10)
        {
          ThreadIdentifierWithComponents = threadIdentifierGUID;
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
            v22 = [threadOriginatorFallbackHash length];
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found no source message GUID for fallback hash with length %llu, rejecting replicated message", buf, 0xCu);
          }
        }

        if (error)
        {
          v18 = objc_alloc(MEMORY[0x277CCA9B8]);
          v16 = 0;
          *error = [v18 initWithDomain:*MEMORY[0x277D18DF8] code:17 userInfo:0];
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = threadIdentifierGUID;
    }
  }

  else
  {
    v16 = threadIdentifierGUID;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_messageGUIDForInput:(id)input providedGUID:(id)d fallbackHash:(id)hash
{
  v27 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  dCopy = d;
  hashCopy = hash;
  replicationSourceServiceName = [inputCopy replicationSourceServiceName];
  if (replicationSourceServiceName)
  {
    v12 = +[IMDMessageStore sharedInstance];
    v13 = [v12 messageWithGUID:dCopy];

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          v24 = dCopy;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found existing message for GUID %@", &v23, 0xCu);
        }
      }

      v15 = dCopy;
LABEL_8:

      goto LABEL_23;
    }

    if ([hashCopy length])
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v23 = 138412290;
          v24 = dCopy;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found no existing message for GUID %@, using fallback hash", &v23, 0xCu);
        }
      }

      chat = [inputCopy chat];
      v15 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _messageGUIDForMessageWithFallbackHash:hashCopy chat:chat];

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
      v19 = [hashCopy length];
      v23 = 138412546;
      v24 = dCopy;
      v25 = 2048;
      v26 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> No existing message found with provided GUID %@ or fallbackHash (len: %llu)", &v23, 0x16u);
    }
  }

  if ([inputCopy isFromMe])
  {
    v20 = dCopy;
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

- (id)_messageGUIDForMessageWithFallbackHash:(id)hash chat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  chatCopy = chat;
  if (chatCopy)
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 sortedMessageItemsWithFallbackHash:hashCopy inChat:chatCopy limit:1];
    firstObject = [v8 firstObject];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        guid = [firstObject guid];
        v15 = 138412546;
        v16 = guid;
        v17 = 2048;
        v18 = [hashCopy length];
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "<IMResolveFallbackHashesProcessingPipelineComponent> Found message %@ for fallback hash with length %llu", &v15, 0x16u);
      }
    }

    guid2 = [firstObject guid];
  }

  else
  {
    guid2 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return guid2;
}

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
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
    v6 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _associatedMessageGUIDForInput:inputCopy error:&v13];
    v7 = v13;
    if (v7)
    {
      v8 = v7;
LABEL_12:
      v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v8];
      goto LABEL_14;
    }

    [inputCopy setAssociatedMessageGUID:v6];
  }

  v12 = 0;
  v6 = [(IMResolveFallbackHashesProcessingPipelineComponent *)self _threadIdentifierForInput:inputCopy error:&v12];
  v8 = v12;
  if (v8)
  {
    goto LABEL_12;
  }

  [inputCopy setThreadIdentifierGUID:v6];
  v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_14:
  v10 = v9;

  return v10;
}

@end