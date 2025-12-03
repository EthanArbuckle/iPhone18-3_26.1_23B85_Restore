@interface MFAttachmentCapabilities
+ (BOOL)_isMailDropDevice;
+ (BOOL)mailDropAvailable;
+ (BOOL)mailDropAvailableForAccount:(id)account;
+ (BOOL)mailDropConfigured;
+ (double)mailDropExpiration;
+ (id)capabilitiesDictionary;
+ (id)mailDropPreferences;
+ (unint64_t)_mailDropLimit;
+ (unint64_t)currentDownloadLimit;
+ (unint64_t)currentMessageLimit;
+ (unint64_t)currentPlaceholderThreshold;
+ (unint64_t)currentUploadLimit;
+ (unint64_t)currentUploadLimitForAccount:(id)account;
+ (unint64_t)mailDropThreshold;
@end

@implementation MFAttachmentCapabilities

+ (unint64_t)currentMessageLimit
{
  v3 = MFUserAgent();
  isMobileMail = [v3 isMobileMail];

  if (isMobileMail)
  {
    integerValue = 52428800;
  }

  else
  {
    capabilitiesDictionary = [self capabilitiesDictionary];
    v7 = [capabilitiesDictionary objectForKeyedSubscript:@"MFMailAttachmentMessageLimitKey"];
    integerValue = [v7 integerValue];
  }

  if ([self placeholdersAvailable])
  {
    return integerValue;
  }

  else
  {
    return 15728640;
  }
}

+ (unint64_t)currentDownloadLimit
{
  v2 = +[MFNetworkController sharedInstance];
  isFatPipe = [v2 isFatPipe];

  if (isFatPipe)
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
  isMobileMail = [v3 isMobileMail];

  if (isMobileMail)
  {
    capabilitiesDictionary = +[MailAccount defaultMailAccountForDelivery];
    if (([self mailDropAvailableForAccount:capabilitiesDictionary] & 1) != 0 || objc_msgSend(self, "mailDropAvailable"))
    {
      _mailDropLimit = [self _mailDropLimit];
    }

    else
    {
      _mailDropLimit = 104857600;
    }

    v8 = +[MFNetworkController sharedInstance];
    isFatPipe = [v8 isFatPipe];

    v10 = 104857600;
    if (_mailDropLimit < 0x6400000)
    {
      v10 = _mailDropLimit;
    }

    if (!isFatPipe)
    {
      _mailDropLimit = v10;
    }
  }

  else
  {
    capabilitiesDictionary = [self capabilitiesDictionary];
    v7 = [capabilitiesDictionary objectForKeyedSubscript:@"MFMailAttachmentUploadLimitKey"];
    _mailDropLimit = [v7 integerValue];
  }

  if ([self placeholdersAvailable])
  {
    return _mailDropLimit;
  }

  else
  {
    return 104857600;
  }
}

+ (unint64_t)currentUploadLimitForAccount:(id)account
{
  accountCopy = account;
  v5 = MFUserAgent();
  isMobileMail = [v5 isMobileMail];

  if (isMobileMail && [self mailDropAvailableForAccount:accountCopy])
  {
    _mailDropLimit = [self _mailDropLimit];
  }

  else
  {
    _mailDropLimit = 104857600;
  }

  v8 = +[MFNetworkController sharedInstance];
  isFatPipe = [v8 isFatPipe];

  placeholdersAvailable = [self placeholdersAvailable];
  if (_mailDropLimit >= 0x6400000)
  {
    v11 = 104857600;
  }

  else
  {
    v11 = _mailDropLimit;
  }

  if (isFatPipe)
  {
    v11 = _mailDropLimit;
  }

  if (placeholdersAvailable)
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
  isMobileMail = [v2 isMobileMail];

  return isMobileMail;
}

