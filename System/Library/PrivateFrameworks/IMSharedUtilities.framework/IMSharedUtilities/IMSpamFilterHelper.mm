@interface IMSpamFilterHelper
+ (BOOL)accountCountryIsCandidateForHawking:(id)hawking;
+ (BOOL)accountCountryIsCandidateForSMSFilter:(id)filter;
+ (BOOL)accountCountryIsCandidateForiMessageJunk:(id)junk;
+ (BOOL)accountRegionIsCandidateForHawking:(id)hawking;
+ (BOOL)anyParticipantIsCandidateForBlackhole:(id)blackhole;
+ (BOOL)anyParticipantIsKnownContact:(id)contact;
+ (BOOL)hasThirdPartySMSExtensionEnabled;
+ (BOOL)isBlackholeEnabledForEligibleAccounts:(BOOL)accounts;
+ (BOOL)isChineseSpamFilteringEnabled;
+ (BOOL)isFilterUnknownSendersEnabled;
+ (BOOL)isInternationalSpamFilteringEnabled;
+ (BOOL)isKnownContact:(id)contact;
+ (BOOL)isiMessageJunkFilterEnabled;
+ (BOOL)receiverIsCandidateForAppleSMSFilter;
+ (BOOL)receiverIsCandidateForAppleSMSFilterSubClassification:(id)classification;
+ (BOOL)receiverIsCandidateForAppleSMSFilterSubClassificationWithSimSlot:(int64_t)slot;
+ (BOOL)receiverIsCandidateForDefaultAppleSMSFilter;
+ (BOOL)receiverIsCandidateForDefaultAppleSMSFilter:(id)filter;
+ (BOOL)receiverIsCandidateForHawking:(id)hawking;
+ (BOOL)receiverIsCandidateForSMSFilter:(id)filter;
+ (BOOL)receiverIsCandidateForiMessageJunk:(id)junk;
+ (BOOL)receiverIsEnabledForSMSFilter:(id)filter;
+ (BOOL)receivingID:(id)d isCountryCode:(id)code;
+ (BOOL)senderIsCandidateForBlackhole:(id)blackhole;
+ (BOOL)senderIsCandidateForSMSDowngrade:(id)downgrade;
+ (BOOL)senderIsChinaHandle:(id)handle;
+ (BOOL)shouldBlackholeGroupMessageFromSender:(id)sender toRecipient:(id)recipient ifRecipientIsCandidate:(BOOL)candidate withOtherParticipants:(id)participants givenHistory:(BOOL)history forEligibleAccounts:(BOOL)accounts;
+ (BOOL)shouldBlackholeMessageFromSender:(id)sender toRecipient:(id)recipient ifRecipientIsCandidate:(BOOL)candidate givenHistory:(BOOL)history forEligibleAccounts:(BOOL)accounts;
+ (BOOL)shouldDowngradeToRecipient:(id)recipient fromSender:(id)sender ifCapableOfSMS:(BOOL)s withConversationDowngradeState:(BOOL)state andConversationHistoryState:(BOOL)historyState;
+ (BOOL)shouldShowSMSWarningForSender:(id)sender forRecipient:(id)recipient withConversationHistory:(BOOL)history;
+ (id)_additionalAccountRegionsEligibleForJunkFiltering;
+ (id)_additionalTelephonyCountryCodesEligibleForJunkFiltering;
+ (id)_cnRecordForAliases:(id)aliases;
+ (id)accountRegionsEligibleForJunkFiltering;
+ (id)defaultAccountRegionsEligibleForJunkFiltering;
+ (id)defaultTelephonyCountryCodesEligibleForJunkFiltering;
+ (id)internationalSpamFilterLearnMoreURL;
+ (id)mapID:(id)d usingKey:(id)key;
+ (id)sanitizeParticipants:(id)participants excludingHandles:(id)handles;
+ (id)telephonyCountryCodesEligibleForJunkFiltering;
+ (void)participantsAreiMessagable:(id)messagable completionBlock:(id)block;
@end

@implementation IMSpamFilterHelper

+ (id)accountRegionsEligibleForJunkFiltering
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  if (+[IMDeviceUtilities isInternalInstall])
  {
    v4 = [v3 objectForKey:@"accounts-imessage-junk-filter-internal"];
    if ([v4 count])
    {
      goto LABEL_10;
    }

    v5 = [v3 objectForKey:@"accounts-imessage-junk-filter-seed"];

    if (![v5 count])
    {
      v4 = [v3 objectForKey:@"accounts-imessage-junk-filter"];

      goto LABEL_10;
    }

LABEL_8:
    v4 = v5;
    goto LABEL_10;
  }

  if (+[IMDeviceUtilities isSeedInstall])
  {
    v4 = [v3 objectForKey:@"accounts-imessage-junk-filter-seed"];
    if ([v4 count])
    {
      goto LABEL_10;
    }

    v5 = [v3 objectForKey:@"accounts-imessage-junk-filter"];

    goto LABEL_8;
  }

  v4 = [v3 objectForKey:@"accounts-imessage-junk-filter"];
