@interface HMHome.DelegateAdapter
- (_TtCE13HomeDataModelCSo6HMHome15DelegateAdapter)init;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddActionSet:(id)a4;
- (void)home:(id)a3 didAddMediaSystem:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4 toZone:(id)a5;
- (void)home:(id)a3 didAddService:(id)a4 toServiceGroup:(id)a5;
- (void)home:(id)a3 didAddServiceGroup:(id)a4;
- (void)home:(id)a3 didAddTrigger:(id)a4;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didAddZone:(id)a4;
- (void)home:(id)a3 didEncounterError:(id)a4 forAccessory:(id)a5;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveActionSet:(id)a4;
- (void)home:(id)a3 didRemoveMediaSystem:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4 fromZone:(id)a5;
- (void)home:(id)a3 didRemoveService:(id)a4 fromServiceGroup:(id)a5;
- (void)home:(id)a3 didRemoveServiceGroup:(id)a4;
- (void)home:(id)a3 didRemoveTrigger:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)home:(id)a3 didRemoveZone:(id)a4;
- (void)home:(id)a3 didUnblockAccessory:(id)a4;
- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4;
- (void)home:(id)a3 didUpdateActionSet:(id)a4 isExecuting:(BOOL)a5;
- (void)home:(id)a3 didUpdateActionsForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForRoom:(id)a4;
- (void)home:(id)a3 didUpdateApplicationDataForServiceGroup:(id)a4;
- (void)home:(id)a3 didUpdateAreBulletinNotificationsSupported:(BOOL)a4;
- (void)home:(id)a3 didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)a4;
- (void)home:(id)a3 didUpdateHomeHubState:(unint64_t)a4;
- (void)home:(id)a3 didUpdateNameForActionSet:(id)a4;
- (void)home:(id)a3 didUpdateNameForRoom:(id)a4;
- (void)home:(id)a3 didUpdateNameForServiceGroup:(id)a4;
- (void)home:(id)a3 didUpdateNameForTrigger:(id)a4;
- (void)home:(id)a3 didUpdateNameForZone:(id)a4;
- (void)home:(id)a3 didUpdateReprovisionStateForAccessory:(id)a4;
- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5;
- (void)home:(id)a3 didUpdateSiriPhraseOptions:(unint64_t)a4;
- (void)home:(id)a3 didUpdateTrigger:(id)a4;
- (void)homeDidAddWalletKey:(id)a3;
- (void)homeDidRemoveWalletKey:(id)a3;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3;
- (void)homeDidUpdateApplicationData:(id)a3;
- (void)homeDidUpdateAutoSelectedPreferredResident:(id)a3;
- (void)homeDidUpdateName:(id)a3;
- (void)homeDidUpdateNetworkRouterSupport:(id)a3;
- (void)homeDidUpdateProtectionMode:(id)a3;
- (void)homeDidUpdateSoundCheck:(id)a3;
- (void)homeDidUpdateSupportedFeatures:(id)a3;
- (void)homeDidUpdateSupportsResidentSelection:(id)a3;
- (void)homeDidUpdateToROAR:(id)a3;
- (void)homeDidUpdateUserSelectedPreferredResident:(id)a3;
@end

@implementation HMHome.DelegateAdapter

- (_TtCE13HomeDataModelCSo6HMHome15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)homeDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A63B3C(v4);
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A63E94(v4);
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A641EC(v6, v7);
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A64668(v6, v7);
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A64AE4(v6, v7);
}

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A64EB8(v6, v7);
}

- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1A6528C(v8, v9, v10);
}

- (void)home:(id)a3 didAddRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A65808(v6, v7);
}

- (void)home:(id)a3 didRemoveRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A65C88(v6, v7);
}

- (void)home:(id)a3 didUpdateNameForRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A66108(v6, v7);
}

- (void)home:(id)a3 didAddZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A66588(v6, v7);
}

- (void)home:(id)a3 didRemoveZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A66A08(v6, v7);
}

