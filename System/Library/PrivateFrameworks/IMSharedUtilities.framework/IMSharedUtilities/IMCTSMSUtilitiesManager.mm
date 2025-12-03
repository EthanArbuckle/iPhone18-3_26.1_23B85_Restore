@interface IMCTSMSUtilitiesManager
+ (id)sharedManager;
- (BOOL)isEagerUploadEnabledForPhoneNumber:(id)number simID:(id)d;
- (BOOL)isMessagesTheDefaultTextApp;
- (BOOL)messagesFilteringSettingForPreferedSubscription;
- (BOOL)mmsDefaultEnabledForPhoneNumber:(id)number simID:(id)d;
- (BOOL)mmsEagerUploadDisabledInCarrierBundleForPhoneNumber:(id)number simID:(id)d;
- (BOOL)mmsEnabledForPhoneNumber:(id)number simID:(id)d;
- (BOOL)mmsGroupTextOnlyMessagesSendAsMMSForPhoneNumber:(id)number simID:(id)d;
- (BOOL)mmsGroupTextReplicationSupportedForPhoneNumber:(id)number simID:(id)d;
- (BOOL)mmsGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:(id)number simID:(id)d;
- (BOOL)mmsRestrictedModeEnabledForPhoneNumber:(id)number simID:(id)d reset:(BOOL)reset;
- (BOOL)mmsSupportedAndConfiguredForPhoneNumber:(id)number simID:(id)d;
- (BOOL)mmsSupportsH264VideoForPhoneNumber:(id)number simID:(id)d;
- (BOOL)readDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:(id)number simID:(id)d;
- (BOOL)readDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:(id)number simID:(id)d;
- (BOOL)readEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:(id)number simID:(id)d;
- (BOOL)readMMSUserOverrideForPhoneNumber:(id)number simID:(id)d;
- (BOOL)shouldShowMMSEmailAddress:(id)address simID:(id)d;
- (BOOL)shouldUploadToMMCS:(id)s;
- (BOOL)smsAllowCaseSensitiveSenderIDForPhoneNumber:(id)number;
- (IMCTSMSUtilitiesManager)init;
- (double)mmsMaximumAudioDurationForPhoneNumber:(id)number simID:(id)d;
- (double)mmsMaximumDurationWithPreset:(id)preset phoneNumber:(id)number simID:(id)d;
- (double)mmsMaximumVideoDurationForPhoneNumber:(id)number simID:(id)d;
- (id)carrierBundleValueForKeyHierarchy:(id)hierarchy phoneNumber:(id)number simID:(id)d;
- (id)carrierNameForPhoneNumber:(id)number;
- (id)countryCodeForPhoneNumber:(id)number simID:(id)d;
- (id)countryCodeForSimSlot:(int64_t)slot;
- (id)mmsEmailAddressToMatchForPhoneNumber:(id)number simID:(id)d;
- (id)myCTPhoneNumber;
- (id)phoneNumbersEnabledForMultipleSubscriptionDevice;
- (id)uniqueIdentifierForPhoneNumber:(id)number simID:(id)d;
- (int)mmsMaxImageDimensionForPhoneNumber:(id)number simID:(id)d;
- (int)mmsMaxRecipientsForPhoneNumber:(id)number simID:(id)d;
- (int)mmsMaximumMessageByteCountForPhoneNumber:(id)number simID:(id)d;
- (int)mmsMaximumSlideCountForPhoneNumber:(id)number simID:(id)d;
- (unint64_t)iMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d;
- (unint64_t)iMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d;
- (unint64_t)readAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:(id)number simID:(id)d;
- (void)iMessageMaxTransferFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d;
- (void)registerServiceCapabilityNotifications;
- (void)synchronizeMMSCapabilityToWatch:(BOOL)watch;
- (void)synchronizePreferredSubscriptionMMSCapabilityToWatch;
@end

@implementation IMCTSMSUtilitiesManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8603820;
  block[3] = &unk_1E7826200;
  block[4] = self;
  if (qword_1ED8CA118 != -1)
  {
    dispatch_once(&qword_1ED8CA118, block);
  }

  v2 = qword_1ED8CA0E8;

  return v2;
}

- (IMCTSMSUtilitiesManager)init
{
  v5.receiver = self;
  v5.super_class = IMCTSMSUtilitiesManager;
  v2 = [(IMCTSMSUtilitiesManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_mmsEnabledToken = -1;
    [(IMCTSMSUtilitiesManager *)v2 registerServiceCapabilityNotifications];
  }

  return v3;
}

- (void)registerServiceCapabilityNotifications
{
  v3 = [(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:0 simID:0];
  notify_register_check("kMMSEnabledDidChange", &self->_mmsEnabledToken);
  notify_set_state([(IMCTSMSUtilitiesManager *)self mmsEnabledToken], v3);

  notify_post("kMMSEnabledDidChange");
}

- (BOOL)isMessagesTheDefaultTextApp
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  isTextAccessFor3rdPartyEnabled = [v2 isTextAccessFor3rdPartyEnabled];

  if (!isTextAccessFor3rdPartyEnabled)
  {
    LOBYTE(v11) = 1;
    return v11;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "DefaultApp: Looking for default app settings", buf, 2u);
    }
  }

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall || (+[IMDefaults sharedInstance](IMDefaults, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"Force.MessageDefaultTextAppState"], v7, (v8 & 1) == 0) && (+[IMDefaults sharedInstance](IMDefaults, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "getBoolFromDomain:forKey:", @"com.apple.MobileSMS", @"Force.MessageIsDefaultApp"), v9, !v10))
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v13 = defaultWorkspace;
    if (defaultWorkspace)
    {
      if ([defaultWorkspace canChangeDefaultAppForCategory:10])
      {
        v25 = 0;
        v14 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.MobileSMS" allowPlaceholder:0 error:&v25];
        v15 = v25;
        if (v14)
        {
          defaultWorkspace2 = [MEMORY[0x1E6963608] defaultWorkspace];
          v24 = v15;
          v17 = [defaultWorkspace2 defaultApplicationForCategory:10 error:&v24];
          v18 = v24;

          v11 = [v17 isEqual:v14];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = @"NO";
              if (v11)
              {
                v20 = @"YES";
              }

              *buf = 138412290;
              v27 = v20;
              _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "DefaultApp: Got App workspace isMessagesTheDefault %@", buf, 0xCu);
            }
          }

          v15 = v18;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v27 = @"com.apple.MobileSMS";
              v28 = 2112;
              v29 = v15;
              _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "DefaultApp: Can't find application record for domain %@, error %@. Has Messages been uninstalled?", buf, 0x16u);
            }
          }

          LOBYTE(v11) = 0;
        }

        goto LABEL_32;
      }

      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "DefaultApp: Can't change default app so behaving as if Messages is the default", buf, 2u);
        }
      }
    }

    LOBYTE(v11) = 1;
