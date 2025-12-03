@interface ASProvisionTask
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)_policyID;
- (id)_provisioningType;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)finishWithError:(id)error;
@end

@implementation ASProvisionTask

- (id)_policyID
{
  if ([(ASProvisionTask *)self type]== 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(ASProvisionTask *)self key];
  }

  return v3;
}

- (id)_provisioningType
{
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];
  shouldUseWBXMLProvisioning = [protocol shouldUseWBXMLProvisioning];

  v5 = WBXMLProvisioningXMLPolicyType;
  if (!shouldUseWBXMLProvisioning)
  {
    v5 = MSWAPProvisiningXMLPolicyType;
  }

  v6 = *v5;

  return v6;
}

- (id)requestBody
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 switchToCodePage:14];
  [v3 openTag:5];
  if (![(ASProvisionTask *)self type])
  {
    v9 = 232;
    if ([(NSDictionary *)self->_deviceInfo count])
    {
      taskManager = [(ASTask *)self taskManager];
      account = [taskManager account];
      protocol = [account protocol];
      sendDeviceInfoOnProvision = [protocol sendDeviceInfoOnProvision];

      if (sendDeviceInfoOnProvision)
      {
        [v3 switchToCodePage:18];
        [v3 openTag:22];
        [v3 openTag:8];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        allKeys = [(NSDictionary *)self->_deviceInfo allKeys];
        v15 = [allKeys countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (!v15)
        {
          goto LABEL_38;
        }

        v16 = v15;
        v17 = *v45;
        v41 = v3;
        v42 = *v45;
        while (1)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v45 != v17)
            {
              objc_enumerationMutation(allKeys);
            }

            v19 = *(*(&v44 + 1) + 8 * i);
            intValue = [v19 intValue];
            if (intValue <= 2)
            {
              if (intValue)
              {
                if (intValue == 1)
                {
                  v21 = 24;
                }

                else
                {
                  if (intValue != 2)
                  {
                    continue;
                  }

                  v21 = 25;
                }
              }

              else
              {
                v21 = 23;
              }

              goto LABEL_35;
            }

            if (intValue <= 4)
            {
              if (intValue == 3)
              {
                v21 = 26;
              }

              else
              {
                v21 = 27;
              }

              goto LABEL_35;
            }

            if (intValue == 5)
            {
              v21 = 28;
              goto LABEL_35;
            }

            if (intValue == 6)
            {
              taskManager2 = [(ASTask *)self taskManager];
              account2 = [taskManager2 account];
              [account2 protocol];
              v24 = v16;
              v25 = allKeys;
              v26 = v9;
              v28 = v27 = self;
              sendUserAgentInDeviceInfo = [v28 sendUserAgentInDeviceInfo];

              self = v27;
              v9 = v26;
              allKeys = v25;
              v16 = v24;

              v3 = v41;
              v17 = v42;

              if (sendUserAgentInDeviceInfo)
              {
                v21 = 32;
LABEL_35:
                v30 = [*(&self->super.super.isa + v9) objectForKeyedSubscript:v19];
                [v3 appendTag:v21 withStringContent:v30];

                continue;
              }
            }
          }

          v16 = [allKeys countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (!v16)
          {
LABEL_38:

            [v3 closeTag:8];
            [v3 closeTag:22];
            break;
          }
        }
      }
    }
  }

  [v3 switchToCodePage:14];
  if (![(ASProvisionTask *)self type]|| [(ASProvisionTask *)self type]== 1)
  {
    [v3 openTag:6];
    [v3 openTag:7];
    if ([(ASProvisionTask *)self type])
    {
      if ([(ASProvisionTask *)self type]== 1)
      {
        policy = self->_policy;
        if (policy)
        {
          type = [(ASPolicy *)policy type];
          [v3 appendTag:8 withStringContent:type];

          v6 = [(ASPolicy *)self->_policy key];
          v7 = v6;
          if (v6)
          {
            v8 = v6;
          }

          else
          {
            v8 = @"0";
          }

          [v3 appendTag:9 withStringContent:v8];
        }

        [v3 appendTag:11 withIntContent:1];
      }
    }

    else
    {
      _provisioningType = [(ASProvisionTask *)self _provisioningType];
      [v3 appendTag:8 withStringContent:_provisioningType];
    }

    [v3 closeTag:7];
    [v3 closeTag:6];
  }

  if ([(ASProvisionTask *)self type]== 2)
  {
    [v3 openTag:12];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    isEphemeralMultiUser = [mEMORY[0x277D262A0] isEphemeralMultiUser];

    if (isEphemeralMultiUser)
    {
      v34 = DALoggingwithCategory();
      v35 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v34, v35))
      {
        *buf = 0;
        _os_log_impl(&dword_24A0AC000, v34, v35, "EDU Mode: Can not enforce Remote Wipe. Sending a status 2 for Remote Wipe", buf, 2u);
      }

      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    [v3 appendTag:11 withIntContent:v36];
    [v3 closeTag:12];
  }

  if ([(ASProvisionTask *)self type]== 3)
  {
    [v3 openTag:59];
    if ([(ASProvisionTask *)self accountOnlyRemoteWipeSuccess])
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }

    [v3 appendTag:11 withIntContent:v37];
    [v3 closeTag:59];
  }

  [v3 closeTag:5];
  data = [v3 data];

  v39 = *MEMORY[0x277D85DE8];

  return data;
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  if ((status - 1) > 3)
  {
    return 10;
  }

  else
  {
    return qword_24A14E088[status - 1];
  }
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 14;
  *token = 5;
  *statusToken = 11;
  return 1;
}