- (void)home:(id)a3 didUpdateNameForZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A66E88(v6, v7);
}

- (void)home:(id)a3 didAddRoom:(id)a4 toZone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1A67308(v8, v9, v10);
}

- (void)home:(id)a3 didRemoveRoom:(id)a4 fromZone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1A67884(v8, v9, v10);
}

- (void)home:(id)a3 didAddServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A67E00(v6, v7);
}

- (void)home:(id)a3 didRemoveServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A68280(v6, v7);
}

- (void)home:(id)a3 didUpdateNameForServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A68700(v6, v7);
}

- (void)home:(id)a3 didAddService:(id)a4 toServiceGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1A68B80(v8, v9, v10);
}

- (void)home:(id)a3 didRemoveService:(id)a4 fromServiceGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D1A690FC(v8, v9, v10);
}

- (void)home:(id)a3 didAddActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A69678(v6, v7);
}

- (void)home:(id)a3 didRemoveActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A69AF8(v6, v7);
}

- (void)home:(id)a3 didUpdateNameForActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A69F78(v6, v7);
}

- (void)home:(id)a3 didUpdateActionsForActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6A3F8(v6, v7);
}

- (void)home:(id)a3 didAddTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6A878(v6, v7);
}

- (void)home:(id)a3 didRemoveTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6ACF8(v6, v7);
}

- (void)home:(id)a3 didUpdateNameForTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6B178(v6, v7);
}

- (void)home:(id)a3 didUpdateTrigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6B5F8(v6, v7);
}

- (void)home:(id)a3 didUnblockAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6BA78(v6, v7);
}

- (void)home:(id)a3 didEncounterError:(id)a4 forAccessory:(id)a5
{
  v8 = a3;
  v11 = a4;
  v9 = a5;
  v10 = self;
  sub_1D1A6BEF4(v8, v11, v9);
}

- (void)home:(id)a3 didUpdateHomeHubState:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D1A6C3EC(v6, a4);
}

- (void)homeDidUpdateSupportedFeatures:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A6C76C(v4);
}

- (void)home:(id)a3 didAddMediaSystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6CAC4(v6, v7);
}

- (void)home:(id)a3 didRemoveMediaSystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6CEE4(v6, v7);
}

- (void)home:(id)a3 didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1D1A6D304(v6, v4);
}

- (void)homeDidUpdateApplicationData:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A6D68C(v4);
}

- (void)home:(id)a3 didUpdateApplicationDataForRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6D9E4(v6, v7);
}

- (void)home:(id)a3 didUpdateApplicationDataForServiceGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6DE64(v6, v7);
}

- (void)home:(id)a3 didUpdateApplicationDataForActionSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A6E2E4(v6, v7);
}

- (void)home:(id)a3 didUpdateActionSet:(id)a4 isExecuting:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1D1A6E764(v8, v9, v5);
}

- (void)homeDidUpdateSupportsResidentSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A6EC10(v4);
}

- (void)homeDidUpdateAutoSelectedPreferredResident:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A6EF68(v4);
}

- (void)homeDidUpdateUserSelectedPreferredResident:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A6F2C0(v4);
}

- (void)homeDidUpdateProtectionMode:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A6F618(v4);
}

- (void)homeDidUpdateNetworkRouterSupport:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A6F970(v4);
}

- (void)homeDidAddWalletKey:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A6FCC8(v4);
}

- (void)homeDidRemoveWalletKey:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A70020(v4);
}

- (void)homeDidUpdateToROAR:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A70378(v4);
}

- (void)homeDidUpdateSoundCheck:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A706D0(v4);
}

- (void)home:(id)a3 didUpdateAreBulletinNotificationsSupported:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1D1A70A28(v6, v4);
}

- (void)home:(id)a3 didUpdateSiriPhraseOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D1A70DB0(v6, a4);
}

- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A71130(v6, v7);
}

- (void)home:(id)a3 didUpdateReprovisionStateForAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D1A71504(v6, v7);
}

@end