LABEL_32:

    return v11;
  }

  LOBYTE(v11) = v8 ^ 1;
  return v11;
}

- (id)uniqueIdentifierForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  if ([numberCopy length])
  {
    v7 = numberCopy;
  }

  else
  {
    v7 = dCopy;
  }

  v8 = v7;

  return v7;
}

- (BOOL)readMMSUserOverrideForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  [(IMCTSMSUtilitiesManager *)self mmsDefaultEnabledForPhoneNumber:numberCopy simID:dCopy];
  v8 = @"MMSEnabled";
  v9 = IMGetCachedDomainBoolForKeyWithDefaultValue();
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v10 = [(IMCTSMSUtilitiesManager *)self uniqueIdentifierForPhoneNumber:numberCopy simID:dCopy];
    if ([v10 length])
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"MMSEnabled-", v10];
      v9 = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }
  }

  return v9;
}

- (BOOL)mmsDefaultEnabledForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  v7 = +[IMFeatureFlags sharedFeatureFlags];
  isReadMMSDefaultFromCBEnabled = [v7 isReadMMSDefaultFromCBEnabled];

  if (isReadMMSDefaultFromCBEnabled)
  {
    v9 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo = [v9 ctSubscriptionInfo];
    firstObject = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];

    if (!firstObject)
    {
      if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
      {
        firstObject = 0;
      }

      else
      {
        v13 = +[IMCTSubscriptionUtilities sharedInstance];
        ctSubscriptionInfo2 = [v13 ctSubscriptionInfo];
        subscriptions = [ctSubscriptionInfo2 subscriptions];
        firstObject = [subscriptions firstObject];
      }
    }

    v16 = +[IMCTSubscriptionUtilities sharedInstance];
    v17 = [v16 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:&unk_1F1BFAE98 defaultValue:0 valueIfError:0];

    if (v17)
    {
      v18 = [v17 valueForKey:@"MMSDefaultEnabled"];
      v19 = v18;
      if (v18)
      {
        bOOLValue = [v18 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)phoneNumbersEnabledForMultipleSubscriptionDevice
{
  v2 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v2 ctSubscriptionInfo];
  phoneNumbersOfActiveSubscriptions = [ctSubscriptionInfo phoneNumbersOfActiveSubscriptions];

  return phoneNumbersOfActiveSubscriptions;
}

- (BOOL)mmsEnabledForPhoneNumber:(id)number simID:(id)d
{
  v43 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (!IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    LOBYTE(v17) = IMMMSEnabled();
    goto LABEL_35;
  }

  v8 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v8 ctSubscriptionInfo];
  v10 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Subscription context was nil, returning NO for MMS enabled", v32, 2u);
      }
    }

    LOBYTE(v17) = 0;
    goto LABEL_32;
  }

  phoneNumber = [v10 phoneNumber];
  labelID = [v10 labelID];
  v13 = [(IMCTSMSUtilitiesManager *)self uniqueIdentifierForPhoneNumber:phoneNumber simID:labelID];
  if (!qword_1EB30A9D0)
  {
LABEL_13:
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = qword_1EB30A9D0;
    qword_1EB30A9D0 = v19;

LABEL_14:
    v21 = [(IMCTSMSUtilitiesManager *)self mmsSupportedAndConfiguredForPhoneNumber:phoneNumber simID:labelID];
    v22 = [(IMCTSMSUtilitiesManager *)self readMMSUserOverrideForPhoneNumber:phoneNumber simID:labelID];
    v23 = v22;
    v17 = v21 & v22;
    if ([v13 length])
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = @"NO";
          *v32 = 138413826;
          *&v32[4] = dCopy;
          if (v21)
          {
            v26 = @"YES";
          }

          else
          {
            v26 = @"NO";
          }

          if (v23)
          {
            v27 = @"YES";
          }

          else
          {
            v27 = @"NO";
          }

          if (v17)
          {
            v25 = @"YES";
          }

          *&v32[12] = 2112;
          *&v32[14] = labelID;
          v33 = 2112;
          v34 = numberCopy;
          v35 = 2112;
          v36 = phoneNumber;
          v37 = 2112;
          v38 = v26;
          v39 = 2112;
          v40 = v27;
          v41 = 2112;
          v42 = v25;
          _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Is MMS enabled for simID %@ (default %@) phoneNumber %@ (default %@): mmsSupportedAndConfigured %@ isUserEnabled %@ isMMSEnabled %@", v32, 0x48u);
        }
      }

      v28 = qword_1EB30A9D0;
      v29 = [MEMORY[0x1E696AD98] numberWithBool:{v17, *v32}];
      [v28 setObject:v29 forKey:v13];

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *v32 = 138412290;
          *&v32[4] = qword_1EB30A9D0;
          _os_log_impl(&dword_1A85E5000, v30, OS_LOG_TYPE_INFO, "mmsCapability dict is now %@", v32, 0xCu);
        }
      }
    }

    goto LABEL_31;
  }

  allKeys = [qword_1EB30A9D0 allKeys];
  v15 = [allKeys containsObject:v13];

  if (!v15)
  {
    if (qword_1EB30A9D0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v16 = [qword_1EB30A9D0 objectForKey:v13];
  LOBYTE(v17) = [v16 BOOLValue];

LABEL_31:
LABEL_32:
  if (qword_1EB30B490 != -1)
  {
    sub_1A88C52B4();
  }

LABEL_35:
  return v17;
}

- (BOOL)readEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:(id)number simID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v7 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo = [v7 ctSubscriptionInfo];
    v9 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

    if (v9)
    {
      v10 = +[IMCTSubscriptionUtilities sharedInstance];
      v11 = [v10 copyOperatorBundleValueForSubscriptionContext:v9 keyHierarchy:&unk_1F1BFAEB0 defaultValue:MEMORY[0x1E695E110] valueIfError:MEMORY[0x1E695E110]];
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      v16 = 138412802;
      if (bOOLValue)
      {
        v14 = @"YES";
      }

      v17 = v14;
      v18 = 2112;
      v19 = numberCopy;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Operator/EnablePreviewTranscodingQuality: %@ for phone number %@ simID %@", &v16, 0x20u);
    }
  }

  return bOOLValue;
}

