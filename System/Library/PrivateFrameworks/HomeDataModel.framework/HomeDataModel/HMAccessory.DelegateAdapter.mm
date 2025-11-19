@interface HMAccessory.DelegateAdapter
- (_TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter)init;
- (void)accessory:(id)a3 didAddControlTarget:(id)a4;
- (void)accessory:(id)a3 didAddProfile:(id)a4;
- (void)accessory:(id)a3 didAddSymptomsHandler:(id)a4;
- (void)accessory:(id)a3 didRemoveControlTarget:(id)a4;
- (void)accessory:(id)a3 didRemoveProfile:(id)a4;
- (void)accessory:(id)a3 didUpdateApplicationDataForService:(id)a4;
- (void)accessory:(id)a3 didUpdateAssociatedServiceTypeForService:(id)a4;
- (void)accessory:(id)a3 didUpdateBulletinBoardNotificationForService:(id)a4;
- (void)accessory:(id)a3 didUpdateConfigurationStateForService:(id)a4;
- (void)accessory:(id)a3 didUpdateConfiguredNameForService:(id)a4;
- (void)accessory:(id)a3 didUpdateDefaultNameForService:(id)a4;
- (void)accessory:(id)a3 didUpdateDevice:(id)a4;
- (void)accessory:(id)a3 didUpdateFirmwareUpdateAvailable:(BOOL)a4;
- (void)accessory:(id)a3 didUpdateFirmwareVersion:(id)a4;
- (void)accessory:(id)a3 didUpdateHH1EOLEnabled:(BOOL)a4;
- (void)accessory:(id)a3 didUpdateHasAuthorizationDataForCharacteristic:(id)a4;
- (void)accessory:(id)a3 didUpdateLastKnownOperatingStateResponseForService:(id)a4;
- (void)accessory:(id)a3 didUpdateNameForService:(id)a4;
- (void)accessory:(id)a3 didUpdateServiceSubtypeForService:(id)a4;
- (void)accessory:(id)a3 didUpdateSettings:(id)a4;
- (void)accessory:(id)a3 didUpdateSoftwareVersion:(id)a4;
- (void)accessory:(id)a3 didUpdateSupportsUWBUnlock:(BOOL)a4;
- (void)accessory:(id)a3 didUpdateSupportsWalletKey:(BOOL)a4;
- (void)accessory:(id)a3 didUpdateWifiNetworkInfo:(id)a4;
- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5;
- (void)accessoryDidRemoveSymptomsHandler:(id)a3;
- (void)accessoryDidSetHasOnboardedForAdaptiveTemperatureAutomations:(id)a3;
- (void)accessoryDidSetHasOnboardedForCleanEnergyAutomation:(id)a3;
- (void)accessoryDidSetHasOnboardedForNaturalLighting:(id)a3;
- (void)accessoryDidUpdateAdditionalSetupRequired:(id)a3;
- (void)accessoryDidUpdateApplicationData:(id)a3;
- (void)accessoryDidUpdateAudioDestination:(id)a3;
- (void)accessoryDidUpdateAudioDestinationController:(id)a3;
- (void)accessoryDidUpdateAudioReturnChannelSupport:(id)a3;
- (void)accessoryDidUpdateCalibrationStatus:(id)a3;
- (void)accessoryDidUpdateControllable:(id)a3;
- (void)accessoryDidUpdateDiagnosticsTransferSupport:(id)a3;
- (void)accessoryDidUpdateHomeLevelLocationServiceSettingSupport:(id)a3;
- (void)accessoryDidUpdateMultiUserSupport:(id)a3;
- (void)accessoryDidUpdateName:(id)a3;
- (void)accessoryDidUpdatePairingIdentity:(id)a3;
- (void)accessoryDidUpdatePendingConfigurationIdentifier:(id)a3;
- (void)accessoryDidUpdatePreferredMediaUser:(id)a3;
- (void)accessoryDidUpdateReachability:(id)a3;
- (void)accessoryDidUpdateReachableTransports:(id)a3;
- (void)accessoryDidUpdateServices:(id)a3;
- (void)accessoryDidUpdateSupportsAnnounce:(id)a3;
- (void)accessoryDidUpdateSupportsCompanionInitiatedObliterate:(id)a3;
- (void)accessoryDidUpdateSupportsCompanionInitiatedRestart:(id)a3;
- (void)accessoryDidUpdateSupportsDoorbellChime:(id)a3;
- (void)accessoryDidUpdateSupportsJustSiri:(id)a3;
- (void)accessoryDidUpdateSupportsMediaActions:(id)a3;
- (void)accessoryDidUpdateSupportsMediaContentProfile:(id)a3;
- (void)accessoryDidUpdateSupportsMusicAlarm:(id)a3;
- (void)accessoryDidUpdateSupportsPreferredMediaUser:(id)a3;
- (void)accessoryDidUpdateSupportsRMVonAppleTV:(id)a3;
- (void)accessoryDidUpdateSupportsThirdPartyMusic:(id)a3;
- (void)accessoryDidUpdateSupportsUserMediaSettings:(id)a3;
- (void)accessoryDidUpdateTargetControlSupport:(id)a3;
@end

@implementation HMAccessory.DelegateAdapter

- (_TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accessoryDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A54290(v4);
}

- (void)accessoryDidUpdateReachability:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A545E8(v4);
}

- (void)accessoryDidUpdateServices:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A54978(v4);
}

- (void)accessory:(id)a3 didUpdateNameForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A54CD0(v6, v7);
}

