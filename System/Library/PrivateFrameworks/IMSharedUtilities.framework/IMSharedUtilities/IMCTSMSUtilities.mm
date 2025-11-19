@interface IMCTSMSUtilities
+ (BOOL)IMIsEagerUploadEnabledForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMMSEagerUploadDisabledInCarrierBundleForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMMSEnabledForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMMSGroupTextReplicationSupportedForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMMSGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMMSRestrictedModeEnabledForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMMSSupportedAndConfiguredForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMMSSupportsH264VideoForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMMessagesFilteringSettingForPreferedSubscription;
+ (BOOL)IMReadDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMReadDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMReadMMSUserOverrideForPhoneNumber:(id)a3 simID:(id)a4;
+ (BOOL)IMShouldShowMMSEmailAddress:(id)a3 simID:(id)a4;
+ (BOOL)SMSAllowCaseSensitiveSenderIDForPhoneNumber:(id)a3;
+ (BOOL)isMessagesTheDefaultTextApp;
+ (BOOL)shouldUploadToMMCS:(id)a3;
+ (double)IMMMSMaximumAudioDurationForPhoneNumber:(id)a3 simID:(id)a4;
+ (double)IMMMSMaximumVideoDurationForPhoneNumber:(id)a3 simID:(id)a4;
+ (id)IMCountryCodeForPhoneNumber:(id)a3 simID:(id)a4;
+ (id)IMCountryCodeForSimSlot:(int64_t)a3;
+ (id)IMMMSEmailAddressToMatchForPhoneNumber:(id)a3 simID:(id)a4;
+ (id)IMPhoneNumbersEnabledForMultipleSubscriptionDevice;
+ (id)IMUniqueIdentifierForPhoneNumber:(id)a3 simID:(id)a4;
+ (id)carrierBundleValueForKeyHierarchy:(id)a3 phoneNumber:(id)a4 simID:(id)a5;
+ (id)carrierNameForPhoneNumber:(id)a3;
+ (id)myCTPhoneNumber;
+ (int)IMMMSMaxImageDimensionForPhoneNumber:(id)a3 simID:(id)a4;
+ (int)IMMMSMaxRecipientsForPhoneNumber:(id)a3 simID:(id)a4;
+ (int)IMMMSMaximumMessageByteCountForPhoneNumber:(id)a3 simID:(id)a4;
+ (int)IMMMSMaximumSlideCountForPhoneNumber:(id)a3 simID:(id)a4;
+ (unint64_t)IMReadAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:(id)a3 simID:(id)a4;
+ (unint64_t)IMiMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:(unint64_t *)a3 cellSize:(unint64_t *)a4 serverConfigurationBag:(id)a5 phoneNumber:(id)a6 simID:(id)a7;
+ (unint64_t)IMiMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:(unint64_t *)a3 cellSize:(unint64_t *)a4 serverConfigurationBag:(id)a5 phoneNumber:(id)a6 simID:(id)a7;
+ (void)IMSynchronizeMMSCapabilityToWatch:(BOOL)a3;
+ (void)IMSynchronizePreferredSubscriptionMMSCapabilityToWatch;
+ (void)IMiMessageMaxTransferFileSizeForWifiForPhoneNumber:(unint64_t *)a3 cellSize:(unint64_t *)a4 serverConfigurationBag:(id)a5 phoneNumber:(id)a6 simID:(id)a7;
@end

@implementation IMCTSMSUtilities

+ (BOOL)isMessagesTheDefaultTextApp
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  v3 = [v2 isMessagesTheDefaultTextApp];

  return v3;
}

+ (id)IMUniqueIdentifierForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 uniqueIdentifierForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMReadMMSUserOverrideForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readMMSUserOverrideForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (id)IMPhoneNumbersEnabledForMultipleSubscriptionDevice
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  v3 = [v2 phoneNumbersEnabledForMultipleSubscriptionDevice];

  return v3;
}

