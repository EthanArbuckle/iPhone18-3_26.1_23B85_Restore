@interface MFAttachmentCapabilities
+ (BOOL)_isMailDropDevice;
+ (BOOL)mailDropAvailable;
+ (BOOL)mailDropAvailableForAccount:(id)a3;
+ (BOOL)mailDropConfigured;
+ (double)mailDropExpiration;
+ (id)capabilitiesDictionary;
+ (id)mailDropPreferences;
+ (unint64_t)_mailDropLimit;
+ (unint64_t)currentDownloadLimit;
+ (unint64_t)currentMessageLimit;
+ (unint64_t)currentPlaceholderThreshold;
+ (unint64_t)currentUploadLimit;
+ (unint64_t)currentUploadLimitForAccount:(id)a3;
+ (unint64_t)mailDropThreshold;
@end

@implementation MFAttachmentCapabilities

+ (unint64_t)currentMessageLimit
{
  v3 = MFUserAgent();
  v4 = [v3 isMobileMail];

  if (v4)
  {
    v5 = 52428800;
  }

  else
  {
    v6 = [a1 capabilitiesDictionary];
    v7 = [v6 objectForKeyedSubscript:@"MFMailAttachmentMessageLimitKey"];
    v5 = [v7 integerValue];
  }

  if ([a1 placeholdersAvailable])
  {
    return v5;
  }

  else
  {
    return 15728640;
  }
}

+ (unint64_t)currentDownloadLimit
{
  v2 = +[MFNetworkController sharedInstance];
  v3 = [v2 isFatPipe];

  if (v3)
  {
    return 0x40000000;
  }

  else
  {
    return 104857600;
  }
}

+ (unint64_t)currentUploadLimit
{
  v3 = MFUserAgent();
  v4 = [v3 isMobileMail];

  if (v4)
  {
    v5 = +[MailAccount defaultMailAccountForDelivery];
    if (([a1 mailDropAvailableForAccount:v5] & 1) != 0 || objc_msgSend(a1, "mailDropAvailable"))
    {
      v6 = [a1 _mailDropLimit];
    }

    else
    {
      v6 = 104857600;
    }

    v8 = +[MFNetworkController sharedInstance];
    v9 = [v8 isFatPipe];

    v10 = 104857600;
    if (v6 < 0x6400000)
    {
      v10 = v6;
    }

    if (!v9)
    {
      v6 = v10;
    }
  }

  else
  {
    v5 = [a1 capabilitiesDictionary];
    v7 = [v5 objectForKeyedSubscript:@"MFMailAttachmentUploadLimitKey"];
    v6 = [v7 integerValue];
  }

  if ([a1 placeholdersAvailable])
  {
    return v6;
  }

  else
  {
    return 104857600;
  }
}

+ (unint64_t)currentUploadLimitForAccount:(id)a3
{
  v4 = a3;
  v5 = MFUserAgent();
  v6 = [v5 isMobileMail];

  if (v6 && [a1 mailDropAvailableForAccount:v4])
  {
    v7 = [a1 _mailDropLimit];
  }

  else
  {
    v7 = 104857600;
  }

  v8 = +[MFNetworkController sharedInstance];
  v9 = [v8 isFatPipe];

  v10 = [a1 placeholdersAvailable];
  if (v7 >= 0x6400000)
  {
    v11 = 104857600;
  }

  else
  {
    v11 = v7;
  }

  if (v9)
  {
    v11 = v7;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 104857600;
  }

  return v12;
}

+ (BOOL)_isMailDropDevice
{
  v2 = MFUserAgent();
  v3 = [v2 isMobileMail];

  return v3;
}