LABEL_10:
  if (![v4 count])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Server bagged values for junk not found. Using local values of this release.", &v12, 2u);
      }
    }

    defaultAccountRegionsEligibleForJunkFiltering = [objc_opt_class() defaultAccountRegionsEligibleForJunkFiltering];

    v4 = defaultAccountRegionsEligibleForJunkFiltering;
  }

  _additionalAccountRegionsEligibleForJunkFiltering = [self _additionalAccountRegionsEligibleForJunkFiltering];
  v9 = [v4 arrayByAddingObjectsFromArray:_additionalAccountRegionsEligibleForJunkFiltering];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "iMessage junk enabled for: %@", &v12, 0xCu);
    }
  }

  return v9;
}

+ (id)_additionalAccountRegionsEligibleForJunkFiltering
{
  v2 = IMGetCachedDomainValueForKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

+ (id)telephonyCountryCodesEligibleForJunkFiltering
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  if (+[IMDeviceUtilities isInternalInstall])
  {
    v4 = [v3 objectForKey:@"telephony-imessage-junk-filter-internal"];
    if ([v4 count])
    {
      goto LABEL_10;
    }

    v5 = [v3 objectForKey:@"telephony-imessage-junk-filter-seed"];

    if (![v5 count])
    {
      v4 = [v3 objectForKey:@"telephony-imessage-junk-filter"];

      goto LABEL_10;
    }

LABEL_8:
    v4 = v5;
    goto LABEL_10;
  }

  if (+[IMDeviceUtilities isSeedInstall])
  {
    v4 = [v3 objectForKey:@"telephony-imessage-junk-filter-seed"];
    if ([v4 count])
    {
      goto LABEL_10;
    }

    v5 = [v3 objectForKey:@"telephony-imessage-junk-filter"];

    goto LABEL_8;
  }

  v4 = [v3 objectForKey:@"telephony-imessage-junk-filter"];
LABEL_10:
  if (![v4 count])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Server bagged values for junk not found. Using local values of this release.", &v12, 2u);
      }
    }

    defaultTelephonyCountryCodesEligibleForJunkFiltering = [objc_opt_class() defaultTelephonyCountryCodesEligibleForJunkFiltering];

    v4 = defaultTelephonyCountryCodesEligibleForJunkFiltering;
  }

  _additionalTelephonyCountryCodesEligibleForJunkFiltering = [self _additionalTelephonyCountryCodesEligibleForJunkFiltering];
  v9 = [v4 arrayByAddingObjectsFromArray:_additionalTelephonyCountryCodesEligibleForJunkFiltering];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "iMessage junk enabled for: %@", &v12, 0xCu);
    }
  }

  return v9;
}

+ (id)_additionalTelephonyCountryCodesEligibleForJunkFiltering
{
  v2 = IMGetCachedDomainValueForKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

+ (BOOL)isFilterUnknownSendersEnabled
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  isIntroductionsEnabled = [v2 isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {

    return +[IMNotificationSettings isFilterUnknownSendersEnabled];
  }

  else
  {

    return IMGetDomainBoolForKey();
  }
}

+ (BOOL)isInternationalSpamFilteringEnabled
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"apply-international-spam-filter"];
  v4 = v3;
  if (v3 && [v3 unsignedIntegerValue] <= 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86BBD20;
    block[3] = &unk_1E7828050;
    v14 = v4;
    if (qword_1ED8C99D8 != -1)
    {
      dispatch_once(&qword_1ED8C99D8, block);
    }

    bOOLValue = 1;
  }

  else
  {
    bOOLValue = 0;
  }

  v6 = IMGetCachedDomainValueForKey();
  if (v6)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = sub_1A86BBE34;
    v11 = &unk_1E7828050;
    v12 = v4;
    if (qword_1EB30B3F8 != -1)
    {
      dispatch_once(&qword_1EB30B3F8, &v8);
    }

    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

+ (BOOL)receiverIsCandidateForiMessageJunk:(id)junk
{
  v23 = *MEMORY[0x1E69E9840];
  junkCopy = junk;
  v4 = IMGetCachedDomainValueForKey();
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Default set, country is a candidate for imessage junk.", buf, 2u);
      }
    }