- (BOOL)readDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:(id)number simID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v7 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo = [v7 ctSubscriptionInfo];
    v9 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

    if (v9)
    {
      v10 = +[IMCTSubscriptionUtilities sharedInstance];
      v11 = [v10 copyOperatorBundleValueForSubscriptionContext:v9 keyHierarchy:&unk_1F1BFAEC8 defaultValue:MEMORY[0x1E695E110] valueIfError:MEMORY[0x1E695E110]];
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      v16 = 138412802;
      if (bOOLValue)
      {
        v14 = @"YES";
      }

      v17 = v14;
      v18 = 2112;
      v19 = numberCopy;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Operator/DisablePreviewTranscodingQualityOnWiFi: %@ for phone number %@ simID %@", &v16, 0x20u);
    }
  }

  return bOOLValue;
}

- (BOOL)readDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:(id)number simID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v7 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo = [v7 ctSubscriptionInfo];
    v9 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

    if (v9)
    {
      v10 = +[IMCTSubscriptionUtilities sharedInstance];
      v11 = [v10 copyOperatorBundleValueForSubscriptionContext:v9 keyHierarchy:&unk_1F1BFAEE0 defaultValue:MEMORY[0x1E695E118] valueIfError:MEMORY[0x1E695E118]];
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = IMGetCachedDomainBoolForKeyWithDefaultValue();
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      v16 = 138412802;
      if (bOOLValue)
      {
        v14 = @"YES";
      }

      v17 = v14;
      v18 = 2112;
      v19 = numberCopy;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Operator/DisablePreviewTranscodingQualityOnWRMRecommendation: %@ for phone number %@ simID %@", &v16, 0x20u);
    }
  }

  return bOOLValue;
}

- (unint64_t)readAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:(id)number simID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v7 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo = [v7 ctSubscriptionInfo];
    v9 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

    if (v9)
    {
      v10 = +[IMCTSubscriptionUtilities sharedInstance];
      v11 = [v10 copyOperatorBundleValueForSubscriptionContext:v9 keyHierarchy:&unk_1F1BFAEF8 defaultValue:MEMORY[0x1E695E110] valueIfError:MEMORY[0x1E695E110]];
      intValue = [v11 intValue];
    }

    else
    {
      intValue = 0;
    }
  }

  else
  {
    intValue = IMGetCachedDomainIntForKeyWithDefaultValue();
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:intValue];
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = numberCopy;
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Operator/AttachmentPreviewTranscodingQualitySize: %@ for phone number %@ simID %@", &v16, 0x20u);
    }
  }

  return intValue;
}

- (BOOL)mmsSupportedAndConfiguredForPhoneNumber:(id)number simID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperDeviceIsAltAccount() & 1) != 0 || ([MEMORY[0x1E699BE70] sharedInstance], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "supportsMMS"), v7, (v8))
  {
    if (qword_1ED8CA318 != -1)
    {
      sub_1A88C52DC();
    }

    v21 = 1;
    if (IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      v9 = +[IMCTSubscriptionUtilities sharedInstance];
      ctSubscriptionInfo = [v9 ctSubscriptionInfo];

      v10 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];
      if (v10)
      {
        v11 = 3;
        do
        {
          sharedMessageCenter = [qword_1EB30A9D8 sharedMessageCenter];
          v13 = [sharedMessageCenter isMmsEnabledForSub:v10 enabled:&v21];

          if (!v13)
          {
            break;
          }

          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v23 = v10;
              v24 = 2048;
              v25 = v13;
              v26 = 2048;
              v27 = v13 >> 32;
              _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "MMS configured check for slot %@ failed (%ld, %ld) retrying...", buf, 0x20u);
            }
          }

          --v11;
        }

        while (v11);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v23 = numberCopy;
            _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Could not find whether MMS was enabled because no context was found for phone number %@. Returning NO", buf, 0xCu);
          }
        }

        v21 = 0;
      }

      isMmsConfigured = v21;
    }

    else
    {
      sharedMessageCenter2 = [qword_1EB30A9D8 sharedMessageCenter];
      isMmsConfigured = [sharedMessageCenter2 isMmsConfigured];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Device does not have support MMS", buf, 2u);
      }
    }

    isMmsConfigured = 0;
  }

  return isMmsConfigured & 1;
}

- (int)mmsMaximumSlideCountForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:numberCopy simID:dCopy])
    {
      v8 = +[IMCTSubscriptionUtilities sharedInstance];
      ctSubscriptionInfo = [v8 ctSubscriptionInfo];
      v10 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

      if (v10)
      {
        v11 = +[IMCTSubscriptionUtilities sharedInstance];
        v12 = [v11 copyCarrierBundleValueForSubscriptionContext:v10 keyHierarchy:&unk_1F1BFAF10 defaultValue:&unk_1F1BFA730 valueIfError:&unk_1F1BFA748];
        intValue = [v12 intValue];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *v16 = 0;
            _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "No context found, returning 0 max slide count", v16, 2u);
          }
        }

        intValue = 0;
      }
    }

    else
    {
      intValue = 0;
    }
  }

  else
  {
    intValue = IMMMSMaximumSlideCount();
  }

  return intValue;
}

- (int)mmsMaximumMessageByteCountForPhoneNumber:(id)number simID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (!IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v16 = IMMMSMaximumMessageByteCount();
    goto LABEL_28;
  }

  if (![(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:numberCopy simID:dCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        *v22 = numberCopy;
        *&v22[8] = 2112;
        *&v22[10] = dCopy;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "MMS is not configured for phone number %@ simID %@", &v21, 0x16u);
      }

      goto LABEL_20;
    }

LABEL_21:
    v16 = 0x100000;
    goto LABEL_28;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if (deviceType != 2)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = 67109120;
        *v22 = 0x100000;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Non iPhone should not have multiple subscriptions! ******** FILE A RADAR **********. Defaulting to %d", &v21, 8u);
      }

LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v10 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v10 ctSubscriptionInfo];
  v12 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

  if (v12)
  {
    v13 = +[IMCTSubscriptionUtilities sharedInstance];
    v14 = [v13 copyCarrierBundleValueForSubscriptionContext:v12 keyHierarchy:&unk_1F1BFAF28 defaultValue:&unk_1F1BFA760 valueIfError:&unk_1F1BFA748];
    intValue = [v14 intValue];

    if (intValue <= 0)
    {
      v16 = 0x100000;
    }

    else
    {
      v16 = intValue;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 67109634;
        *v22 = v16;
        *&v22[4] = 2112;
        *&v22[6] = numberCopy;
        *&v22[14] = 2112;
        *&v22[16] = dCopy;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Settng MaxMessageSize to:%d for phone number: %@ simID %@", &v21, 0x1Cu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = 67109634;
        *v22 = 0x100000;
        *&v22[4] = 2112;
        *&v22[6] = numberCopy;
        *&v22[14] = 2112;
        *&v22[16] = dCopy;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "No context found, returning %d for MaxMessageSize for phone number: %@ simID %@", &v21, 0x1Cu);
      }
    }

    v16 = 0x100000;
  }

LABEL_28:
  return v16;
}

- (BOOL)mmsGroupTextOnlyMessagesSendAsMMSForPhoneNumber:(id)number simID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:numberCopy simID:dCopy])
    {
      mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
      [mEMORY[0x1E699BE70] deviceType];

      v9 = +[IMCTSubscriptionUtilities sharedInstance];
      ctSubscriptionInfo = [v9 ctSubscriptionInfo];
      v11 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

      if (v11)
      {
        CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
        v12 = +[IMCTSubscriptionUtilities sharedInstance];
        v13 = [v12 copyCarrierBundleValueForSubscriptionContext:v11 keyHierarchy:&unk_1F1BFAF40 defaultValue:MEMORY[0x1E695E118] valueIfError:MEMORY[0x1E695E118]];
        bOOLValue = [v13 BOOLValue];

        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = @"NO";
            if (bOOLValue)
            {
              v16 = @"YES";
            }

            v25 = 138412290;
            v26 = v16;
            _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Fetching carrier bundle value for GroupModeEnabled: %@", &v25, 0xCu);
          }
        }

        if ((bOOLValue & 1) == 0)
        {
          v17 = +[IMCTSubscriptionUtilities sharedInstance];
          v18 = [v17 copyCarrierBundleValueForSubscriptionContext:v11 keyHierarchy:&unk_1F1BFAF58 defaultValue:MEMORY[0x1E695E110] valueIfError:MEMORY[0x1E695E110]];
          bOOLValue2 = [v18 BOOLValue];

          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = @"NO";
              if (bOOLValue2)
              {
                v21 = @"YES";
              }

              v25 = 138412290;
              v26 = v21;
              _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "GroupMode disabled, fetching carrier bundle value for GroupModeAllowUserOverride: %@", &v25, 0xCu);
            }
          }

          goto LABEL_28;
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = 138412802;
          v26 = numberCopy;
          v27 = 2112;
          v28 = dCopy;
          v29 = 2112;
          v30 = @"YES";
          _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Could not find group mode enabled value because no context was found for phone number %@ simID %@. Defaulting to %@", &v25, 0x20u);
        }
      }

      LOBYTE(bOOLValue2) = 1;
LABEL_28:

      goto LABEL_29;
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = 138412546;
        v26 = numberCopy;
        v27 = 2112;
        v28 = dCopy;
        _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "MMS is not configured for phone number %@ simID %@", &v25, 0x16u);
      }
    }

    LOBYTE(bOOLValue2) = 0;
  }

  else
  {
    LOBYTE(bOOLValue2) = 1;
  }

LABEL_29:

  return bOOLValue2;
}

- (BOOL)mmsGroupTextReplicationSupportedForPhoneNumber:(id)number simID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if ([(IMCTSMSUtilitiesManager *)self mmsGroupTextOnlyMessagesSendAsMMSForPhoneNumber:numberCopy simID:dCopy])
  {
    if (IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      v8 = +[IMCTSubscriptionUtilities sharedInstance];
      ctSubscriptionInfo = [v8 ctSubscriptionInfo];
      v10 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

      if (v10)
      {
        v11 = +[IMCTSubscriptionUtilities sharedInstance];
        v12 = [v11 copyCarrierBundleValueForSubscriptionContext:v10 keyHierarchy:&unk_1F1BFAF70 defaultValue:MEMORY[0x1E695E118] valueIfError:MEMORY[0x1E695E118]];
        bOOLValue = [v12 BOOLValue];

        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = @"NO";
            v19 = 138412802;
            v20 = numberCopy;
            v21 = 2112;
            if (bOOLValue)
            {
              v15 = @"YES";
            }

            v22 = dCopy;
            v23 = 2112;
            v24 = v15;
            _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Hybrid groups enabled by carrier for %@ %@: %@", &v19, 0x20u);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v19 = 138412802;
            v20 = numberCopy;
            v21 = 2112;
            v22 = dCopy;
            v23 = 2112;
            v24 = @"YES";
            _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Could not find group replication enabled value because no context was found for phone number %@ simID %@. Defaulting to %@", &v19, 0x20u);
          }
        }

        LOBYTE(bOOLValue) = 1;
      }
    }

    else
    {
      LOBYTE(bOOLValue) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = "[IMCTSMSUtilitiesManager mmsGroupTextReplicationSupportedForPhoneNumber:simID:]";
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Group MMS not enabled, returning NO for %s", &v19, 0xCu);
      }
    }

    LOBYTE(bOOLValue) = 0;
  }

  return bOOLValue;
}

- (BOOL)mmsGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:(id)number simID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  v7 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v8 = [v7 objectForKey:@"disable-hybrid-smil-content-location"];
  v9 = v8;
  if (v8 && [v8 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "SMIL content location hybrid support disabled via IDSServerBag", &v21, 2u);
      }
    }

    LOBYTE(bOOLValue) = 0;
  }

  else if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v12 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo = [v12 ctSubscriptionInfo];
    v14 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

    if (v14)
    {
      v15 = +[IMCTSubscriptionUtilities sharedInstance];
      v16 = [v15 copyCarrierBundleValueForSubscriptionContext:v14 keyHierarchy:&unk_1F1BFAF88 defaultValue:MEMORY[0x1E695E118] valueIfError:MEMORY[0x1E695E118]];
      bOOLValue = [v16 BOOLValue];

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = @"NO";
          v21 = 138412802;
          v22 = numberCopy;
          v23 = 2112;
          if (bOOLValue)
          {
            v18 = @"YES";
          }

          v24 = dCopy;
          v25 = 2112;
          v26 = v18;
          _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "SMIL content location supports Apple message identifier for %@ %@: %@", &v21, 0x20u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = 138412802;
          v22 = numberCopy;
          v23 = 2112;
          v24 = dCopy;
          v25 = 2112;
          v26 = @"YES";
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Could not find whether SMIL content location supports Apple message identifiers because no context was found for phone number %@ simID %@. Defaulting to %@", &v21, 0x20u);
        }
      }

      LOBYTE(bOOLValue) = 1;
    }
  }

  else
  {
    LOBYTE(bOOLValue) = 1;
  }

  return bOOLValue;
}