+ (unint64_t)mailDropThreshold
{
  v3 = MFUserAgent();
  v4 = [v3 isMobileMail];

  if (v4)
  {
    if ([a1 mailDropAvailable])
    {
      v5 = 20971520;
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v6 = [a1 capabilitiesDictionary];
    v7 = [v6 objectForKeyedSubscript:@"MFMailAttachmentMailDropThresholdKey"];
    v5 = [v7 integerValue];
  }

  if ([a1 placeholdersAvailable])
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

+ (unint64_t)_mailDropLimit
{
  v2 = +[MFNetworkController sharedInstance];
  v3 = [v2 isFatPipe];

  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 104857600;
  }
}

+ (BOOL)mailDropConfigured
{
  if (mailDropConfigured_onceToken != -1)
  {
    +[MFAttachmentCapabilities mailDropConfigured];
  }

  if (mailDropConfigured_mailDropConfiguredNeedsRefresh != 1)
  {
    v4 = MFUserAgent();
    if ([v4 isMobileMail])
    {
    }

    else
    {
      v5 = MFHasAccountsEntitlement();

      if ((v5 & 1) == 0)
      {
        v7 = [a1 capabilitiesDictionary];
        v9 = [v7 objectForKeyedSubscript:@"MFMailAttachmentMailDropConfiguredKey"];
        v10 = [v9 BOOLValue];
        goto LABEL_12;
      }
    }

    v6 = +[MFAccountStore sharedAccountStore];
    v7 = [v6 persistentStore];

    v8 = [v7 aa_primaryAppleAccount];
    v9 = v8;
    if (!v8)
    {
      v11 = 0;
LABEL_13:

      v3 = [a1 placeholdersAvailable] & v11;
      mailDropConfigured_mailDropConfigured = v3;
      mailDropConfigured_mailDropConfiguredNeedsRefresh = 1;
      return v3 & 1;
    }

    v10 = [v8 isEnabledForDataclass:*MEMORY[0x1E6959B58]];
LABEL_12:
    v11 = v10;
    goto LABEL_13;
  }

  v3 = mailDropConfigured_mailDropConfigured;
  return v3 & 1;
}

void __46__MFAttachmentCapabilities_mailDropConfigured__block_invoke()
{
  out_token = -1431655766;
  v0 = *MEMORY[0x1E69B17E8];
  v1 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch(v0, &out_token, v1, &__block_literal_global_23_0);
}

+ (BOOL)mailDropAvailableForAccount:(id)a3
{
  v4 = a3;
  v5 = MFUserAgent();
  v6 = [v5 isMobileMail];

  if (v6 && [a1 _isMailDropDevice] && objc_msgSend(v4, "supportsMailDrop"))
  {
    v7 = [a1 mailDropConfigured];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 placeholdersAvailable];

  return v8 & v7;
}

+ (BOOL)mailDropAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MFUserAgent();
  v4 = [v3 isMobileMail];

  if (v4)
  {
    if ([a1 _isMailDropDevice])
    {
      +[MailAccount activeAccounts];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v5 = v15 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v5);
            }

            if ([a1 mailDropAvailableForAccount:{*(*(&v14 + 1) + 8 * i), v14}])
            {
              LOBYTE(v6) = 1;
              goto LABEL_15;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
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
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    v9 = [a1 capabilitiesDictionary];
    v10 = [v9 objectForKeyedSubscript:@"MFMailAttachmentMailDropAvailableKey"];
    LODWORD(v6) = [v10 BOOLValue];
  }

  v11 = [a1 placeholdersAvailable];
  v12 = *MEMORY[0x1E69E9840];
  return v11 & v6;
}

+ (double)mailDropExpiration
{
  v2 = MFUserAgent();
  v3 = [v2 isMobileMail];

  if (!v3)
  {
    return 2592000.0;
  }

  v4 = [MEMORY[0x1E695E000] em_userDefaults];
  v5 = [v4 BOOLForKey:@"MailDropShortExp"];

  result = 2592000.0;
  if (v5)
  {
    return 600.0;
  }

  return result;
}

+ (id)mailDropPreferences
{
  v2 = MFUserAgent();
  v3 = [v2 isMobileMail];

  if (v3)
  {
    v4 = MFMobileMailPreferenceDomain();
    v5 = CFPreferencesCopyAppValue(@"mailDrop", v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)currentPlaceholderThreshold
{
  v3 = MFUserAgent();
  v4 = [v3 isMobileMail];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] em_userDefaults];
    v6 = [v5 BOOLForKey:@"AttachmentPlaceholderLowerLimit"];

    if (v6)
    {
      v7 = 0x200000;
    }

    else
    {
      v7 = 10485760;
    }

    if ([a1 placeholdersAvailable])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v9 = [a1 capabilitiesDictionary];
    v10 = [v9 objectForKeyedSubscript:@"MFMailAttachmentPlaceholderThresholdKey"];
    v8 = [v10 integerValue];
  }

  if ([a1 placeholdersAvailable])
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

+ (id)capabilitiesDictionary
{
  v3 = MFUserAgent();
  v4 = [v3 isMobileMail];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "currentUploadLimit")}];
    [v5 setObject:v6 forKey:@"MFMailAttachmentUploadLimitKey"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "currentMessageLimit")}];
    [v5 setObject:v7 forKey:@"MFMailAttachmentMessageLimitKey"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "mailDropThreshold")}];
    [v5 setObject:v8 forKey:@"MFMailAttachmentMailDropThresholdKey"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "currentPlaceholderThreshold")}];
    [v5 setObject:v9 forKey:@"MFMailAttachmentPlaceholderThresholdKey"];

    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "placeholdersAvailable")}];
    [v5 setObject:v10 forKey:@"MFMailAttachmentPlaceholdersAvailableKey"];

    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "mailDropAvailable")}];
    [v5 setObject:v11 forKey:@"MFMailAttachmentMailDropConfiguredKey"];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "mailDropConfigured")}];
    [v5 setObject:v12 forKey:@"MFMailAttachmentMailDropConfiguredKey"];
  }

  else
  {
    v5 = [MEMORY[0x1E69ADAC0] attachmentCapabilities];
  }

  return v5;
}

@end