LABEL_20:
    v11 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    telephonyCountryCodesEligibleForJunkFiltering = [objc_opt_class() telephonyCountryCodesEligibleForJunkFiltering];
    v7 = [telephonyCountryCodesEligibleForJunkFiltering countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(telephonyCountryCodesEligibleForJunkFiltering);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([IMSpamFilterHelper receivingID:junkCopy isCountryCode:v10])
          {
            if (IMOSLoggingEnabled())
            {
              v12 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v19 = junkCopy;
                v20 = 2112;
                v21 = v10;
                _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for imessage junk.", buf, 0x16u);
              }
            }

            goto LABEL_20;
          }
        }

        v7 = [telephonyCountryCodesEligibleForJunkFiltering countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
  }

  return v11;
}

+ (BOOL)accountCountryIsCandidateForiMessageJunk:(id)junk
{
  v17 = *MEMORY[0x1E69E9840];
  junkCopy = junk;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accountRegionsEligibleForJunkFiltering = [objc_opt_class() accountRegionsEligibleForJunkFiltering];
  v5 = [accountRegionsEligibleForJunkFiltering countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(accountRegionsEligibleForJunkFiltering);
        }

        if ([junkCopy isEqualToString:*(*(&v10 + 1) + 8 * i)])
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v15 = junkCopy;
              _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Country (%@) is a candidate for imessage junk.", buf, 0xCu);
            }
          }

          LOBYTE(v5) = 1;
          goto LABEL_15;
        }
      }

      v5 = [accountRegionsEligibleForJunkFiltering countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v5;
}

+ (id)defaultTelephonyCountryCodesEligibleForJunkFiltering
{
  if (qword_1EB30B038 != -1)
  {
    sub_1A88C2EAC();
  }

  v3 = qword_1EB30B030;

  return v3;
}

+ (id)defaultAccountRegionsEligibleForJunkFiltering
{
  if (qword_1EB30B048 != -1)
  {
    sub_1A88C2EC0();
  }

  v3 = qword_1EB30B040;

  return v3;
}

+ (BOOL)isiMessageJunkFilterEnabled
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"apply-imessage-junk-filter"];
  v4 = v3;
  if (v3 && [v3 unsignedIntegerValue] <= 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A869518C;
    block[3] = &unk_1E7828050;
    v14 = v4;
    if (qword_1EB309348 != -1)
    {
      dispatch_once(&qword_1EB309348, block);
    }

    bOOLValue = 1;
  }

  else
  {
    bOOLValue = 0;
  }

  v6 = IMGetCachedDomainValueForKey();
  if (v6)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = sub_1A86952A0;
    v11 = &unk_1E7828050;
    v12 = v4;
    if (qword_1EB30B050 != -1)
    {
      dispatch_once(&qword_1EB30B050, &v8);
    }

    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

+ (BOOL)shouldDowngradeToRecipient:(id)recipient fromSender:(id)sender ifCapableOfSMS:(BOOL)s withConversationDowngradeState:(BOOL)state andConversationHistoryState:(BOOL)historyState
{
  historyStateCopy = historyState;
  stateCopy = state;
  v28 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  senderCopy = sender;
  if (![self isInternationalSpamFilteringEnabled] || !objc_msgSend(self, "receiverIsCandidateForHawking:", recipientCopy))
  {
    goto LABEL_35;
  }

  if (!s)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = senderCopy;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Sender (%@) incapable of sending SMS, ineligible for downgrade.", &v20, 0xCu);
      }

      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (([self senderIsCandidateForSMSDowngrade:senderCopy] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = senderCopy;
        v22 = 2112;
        v23 = recipientCopy;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Conversation from (%@) to (%@) is not eligible for SMS downgrade.", &v20, 0x16u);
      }

      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (historyStateCopy)
  {
    if (!stateCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v20 = 138412546;
          v21 = senderCopy;
          v22 = 2112;
          v23 = recipientCopy;
          _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Conversation from (%@) to (%@) has history, not eligible for SMS downgrade.", &v20, 0x16u);
        }

        goto LABEL_34;
      }

LABEL_35:
      v18 = 0;
      goto LABEL_36;
    }

    if ([self isChineseSpamFilteringEnabled] && objc_msgSend(self, "senderIsChinaHandle:", senderCopy))
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v20 = 138412546;
          v21 = senderCopy;
          v22 = 2112;
          v23 = recipientCopy;
          _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Conversation from (%@) to (%@) has history and was downgraded, but overriding for CN-CN filtering.", &v20, 0x16u);
        }

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_35;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      v20 = 138413058;
      v21 = senderCopy;
      if (stateCopy)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v22 = 2112;
      v23 = recipientCopy;
      if (historyStateCopy)
      {
        v16 = @"YES";
      }

      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Initiating SMS downgrade for conversation from (%@) to (%@): conversationWasDowngraded: %@, hasHistoryWithSender: %@.", &v20, 0x2Au);
    }
  }

  v18 = 1;
