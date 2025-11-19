@interface HMDAccessorySettingsEventHelper
- (BOOL)remoteEventAllowedForKeyPath:(id)a3 deviceType:(unint64_t)a4 userType:(unint64_t)a5;
- (HMDAccessorySettingsEventHelper)init;
- (HMDAccessorySettingsEventHelper)initWithKeyPathMap:(id)a3 keyPathList:(id)a4;
- (id)allTopicsForHome:(id)a3 accessory:(id)a4;
- (unint64_t)remoteDeviceAccessControlForKeyPath:(uint64_t)a1;
- (unint64_t)remoteDeviceAccessControlForTopic:(id)a3;
- (unint64_t)remoteUserAccessControlForKeyPath:(uint64_t)a1;
- (unint64_t)remoteUserAccessControlForTopic:(id)a3;
@end

@implementation HMDAccessorySettingsEventHelper

- (BOOL)remoteEventAllowedForKeyPath:(id)a3 deviceType:(unint64_t)a4 userType:(unint64_t)a5
{
  v8 = a3;
  v9 = ([(HMDAccessorySettingsEventHelper *)self remoteUserAccessControlForKeyPath:v8]& a5) != 0 && ([(HMDAccessorySettingsEventHelper *)self remoteDeviceAccessControlForKeyPath:v8]& a4) != 0;

  return v9;
}

- (unint64_t)remoteUserAccessControlForKeyPath:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) objectForKeyedSubscript:a2];
  v3 = [v2 objectForKeyedSubscript:@"remoteUserAccessControl"];

  if (v3)
  {
    v4 = [HMDRemoteEventRouterAccessControl remoteUserAccessControlFromNumber:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)remoteDeviceAccessControlForKeyPath:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) objectForKeyedSubscript:a2];
  v3 = [v2 objectForKeyedSubscript:@"remoteDeviceAccessControl"];

  if (v3)
  {
    v4 = [HMDRemoteEventRouterAccessControl remoteDeviceAccessControlFromNumber:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)allTopicsForHome:(id)a3 accessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA60] array];
  if (self)
  {
    self = self->_keyPaths;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HMDAccessorySettingsEventHelper_allTopicsForHome_accessory___block_invoke;
  v13[3] = &unk_278689190;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(HMDAccessorySettingsEventHelper *)self na_map:v13];

  return v11;
}

void __62__HMDAccessorySettingsEventHelper_allTopicsForHome_accessory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x22AAD2730);
}

- (unint64_t)remoteDeviceAccessControlForTopic:(id)a3
{
  v4 = HMImmutableSettingChangeEventComponentsFromTopic();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (v4)
  {
    v8 = [(HMDAccessorySettingsEventHelper *)self remoteDeviceAccessControlForKeyPath:v7];
  }

  return v8;
}

- (unint64_t)remoteUserAccessControlForTopic:(id)a3
{
  v4 = HMImmutableSettingChangeEventComponentsFromTopic();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (v4)
  {
    v8 = [(HMDAccessorySettingsEventHelper *)self remoteUserAccessControlForKeyPath:v7];
  }

  return v8;
}

- (HMDAccessorySettingsEventHelper)init
{
  v3 = +[HMDAccessorySettingEventsGenerated keyPathMap];
  v4 = +[HMDAccessorySettingEventsGenerated allKeyPaths];
  v5 = [(HMDAccessorySettingsEventHelper *)self initWithKeyPathMap:v3 keyPathList:v4];

  return v5;
}

- (HMDAccessorySettingsEventHelper)initWithKeyPathMap:(id)a3 keyPathList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDAccessorySettingsEventHelper;
  v9 = [(HMDAccessorySettingsEventHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPathMap, a3);
    objc_storeStrong(&v10->_keyPaths, a4);
  }

  return v10;
}

@end