- (BOOL)processContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    if (!self->super._haveSwitchedCodePage)
    {
      if (![contextCopy hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([contextCopy currentByte])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to provision code page"];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASProvisionTask.m", 224, objc_msgSend(contextCopy, "curOffset")];
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v15, v16))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v15, v16, "Failure at index %lld:", buf, 0xCu);
        }

        v17 = DALoggingwithCategory();
        if (!os_log_type_enabled(v17, v16))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v13;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      if ([contextCopy currentByte] != 14)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to provision code page"];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASProvisionTask.m", 224, objc_msgSend(contextCopy, "curOffset")];
        v20 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v20, v16))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v20, v16, "Failure at index %lld:", buf, 0xCu);
        }

        v17 = DALoggingwithCategory();
        if (!os_log_type_enabled(v17, v16))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v13;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      [contextCopy setCodePage:14];
      self->super._haveSwitchedCodePage = 1;
    }

    if (self->super._haveParsedCommand)
    {
LABEL_7:
      v10 = [ASProvisionResponse alloc];
      _provisioningType = [(ASProvisionTask *)self _provisioningType];
      v12 = [(ASProvisionResponse *)v10 initWithPolicyType:_provisioningType];

      [(ASTask *)self setCurrentlyParsingItem:v12];
      goto LABEL_2;
    }

    if (![contextCopy hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([contextCopy currentByte] & 0x3F) == 5)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected provision response"];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASProvisionTask.m", 225, objc_msgSend(contextCopy, "curOffset")];
    v19 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v16))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v19, v16, "Failure at index %lld:", buf, 0xCu);
    }

    v17 = DALoggingwithCategory();
    if (!os_log_type_enabled(v17, v16))
    {
LABEL_29:

      [contextCopy setParseErrorReason:v14];
LABEL_30:
      parseErrorReason = [contextCopy parseErrorReason];
      v18 = parseErrorReason == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    curOffset = v13;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v17, v16, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:account];

  currentlyParsingItem = self->super._currentlyParsingItem;
  if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]>= 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = 0;
LABEL_31:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)finishWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
  v6 = currentlyParsingItem;
  if (!errorCopy && currentlyParsingItem && [currentlyParsingItem parsingState] == 2)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 138412546;
      v30 = objc_opt_class();
      v31 = 2112;
      v32 = v6;
      v9 = v30;
      _os_log_impl(&dword_24A0AC000, v7, v8, "%@ Parsed response of %@", buf, 0x16u);
    }

    status = [v6 status];
    v11 = -[ASProvisionTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status intValue]);

    if (![(ASTask *)self attemptRetryWithStatus:v11 error:0])
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __35__ASProvisionTask_finishWithError___block_invoke_15;
      v24[3] = &unk_278FC7B68;
      v24[4] = self;
      v25 = v6;
      v26 = v11;
      [(ASTask *)self finishWithError:0 afterDelegateCallout:v24];
      v12 = v25;
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v13 = [(ASTask *)self taskStatusForError:errorCopy];
  v14 = DALoggingwithCategory();
  v15 = v14;
  if (v13 == -1)
  {
    v22 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v14, v22))
    {
      goto LABEL_14;
    }

    *buf = 138412290;
    v30 = objc_opt_class();
    v17 = v30;
    v18 = "%@ cancelled";
    v19 = v15;
    v20 = v22;
    v21 = 12;
  }

  else
  {
    v16 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v14, v16))
    {
      goto LABEL_14;
    }

    *buf = 138412546;
    v30 = objc_opt_class();
    v31 = 2112;
    v32 = errorCopy;
    v17 = v30;
    v18 = "%@ failed: %@";
    v19 = v15;
    v20 = v16;
    v21 = 22;
  }

  _os_log_impl(&dword_24A0AC000, v19, v20, v18, buf, v21);

LABEL_14:
  if (![(ASTask *)self attemptRetryWithStatus:v13 error:errorCopy])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __35__ASProvisionTask_finishWithError___block_invoke;
    v27[3] = &unk_278FC78E8;
    v27[4] = self;
    v28 = errorCopy;
    [(ASTask *)self finishWithError:v28 afterDelegateCallout:v27];
    v12 = v28;
    goto LABEL_17;
  }

LABEL_15:
  [(ASTask *)self setCurrentlyParsingItem:0];
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

void __35__ASProvisionTask_finishWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained provisionTask:*(a1 + 32) failedWithError:*(a1 + 40)];
}

void __35__ASProvisionTask_finishWithError___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) remoteWipe];
  v4 = [*(a1 + 40) accountOnlyRemoteWipe];
  v5 = [*(a1 + 40) policies];
  [WeakRetained provisionTask:v2 wipeRequested:v3 accountOnlyRipeRequested:v4 policies:v5 status:*(a1 + 48)];
}

@end