LABEL_36:

  return v18;
}

+ (BOOL)shouldShowSMSWarningForSender:(id)sender forRecipient:(id)recipient withConversationHistory:(BOOL)history
{
  v18 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  recipientCopy = recipient;
  if (history)
  {
    goto LABEL_2;
  }

  if (([self isInternationalSpamFilteringEnabled] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "International spam filtering not enabled.", &v14, 2u);
      }
    }

    goto LABEL_2;
  }

  if (!recipientCopy || ![self receiverIsCandidateForHawking:recipientCopy] || !objc_msgSend(senderCopy, "length") || !IMStringIsEmail())
  {
LABEL_2:
    v10 = 0;
    goto LABEL_3;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = senderCopy;
      v16 = 2112;
      v17 = recipientCopy;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Should show blackhole warning for conversation from (%@) to (%@).", &v14, 0x16u);
    }
  }

  v10 = 1;
LABEL_3:

  return v10;
}

+ (BOOL)shouldBlackholeMessageFromSender:(id)sender toRecipient:(id)recipient ifRecipientIsCandidate:(BOOL)candidate givenHistory:(BOOL)history forEligibleAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  historyCopy = history;
  v24 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  recipientCopy = recipient;
  if (([self isBlackholeEnabledForEligibleAccounts:accountsCopy] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "User ineligible for blackhole.", &v20, 2u);
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (!candidate)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = recipientCopy;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Receiver (%@) is not a candidate for blackhole.", &v20, 0xCu);
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (historyCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = senderCopy;
        v22 = 2112;
        v23 = recipientCopy;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Sender (%@) has history with recipient (%@).", &v20, 0x16u);
      }

LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (([self senderIsCandidateForBlackhole:senderCopy] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = senderCopy;
        v22 = 2112;
        v23 = recipientCopy;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Sender (%@) to (%@) is not a candidate for blackhole.", &v20, 0x16u);
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v15 = [self senderIsKnownContact:senderCopy];
  v16 = IMOSLoggingEnabled();
  if (v15)
  {
    if (v16)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = senderCopy;
        v22 = 2112;
        v23 = recipientCopy;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Known contact, will not black hole message from (%@) to (%@).", &v20, 0x16u);
      }

      goto LABEL_25;
    }

LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  if (v16)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = 138412546;
      v21 = senderCopy;
      v22 = 2112;
      v23 = recipientCopy;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Should blackhole message from (%@) to (%@).", &v20, 0x16u);
    }
  }

  v17 = 1;
LABEL_27:

  return v17;
}

+ (BOOL)shouldBlackholeGroupMessageFromSender:(id)sender toRecipient:(id)recipient ifRecipientIsCandidate:(BOOL)candidate withOtherParticipants:(id)participants givenHistory:(BOOL)history forEligibleAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  historyCopy = history;
  v26 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  recipientCopy = recipient;
  participantsCopy = participants;
  if (([self isBlackholeEnabledForEligibleAccounts:accountsCopy] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "User ineligible for blackhole.", &v22, 2u);
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!candidate)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        v23 = recipientCopy;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Receiver (%@) is not a candidate for blackhole.", &v22, 0xCu);
      }

      goto LABEL_15;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (historyCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        v23 = senderCopy;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Sender (%@) has history with someone in group conversation.", &v22, 0xCu);
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v20 = [participantsCopy arrayByAddingObject:senderCopy];
  if ([self anyParticipantIsCandidateForBlackhole:v20] && (objc_msgSend(self, "anyParticipantIsKnownContact:", v20) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = senderCopy;
        v24 = 2112;
        v25 = recipientCopy;
        _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Should blackhole group message from (%@) to (%@).", &v22, 0x16u);
      }
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_17:
  return v18;
}

+ (BOOL)isBlackholeEnabledForEligibleAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  if (([self isInternationalSpamFilteringEnabled] & 1) == 0)
  {
    v6 = IMOSLoggingEnabled();
    if (!v6)
    {
      return v6;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v15 = 0;
    v9 = "Blackhole disabled; international spam filtering not enabled.";
    v10 = &v15;
LABEL_18:
    _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
    goto LABEL_19;
  }

  isFilterUnknownSendersEnabled = [self isFilterUnknownSendersEnabled];
  v6 = IMOSLoggingEnabled();
  if ((isFilterUnknownSendersEnabled & 1) == 0)
  {
    if (!v6)
    {
      return v6;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v14 = 0;
    v9 = "Blackhole disabled; user has disabled filtering unknown senders.";
    v10 = &v14;
    goto LABEL_18;
  }

  if (!accountsCopy)
  {
    if (!v6)
    {
      return v6;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v9 = "Blackhole disabled; active accounts ineligble.";
      v10 = &v12;
      goto LABEL_18;
    }

LABEL_19:

    LOBYTE(v6) = 0;
    return v6;
  }

  if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Blackhole enabled; active accounts eligible.", buf, 2u);
    }
  }

  LOBYTE(v6) = 1;
  return v6;
}

