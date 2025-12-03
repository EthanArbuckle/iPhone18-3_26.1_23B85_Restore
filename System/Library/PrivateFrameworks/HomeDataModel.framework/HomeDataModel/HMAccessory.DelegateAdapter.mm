@interface HMAccessory.DelegateAdapter
- (_TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter)init;
- (void)accessory:(id)accessory didAddControlTarget:(id)target;
- (void)accessory:(id)accessory didAddProfile:(id)profile;
- (void)accessory:(id)accessory didAddSymptomsHandler:(id)handler;
- (void)accessory:(id)accessory didRemoveControlTarget:(id)target;
- (void)accessory:(id)accessory didRemoveProfile:(id)profile;
- (void)accessory:(id)accessory didUpdateApplicationDataForService:(id)service;
- (void)accessory:(id)accessory didUpdateAssociatedServiceTypeForService:(id)service;
- (void)accessory:(id)accessory didUpdateBulletinBoardNotificationForService:(id)service;
- (void)accessory:(id)accessory didUpdateConfigurationStateForService:(id)service;
- (void)accessory:(id)accessory didUpdateConfiguredNameForService:(id)service;
- (void)accessory:(id)accessory didUpdateDefaultNameForService:(id)service;
- (void)accessory:(id)accessory didUpdateDevice:(id)device;
- (void)accessory:(id)accessory didUpdateFirmwareUpdateAvailable:(BOOL)available;
- (void)accessory:(id)accessory didUpdateFirmwareVersion:(id)version;
- (void)accessory:(id)accessory didUpdateHH1EOLEnabled:(BOOL)enabled;
- (void)accessory:(id)accessory didUpdateHasAuthorizationDataForCharacteristic:(id)characteristic;
- (void)accessory:(id)accessory didUpdateLastKnownOperatingStateResponseForService:(id)service;
- (void)accessory:(id)accessory didUpdateNameForService:(id)service;
- (void)accessory:(id)accessory didUpdateServiceSubtypeForService:(id)service;
- (void)accessory:(id)accessory didUpdateSettings:(id)settings;
- (void)accessory:(id)accessory didUpdateSoftwareVersion:(id)version;
- (void)accessory:(id)accessory didUpdateSupportsUWBUnlock:(BOOL)unlock;
- (void)accessory:(id)accessory didUpdateSupportsWalletKey:(BOOL)key;
- (void)accessory:(id)accessory didUpdateWifiNetworkInfo:(id)info;
- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic;
- (void)accessoryDidRemoveSymptomsHandler:(id)handler;
- (void)accessoryDidSetHasOnboardedForAdaptiveTemperatureAutomations:(id)automations;
- (void)accessoryDidSetHasOnboardedForCleanEnergyAutomation:(id)automation;
- (void)accessoryDidSetHasOnboardedForNaturalLighting:(id)lighting;
- (void)accessoryDidUpdateAdditionalSetupRequired:(id)required;
- (void)accessoryDidUpdateApplicationData:(id)data;
- (void)accessoryDidUpdateAudioDestination:(id)destination;
- (void)accessoryDidUpdateAudioDestinationController:(id)controller;
- (void)accessoryDidUpdateAudioReturnChannelSupport:(id)support;
- (void)accessoryDidUpdateCalibrationStatus:(id)status;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)accessoryDidUpdateDiagnosticsTransferSupport:(id)support;
- (void)accessoryDidUpdateHomeLevelLocationServiceSettingSupport:(id)support;
- (void)accessoryDidUpdateMultiUserSupport:(id)support;
- (void)accessoryDidUpdateName:(id)name;
- (void)accessoryDidUpdatePairingIdentity:(id)identity;
- (void)accessoryDidUpdatePendingConfigurationIdentifier:(id)identifier;
- (void)accessoryDidUpdatePreferredMediaUser:(id)user;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)accessoryDidUpdateReachableTransports:(id)transports;
- (void)accessoryDidUpdateServices:(id)services;
- (void)accessoryDidUpdateSupportsAnnounce:(id)announce;
- (void)accessoryDidUpdateSupportsCompanionInitiatedObliterate:(id)obliterate;
- (void)accessoryDidUpdateSupportsCompanionInitiatedRestart:(id)restart;
- (void)accessoryDidUpdateSupportsDoorbellChime:(id)chime;
- (void)accessoryDidUpdateSupportsJustSiri:(id)siri;
- (void)accessoryDidUpdateSupportsMediaActions:(id)actions;
- (void)accessoryDidUpdateSupportsMediaContentProfile:(id)profile;
- (void)accessoryDidUpdateSupportsMusicAlarm:(id)alarm;
- (void)accessoryDidUpdateSupportsPreferredMediaUser:(id)user;
- (void)accessoryDidUpdateSupportsRMVonAppleTV:(id)v;
- (void)accessoryDidUpdateSupportsThirdPartyMusic:(id)music;
- (void)accessoryDidUpdateSupportsUserMediaSettings:(id)settings;
- (void)accessoryDidUpdateTargetControlSupport:(id)support;
@end

@implementation HMAccessory.DelegateAdapter

