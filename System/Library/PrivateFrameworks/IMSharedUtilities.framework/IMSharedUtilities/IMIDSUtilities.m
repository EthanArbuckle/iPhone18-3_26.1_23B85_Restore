@interface IMIDSUtilities
+ (int)verifyFromID:(id)a3 comesFromAccount:(id)a4;
+ (void)findCommonCapabilitiesAcrossRecipients:(id)a3 serviceName:(id)a4 capsToCheck:(id)a5 completion:(id)a6;
@end

@implementation IMIDSUtilities

+ (int)verifyFromID:(id)a3 comesFromAccount:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v5 = [a3 _stripPotentialTokenURIWithToken:&v17];
  if (![v5 length] || !objc_msgSend(v17, "length"))
  {
    return 128;
  }

  if ([objc_msgSend(a4 "vettedAliases")] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [a4 devices];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  v10 = *v14;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v13 + 1) + 8 * i) pushToken];
      if ([v12 isEqualToData:v17])
      {
        return 0;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    result = 2;
    if (v9)
    {
      continue;
    }

    break;
  }

  return result;
}

+ (void)findCommonCapabilitiesAcrossRecipients:(id)a3 serviceName:(id)a4 capsToCheck:(id)a5 completion:(id)a6
{
  v17 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v14 = [a3 count];
        v15 = 2112;
        v16 = a5;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "FindCommonCaps: Looking across %lu recips for common caps: %@", buf, 0x16u);
      }
    }

    v11 = [a5 count];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A8665D10;
    v12[3] = &unk_1E7828198;
    v12[5] = a6;
    v12[6] = v11;
    v12[4] = a5;
    if (![IMIDSIDQueryController currentRemoteDevicesForDestinations:a3 service:a4 listenerID:@"IMIDSUtilities" queue:MEMORY[0x1E69E96A0] completionBlock:v12])
    {
      (*(a6 + 2))(a6, 0);
    }
  }
}

@end