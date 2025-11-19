@interface IMFindAccountProcessingPipelineComponent
- (BOOL)_isSOSWithInput:(id)a3;
- (IMFindAccountProcessingPipelineComponent)initWithReceivingAccount:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMFindAccountProcessingPipelineComponent

- (IMFindAccountProcessingPipelineComponent)initWithReceivingAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMFindAccountProcessingPipelineComponent;
  v6 = [(IMFindAccountProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_receivingAccount, a3);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Started processing", buf, 2u);
    }
  }

  v6 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
  v7 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
  v8 = [v7 session];

  if (!v8)
  {
    v19 = [v6 isActive];
    v20 = IMOSLoggingEnabled();
    if ((v19 & 1) == 0)
    {
      if (v20)
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "No service session, and the account is not active - ignoring message", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> Failed to find service session", buf, 2u);
        }
      }

      v50 = objc_alloc(MEMORY[0x277CCA9B8]);
      v14 = [v50 initWithDomain:*MEMORY[0x277D18DF8] code:22 userInfo:0];
      v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v14];
      goto LABEL_65;
    }

    if (v20)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "No service session, and the account is active - try to create one", buf, 2u);
      }
    }

    [v6 createSessionIfNecessary];
    v22 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
    v8 = [v22 session];

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = v8;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "ServiceSession created: %@", buf, 0xCu);
      }
    }
  }

  v9 = [v4 replicationSourceServiceName];
  v10 = [v9 length] == 0;

  if (v10)
  {
    v14 = v8;
LABEL_27:
    [v4 setAccount:v6];
    [v4 setServiceSession:v14];
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v4 replicationSourceServiceName];
        *buf = 138412802;
        v67 = v6;
        v68 = 2112;
        v69 = v14;
        v70 = 2112;
        v71 = v31;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Assigning account %@ service session %@ (replication source: %@)", buf, 0x20u);
      }
    }

    v32 = IMGetCachedDomainIntForKey();
    v33 = [MEMORY[0x277D19268] sharedInstance];
    v34 = [v33 isInternalInstall];
    if (v32 > 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      v36 = [v4 replicationSourceServiceName];
      v37 = [v36 length] == 0;

      if (!v37)
      {
        v38 = objc_alloc_init(MEMORY[0x277D18E08]);
        v39 = dispatch_time(0, 1000000000 * v32);
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = sub_22B6CCF3C;
        v63[3] = &unk_278702FA0;
        v40 = v38;
        v64 = v40;
        v65 = v4;
        dispatch_after(v39, MEMORY[0x277D85CD0], v63);
        v41 = v65;
        v42 = v40;

        goto LABEL_66;
      }
    }

    else
    {
    }

    v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
    goto LABEL_65;
  }

  v11 = +[IMDAccountController sharedAccountController];
  v12 = [v4 replicationSourceServiceName];
  v13 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
  v14 = [v11 sessionForReplicationSourceServiceName:v12 replicatingAccount:v13];

  if (((v14 == 0) & [(IMFindAccountProcessingPipelineComponent *)self _isSOSWithInput:v4]) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v4 replicationSourceServiceName];
        v17 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
        *buf = 138412546;
        v67 = v16;
        v68 = 2112;
        v69 = v17;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Failed to find service session for replicated message with source service %@ replicating account %@, but is SOS, permitting on received iMessage account session instead", buf, 0x16u);
      }
    }

    v18 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
    v14 = [v18 session];

    if (!v14)
    {
      goto LABEL_39;
    }

LABEL_26:
    v29 = [v14 account];

    v6 = v29;
    goto LABEL_27;
  }

  if (!v14)
  {
LABEL_39:
    v44 = [v4 toIdentifier];
    if ([v44 length])
    {
      v45 = [v4 toIdentifier];
      IsEmail = IMStringIsEmail();

      if (IsEmail)
      {
        v47 = 17;
      }

      else
      {
        v47 = 16;
      }
    }

    else
    {

      IsEmail = 0;
      v47 = 16;
    }

    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = [v4 replicationSourceServiceName];
        v57 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
        v58 = v57;
        v59 = @"NO";
        *buf = 138412802;
        v67 = v56;
        v68 = 2112;
        if (IsEmail)
        {
          v59 = @"YES";
        }

        v69 = v57;
        v70 = 2112;
        v71 = v59;
        _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Failed to find service session for replicated message with source service %@ replicating account %@ (email alias: %@)", buf, 0x20u);
      }
    }

    v60 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = [v60 initWithDomain:*MEMORY[0x277D18DF8] code:v47 userInfo:0];
    v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v14];
LABEL_65:
    v42 = v43;
    goto LABEL_66;
  }

  v24 = [v14 mainSession];
  v25 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
  v26 = [v4 toIdentifier];
  v27 = [v26 _stripFZIDPrefix];
  v28 = [v24 acceptsIncomingReplicatedMessagesFromAccount:v25 toIdentifier:v27 isSOS:{-[IMFindAccountProcessingPipelineComponent _isSOSWithInput:](self, "_isSOSWithInput:", v4)}];

  if (v28)
  {
    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = [v4 replicationSourceServiceName];
      *buf = 138412290;
      v67 = v52;
      _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Has replication source %@ but service session rejected message, dropping", buf, 0xCu);
    }
  }

  v53 = objc_alloc(MEMORY[0x277CCA9B8]);
  v54 = [v53 initWithDomain:*MEMORY[0x277D18DF8] code:17 userInfo:0];
  v42 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v54];

LABEL_66:
  v61 = *MEMORY[0x277D85DE8];

  return v42;
}

- (BOOL)_isSOSWithInput:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isSOS];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end