- (int)mmsMaxRecipientsForPhoneNumber:(id)number simID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:numberCopy simID:dCopy])
    {
      v8 = +[IMCTSubscriptionUtilities sharedInstance];
      ctSubscriptionInfo = [v8 ctSubscriptionInfo];
      v10 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

      if (v10)
      {
        v11 = +[IMCTSubscriptionUtilities sharedInstance];
        v12 = [v11 copyCarrierBundleValueForSubscriptionContext:v10 keyHierarchy:&unk_1F1BFAFA0 defaultValue:&unk_1F1BFA730 valueIfError:&unk_1F1BFA730];
        intValue = [v12 intValue];

        if (intValue >= 1)
        {
          if (intValue <= 0xA)
          {
            v14 = 10;
          }

          else
          {
            v14 = intValue;
          }

          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v18[0] = 67109376;
              v18[1] = v14;
              v19 = 1024;
              v20 = intValue;
              _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Setting  maxNumberOfRecipents to %d, maxValue from Dictionary was %d", v18, 0xEu);
            }
          }

          goto LABEL_19;
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18[0]) = 0;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Subscription context was nil, returning 0 for max recipients for phone number", v18, 2u);
        }
      }

      v14 = 0x7FFFFFFF;
LABEL_19:

      goto LABEL_20;
    }

    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = IMMMSMaxRecipients();
  }

LABEL_20:

  return v14;
}

- (int)mmsMaxImageDimensionForPhoneNumber:(id)number simID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:numberCopy simID:dCopy])
    {
      v8 = +[IMCTSubscriptionUtilities sharedInstance];
      ctSubscriptionInfo = [v8 ctSubscriptionInfo];
      v10 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

      if (v10)
      {
        v11 = +[IMCTSubscriptionUtilities sharedInstance];
        v12 = [v11 copyCarrierBundleValueForSubscriptionContext:v10 keyHierarchy:&unk_1F1BFAFB8 defaultValue:&unk_1F1BFA730 valueIfError:&unk_1F1BFA730];
        intValue = [v12 intValue];

        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v17 = 67109634;
            v18 = intValue;
            v19 = 2112;
            v20 = numberCopy;
            v21 = 2112;
            v22 = dCopy;
            _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Setting MaxImageDimension to %d, for phone number %@ simID %@", &v17, 0x1Cu);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v17 = 67109120;
            v18 = 0x7FFFFFFF;
            _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Subscription context was nil, returning %d for max image dimension", &v17, 8u);
          }
        }

        intValue = 0x7FFFFFFF;
      }
    }

    else
    {
      intValue = 0x7FFFFFFF;
    }
  }

  else
  {
    intValue = IMMMSMaxImageDimension();
  }

  return intValue;
}

- (BOOL)mmsSupportsH264VideoForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:numberCopy simID:dCopy])
    {
      v8 = +[IMCTSubscriptionUtilities sharedInstance];
      ctSubscriptionInfo = [v8 ctSubscriptionInfo];
      v10 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

      if (v10)
      {
        v11 = +[IMCTSubscriptionUtilities sharedInstance];
        v12 = [v11 copyCarrierBundleValueForSubscriptionContext:v10 keyHierarchy:&unk_1F1BFAFD0 defaultValue:MEMORY[0x1E695E110] valueIfError:MEMORY[0x1E695E110]];
        intValue = [v12 intValue];

        v14 = intValue > 0;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *v17 = 0;
            _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Subscription context was nil, returning NO for SupportsH264Video.", v17, 2u);
          }
        }

        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = IMMMSSupportsH264Video();
  }

  return v14;
}

- (double)mmsMaximumAudioDurationForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if (qword_1EB30B498 != -1)
    {
      sub_1A88C5304();
    }

    [(IMCTSMSUtilitiesManager *)self mmsMaximumDurationWithPreset:qword_1EB30B4A0 phoneNumber:numberCopy simID:dCopy];
  }

  else
  {
    if (qword_1EB30B4A8 != -1)
    {
      sub_1A88C52F0();
    }

    v8 = sub_1A86D7710(qword_1EB30B4B0);
  }

  v9 = v8;

  return v9;
}

- (double)mmsMaximumVideoDurationForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if (qword_1EB30B4B8 != -1)
    {
      sub_1A88C5354();
    }

    [(IMCTSMSUtilitiesManager *)self mmsMaximumDurationWithPreset:qword_1EB30B4C0 phoneNumber:numberCopy simID:dCopy];
  }

  else
  {
    if (qword_1EB30B4C8 != -1)
    {
      sub_1A88C5340();
    }

    v8 = sub_1A86D7710(qword_1EB30B4D0);
  }

  v9 = v8;

  return v9;
}

- (double)mmsMaximumDurationWithPreset:(id)preset phoneNumber:(id)number simID:(id)d
{
  presetCopy = preset;
  numberCopy = number;
  dCopy = d;
  if (presetCopy)
  {
    if (qword_1EB30B4E0 != -1)
    {
      sub_1A88C5368();
    }

    if (qword_1EB30B4F0 != -1)
    {
      sub_1A88C537C();
    }

    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{-[IMCTSMSUtilitiesManager mmsMaximumMessageByteCountForPhoneNumber:simID:](self, "mmsMaximumMessageByteCountForPhoneNumber:simID:", numberCopy, dCopy)}];
    v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v11, @"fileLengthLimit", 0}];
    v17 = 0uLL;
    v18 = 0;
    if (qword_1EB30B4D8)
    {
      [qword_1EB30B4D8 maximumDurationForPreset:presetCopy properties:v12];
    }

    v15 = v17;
    v16 = v18;
    v13 = off_1EB30B4E8(&v15);
  }

  else
  {
    v13 = INFINITY;
  }

  return v13;
}