+ (unint64_t)mailDropThreshold
{
  v3 = MFUserAgent();
  isMobileMail = [v3 isMobileMail];

  if (isMobileMail)
  {
    if ([self mailDropAvailable])
    {
      integerValue = 20971520;
    }

    else
    {
      integerValue = 0xFFFFFFFFLL;
    }
  }

  else
  {
    capabilitiesDictionary = [self capabilitiesDictionary];
    v7 = [capabilitiesDictionary objectForKeyedSubscript:@"MFMailAttachmentMailDropThresholdKey"];
    integerValue = [v7 integerValue];
  }

  if ([self placeholdersAvailable])
  {
    return integerValue;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

+ (unint64_t)_mailDropLimit
{
  v2 = +[MFNetworkController sharedInstance];
  isFatPipe = [v2 isFatPipe];

  if (isFatPipe)
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
        capabilitiesDictionary = [self capabilitiesDictionary];
        v9 = [capabilitiesDictionary objectForKeyedSubscript:@"MFMailAttachmentMailDropConfiguredKey"];
        bOOLValue = [v9 BOOLValue];
        goto LABEL_12;
      }
    }

    v6 = +[MFAccountStore sharedAccountStore];
    capabilitiesDictionary = [v6 persistentStore];

    aa_primaryAppleAccount = [capabilitiesDictionary aa_primaryAppleAccount];
    v9 = aa_primaryAppleAccount;
    if (!aa_primaryAppleAccount)
    {
      v11 = 0;
LABEL_13:

      v3 = [self placeholdersAvailable] & v11;
      mailDropConfigured_mailDropConfigured = v3;
      mailDropConfigured_mailDropConfiguredNeedsRefresh = 1;
      return v3 & 1;
    }

    bOOLValue = [aa_primaryAppleAccount isEnabledForDataclass:*MEMORY[0x1E6959B58]];
LABEL_12:
    v11 = bOOLValue;
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

+ (BOOL)mailDropAvailableForAccount:(id)account
{
  accountCopy = account;
  v5 = MFUserAgent();
  isMobileMail = [v5 isMobileMail];

  if (isMobileMail && [self _isMailDropDevice] && objc_msgSend(accountCopy, "supportsMailDrop"))
  {
    mailDropConfigured = [self mailDropConfigured];
  }

  else
  {
    mailDropConfigured = 0;
  }

  placeholdersAvailable = [self placeholdersAvailable];

  return placeholdersAvailable & mailDropConfigured;
}

+ (BOOL)mailDropAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MFUserAgent();
  isMobileMail = [v3 isMobileMail];

  if (isMobileMail)
  {
    if ([self _isMailDropDevice])
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

            if ([self mailDropAvailableForAccount:{*(*(&v14 + 1) + 8 * i), v14}])
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
    capabilitiesDictionary = [self capabilitiesDictionary];
    v10 = [capabilitiesDictionary objectForKeyedSubscript:@"MFMailAttachmentMailDropAvailableKey"];
    LODWORD(v6) = [v10 BOOLValue];
  }

  placeholdersAvailable = [self placeholdersAvailable];
  v12 = *MEMORY[0x1E69E9840];
  return placeholdersAvailable & v6;
}

+ (double)mailDropExpiration
{
  v2 = MFUserAgent();
  isMobileMail = [v2 isMobileMail];

  if (!isMobileMail)
  {
    return 2592000.0;
  }

  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v5 = [em_userDefaults BOOLForKey:@"MailDropShortExp"];

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
  isMobileMail = [v2 isMobileMail];

  if (isMobileMail)
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
  isMobileMail = [v3 isMobileMail];

  if (isMobileMail)
  {
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v6 = [em_userDefaults BOOLForKey:@"AttachmentPlaceholderLowerLimit"];

    if (v6)
    {
      v7 = 0x200000;
    }

    else
    {
      v7 = 10485760;
    }

    if ([self placeholdersAvailable])
    {
      integerValue = v7;
    }

    else
    {
      integerValue = 0xFFFFFFFFLL;
    }
  }

  else
  {
    capabilitiesDictionary = [self capabilitiesDictionary];
    v10 = [capabilitiesDictionary objectForKeyedSubscript:@"MFMailAttachmentPlaceholderThresholdKey"];
    integerValue = [v10 integerValue];
  }

  if ([self placeholdersAvailable])
  {
    return integerValue;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

+ (id)capabilitiesDictionary
{
  v3 = MFUserAgent();
  isMobileMail = [v3 isMobileMail];

  if (isMobileMail)
  {
    attachmentCapabilities = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "currentUploadLimit")}];
    [attachmentCapabilities setObject:v6 forKey:@"MFMailAttachmentUploadLimitKey"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "currentMessageLimit")}];
    [attachmentCapabilities setObject:v7 forKey:@"MFMailAttachmentMessageLimitKey"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "mailDropThreshold")}];
    [attachmentCapabilities setObject:v8 forKey:@"MFMailAttachmentMailDropThresholdKey"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "currentPlaceholderThreshold")}];
    [attachmentCapabilities setObject:v9 forKey:@"MFMailAttachmentPlaceholderThresholdKey"];

    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "placeholdersAvailable")}];
    [attachmentCapabilities setObject:v10 forKey:@"MFMailAttachmentPlaceholdersAvailableKey"];

    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "mailDropAvailable")}];
    [attachmentCapabilities setObject:v11 forKey:@"MFMailAttachmentMailDropConfiguredKey"];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "mailDropConfigured")}];
    [attachmentCapabilities setObject:v12 forKey:@"MFMailAttachmentMailDropConfiguredKey"];
  }

  else
  {
    attachmentCapabilities = [MEMORY[0x1E69ADAC0] attachmentCapabilities];
  }

  return attachmentCapabilities;
}

@end