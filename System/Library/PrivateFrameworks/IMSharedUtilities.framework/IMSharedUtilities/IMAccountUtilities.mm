@interface IMAccountUtilities
+ (BOOL)_hasMadridIDSAccountForSending;
+ (BOOL)_isApprovedForRelayWithAllAccounts:(id)accounts account:(id)account;
+ (BOOL)isAccountOperationalWithAllAccounts:(id)accounts account:(id)account;
+ (BOOL)isAccountRegistered:(id)registered;
+ (BOOL)isAccountUsableForSendingWithAllAccounts:(id)accounts account:(id)account;
@end

@implementation IMAccountUtilities

+ (BOOL)_hasMadridIDSAccountForSending
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMIsRunningInIDSAccountCapableClient())
  {
    if (qword_1EB30A4F0 != -1)
    {
      sub_1A85FF068();
    }

    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    accounts = [qword_1EB30A4F8 accounts];
    v3 = [accounts countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = *v8;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(accounts);
          }

          if ([*(*(&v7 + 1) + 8 * i) canSend])
          {
            LOBYTE(v3) = 1;
            goto LABEL_15;
          }
        }

        v3 = [accounts countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)_isApprovedForRelayWithAllAccounts:(id)accounts account:(id)account
{
  accountCopy = account;
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if (deviceType == 2)
  {
    supportsRelay = 0;
  }

  else
  {
    service = [accountCopy service];
    supportsRelay = [service supportsRelay];
  }

  return supportsRelay;
}

+ (BOOL)isAccountUsableForSendingWithAllAccounts:(id)accounts account:(id)account
{
  v38 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  accountCopy = account;
  service = [accountCopy service];
  internalName = [service internalName];
  if ([internalName isEqualToString:IMServiceNameiMessage[0]])
  {
    v10 = IMIsRunningInIDSAccountCapableClient();

    if (!v10)
    {
LABEL_12:
      if ([accountCopy isActive])
      {
        if ([accountCopy loginStatus] == 4 || (objc_msgSend(accountCopy, "service"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "ignoresNetworkConnectivity"), v16, (v17 & 1) != 0))
        {
          if (![accountCopy accountType])
          {
            goto LABEL_41;
          }

          service2 = [accountCopy service];
          supportsRegistration = [service2 supportsRegistration];

          if (!supportsRegistration)
          {
            goto LABEL_41;
          }

          if ([accountCopy accountType] == 2)
          {
            v20 = [self _isApprovedForRelayWithAllAccounts:accountsCopy account:accountCopy];
            _hasMadridIDSAccountForSending = [accountCopy isRegistered] | v20;
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v28 = 136447234;
                v29 = "+[IMAccountUtilities isAccountUsableForSendingWithAllAccounts:account:]";
                v30 = 2112;
                selfCopy = self;
                v32 = 1024;
                v33 = _hasMadridIDSAccountForSending & 1;
                v34 = 1024;
                isRegistered = [accountCopy isRegistered];
                v36 = 1024;
                v37 = v20 & 1;
                _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "%{public}s %@ %{BOOL}d is registered %{BOOL}d is approved for relay %{BOOL}d", &v28, 0x28u);
              }
            }

            goto LABEL_42;
          }

          if ([accountCopy accountType] != 1)
          {
LABEL_41:
            _hasMadridIDSAccountForSending = 1;
            goto LABEL_42;
          }

          if ([accountCopy isRegistered] & 1) != 0 || (objc_msgSend(self, "_isApprovedForRelayWithAllAccounts:account:", accountsCopy, accountCopy))
          {
            aliases = [accountCopy aliases];
            if ([aliases count])
            {
              if ([aliases count] != 1 || (objc_msgSend(aliases, "lastObject"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToIgnoringCase:", *MEMORY[0x1E69A64C8]), v24, !v25))
              {
                _hasMadridIDSAccountForSending = 1;
LABEL_49:

                goto LABEL_42;
              }

              if (IMOSLoggingEnabled())
              {
                v26 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  v28 = 136446466;
                  v29 = "+[IMAccountUtilities isAccountUsableForSendingWithAllAccounts:account:]";
                  v30 = 2112;
                  selfCopy = accountCopy;
                  _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "%{public}s NO %@ has sentinel alias", &v28, 0x16u);
                }

LABEL_47:
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v28 = 136446466;
                v29 = "+[IMAccountUtilities isAccountUsableForSendingWithAllAccounts:account:]";
                v30 = 2112;
                selfCopy = accountCopy;
                _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "%{public}s NO %@ has no aliases", &v28, 0x16u);
              }

              goto LABEL_47;
            }

            _hasMadridIDSAccountForSending = 0;
            goto LABEL_49;
          }

          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v28 = 136446466;
              v29 = "+[IMAccountUtilities isAccountUsableForSendingWithAllAccounts:account:]";
              v30 = 2112;
              selfCopy = accountCopy;
              _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "%{public}s NO %@ is not registered nor approved for relay", &v28, 0x16u);
            }

LABEL_29:
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v28 = 136446466;
            v29 = "+[IMAccountUtilities isAccountUsableForSendingWithAllAccounts:account:]";
            v30 = 2112;
            selfCopy = accountCopy;
            _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "%{public}s NO %@ is not logged in and service does not ignore network connectivity", &v28, 0x16u);
          }

          goto LABEL_29;
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v28 = 136446466;
          v29 = "+[IMAccountUtilities isAccountUsableForSendingWithAllAccounts:account:]";
          v30 = 2112;
          selfCopy = accountCopy;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "%{public}s NO %@ is not active", &v28, 0x16u);
        }

        goto LABEL_29;
      }

      _hasMadridIDSAccountForSending = 0;
      goto LABEL_42;
    }
  }

  else
  {
    service3 = [accountCopy service];
    internalName2 = [service3 internalName];
    if (![internalName2 isEqualToString:IMServiceNameiMessageLite[0]])
    {

      goto LABEL_12;
    }

    v13 = IMIsRunningInIDSAccountCapableClient();

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Early returning based on the value of IMServiceImpl because this is iMessage or iMessage Lite", &v28, 2u);
    }
  }

  _hasMadridIDSAccountForSending = [self _hasMadridIDSAccountForSending];
LABEL_42:

  return _hasMadridIDSAccountForSending & 1;
}

+ (BOOL)isAccountRegistered:(id)registered
{
  registeredCopy = registered;
  if ([registeredCopy isActive])
  {
    v4 = [registeredCopy registrationStatus] == 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isAccountOperationalWithAllAccounts:(id)accounts account:(id)account
{
  accountCopy = account;
  if ([accounts containsObjectIdenticalTo:accountCopy] && objc_msgSend(accountCopy, "isActive"))
  {
    service = [accountCopy service];
    supportsRegistration = [service supportsRegistration];

    if (supportsRegistration)
    {
      accountType = [accountCopy accountType];
      registrationStatus = [accountCopy registrationStatus];
      v10 = registrationStatus == 5 && accountType == 2;
      if (accountType != 2 && registrationStatus == 5)
      {
        v10 = [accountCopy profileValidationStatus] == 3;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end