+ (BOOL)receiverIsCandidateForHawking:(id)hawking
{
  v11 = *MEMORY[0x1E69E9840];
  hawkingCopy = hawking;
  v4 = [IMSpamFilterHelper receivingID:hawkingCopy isCountryCode:@"cn"];
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = hawkingCopy;
      v9 = 2112;
      v10 = @"cn";
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for hawking.", &v7, 0x16u);
    }
  }

  return v4;
}

+ (BOOL)receiverIsEnabledForSMSFilter:(id)filter
{
  filterCopy = filter;
  if ([filterCopy isEqualToString:@"us"])
  {
    v4 = +[IMFeatureFlags sharedFeatureFlags];
    isCategorizationEnabled = [v4 isCategorizationEnabled];
  }

  else
  {
    if (![filterCopy isEqualToString:@"gb"])
    {
      v6 = 1;
      goto LABEL_7;
    }

    v4 = +[IMFeatureFlags sharedFeatureFlags];
    isCategorizationEnabled = [v4 isSMSFilterEnabledForUK];
  }

  v6 = isCategorizationEnabled;

LABEL_7:
  return v6;
}

+ (BOOL)receiverIsCandidateForSMSFilter:(id)filter
{
  v20 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&unk_1F1BFAE08 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(&unk_1F1BFAE08);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([IMSpamFilterHelper receivingID:filterCopy isCountryCode:v7])
        {
          if (IMOSLoggingEnabled())
          {
            v9 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v16 = filterCopy;
              v17 = 2112;
              v18 = v7;
              _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for load but set to none filter.", buf, 0x16u);
            }
          }

          v8 = [IMSpamFilterHelper receiverIsEnabledForSMSFilter:v7];
          goto LABEL_15;
        }
      }

      v4 = [&unk_1F1BFAE08 countByEnumeratingWithState:&v11 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_15:

  return v8;
}

+ (BOOL)receiverIsCandidateForDefaultAppleSMSFilter:(id)filter
{
  v19 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&unk_1F1BFAE20 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_1F1BFAE20);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([IMSpamFilterHelper receivingID:filterCopy isCountryCode:v7])
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v15 = filterCopy;
              v16 = 2112;
              v17 = v7;
              _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for first party sms filtering.", buf, 0x16u);
            }
          }

          LOBYTE(v4) = 1;
          goto LABEL_15;
        }
      }

      v4 = [&unk_1F1BFAE20 countByEnumeratingWithState:&v10 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v4;
}

+ (BOOL)receiverIsCandidateForAppleSMSFilterSubClassification:(id)classification
{
  v19 = *MEMORY[0x1E69E9840];
  classificationCopy = classification;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&unk_1F1BFAE38 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_1F1BFAE38);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([IMSpamFilterHelper receivingID:classificationCopy isCountryCode:v7])
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v15 = classificationCopy;
              v16 = 2112;
              v17 = v7;
              _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Receiving id (%@) with country code (%@) is a candidate for SMS subclassification.", buf, 0x16u);
            }
          }

          LOBYTE(v4) = 1;
          goto LABEL_15;
        }
      }

      v4 = [&unk_1F1BFAE38 countByEnumeratingWithState:&v10 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v4;
}

