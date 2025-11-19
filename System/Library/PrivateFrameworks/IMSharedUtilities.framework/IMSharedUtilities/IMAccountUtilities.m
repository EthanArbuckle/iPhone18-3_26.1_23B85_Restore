@interface IMAccountUtilities
+ (BOOL)_hasMadridIDSAccountForSending;
+ (BOOL)_isApprovedForRelayWithAllAccounts:(id)a3 account:(id)a4;
+ (BOOL)isAccountOperationalWithAllAccounts:(id)a3 account:(id)a4;
+ (BOOL)isAccountRegistered:(id)a3;
+ (BOOL)isAccountUsableForSendingWithAllAccounts:(id)a3 account:(id)a4;
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
    v2 = [qword_1EB30A4F8 accounts];
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = *v8;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(*(&v7 + 1) + 8 * i) canSend])
          {
            LOBYTE(v3) = 1;
            goto LABEL_15;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

+ (BOOL)_isApprovedForRelayWithAllAccounts:(id)a3 account:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E699BE70] sharedInstance];
  v6 = [v5 deviceType];

  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 service];
    v7 = [v8 supportsRelay];
  }

  return v7;
}

+ (BOOL)isAccountUsableForSendingWithAllAccounts:(id)a3 account:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 service];
  v9 = [v8 internalName];
  if ([v9 isEqualToString:IMServiceNameiMessage[0]])
  {
    v10 = IMIsRunningInIDSAccountCapableClient();

    if (!v10)
    {
LABEL_12:
      if ([v7 isActive])
      {
        if ([v7 loginStatus] == 4 || (objc_msgSend(v7, "service"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "ignoresNetworkConnectivity"), v16, (v17 & 1) != 0))
        {
          if (![v7 accountType])
          {
            goto LABEL_41;
          }

          v18 = [v7 service];
          v19 = [v18 supportsRegistration];

          if (!v19)
          {
            goto LABEL_41;
          }

          if ([v7 accountType] == 2)
          {
            v20 = [a1 _isApprovedForRelayWithAllAccounts:v6 account:v7];
            v15 = [v7 isRegistered] | v20;
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v28 = 136447234;
                v29 = "+[IMAccountUtilities isAccountUsableForSendingWithAllAccounts:account:]";
                v30 = 2112;
                v31 = a1;
                v32 = 1024;
                v33 = v15 & 1;
                v34 = 1024;
                v35 = [v7 isRegistered];
                v36 = 1024;
                v37 = v20 & 1;
                _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "%{public}s %@ %{BOOL}d is registered %{BOOL}d is approved for relay %{BOOL}d", &v28, 0x28u);
              }
            }

            goto LABEL_42;
          }

          if ([v7 accountType] != 1)
          {
LABEL_41:
            v15 = 1;
            goto LABEL_42;
          }

          if ([v7 isRegistered] & 1) != 0 || (objc_msgSend(a1, "_isApprovedForRelayWithAllAccounts:account:", v6, v7))
          {
            v23 = [v7 aliases];
            if ([v23 count])
            {
              if ([v23 count] != 1 || (objc_msgSend(v23, "lastObject"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToIgnoringCase:", *MEMORY[0x1E69A64C8]), v24, !v25))
              {
                v15 = 1;
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
                  v31 = v7;
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
                v31 = v7;
                _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "%{public}s NO %@ has no aliases", &v28, 0x16u);
              }

              goto LABEL_47;
            }

            v15 = 0;
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
              v31 = v7;
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
            v31 = v7;
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
          v31 = v7;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "%{public}s NO %@ is not active", &v28, 0x16u);
        }

        goto LABEL_29;
      }

      v15 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v11 = [v7 service];
    v12 = [v11 internalName];
    if (![v12 isEqualToString:IMServiceNameiMessageLite[0]])
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

  v15 = [a1 _hasMadridIDSAccountForSending];
LABEL_42:

  return v15 & 1;
}

+ (BOOL)isAccountRegistered:(id)a3
{
  v3 = a3;
  if ([v3 isActive])
  {
    v4 = [v3 registrationStatus] == 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isAccountOperationalWithAllAccounts:(id)a3 account:(id)a4
{
  v5 = a4;
  if ([a3 containsObjectIdenticalTo:v5] && objc_msgSend(v5, "isActive"))
  {
    v6 = [v5 service];
    v7 = [v6 supportsRegistration];

    if (v7)
    {
      v8 = [v5 accountType];
      v9 = [v5 registrationStatus];
      v10 = v9 == 5 && v8 == 2;
      if (v8 != 2 && v9 == 5)
      {
        v10 = [v5 profileValidationStatus] == 3;
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