- (_TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accessoryDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  sub_1D1A54290(nameCopy);
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  reachabilityCopy = reachability;
  selfCopy = self;
  sub_1D1A545E8(reachabilityCopy);
}

- (void)accessoryDidUpdateServices:(id)services
{
  servicesCopy = services;
  selfCopy = self;
  sub_1D1A54978(servicesCopy);
}

- (void)accessory:(id)accessory didUpdateNameForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A54CD0(accessoryCopy, serviceCopy);
}

- (void)accessory:(id)accessory didUpdateAssociatedServiceTypeForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A55150(accessoryCopy, serviceCopy);
}

- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic
{
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  selfCopy = self;
  sub_1D1A555D0(accessoryCopy, serviceCopy, characteristicCopy);
}

- (void)accessoryDidUpdateApplicationData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_1D1A55B4C(dataCopy);
}

- (void)accessory:(id)accessory didUpdateApplicationDataForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A55EA4(accessoryCopy, serviceCopy);
}

- (void)accessoryDidUpdateAdditionalSetupRequired:(id)required
{
  requiredCopy = required;
  selfCopy = self;
  sub_1D1A56324(requiredCopy);
}

- (void)accessoryDidUpdateCalibrationStatus:(id)status
{
  statusCopy = status;
  selfCopy = self;
  sub_1D1A566B4(statusCopy);
}

- (void)accessory:(id)accessory didUpdateBulletinBoardNotificationForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A56A44(accessoryCopy, serviceCopy);
}

- (void)accessory:(id)accessory didUpdateHasAuthorizationDataForCharacteristic:(id)characteristic
{
  accessoryCopy = accessory;
  characteristicCopy = characteristic;
  selfCopy = self;
  sub_1D1A56EC4(accessoryCopy, characteristicCopy);
}

- (void)accessory:(id)accessory didUpdateSettings:(id)settings
{
  accessoryCopy = accessory;
  settingsCopy = settings;
  selfCopy = self;
  sub_1D1A57A7C(accessoryCopy, settings);
}

- (void)accessory:(id)accessory didUpdateFirmwareUpdateAvailable:(BOOL)available
{
  availableCopy = available;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A57E44(accessoryCopy, availableCopy);
}

- (void)accessory:(id)accessory didUpdateFirmwareVersion:(id)version
{
  v6 = sub_1D1E6781C();
  v8 = v7;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A581CC(accessoryCopy, v6, v8);
}

- (void)accessory:(id)accessory didUpdateSoftwareVersion:(id)version
{
  accessoryCopy = accessory;
  versionCopy = version;
  selfCopy = self;
  sub_1D1A58578(accessoryCopy, version);
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  controllableCopy = controllable;
  selfCopy = self;
  sub_1D1A588F4(controllableCopy);
}

- (void)accessory:(id)accessory didUpdateConfiguredNameForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A58C84(accessoryCopy, service);
}

- (void)accessory:(id)accessory didUpdateDefaultNameForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A5913C(accessoryCopy, service);
}

- (void)accessory:(id)accessory didUpdateServiceSubtypeForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A595F4(accessoryCopy, service);
}

- (void)accessory:(id)accessory didUpdateConfigurationStateForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A59AAC(accessoryCopy, service);
}

- (void)accessoryDidUpdateTargetControlSupport:(id)support
{
  supportCopy = support;
  selfCopy = self;
  sub_1D1A59F64(supportCopy);
}

- (void)accessory:(id)accessory didAddControlTarget:(id)target
{
  accessoryCopy = accessory;
  targetCopy = target;
  selfCopy = self;
  sub_1D1A5A2F4(accessoryCopy, targetCopy);
}

- (void)accessory:(id)accessory didRemoveControlTarget:(id)target
{
  accessoryCopy = accessory;
  targetCopy = target;
  selfCopy = self;
  sub_1D1A5A770(accessoryCopy, targetCopy);
}

- (void)accessory:(id)accessory didAddSymptomsHandler:(id)handler
{
  accessoryCopy = accessory;
  handlerCopy = handler;
  selfCopy = self;
  sub_1D1A5ABEC(accessoryCopy, handlerCopy);
}

- (void)accessoryDidRemoveSymptomsHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  sub_1D1A5AF98(handlerCopy);
}

- (void)accessoryDidUpdateMultiUserSupport:(id)support
{
  supportCopy = support;
  selfCopy = self;
  sub_1D1A5B2F0(supportCopy);
}

- (void)accessoryDidUpdateHomeLevelLocationServiceSettingSupport:(id)support
{
  supportCopy = support;
  selfCopy = self;
  sub_1D1A5B680(supportCopy);
}

- (void)accessoryDidUpdateAudioReturnChannelSupport:(id)support
{
  supportCopy = support;
  selfCopy = self;
  sub_1D1A5BA10(supportCopy);
}

- (void)accessoryDidUpdateSupportsCompanionInitiatedRestart:(id)restart
{
  restartCopy = restart;
  selfCopy = self;
  sub_1D1A5BDA0(restartCopy);
}