+ (BOOL)receivingID:(id)d isCountryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if ([dCopy length])
  {
    v8 = MEMORY[0x1AC570A80](dCopy);
    v9 = [self mapID:v8 usingKey:@"mapReceivingIDForSpamFilter"];

    if (MEMORY[0x1AC570A50](v9))
    {
      v10 = IMCountryCodeForNumber();
      v11 = [v10 isEqualToString:codeCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (BOOL)receiverIsCandidateForAppleSMSFilter
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = 1;
  while (1)
  {
    v3 = [IMCTSMSUtilities IMCountryCodeForSimSlot:v2];
    if (v3)
    {
      if ([&unk_1F1BFAE08 containsObject:v3])
      {
        break;
      }
    }

    if (++v2 == 3)
    {
      return 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134218242;
      v8 = v2;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Receiving sim slot (%ld) with country code (%@) is a candidate for load but set to none filter.", &v7, 0x16u);
    }
  }

  v4 = [IMSpamFilterHelper receiverIsEnabledForSMSFilter:v3];

  return v4;
}

+ (BOOL)receiverIsCandidateForDefaultAppleSMSFilter
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = 1;
  v3 = 1;
  while (1)
  {
    v4 = [IMCTSMSUtilities IMCountryCodeForSimSlot:v3];
    if (v4)
    {
      if ([&unk_1F1BFAE20 containsObject:v4])
      {
        break;
      }
    }

    v2 = v3++ < 2;
    if (v3 == 3)
    {
      return 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134218242;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Receiving sim slot (%ld) with country code (%@) is a candidate for first party sms filtering.", &v7, 0x16u);
    }
  }

  return v2;
}

+ (BOOL)receiverIsCandidateForAppleSMSFilterSubClassificationWithSimSlot:(int64_t)slot
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [IMCTSMSUtilities IMCountryCodeForSimSlot:?];
  if (v4 && [&unk_1F1BFAE38 containsObject:v4])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = 134218242;
        slotCopy = slot;
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Receiving sim slot (%ld) with country code (%@) is a candidate for SMS subclassification.", &v8, 0x16u);
      }
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)accountRegionIsCandidateForHawking:(id)hawking
{
  v9 = *MEMORY[0x1E69E9840];
  hawkingCopy = hawking;
  if ([(__CFString *)hawkingCopy isEqualToString:@"R:CN"])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = hawkingCopy;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Region (%@) is a candidate for spam filtering.", &v7, 0xCu);
      }

LABEL_10:
    }
  }

  else
  {
    if (!IMGetDomainBoolForKey())
    {
      v5 = 0;
      goto LABEL_13;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = @"is";
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Region %@ a candidate for spam filtering.", &v7, 0xCu);
      }

      goto LABEL_10;
    }
  }

  v5 = 1;
LABEL_13:

  return v5;
}

+ (BOOL)accountCountryIsCandidateForHawking:(id)hawking
{
  v9 = *MEMORY[0x1E69E9840];
  hawkingCopy = hawking;
  if ([hawkingCopy isEqualToString:@"cn"])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = hawkingCopy;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Country (%@) is a candidate for hawking.", &v7, 0xCu);
      }

LABEL_10:
    }
  }

  else
  {
    if (!IMGetDomainBoolForKey())
    {
      v5 = 0;
      goto LABEL_13;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Country is a candidate for hawking.", &v7, 2u);
      }

      goto LABEL_10;
    }
  }

  v5 = 1;
LABEL_13:

  return v5;
}

+ (BOOL)accountCountryIsCandidateForSMSFilter:(id)filter
{
  v22 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [&unk_1F1BFAE08 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(&unk_1F1BFAE08);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if ([filterCopy isEqualToString:v8])
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v20 = filterCopy;
              _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Country (%@) is a candidate for first party sms filtering.", buf, 0xCu);
            }
          }

          v11 = [IMSpamFilterHelper receiverIsEnabledForSMSFilter:v8];
          goto LABEL_22;
        }

        v9 = [&unk_1F1BFADF0 objectAtIndex:v5];
        v10 = IMGetDomainBoolForKey();

        if (v10)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Country is a candidate for first party sms filtering.", buf, 2u);
            }
          }

          v11 = 1;
          goto LABEL_22;
        }

        ++v5;
      }

      v4 = [&unk_1F1BFAE08 countByEnumeratingWithState:&v15 objects:v21 count:16];
      v11 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_22:

  return v11;
}

+ (BOOL)senderIsCandidateForSMSDowngrade:(id)downgrade
{
  v18 = *MEMORY[0x1E69E9840];
  downgradeCopy = downgrade;
  if ([downgradeCopy length])
  {
    v5 = MEMORY[0x1AC570A80](downgradeCopy);
    v6 = [self mapID:v5 usingKey:@"mapSendingIDForSpamFilter"];

    if (IMStringIsEmail())
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v6;
          _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Sender (%@) is an email, cannot downgrade to SMS.", &v14, 0xCu);
        }
      }
    }

    else
    {
      if (MEMORY[0x1AC570A50](v6))
      {
        v9 = IMCountryCodeForNumber();
        if ([v9 isEqualToString:@"cn"] && !objc_msgSend(self, "isChineseSpamFilteringEnabled"))
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v14 = 138412546;
              v15 = v6;
              v16 = 2112;
              v17 = v9;
              _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Sender (%@) with country code (%@) should not be downgraded to SMS.", &v14, 0x16u);
            }
          }

          v8 = 0;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v14 = 138412546;
              v15 = v6;
              v16 = 2112;
              v17 = v9;
              _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Sender (%@) with country code (%@) should be downgraded to SMS.", &v14, 0x16u);
            }
          }

          v8 = 1;
        }

        goto LABEL_26;
      }

      v11 = IMLogHandleForCategory("SpamFilter");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C4350(v6, v11);
      }
    }

    v8 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v8 = 1;
