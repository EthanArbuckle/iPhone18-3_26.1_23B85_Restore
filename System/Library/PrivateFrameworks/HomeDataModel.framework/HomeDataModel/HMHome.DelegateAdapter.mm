@interface HMHome.DelegateAdapter
- (_TtCE13HomeDataModelCSo6HMHome15DelegateAdapter)init;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddActionSet:(id)set;
- (void)home:(id)home didAddMediaSystem:(id)system;
- (void)home:(id)home didAddRoom:(id)room;
- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone;
- (void)home:(id)home didAddService:(id)service toServiceGroup:(id)group;
- (void)home:(id)home didAddServiceGroup:(id)group;
- (void)home:(id)home didAddTrigger:(id)trigger;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didAddZone:(id)zone;
- (void)home:(id)home didEncounterError:(id)error forAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveActionSet:(id)set;
- (void)home:(id)home didRemoveMediaSystem:(id)system;
- (void)home:(id)home didRemoveRoom:(id)room;
- (void)home:(id)home didRemoveRoom:(id)room fromZone:(id)zone;
- (void)home:(id)home didRemoveService:(id)service fromServiceGroup:(id)group;
- (void)home:(id)home didRemoveServiceGroup:(id)group;
- (void)home:(id)home didRemoveTrigger:(id)trigger;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)home:(id)home didRemoveZone:(id)zone;
- (void)home:(id)home didUnblockAccessory:(id)accessory;
- (void)home:(id)home didUpdateAccessControlForUser:(id)user;
- (void)home:(id)home didUpdateActionSet:(id)set isExecuting:(BOOL)executing;
- (void)home:(id)home didUpdateActionsForActionSet:(id)set;
- (void)home:(id)home didUpdateApplicationDataForActionSet:(id)set;
- (void)home:(id)home didUpdateApplicationDataForRoom:(id)room;
- (void)home:(id)home didUpdateApplicationDataForServiceGroup:(id)group;
- (void)home:(id)home didUpdateAreBulletinNotificationsSupported:(BOOL)supported;
- (void)home:(id)home didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)enabled;
- (void)home:(id)home didUpdateHomeHubState:(unint64_t)state;
- (void)home:(id)home didUpdateNameForActionSet:(id)set;
- (void)home:(id)home didUpdateNameForRoom:(id)room;
- (void)home:(id)home didUpdateNameForServiceGroup:(id)group;
- (void)home:(id)home didUpdateNameForTrigger:(id)trigger;
- (void)home:(id)home didUpdateNameForZone:(id)zone;
- (void)home:(id)home didUpdateReprovisionStateForAccessory:(id)accessory;
- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory;
- (void)home:(id)home didUpdateSiriPhraseOptions:(unint64_t)options;
- (void)home:(id)home didUpdateTrigger:(id)trigger;
- (void)homeDidAddWalletKey:(id)key;
- (void)homeDidRemoveWalletKey:(id)key;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeDidUpdateApplicationData:(id)data;
- (void)homeDidUpdateAutoSelectedPreferredResident:(id)resident;
- (void)homeDidUpdateName:(id)name;
- (void)homeDidUpdateNetworkRouterSupport:(id)support;
- (void)homeDidUpdateProtectionMode:(id)mode;
- (void)homeDidUpdateSoundCheck:(id)check;
- (void)homeDidUpdateSupportedFeatures:(id)features;
- (void)homeDidUpdateSupportsResidentSelection:(id)selection;
- (void)homeDidUpdateToROAR:(id)r;
- (void)homeDidUpdateUserSelectedPreferredResident:(id)resident;
@end

@implementation HMHome.DelegateAdapter

- (_TtCE13HomeDataModelCSo6HMHome15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  sub_1D1A63B3C(nameCopy);
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  sub_1D1A63E94(userCopy);
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A641EC(homeCopy, accessoryCopy);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A64668(homeCopy, accessoryCopy);
}