- (void)accessory:(id)a3 didUpdateAssociatedServiceTypeForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A55150(v6, v7);
}

- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1A555D0(v8, v9, v10);
}

- (void)accessoryDidUpdateApplicationData:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A55B4C(v4);
}

- (void)accessory:(id)a3 didUpdateApplicationDataForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A55EA4(v6, v7);
}

- (void)accessoryDidUpdateAdditionalSetupRequired:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A56324(v4);
}

- (void)accessoryDidUpdateCalibrationStatus:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A566B4(v4);
}

- (void)accessory:(id)a3 didUpdateBulletinBoardNotificationForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A56A44(v6, v7);
}

- (void)accessory:(id)a3 didUpdateHasAuthorizationDataForCharacteristic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A56EC4(v6, v7);
}

- (void)accessory:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A57A7C(v6, a4);
}

- (void)accessory:(id)a3 didUpdateFirmwareUpdateAvailable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1D1A57E44(v6, v4);
}

- (void)accessory:(id)a3 didUpdateFirmwareVersion:(id)a4
{
  v6 = sub_1D1E6781C();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1D1A581CC(v9, v6, v8);
}

- (void)accessory:(id)a3 didUpdateSoftwareVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A58578(v6, a4);
}

- (void)accessoryDidUpdateControllable:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A588F4(v4);
}

- (void)accessory:(id)a3 didUpdateConfiguredNameForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A58C84(v6, a4);
}

- (void)accessory:(id)a3 didUpdateDefaultNameForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A5913C(v6, a4);
}

- (void)accessory:(id)a3 didUpdateServiceSubtypeForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A595F4(v6, a4);
}

- (void)accessory:(id)a3 didUpdateConfigurationStateForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A59AAC(v6, a4);
}

- (void)accessoryDidUpdateTargetControlSupport:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A59F64(v4);
}

- (void)accessory:(id)a3 didAddControlTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A5A2F4(v6, v7);
}

- (void)accessory:(id)a3 didRemoveControlTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A5A770(v6, v7);
}

- (void)accessory:(id)a3 didAddSymptomsHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A5ABEC(v6, v7);
}

- (void)accessoryDidRemoveSymptomsHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5AF98(v4);
}

- (void)accessoryDidUpdateMultiUserSupport:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5B2F0(v4);
}

- (void)accessoryDidUpdateHomeLevelLocationServiceSettingSupport:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5B680(v4);
}

- (void)accessoryDidUpdateAudioReturnChannelSupport:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5BA10(v4);
}

- (void)accessoryDidUpdateSupportsCompanionInitiatedRestart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5BDA0(v4);
}

- (void)accessoryDidUpdateSupportsCompanionInitiatedObliterate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5C130(v4);
}

- (void)accessoryDidUpdateSupportsMusicAlarm:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5C4C0(v4);
}

- (void)accessoryDidUpdateSupportsAnnounce:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5C850(v4);
}

- (void)accessoryDidUpdateSupportsMediaActions:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5CBE0(v4);
}

- (void)accessoryDidUpdateSupportsThirdPartyMusic:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5CF70(v4);
}

- (void)accessoryDidUpdateSupportsDoorbellChime:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5D300(v4);
}

- (void)accessoryDidUpdateSupportsUserMediaSettings:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5D690(v4);
}

- (void)accessory:(id)a3 didUpdateLastKnownOperatingStateResponseForService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A5DA20(v6, v7);
}

- (void)accessoryDidUpdateReachableTransports:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5DEA0(v4);
}

- (void)accessory:(id)a3 didUpdateDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A5E230(v6, a4);
}

- (void)accessoryDidUpdatePairingIdentity:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5E5B0(v4);
}

- (void)accessoryDidUpdateAudioDestinationController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5E908(v4);
}

- (void)accessoryDidUpdateAudioDestination:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5EC60(v4);
}

- (void)accessoryDidUpdateDiagnosticsTransferSupport:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5EFB8(v4);
}

- (void)accessoryDidSetHasOnboardedForNaturalLighting:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5F310(v4);
}

- (void)accessoryDidUpdateSupportsPreferredMediaUser:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5F668(v4);
}

- (void)accessoryDidUpdatePreferredMediaUser:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A5F9F8(v4);
}

- (void)accessory:(id)a3 didUpdateSupportsWalletKey:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1D1A5FD50(v6, v4);
}

- (void)accessory:(id)a3 didUpdateSupportsUWBUnlock:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1D1A600D8(v6, v4);
}

- (void)accessoryDidUpdatePendingConfigurationIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A60460(v4);
}

- (void)accessory:(id)a3 didUpdateWifiNetworkInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A60824(v6, v7);
}

- (void)accessory:(id)a3 didUpdateHH1EOLEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1D1A60BD0(v6, v4);
}

- (void)accessoryDidUpdateSupportsRMVonAppleTV:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A60F58(v4);
}

- (void)accessoryDidUpdateSupportsJustSiri:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A612E8(v4);
}

- (void)accessoryDidUpdateSupportsMediaContentProfile:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A61678(v4);
}

- (void)accessoryDidSetHasOnboardedForAdaptiveTemperatureAutomations:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A61A08(v4);
}

- (void)accessoryDidSetHasOnboardedForCleanEnergyAutomation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A61D60(v4);
}

- (void)accessory:(id)a3 didAddProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A620B8(v6, v7);
}

- (void)accessory:(id)a3 didRemoveProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A624D8(v6, v7);
}

@end