- (void)iMessageMaxTransferFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  phoneNumberCopy = phoneNumber;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v15 = [bagCopy objectForKey:@"att-wifi-max-file-size"];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    v17 = [bagCopy objectForKey:@"att-cellular-max-file-size"];
    unsignedIntegerValue2 = [v17 unsignedIntegerValue];

    if (!unsignedIntegerValue)
    {
      unsignedIntegerValue = 10485760;
    }

    if (unsignedIntegerValue2)
    {
      v19 = unsignedIntegerValue2;
    }

    else
    {
      v19 = 0x400000;
    }

    if (number)
    {
      if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:phoneNumberCopy simID:dCopy])
      {
        v20 = [(IMCTSMSUtilitiesManager *)self mmsMaximumMessageByteCountForPhoneNumber:phoneNumberCopy simID:dCopy];
        if (unsignedIntegerValue <= v20)
        {
          unsignedIntegerValue = v20;
        }
      }

      *number = unsignedIntegerValue;
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = *number;
          v25 = 134217984;
          v26 = v22;
          _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Returning carrier bundle value %tu for key IMiMessageMaxTransferFileSizeForWifiForPhoneNumber", &v25, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "No wifiSize pointer provided for IMiMessageMaxTransferFileSizeForWifiForPhoneNumber", &v25, 2u);
      }
    }

    if (size)
    {
      if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:phoneNumberCopy simID:dCopy])
      {
        v24 = [(IMCTSMSUtilitiesManager *)self mmsMaximumMessageByteCountForPhoneNumber:phoneNumberCopy simID:dCopy];
        if (v19 > v24)
        {
          v24 = v19;
        }

        *size = v24;
      }

      else
      {
        *size = v19;
      }
    }
  }

  else
  {
    IMiMessageMaxTransferFileSizeForWifi();
  }
}

- (unint64_t)iMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  phoneNumberCopy = phoneNumber;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v15 = [bagCopy objectForKey:@"att-wifi-audio-max-file-size"];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    v17 = [bagCopy objectForKey:@"att-wifi-audio-cellular-file-size"];
    unsignedIntegerValue2 = [v17 unsignedIntegerValue];

    if (!unsignedIntegerValue)
    {
      unsignedIntegerValue = 10485760;
    }

    if (!unsignedIntegerValue2)
    {
      unsignedIntegerValue2 = 0x400000;
    }

    if (number)
    {
      *number = unsignedIntegerValue;
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *number;
          v24 = 134217984;
          v25 = v20;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Returning carrier bundle value %tu for key IMiMessageMaxTransferAudioFileSizeForWifiForPhoneNumber", &v24, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "No wifiSize pointer provided for IMiMessageMaxTransferAudioFileSizeForWifiForPhoneNumber", &v24, 2u);
      }
    }

    if (size)
    {
      if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:phoneNumberCopy simID:dCopy])
      {
        v22 = [(IMCTSMSUtilitiesManager *)self mmsMaximumMessageByteCountForPhoneNumber:phoneNumberCopy simID:dCopy];
        if (unsignedIntegerValue2 > v22)
        {
          v22 = unsignedIntegerValue2;
        }

        *size = v22;
      }

      else
      {
        *size = unsignedIntegerValue2;
      }
    }
  }

  else
  {
    unsignedIntegerValue = IMiMessageMaxTransferAudioFileSizeForWifi();
  }

  return unsignedIntegerValue;
}

- (unint64_t)iMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  phoneNumberCopy = phoneNumber;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v15 = [bagCopy objectForKey:@"att-wifi-video-max-file-size"];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    v17 = [bagCopy objectForKey:@"att-wifi-video-cellular-file-size"];
    unsignedIntegerValue2 = [v17 unsignedIntegerValue];

    if (!unsignedIntegerValue)
    {
      unsignedIntegerValue = 10485760;
    }

    if (!unsignedIntegerValue2)
    {
      unsignedIntegerValue2 = 0x400000;
    }

    if (number)
    {
      *number = unsignedIntegerValue;
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *number;
          v24 = 134217984;
          v25 = v20;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Returning carrier bundle value %tu for key IMiMessageMaxTransferVideoFileSizeForWifiForPhoneNumber", &v24, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "No wifiSize pointer provided for IMiMessageMaxTransferVideoFileSizeForWifiForPhoneNumber", &v24, 2u);
      }
    }

    if (size)
    {
      if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:phoneNumberCopy simID:dCopy])
      {
        v22 = [(IMCTSMSUtilitiesManager *)self mmsMaximumMessageByteCountForPhoneNumber:phoneNumberCopy simID:dCopy];
        if (unsignedIntegerValue2 > v22)
        {
          v22 = unsignedIntegerValue2;
        }

        *size = v22;
      }

      else
      {
        *size = unsignedIntegerValue2;
      }
    }
  }

  else
  {
    unsignedIntegerValue = IMiMessageMaxTransferAudioFileSizeForWifi();
  }

  return unsignedIntegerValue;
}

- (id)mmsEmailAddressToMatchForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if ([(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:numberCopy simID:dCopy])
    {
      v8 = +[IMCTSubscriptionUtilities sharedInstance];
      ctSubscriptionInfo = [v8 ctSubscriptionInfo];
      v10 = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];

      if (v10 && (+[IMCTSubscriptionUtilities sharedInstance](IMCTSubscriptionUtilities, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 copyCarrierBundleValueForSubscriptionContext:v10 keyHierarchy:&unk_1F1BFAFE8 defaultValue:MEMORY[0x1E695E110] valueIfError:MEMORY[0x1E695E110]], v13 = objc_msgSend(v12, "BOOLValue"), v12, v11, v13))
      {
        v14 = CFPreferencesCopyAppValue(@"MMSEmailAddress", @"com.apple.MobileSMS");
        if (qword_1EB30B4F8 != -1)
        {
          sub_1A88C5390();
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = IMMMSEmailAddressToMatch();
  }

  return v14;
}

- (BOOL)shouldShowMMSEmailAddress:(id)address simID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  dCopy = d;
  SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();
  v8 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v8 ctSubscriptionInfo];
  ctSubscriptionInfo2 = ctSubscriptionInfo;
  if (SimDetailsFromTelephony)
  {
    firstObject = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:addressCopy];
  }

  else
  {
    subscriptions = [ctSubscriptionInfo subscriptions];
    v13 = [subscriptions count];

    if (v13 != 1)
    {
      firstObject = 0;
      goto LABEL_8;
    }

    v8 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo2 = [v8 ctSubscriptionInfo];
    subscriptions2 = [ctSubscriptionInfo2 subscriptions];
    firstObject = [subscriptions2 firstObject];
  }

  if (firstObject)
  {
    v15 = +[IMCTSubscriptionUtilities sharedInstance];
    v16 = [v15 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:&unk_1F1BFB000 defaultValue:MEMORY[0x1E695E110] valueIfError:MEMORY[0x1E695E110]];
    bOOLValue = [v16 BOOLValue];

    v18 = @"YES";
    goto LABEL_9;
  }