LABEL_27:

  return v8;
}

+ (BOOL)senderIsChinaHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy length])
  {
    v5 = MEMORY[0x1AC570A80](handleCopy);
    v6 = [self mapID:v5 usingKey:@"mapSendingIDForSpamFilter"];

    if ((IMStringIsEmail() & 1) != 0 || !MEMORY[0x1AC570A50](v6))
    {
      v8 = 0;
    }

    else
    {
      v7 = IMCountryCodeForNumber();
      v8 = [v7 isEqualToString:@"cn"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)senderIsCandidateForBlackhole:(id)blackhole
{
  v19 = *MEMORY[0x1E69E9840];
  blackholeCopy = blackhole;
  if ([blackholeCopy length])
  {
    v5 = MEMORY[0x1AC570A80](blackholeCopy);
    v6 = [self mapID:v5 usingKey:@"mapSendingIDForSpamFilter"];

    if (IMStringIsEmail())
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v15 = 138412546;
          v16 = v6;
          v17 = 2112;
          v18 = @"R:CN";
          _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Sender (%@) should be blackholed for (%@) receiver.", &v15, 0x16u);
        }
      }
    }

    else
    {
      if (MEMORY[0x1AC570A50](v6))
      {
        v9 = IMCountryCodeForNumber();
        if ([(__CFString *)v9 isEqualToString:@"cn"]&& !+[IMSpamFilterHelper isChineseSpamFilteringEnabled])
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v15 = 138412546;
              v16 = v6;
              v17 = 2112;
              v18 = v9;
              _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Sender (%@) with country code (%@) should not be blackholed.", &v15, 0x16u);
            }
          }

          v8 = 0;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v15 = 138412546;
              v16 = v6;
              v17 = 2112;
              v18 = v9;
              _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Sender (%@) with country code (%@) should be blackholed.", &v15, 0x16u);
            }
          }

          v8 = 1;
        }

        goto LABEL_32;
      }

      if (MEMORY[0x1AC570A30](v6))
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v15 = 138412290;
            v16 = v6;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Sender (%@) is business chat, should not be blackholed.", &v15, 0xCu);
          }
        }

        v8 = 0;
        goto LABEL_32;
      }

      v12 = IMLogHandleForCategory("SpamFilter");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C43C8(v6, v12);
      }
    }

    v8 = 1;
LABEL_32:

    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8;
}