- (void)home:(id)home didAddUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_1D1A64AE4(homeCopy, userCopy);
}

- (void)home:(id)home didRemoveUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_1D1A64EB8(homeCopy, userCopy);
}

- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory
{
  homeCopy = home;
  roomCopy = room;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A6528C(homeCopy, roomCopy, accessoryCopy);
}

- (void)home:(id)home didAddRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  selfCopy = self;
  sub_1D1A65808(homeCopy, roomCopy);
}

- (void)home:(id)home didRemoveRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  selfCopy = self;
  sub_1D1A65C88(homeCopy, roomCopy);
}

- (void)home:(id)home didUpdateNameForRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  selfCopy = self;
  sub_1D1A66108(homeCopy, roomCopy);
}

- (void)home:(id)home didAddZone:(id)zone
{
  homeCopy = home;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1A66588(homeCopy, zoneCopy);
}

- (void)home:(id)home didRemoveZone:(id)zone
{
  homeCopy = home;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1A66A08(homeCopy, zoneCopy);
}

- (void)home:(id)home didUpdateNameForZone:(id)zone
{
  homeCopy = home;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1A66E88(homeCopy, zoneCopy);
}

- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone
{
  homeCopy = home;
  roomCopy = room;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1A67308(homeCopy, roomCopy, zoneCopy);
}

- (void)home:(id)home didRemoveRoom:(id)room fromZone:(id)zone
{
  homeCopy = home;
  roomCopy = room;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1A67884(homeCopy, roomCopy, zoneCopy);
}

- (void)home:(id)home didAddServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  selfCopy = self;
  sub_1D1A67E00(homeCopy, groupCopy);
}

- (void)home:(id)home didRemoveServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  selfCopy = self;
  sub_1D1A68280(homeCopy, groupCopy);
}

- (void)home:(id)home didUpdateNameForServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  selfCopy = self;
  sub_1D1A68700(homeCopy, groupCopy);
}

- (void)home:(id)home didAddService:(id)service toServiceGroup:(id)group
{
  homeCopy = home;
  serviceCopy = service;
  groupCopy = group;
  selfCopy = self;
  sub_1D1A68B80(homeCopy, serviceCopy, groupCopy);
}

- (void)home:(id)home didRemoveService:(id)service fromServiceGroup:(id)group
{
  homeCopy = home;
  serviceCopy = service;
  groupCopy = group;
  selfCopy = self;
  sub_1D1A690FC(homeCopy, serviceCopy, groupCopy);
}

- (void)home:(id)home didAddActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1A69678(homeCopy, setCopy);
}

- (void)home:(id)home didRemoveActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1A69AF8(homeCopy, setCopy);
}

- (void)home:(id)home didUpdateNameForActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1A69F78(homeCopy, setCopy);
}

- (void)home:(id)home didUpdateActionsForActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1A6A3F8(homeCopy, setCopy);
}

- (void)home:(id)home didAddTrigger:(id)trigger
{
  homeCopy = home;
  triggerCopy = trigger;
  selfCopy = self;
  sub_1D1A6A878(homeCopy, triggerCopy);
}

- (void)home:(id)home didRemoveTrigger:(id)trigger
{
  homeCopy = home;
  triggerCopy = trigger;
  selfCopy = self;
  sub_1D1A6ACF8(homeCopy, triggerCopy);
}

- (void)home:(id)home didUpdateNameForTrigger:(id)trigger
{
  homeCopy = home;
  triggerCopy = trigger;
  selfCopy = self;
  sub_1D1A6B178(homeCopy, triggerCopy);
}

- (void)home:(id)home didUpdateTrigger:(id)trigger
{
  homeCopy = home;
  triggerCopy = trigger;
  selfCopy = self;
  sub_1D1A6B5F8(homeCopy, triggerCopy);
}

- (void)home:(id)home didUnblockAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A6BA78(homeCopy, accessoryCopy);
}