LABEL_8:
  bOOLValue = 0;
  v18 = @"NO";
LABEL_9:
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      if (bOOLValue)
      {
        v20 = @"YES";
      }

      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Did find context: %@, showMMSEmailAddress: %@", &v22, 0x16u);
    }
  }

  return bOOLValue;
}

- (BOOL)isEagerUploadEnabledForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  v8 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v9 = [v8 objectForKey:@"disable-eager-upload"];
  v10 = v9;
  if (v9 && [v9 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v22 = 0;
        v12 = "Eager upload disabled in IDSServerBag";
        v13 = &v22;
LABEL_17:
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall && (IMGetCachedDomainBoolForKeyWithDefaultValue() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v12 = "Eager upload disabled in defaults com.apple.imessage";
        v13 = buf;
        goto LABEL_17;
      }

LABEL_18:
    }

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  v16 = [(IMCTSMSUtilitiesManager *)self mmsEagerUploadDisabledInCarrierBundleForPhoneNumber:numberCopy simID:dCopy];
  if (v16 && IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Eager upload disabled in Carrier Bundle", v20, 2u);
    }
  }

  v18 = !v16;
LABEL_20:

  return v18;
}

- (BOOL)mmsEagerUploadDisabledInCarrierBundleForPhoneNumber:(id)number simID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();
  v8 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v8 ctSubscriptionInfo];
  ctSubscriptionInfo2 = ctSubscriptionInfo;
  if (SimDetailsFromTelephony)
  {
    firstObject = [ctSubscriptionInfo __im_subscriptionContextOrDefaultForForSimID:dCopy phoneNumber:numberCopy];
  }

  else
  {
    subscriptions = [ctSubscriptionInfo subscriptions];
    v13 = [subscriptions count];

    if (v13 != 1)
    {
      firstObject = 0;
      goto LABEL_8;
    }

    v8 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo2 = [v8 ctSubscriptionInfo];
    subscriptions2 = [ctSubscriptionInfo2 subscriptions];
    firstObject = [subscriptions2 firstObject];
  }

  if (firstObject)
  {
    v15 = +[IMCTSubscriptionUtilities sharedInstance];
    v16 = [v15 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:&unk_1F1BFB018 defaultValue:MEMORY[0x1E695E110] valueIfError:MEMORY[0x1E695E110]];
    bOOLValue = [v16 BOOLValue];

    v18 = @"NO";
    goto LABEL_9;
  }

LABEL_8:
  bOOLValue = 0;
  v18 = @"YES";
LABEL_9:
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      if (bOOLValue)
      {
        v20 = @"YES";
      }

      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Did find context: %@, DisableEagerUpload: %@", &v22, 0x16u);
    }
  }

  return bOOLValue;
}

- (BOOL)mmsRestrictedModeEnabledForPhoneNumber:(id)number simID:(id)d reset:(BOOL)reset
{
  resetCopy = reset;
  numberCopy = number;
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v10 = [(IMCTSMSUtilitiesManager *)self uniqueIdentifierForPhoneNumber:numberCopy simID:dCopy];
    if (v10)
    {
      keyExistsAndHasValidFormat = 0;
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"MMSRestricted-", v10];
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v11, @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
      v13 = AppBooleanValue != 0;
      if (AppBooleanValue)
      {
        v14 = !resetCopy;
      }

      else
      {
        v14 = 0;
      }

      if (!v14 && (byte_1EB30B500 & 1) == 0)
      {
        byte_1EB30B500 = 1;
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Now listening for restricted mode changed notifications", buf, 2u);
          }
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1A86D8CD0, @"com.apple.MobileSMS.MMSRestricted.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }
    }

    else
    {
      v13 = IMMMSRestrictedModeEnabled();
    }
  }

  else
  {
    v13 = IMMMSRestrictedModeEnabled();
  }

  return v13;
}

- (void)synchronizeMMSCapabilityToWatch:(BOOL)watch
{
  watchCopy = watch;
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED8C9948 && ([MEMORY[0x1E695DF00] date], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "timeIntervalSinceDate:", qword_1ED8C9948), v6 = v5, v4, v6 <= 300.0) && (keyExistsAndHasValidFormat = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MMSRelayEnabled", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat == 1) && (AppBooleanValue != 0) == watchCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (AppBooleanValue)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        if (watchCopy)
        {
          v9 = @"YES";
        }

        *buf = 138412546;
        v21 = v10;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Not setting MMSEnabled from %@ to %@, skipping sync", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = MEMORY[0x1AC570AA0](@"NPSManager", @"NanoPreferencesSync");
    if (v11)
    {
      v12 = objc_alloc_init(v11);
      CFPreferencesSetAppValue(@"MMSRelayEnabled", [MEMORY[0x1E696AD98] numberWithBool:watchCopy], @"com.apple.MobileSMS");
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = @"NO";
          if (watchCopy)
          {
            v14 = @"YES";
          }

          *buf = 138412290;
          v21 = v14;
          _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Setting MMSEnabled Nano Preference to: %@", buf, 0xCu);
        }
      }

      CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      v15 = [MEMORY[0x1E695DFD8] setWithObject:@"MMSRelayEnabled"];
      [v12 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v15];

      date = [MEMORY[0x1E695DF00] date];
      v17 = qword_1ED8C9948;
      qword_1ED8C9948 = date;
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Could not weak link ____NPSManagerClass in _synchronizeMMSCapabilityToWatch", buf, 2u);
      }
    }
  }
}

- (void)synchronizePreferredSubscriptionMMSCapabilityToWatch
{
  v3 = [(IMCTSMSUtilitiesManager *)self mmsEnabledForPhoneNumber:0 simID:0];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    [(IMCTSMSUtilitiesManager *)self synchronizeMMSCapabilityToWatch:v3];
  }

  notify_set_state([(IMCTSMSUtilitiesManager *)self mmsEnabledToken], v3);

  notify_post("kMMSEnabledDidChange");
}

