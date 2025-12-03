@interface IMCTSMSUtilities
+ (BOOL)IMIsEagerUploadEnabledForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMMSEagerUploadDisabledInCarrierBundleForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMMSEnabledForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMMSGroupTextReplicationSupportedForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMMSGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMMSRestrictedModeEnabledForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMMSSupportedAndConfiguredForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMMSSupportsH264VideoForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMMessagesFilteringSettingForPreferedSubscription;
+ (BOOL)IMReadDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMReadDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMReadMMSUserOverrideForPhoneNumber:(id)number simID:(id)d;
+ (BOOL)IMShouldShowMMSEmailAddress:(id)address simID:(id)d;
+ (BOOL)SMSAllowCaseSensitiveSenderIDForPhoneNumber:(id)number;
+ (BOOL)isMessagesTheDefaultTextApp;
+ (BOOL)shouldUploadToMMCS:(id)s;
+ (double)IMMMSMaximumAudioDurationForPhoneNumber:(id)number simID:(id)d;
+ (double)IMMMSMaximumVideoDurationForPhoneNumber:(id)number simID:(id)d;
+ (id)IMCountryCodeForPhoneNumber:(id)number simID:(id)d;
+ (id)IMCountryCodeForSimSlot:(int64_t)slot;
+ (id)IMMMSEmailAddressToMatchForPhoneNumber:(id)number simID:(id)d;
+ (id)IMPhoneNumbersEnabledForMultipleSubscriptionDevice;
+ (id)IMUniqueIdentifierForPhoneNumber:(id)number simID:(id)d;
+ (id)carrierBundleValueForKeyHierarchy:(id)hierarchy phoneNumber:(id)number simID:(id)d;
+ (id)carrierNameForPhoneNumber:(id)number;
+ (id)myCTPhoneNumber;
+ (int)IMMMSMaxImageDimensionForPhoneNumber:(id)number simID:(id)d;
+ (int)IMMMSMaxRecipientsForPhoneNumber:(id)number simID:(id)d;
+ (int)IMMMSMaximumMessageByteCountForPhoneNumber:(id)number simID:(id)d;
+ (int)IMMMSMaximumSlideCountForPhoneNumber:(id)number simID:(id)d;
+ (unint64_t)IMReadAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:(id)number simID:(id)d;
+ (unint64_t)IMiMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d;
+ (unint64_t)IMiMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d;
+ (void)IMSynchronizeMMSCapabilityToWatch:(BOOL)watch;
+ (void)IMSynchronizePreferredSubscriptionMMSCapabilityToWatch;
+ (void)IMiMessageMaxTransferFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d;
@end

@implementation IMCTSMSUtilities

+ (BOOL)isMessagesTheDefaultTextApp
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  isMessagesTheDefaultTextApp = [v2 isMessagesTheDefaultTextApp];

  return isMessagesTheDefaultTextApp;
}

+ (id)IMUniqueIdentifierForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 uniqueIdentifierForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMReadMMSUserOverrideForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readMMSUserOverrideForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (id)IMPhoneNumbersEnabledForMultipleSubscriptionDevice
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  phoneNumbersEnabledForMultipleSubscriptionDevice = [v2 phoneNumbersEnabledForMultipleSubscriptionDevice];

  return phoneNumbersEnabledForMultipleSubscriptionDevice;
}

+ (BOOL)IMMMSEnabledForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsEnabledForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMReadDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMReadDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMMMSSupportedAndConfiguredForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsSupportedAndConfiguredForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (unint64_t)IMReadAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 readAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (int)IMMMSMaximumSlideCountForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsMaximumSlideCountForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (int)IMMMSMaximumMessageByteCountForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsMaximumMessageByteCountForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsGroupTextOnlyMessagesSendAsMMSForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMMMSGroupTextReplicationSupportedForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsGroupTextReplicationSupportedForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMMMSGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsGroupTextReplicationSupportsSMILContentLocationForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (int)IMMMSMaxRecipientsForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsMaxRecipientsForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (int)IMMMSMaxImageDimensionForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsMaxImageDimensionForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMMMSSupportsH264VideoForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsSupportsH264VideoForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (double)IMMMSMaximumAudioDurationForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  [v7 mmsMaximumAudioDurationForPhoneNumber:numberCopy simID:dCopy];
  v9 = v8;

  return v9;
}

+ (double)IMMMSMaximumVideoDurationForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  [v7 mmsMaximumVideoDurationForPhoneNumber:numberCopy simID:dCopy];
  v9 = v8;

  return v9;
}

+ (void)IMiMessageMaxTransferFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d
{
  dCopy = d;
  phoneNumberCopy = phoneNumber;
  bagCopy = bag;
  v14 = +[IMCTSMSUtilitiesManager sharedManager];
  [v14 iMessageMaxTransferFileSizeForWifiForPhoneNumber:number cellSize:size serverConfigurationBag:bagCopy phoneNumber:phoneNumberCopy simID:dCopy];
}

+ (unint64_t)IMiMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d
{
  dCopy = d;
  phoneNumberCopy = phoneNumber;
  bagCopy = bag;
  v14 = +[IMCTSMSUtilitiesManager sharedManager];
  v15 = [v14 iMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:number cellSize:size serverConfigurationBag:bagCopy phoneNumber:phoneNumberCopy simID:dCopy];

  return v15;
}

+ (unint64_t)IMiMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:(unint64_t *)number cellSize:(unint64_t *)size serverConfigurationBag:(id)bag phoneNumber:(id)phoneNumber simID:(id)d
{
  dCopy = d;
  phoneNumberCopy = phoneNumber;
  bagCopy = bag;
  v14 = +[IMCTSMSUtilitiesManager sharedManager];
  v15 = [v14 iMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:number cellSize:size serverConfigurationBag:bagCopy phoneNumber:phoneNumberCopy simID:dCopy];

  return v15;
}

+ (id)IMMMSEmailAddressToMatchForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsEmailAddressToMatchForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMShouldShowMMSEmailAddress:(id)address simID:(id)d
{
  dCopy = d;
  addressCopy = address;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 shouldShowMMSEmailAddress:addressCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMIsEagerUploadEnabledForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 isEagerUploadEnabledForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMMMSEagerUploadDisabledInCarrierBundleForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsEagerUploadDisabledInCarrierBundleForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMMMSRestrictedModeEnabledForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 mmsRestrictedModeEnabledForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (void)IMSynchronizeMMSCapabilityToWatch:(BOOL)watch
{
  watchCopy = watch;
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  [v4 synchronizeMMSCapabilityToWatch:watchCopy];
}

+ (void)IMSynchronizePreferredSubscriptionMMSCapabilityToWatch
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  [v2 synchronizePreferredSubscriptionMMSCapabilityToWatch];
}

+ (id)IMCountryCodeForSimSlot:(int64_t)slot
{
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  v5 = [v4 countryCodeForSimSlot:slot];

  return v5;
}

+ (id)IMCountryCodeForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  v7 = +[IMCTSMSUtilitiesManager sharedManager];
  v8 = [v7 countryCodeForPhoneNumber:numberCopy simID:dCopy];

  return v8;
}

+ (BOOL)IMMessagesFilteringSettingForPreferedSubscription
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  messagesFilteringSettingForPreferedSubscription = [v2 messagesFilteringSettingForPreferedSubscription];

  return messagesFilteringSettingForPreferedSubscription;
}

+ (id)carrierBundleValueForKeyHierarchy:(id)hierarchy phoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  numberCopy = number;
  hierarchyCopy = hierarchy;
  v10 = +[IMCTSMSUtilitiesManager sharedManager];
  v11 = [v10 carrierBundleValueForKeyHierarchy:hierarchyCopy phoneNumber:numberCopy simID:dCopy];

  return v11;
}

+ (id)carrierNameForPhoneNumber:(id)number
{
  numberCopy = number;
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  v5 = [v4 carrierNameForPhoneNumber:numberCopy];

  return v5;
}

+ (BOOL)SMSAllowCaseSensitiveSenderIDForPhoneNumber:(id)number
{
  numberCopy = number;
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  v5 = [v4 smsAllowCaseSensitiveSenderIDForPhoneNumber:numberCopy];

  return v5;
}

+ (BOOL)shouldUploadToMMCS:(id)s
{
  sCopy = s;
  v4 = +[IMCTSMSUtilitiesManager sharedManager];
  v5 = [v4 shouldUploadToMMCS:sCopy];

  return v5;
}

+ (id)myCTPhoneNumber
{
  v2 = +[IMCTSMSUtilitiesManager sharedManager];
  myCTPhoneNumber = [v2 myCTPhoneNumber];

  return myCTPhoneNumber;
}

@end