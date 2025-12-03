@interface IMFindAccountProcessingPipelineComponent
- (BOOL)_isSOSWithInput:(id)input;
- (IMFindAccountProcessingPipelineComponent)initWithReceivingAccount:(id)account;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMFindAccountProcessingPipelineComponent

- (IMFindAccountProcessingPipelineComponent)initWithReceivingAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = IMFindAccountProcessingPipelineComponent;
  v6 = [(IMFindAccountProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_receivingAccount, account);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v72 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Started processing", buf, 2u);
    }
  }

  receivingAccount = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
  receivingAccount2 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
  session = [receivingAccount2 session];

  if (!session)
  {
    isActive = [receivingAccount isActive];
    v20 = IMOSLoggingEnabled();
    if ((isActive & 1) == 0)
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
      session2 = [v50 initWithDomain:*MEMORY[0x277D18DF8] code:22 userInfo:0];
      v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:session2];
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

    [receivingAccount createSessionIfNecessary];
    receivingAccount3 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
    session = [receivingAccount3 session];

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = session;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "ServiceSession created: %@", buf, 0xCu);
      }
    }
  }

  replicationSourceServiceName = [inputCopy replicationSourceServiceName];
  v10 = [replicationSourceServiceName length] == 0;

  if (v10)
  {
    session2 = session;
LABEL_27:
    [inputCopy setAccount:receivingAccount];
    [inputCopy setServiceSession:session2];
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        replicationSourceServiceName2 = [inputCopy replicationSourceServiceName];
        *buf = 138412802;
        v67 = receivingAccount;
        v68 = 2112;
        v69 = session2;
        v70 = 2112;
        v71 = replicationSourceServiceName2;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Assigning account %@ service session %@ (replication source: %@)", buf, 0x20u);
      }
    }

    v32 = IMGetCachedDomainIntForKey();
    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];
    if (v32 > 0)
    {
      v35 = isInternalInstall;
    }

    else
    {
      v35 = 0;
    }

    if (v35)
    {
      replicationSourceServiceName3 = [inputCopy replicationSourceServiceName];
      v37 = [replicationSourceServiceName3 length] == 0;

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
        v65 = inputCopy;
        dispatch_after(v39, MEMORY[0x277D85CD0], v63);
        v41 = v65;
        v42 = v40;

        goto LABEL_66;
      }
    }

    else
    {
    }

    v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    goto LABEL_65;
  }

  v11 = +[IMDAccountController sharedAccountController];
  replicationSourceServiceName4 = [inputCopy replicationSourceServiceName];
  receivingAccount4 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
  session2 = [v11 sessionForReplicationSourceServiceName:replicationSourceServiceName4 replicatingAccount:receivingAccount4];

  if (((session2 == 0) & [(IMFindAccountProcessingPipelineComponent *)self _isSOSWithInput:inputCopy]) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        replicationSourceServiceName5 = [inputCopy replicationSourceServiceName];
        receivingAccount5 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
        *buf = 138412546;
        v67 = replicationSourceServiceName5;
        v68 = 2112;
        v69 = receivingAccount5;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Failed to find service session for replicated message with source service %@ replicating account %@, but is SOS, permitting on received iMessage account session instead", buf, 0x16u);
      }
    }

    receivingAccount6 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
    session2 = [receivingAccount6 session];

    if (!session2)
    {
      goto LABEL_39;
    }

LABEL_26:
    account = [session2 account];

    receivingAccount = account;
    goto LABEL_27;
  }

  if (!session2)
  {
LABEL_39:
    toIdentifier = [inputCopy toIdentifier];
    if ([toIdentifier length])
    {
      toIdentifier2 = [inputCopy toIdentifier];
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
        replicationSourceServiceName6 = [inputCopy replicationSourceServiceName];
        receivingAccount7 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
        v58 = receivingAccount7;
        v59 = @"NO";
        *buf = 138412802;
        v67 = replicationSourceServiceName6;
        v68 = 2112;
        if (IsEmail)
        {
          v59 = @"YES";
        }

        v69 = receivingAccount7;
        v70 = 2112;
        v71 = v59;
        _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "<IMFindAccountProcessingPipelineComponent> Failed to find service session for replicated message with source service %@ replicating account %@ (email alias: %@)", buf, 0x20u);
      }
    }

    v60 = objc_alloc(MEMORY[0x277CCA9B8]);
    session2 = [v60 initWithDomain:*MEMORY[0x277D18DF8] code:v47 userInfo:0];
    v43 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:session2];
LABEL_65:
    v42 = v43;
    goto LABEL_66;
  }

  mainSession = [session2 mainSession];
  receivingAccount8 = [(IMFindAccountProcessingPipelineComponent *)self receivingAccount];
  toIdentifier3 = [inputCopy toIdentifier];
  _stripFZIDPrefix = [toIdentifier3 _stripFZIDPrefix];
  v28 = [mainSession acceptsIncomingReplicatedMessagesFromAccount:receivingAccount8 toIdentifier:_stripFZIDPrefix isSOS:{-[IMFindAccountProcessingPipelineComponent _isSOSWithInput:](self, "_isSOSWithInput:", inputCopy)}];

  if (v28)
  {
    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      replicationSourceServiceName7 = [inputCopy replicationSourceServiceName];
      *buf = 138412290;
      v67 = replicationSourceServiceName7;
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

- (BOOL)_isSOSWithInput:(id)input
{
  inputCopy = input;
  if (objc_opt_respondsToSelector())
  {
    isSOS = [inputCopy isSOS];
  }

  else
  {
    isSOS = 0;
  }

  return isSOS;
}

@end