- (id)countryCodeForSimSlot:(int64_t)slot
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v4 ctSubscriptionInfo];
  v6 = [ctSubscriptionInfo __im_subscriptionContextForForSlotID:slot];

  if (v6)
  {
    v7 = +[IMCTSubscriptionUtilities sharedInstance];
    v8 = [v7 copyIsoCountryCodeForSubscriptionContext:v6];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        slotCopy = slot;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Could not find subscription context for slot %ld", &v11, 0xCu);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)countryCodeForPhoneNumber:(id)number simID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  v7 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v7 ctSubscriptionInfo];
  v9 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];

  if (v9)
  {
    v10 = +[IMCTSubscriptionUtilities sharedInstance];
    v11 = [v10 copyIsoCountryCodeForSubscriptionContext:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = numberCopy;
        v16 = 2112;
        v17 = dCopy;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Could not find subscription context for phone number %@ and sim ID %@", &v14, 0x16u);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)messagesFilteringSettingForPreferedSubscription
{
  v21 = *MEMORY[0x1E69E9840];
  SimDetailsFromTelephony = IMSharedHelperRetrieveSimDetailsFromTelephony();
  v3 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v3 ctSubscriptionInfo];
  ctSubscriptionInfo2 = ctSubscriptionInfo;
  if (SimDetailsFromTelephony)
  {
    preferredOrDefaultSubscriptionContext = [ctSubscriptionInfo preferredOrDefaultSubscriptionContext];
  }

  else
  {
    subscriptions = [ctSubscriptionInfo subscriptions];
    v8 = [subscriptions count];

    if (v8 != 1)
    {
      preferredOrDefaultSubscriptionContext = 0;
      goto LABEL_8;
    }

    v3 = +[IMCTSubscriptionUtilities sharedInstance];
    ctSubscriptionInfo2 = [v3 ctSubscriptionInfo];
    subscriptions2 = [ctSubscriptionInfo2 subscriptions];
    preferredOrDefaultSubscriptionContext = [subscriptions2 firstObject];
  }

  if (preferredOrDefaultSubscriptionContext)
  {
    v10 = +[IMCTSubscriptionUtilities sharedInstance];
    v11 = [v10 copyCarrierBundleValueForSubscriptionContext:preferredOrDefaultSubscriptionContext keyHierarchy:&unk_1F1BFB030 defaultValue:MEMORY[0x1E695E118] valueIfError:MEMORY[0x1E695E110]];
    v12 = [v11 intValue] != 0;

    v13 = @"YES";
    goto LABEL_9;
  }

LABEL_8:
  v12 = 0;
  v13 = @"NO";
LABEL_9:
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"NO";
      if (v12)
      {
        v15 = @"YES";
      }

      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Did find context: %@. filteringEnabled: %@", &v17, 0x16u);
    }
  }

  return v12;
}

- (id)carrierBundleValueForKeyHierarchy:(id)hierarchy phoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  hierarchyCopy = hierarchy;
  v10 = +[IMCTSubscriptionUtilities sharedInstance];
  ctSubscriptionInfo = [v10 ctSubscriptionInfo];
  v12 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];

  v13 = +[IMCTSubscriptionUtilities sharedInstance];
  v14 = [v13 copyCarrierBundleValueForSubscriptionContext:v12 keyHierarchy:hierarchyCopy defaultValue:0 valueIfError:0];

  return v14;
}

- (id)carrierNameForPhoneNumber:(id)number
{
  v12 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (MEMORY[0x1AC570A50]())
  {
    v5 = [(IMCTSMSUtilitiesManager *)self carrierBundleValueForKeyHierarchy:&unk_1F1BFB048 phoneNumber:numberCopy simID:0];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = 138412546;
          v9 = numberCopy;
          v10 = 2112;
          v11 = v5;
          _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Error getting carrier name for phone number - %@. Carrier Bundle Object -> %@", &v8, 0x16u);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)smsAllowCaseSensitiveSenderIDForPhoneNumber:(id)number
{
  v17 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v5 = [(IMCTSMSUtilitiesManager *)self carrierBundleValueForKeyHierarchy:&unk_1F1BFB060 phoneNumber:numberCopy simID:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKeyedSubscript:@"AllowCasesensitiveSenderID"];
    v7 = v6;
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = @"NO";
        if (bOOLValue)
        {
          v11 = @"YES";
        }

        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "AllowCasesensitiveSenderID provided by carrier is -> %@.\n", &v13, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = &unk_1F1BFB060;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nPhoneNumber -> %@", &v13, 0x16u);
      }
    }

    LOBYTE(bOOLValue) = 1;
  }

  return bOOLValue;
}

- (BOOL)shouldUploadToMMCS:(id)s
{
  v27 = *MEMORY[0x1E69E9840];
  sCopy = s;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Checking to See if we should upload to MMCS", buf, 2u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = sCopy;
  v5 = [sCopy objectForKey:@"k"];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (!v6)
  {
    v18 = 0;
    goto LABEL_29;
  }

  v7 = 0;
  v8 = *v22;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * i);
      v11 = [v10 objectForKey:@"type"];
      v12 = [v11 isEqualToString:@"text/plain"];

      if (v12)
      {
        if (!IMOSLoggingEnabled())
        {
          continue;
        }

        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Found A Text Part thats OK", buf, 2u);
        }

        goto LABEL_14;
      }

      v14 = [v10 objectForKey:@"type"];
      v15 = [v14 isEqualToString:@"application/smil"];

      v16 = IMOSLoggingEnabled();
      if (v15)
      {
        if (v16)
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Found SMIL data.. thats OK ", buf, 2u);
          }

LABEL_14:

          continue;
        }
      }

      else
      {
        if (v16)
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Found Something else that wasnt there, looks like we need to upload this one to MMCS", buf, 2u);
          }
        }

        ++v7;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  }

  while (v6);
  v18 = v7 > 0;
LABEL_29:

  return v18;
}

- (id)myCTPhoneNumber
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v2 = +[IMCTSubscriptionUtilities sharedInstance];
    ctPhoneNumber = [v2 ctPhoneNumber];

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = ctPhoneNumber;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "My CT Phone Number from subscription context is: %@", &v10, 0xCu);
    }
  }

  else
  {
    mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
    telephoneNumber = [mEMORY[0x1E699BE70] telephoneNumber];

    if (telephoneNumber)
    {
      mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
      ctPhoneNumber = [mEMORY[0x1E699BE70]2 telephoneNumber];
    }

    else
    {
      ctPhoneNumber = 0;
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = ctPhoneNumber;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "My CT Phone Number from FTDevice is: %@", &v10, 0xCu);
    }
  }

LABEL_13:
  v8 = IMNormalizePhoneNumber(ctPhoneNumber);

  return v8;
}

@end