+ (BOOL)IMMMSEnabledForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsEnabledForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMReadDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMReadDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMMMSSupportedAndConfiguredForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsSupportedAndConfiguredForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (unint64_t)IMReadAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (int)IMMMSMaximumSlideCountForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsMaximumSlideCountForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (int)IMMMSMaximumMessageByteCountForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsMaximumMessageByteCountForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsGroupTextOnlyMessagesSendAsMMSForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMMMSGroupTextReplicationSupportedForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsGroupTextReplicationSupportedForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMMMSGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (int)IMMMSMaxRecipientsForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsMaxRecipientsForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (int)IMMMSMaxImageDimensionForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsMaxImageDimensionForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMMMSSupportsH264VideoForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsSupportsH264VideoForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (double)IMMMSMaximumAudioDurationForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  [v7 mmsMaximumAudioDurationForPhoneNumber:v6 simID:v5];
  v9 = v8;

  return v9;
}

+ (double)IMMMSMaximumVideoDurationForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  [v7 mmsMaximumVideoDurationForPhoneNumber:v6 simID:v5];
  v9 = v8;

  return v9;
}

+ (void)IMiMessageMaxTransferFileSizeForWifiForPhoneNumber:(unint64_t *)a3 cellSize:(unint64_t *)a4 serverConfigurationBag:(id)a5 phoneNumber:(id)a6 simID:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = +[IMCTSMSUtilitiesManager sharedManager];
  [v14 iMessageMaxTransferFileSizeForWifiForPhoneNumber:a3 cellSize:a4 serverConfigurationBag:v13 phoneNumber:v12 simID:v11];
}

+ (unint64_t)IMiMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:(unint64_t *)a3 cellSize:(unint64_t *)a4 serverConfigurationBag:(id)a5 phoneNumber:(id)a6 simID:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = +[IMCTSMSUtilitiesManager sharedManager];
  v15 = [v14 iMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:a3 cellSize:a4 serverConfigurationBag:v13 phoneNumber:v12 simID:v11];

  return v15;
}

+ (unint64_t)IMiMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:(unint64_t *)a3 cellSize:(unint64_t *)a4 serverConfigurationBag:(id)a5 phoneNumber:(id)a6 simID:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = +[IMCTSMSUtilitiesManager sharedManager];
  v15 = [v14 iMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:a3 cellSize:a4 serverConfigurationBag:v13 phoneNumber:v12 simID:v11];

  return v15;
}

+ (id)IMMMSEmailAddressToMatchForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsEmailAddressToMatchForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMShouldShowMMSEmailAddress:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 shouldShowMMSEmailAddress:v6 simID:v5];

  return v8;
}

+ (BOOL)IMIsEagerUploadEnabledForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 isEagerUploadEnabledForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMMMSEagerUploadDisabledInCarrierBundleForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsEagerUploadDisabledInCarrierBundleForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMMMSRestrictedModeEnabledForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsRestrictedModeEnabledForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (void)IMSynchronizeMMSCapabilityToWatch:(BOOL)a3
{
  v3 = a3;
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  [v4 synchronizeMMSCapabilityToWatch:v3];
}

+ (void)IMSynchronizePreferredSubscriptionMMSCapabilityToWatch
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  [v2 synchronizePreferredSubscriptionMMSCapabilityToWatch];
}

+ (id)IMCountryCodeForSimSlot:(int64_t)a3
{
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  v5 = [v4 countryCodeForSimSlot:a3];

  return v5;
}

+ (id)IMCountryCodeForPhoneNumber:(id)a3 simID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 countryCodeForPhoneNumber:v6 simID:v5];

  return v8;
}

+ (BOOL)IMMessagesFilteringSettingForPreferedSubscription
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  v3 = [v2 messagesFilteringSettingForPreferedSubscription];

  return v3;
}

+ (id)carrierBundleValueForKeyHierarchy:(id)a3 phoneNumber:(id)a4 simID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[IMCTSMSUtilitiesManager sharedManager];
  v11 = [v10 carrierBundleValueForKeyHierarchy:v9 phoneNumber:v8 simID:v7];

  return v11;
}

+ (id)carrierNameForPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  v5 = [v4 carrierNameForPhoneNumber:v3];

  return v5;
}

+ (BOOL)SMSAllowCaseSensitiveSenderIDForPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  v5 = [v4 smsAllowCaseSensitiveSenderIDForPhoneNumber:v3];

  return v5;
}

+ (BOOL)shouldUploadToMMCS:(id)a3
{
  v3 = a3;
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  v5 = [v4 shouldUploadToMMCS:v3];

  return v5;
}

+ (id)myCTPhoneNumber
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  v3 = [v2 myCTPhoneNumber];

  return v3;
}

@end