- (void)home:(id)home didEncounterError:(id)error forAccessory:(id)accessory
{
  homeCopy = home;
  errorCopy = error;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A6BEF4(homeCopy, errorCopy, accessoryCopy);
}

- (void)home:(id)home didUpdateHomeHubState:(unint64_t)state
{
  homeCopy = home;
  selfCopy = self;
  sub_1D1A6C3EC(homeCopy, state);
}

- (void)homeDidUpdateSupportedFeatures:(id)features
{
  featuresCopy = features;
  selfCopy = self;
  sub_1D1A6C76C(featuresCopy);
}

- (void)home:(id)home didAddMediaSystem:(id)system
{
  homeCopy = home;
  systemCopy = system;
  selfCopy = self;
  sub_1D1A6CAC4(homeCopy, systemCopy);
}

- (void)home:(id)home didRemoveMediaSystem:(id)system
{
  homeCopy = home;
  systemCopy = system;
  selfCopy = self;
  sub_1D1A6CEE4(homeCopy, systemCopy);
}

- (void)home:(id)home didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  homeCopy = home;
  selfCopy = self;
  sub_1D1A6D304(homeCopy, enabledCopy);
}

- (void)homeDidUpdateApplicationData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_1D1A6D68C(dataCopy);
}

- (void)home:(id)home didUpdateApplicationDataForRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  selfCopy = self;
  sub_1D1A6D9E4(homeCopy, roomCopy);
}

- (void)home:(id)home didUpdateApplicationDataForServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  selfCopy = self;
  sub_1D1A6DE64(homeCopy, groupCopy);
}

- (void)home:(id)home didUpdateApplicationDataForActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1A6E2E4(homeCopy, setCopy);
}

- (void)home:(id)home didUpdateActionSet:(id)set isExecuting:(BOOL)executing
{
  executingCopy = executing;
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1A6E764(homeCopy, setCopy, executingCopy);
}

- (void)homeDidUpdateSupportsResidentSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_1D1A6EC10(selectionCopy);
}

- (void)homeDidUpdateAutoSelectedPreferredResident:(id)resident
{
  residentCopy = resident;
  selfCopy = self;
  sub_1D1A6EF68(residentCopy);
}

- (void)homeDidUpdateUserSelectedPreferredResident:(id)resident
{
  residentCopy = resident;
  selfCopy = self;
  sub_1D1A6F2C0(residentCopy);
}

- (void)homeDidUpdateProtectionMode:(id)mode
{
  modeCopy = mode;
  selfCopy = self;
  sub_1D1A6F618(modeCopy);
}

- (void)homeDidUpdateNetworkRouterSupport:(id)support
{
  supportCopy = support;
  selfCopy = self;
  sub_1D1A6F970(supportCopy);
}

- (void)homeDidAddWalletKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  sub_1D1A6FCC8(keyCopy);
}

- (void)homeDidRemoveWalletKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  sub_1D1A70020(keyCopy);
}

- (void)homeDidUpdateToROAR:(id)r
{
  rCopy = r;
  selfCopy = self;
  sub_1D1A70378(rCopy);
}

- (void)homeDidUpdateSoundCheck:(id)check
{
  checkCopy = check;
  selfCopy = self;
  sub_1D1A706D0(checkCopy);
}

- (void)home:(id)home didUpdateAreBulletinNotificationsSupported:(BOOL)supported
{
  supportedCopy = supported;
  homeCopy = home;
  selfCopy = self;
  sub_1D1A70A28(homeCopy, supportedCopy);
}

- (void)home:(id)home didUpdateSiriPhraseOptions:(unint64_t)options
{
  homeCopy = home;
  selfCopy = self;
  sub_1D1A70DB0(homeCopy, options);
}

- (void)home:(id)home didUpdateAccessControlForUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_1D1A71130(homeCopy, userCopy);
}

- (void)home:(id)home didUpdateReprovisionStateForAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_1D1A71504(homeCopy, accessoryCopy);
}

@end