- (void)accessoryDidUpdateSupportsCompanionInitiatedObliterate:(id)obliterate
{
  obliterateCopy = obliterate;
  selfCopy = self;
  sub_1D1A5C130(obliterateCopy);
}

- (void)accessoryDidUpdateSupportsMusicAlarm:(id)alarm
{
  alarmCopy = alarm;
  selfCopy = self;
  sub_1D1A5C4C0(alarmCopy);
}

- (void)accessoryDidUpdateSupportsAnnounce:(id)announce
{
  announceCopy = announce;
  selfCopy = self;
  sub_1D1A5C850(announceCopy);
}

- (void)accessoryDidUpdateSupportsMediaActions:(id)actions
{
  actionsCopy = actions;
  selfCopy = self;
  sub_1D1A5CBE0(actionsCopy);
}

- (void)accessoryDidUpdateSupportsThirdPartyMusic:(id)music
{
  musicCopy = music;
  selfCopy = self;
  sub_1D1A5CF70(musicCopy);
}

- (void)accessoryDidUpdateSupportsDoorbellChime:(id)chime
{
  chimeCopy = chime;
  selfCopy = self;
  sub_1D1A5D300(chimeCopy);
}

- (void)accessoryDidUpdateSupportsUserMediaSettings:(id)settings
{
  settingsCopy = settings;
  selfCopy = self;
  sub_1D1A5D690(settingsCopy);
}

- (void)accessory:(id)accessory didUpdateLastKnownOperatingStateResponseForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  sub_1D1A5DA20(accessoryCopy, serviceCopy);
}

- (void)accessoryDidUpdateReachableTransports:(id)transports
{
  transportsCopy = transports;
  selfCopy = self;
  sub_1D1A5DEA0(transportsCopy);
}

- (void)accessory:(id)accessory didUpdateDevice:(id)device
{
  accessoryCopy = accessory;
  deviceCopy = device;
  selfCopy = self;
  sub_1D1A5E230(accessoryCopy, device);
}

- (void)accessoryDidUpdatePairingIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  sub_1D1A5E5B0(identityCopy);
}

- (void)accessoryDidUpdateAudioDestinationController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1D1A5E908(controllerCopy);
}

- (void)accessoryDidUpdateAudioDestination:(id)destination
{
  destinationCopy = destination;
  selfCopy = self;
  sub_1D1A5EC60(destinationCopy);
}

- (void)accessoryDidUpdateDiagnosticsTransferSupport:(id)support
{
  supportCopy = support;
  selfCopy = self;
  sub_1D1A5EFB8(supportCopy);
}

- (void)accessoryDidSetHasOnboardedForNaturalLighting:(id)lighting
{
  lightingCopy = lighting;
  selfCopy = self;
  sub_1D1A5F310(lightingCopy);
}

- (void)accessoryDidUpdateSupportsPreferredMediaUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  sub_1D1A5F668(userCopy);
}

- (void)accessoryDidUpdatePreferredMediaUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  sub_1D1A5F9F8(userCopy);
}

- (void)accessory:(id)accessory didUpdateSupportsWalletKey:(BOOL)key
{
  keyCopy = key;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A5FD50(accessoryCopy, keyCopy);
}

- (void)accessory:(id)accessory didUpdateSupportsUWBUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A600D8(accessoryCopy, unlockCopy);
}

- (void)accessoryDidUpdatePendingConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_1D1A60460(identifierCopy);
}

- (void)accessory:(id)accessory didUpdateWifiNetworkInfo:(id)info
{
  accessoryCopy = accessory;
  infoCopy = info;
  selfCopy = self;
  sub_1D1A60824(accessoryCopy, infoCopy);
}

- (void)accessory:(id)accessory didUpdateHH1EOLEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A60BD0(accessoryCopy, enabledCopy);
}

- (void)accessoryDidUpdateSupportsRMVonAppleTV:(id)v
{
  vCopy = v;
  selfCopy = self;
  sub_1D1A60F58(vCopy);
}

- (void)accessoryDidUpdateSupportsJustSiri:(id)siri
{
  siriCopy = siri;
  selfCopy = self;
  sub_1D1A612E8(siriCopy);
}

- (void)accessoryDidUpdateSupportsMediaContentProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  sub_1D1A61678(profileCopy);
}

- (void)accessoryDidSetHasOnboardedForAdaptiveTemperatureAutomations:(id)automations
{
  automationsCopy = automations;
  selfCopy = self;
  sub_1D1A61A08(automationsCopy);
}

- (void)accessoryDidSetHasOnboardedForCleanEnergyAutomation:(id)automation
{
  automationCopy = automation;
  selfCopy = self;
  sub_1D1A61D60(automationCopy);
}

- (void)accessory:(id)accessory didAddProfile:(id)profile
{
  accessoryCopy = accessory;
  profileCopy = profile;
  selfCopy = self;
  sub_1D1A620B8(accessoryCopy, profileCopy);
}

- (void)accessory:(id)accessory didRemoveProfile:(id)profile
{
  accessoryCopy = accessory;
  profileCopy = profile;
  selfCopy = self;
  sub_1D1A624D8(accessoryCopy, profileCopy);
}

@end