+ (BOOL)anyParticipantIsCandidateForBlackhole:(id)blackhole
{
  v19 = *MEMORY[0x1E69E9840];
  blackholeCopy = blackhole;
  if ([blackholeCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = blackholeCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([self senderIsCandidateForBlackhole:{*(*(&v12 + 1) + 8 * i), v12}])
          {

            v10 = 1;
            goto LABEL_16;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "No participants are candidates for blackhole: (%@)", buf, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

+ (BOOL)anyParticipantIsKnownContact:(id)contact
{
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([contactCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = contactCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([self isKnownContact:{*(*(&v12 + 1) + 8 * i), v12}])
          {

            v10 = 1;
            goto LABEL_16;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "No known contacts in participants list: (%@)", buf, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

+ (void)participantsAreiMessagable:(id)messagable completionBlock:(id)block
{
  blockCopy = block;
  v6 = *MEMORY[0x1E69A4818];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A86BB420;
  v8[3] = &unk_1E7829870;
  v9 = blockCopy;
  v7 = blockCopy;
  [IMIDSIDQueryController refreshIDStatusForDestinations:messagable service:v6 listenerID:@"IMChatServiceForSendingIDSQueryControllerListenerID" queue:MEMORY[0x1E69E96A0] completionBlock:v8];
}

+ (id)sanitizeParticipants:(id)participants excludingHandles:(id)handles
{
  v54 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  handlesCopy = handles;
  if ([handlesCopy count])
  {
    v32 = participantsCopy;
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(handlesCopy, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v31 = handlesCopy;
    v8 = handlesCopy;
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      v12 = MEMORY[0x1E69986A8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(v8);
          }

          _stripFZIDPrefix = [*(*(&v47 + 1) + 8 * i) _stripFZIDPrefix];
          if (MEMORY[0x1AC570A50]())
          {
            v15 = IMCountryCodeForNumber();
            v16 = v12[1];
            v43 = *v12;
            v44 = v16;
            v17 = v12[3];
            v45 = v12[2];
            v46 = v17;
            [_stripFZIDPrefix UTF8String];
            PNDecomposeForCountry();
            if (v45 && DWORD2(v45))
            {
              v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
              if (v18)
              {
                [v7 addObject:v18];
              }
            }
          }

          else
          {
            [v7 addObject:_stripFZIDPrefix];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v10);
    }

    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v32;
    v19 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(obj);
          }

          _stripFZIDPrefix2 = [*(*(&v39 + 1) + 8 * j) _stripFZIDPrefix];
          v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ ENDSWITH SELF", _stripFZIDPrefix2];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v25 = v7;
          v26 = [v25 countByEnumeratingWithState:&v35 objects:v51 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v36;
            while (2)
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v36 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                if ([v24 evaluateWithObject:*(*(&v35 + 1) + 8 * k)])
                {

                  goto LABEL_32;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v35 objects:v51 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          [v33 addObject:_stripFZIDPrefix2];
LABEL_32:
        }

        v20 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v20);
    }

    handlesCopy = v31;
    participantsCopy = v32;
  }

  else
  {
    v33 = [participantsCopy __imArrayByApplyingBlock:&unk_1F1BA7708];
  }

  return v33;
}

+ (BOOL)isKnownContact:(id)contact
{
  v19[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([contactCopy length])
  {
    v4 = MEMORY[0x1AC570A80](contactCopy);
    v5 = objc_opt_class();
    v19[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v7 = [v5 _cnRecordForAliases:v6];

    v8 = [v7 objectForKey:v4];
    if (!qword_1EB30B3E0)
    {
      v9 = MEMORY[0x1AC570AB0]("IMDCNPersonNotFound", @"IMDPersistence");
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      objc_storeStrong(&qword_1EB30B3E0, v10);
    }

    if (v8 && ([v8 containsString:qword_1EB30B3E0] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = 138412546;
          v16 = v4;
          v17 = 2112;
          v18 = v8;
          _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Identified known alias (%@) which maps to cnRecordID (%@).", &v15, 0x16u);
        }
      }

      v11 = 1;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = v4;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Sender (%@) is not a known contact", &v15, 0xCu);
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_cnRecordForAliases:(id)aliases
{
  aliasesCopy = aliases;
  if (qword_1EB30B3F0 != -1)
  {
    sub_1A88C4440();
  }

  if (off_1EB30B3E8)
  {
    v4 = off_1EB30B3E8(aliasesCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isChineseSpamFilteringEnabled
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"apply-chinese-spam-filter"];
  v4 = v3;
  if (v3 && [v3 unsignedIntegerValue] <= 1)
  {
    if (qword_1EB30B408 != -1)
    {
      sub_1A88C4454();
    }

    byte_1EB30B400 = 1;
  }

  v5 = IMGetCachedDomainValueForKey();
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86BC144;
    block[3] = &unk_1E7828050;
    v9 = v4;
    if (qword_1EB30B410 != -1)
    {
      dispatch_once(&qword_1EB30B410, block);
    }

    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = byte_1EB30B400;
  }

  return bOOLValue;
}

+ (id)internationalSpamFilterLearnMoreURL
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"international-spam-filter-learn-more-url"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v7 = 138412290;
          v8 = v3;
          _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Received learn more URL from server: %@", &v7, 0xCu);
        }
      }

      objc_storeStrong(&qword_1EB301188, v3);
    }
  }

  v5 = [MEMORY[0x1E695DFF8] URLWithString:qword_1EB301188];

  return v5;
}

+ (id)mapID:(id)d usingKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  v7 = IMGetCachedDomainValueForKey();
  v8 = v7;
  if (v7 && ([v7 objectForKey:dCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = dCopy;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Mapping id (%@) to (%@).", &v12, 0x16u);
      }
    }
  }

  else
  {
    v9 = dCopy;
  }

  return v9;
}

+ (BOOL)hasThirdPartySMSExtensionEnabled
{
  v2 = IMGetCachedDomainValueForKey();
  v3 = [v2 length] && !objc_msgSend(v2, "isEqualToString:", @"com.apple.smsFilter.extension");

  return v3;
}

@end