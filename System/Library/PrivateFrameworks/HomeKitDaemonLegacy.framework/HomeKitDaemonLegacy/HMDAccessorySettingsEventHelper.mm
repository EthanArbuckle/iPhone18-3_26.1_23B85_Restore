@interface HMDAccessorySettingsEventHelper
- (BOOL)remoteEventAllowedForKeyPath:(id)path deviceType:(unint64_t)type userType:(unint64_t)userType;
- (HMDAccessorySettingsEventHelper)init;
- (HMDAccessorySettingsEventHelper)initWithKeyPathMap:(id)map keyPathList:(id)list;
- (id)allTopicsForHome:(id)home accessory:(id)accessory;
- (unint64_t)remoteDeviceAccessControlForKeyPath:(uint64_t)path;
- (unint64_t)remoteDeviceAccessControlForTopic:(id)topic;
- (unint64_t)remoteUserAccessControlForKeyPath:(uint64_t)path;
- (unint64_t)remoteUserAccessControlForTopic:(id)topic;
@end

@implementation HMDAccessorySettingsEventHelper

- (BOOL)remoteEventAllowedForKeyPath:(id)path deviceType:(unint64_t)type userType:(unint64_t)userType
{
  pathCopy = path;
  v9 = ([(HMDAccessorySettingsEventHelper *)self remoteUserAccessControlForKeyPath:pathCopy]& userType) != 0 && ([(HMDAccessorySettingsEventHelper *)self remoteDeviceAccessControlForKeyPath:pathCopy]& type) != 0;

  return v9;
}

- (unint64_t)remoteUserAccessControlForKeyPath:(uint64_t)path
{
  if (!path)
  {
    return 0;
  }

  v2 = [*(path + 8) objectForKeyedSubscript:a2];
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

- (unint64_t)remoteDeviceAccessControlForKeyPath:(uint64_t)path
{
  if (!path)
  {
    return 0;
  }

  v2 = [*(path + 8) objectForKeyedSubscript:a2];
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

- (id)allTopicsForHome:(id)home accessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  array = [MEMORY[0x277CBEA60] array];
  if (self)
  {
    self = self->_keyPaths;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HMDAccessorySettingsEventHelper_allTopicsForHome_accessory___block_invoke;
  v13[3] = &unk_279734EE0;
  v14 = homeCopy;
  v15 = accessoryCopy;
  v9 = accessoryCopy;
  v10 = homeCopy;
  v11 = [(HMDAccessorySettingsEventHelper *)self na_map:v13];

  return v11;
}

void __62__HMDAccessorySettingsEventHelper_allTopicsForHome_accessory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x259C01CC0);
}

- (unint64_t)remoteDeviceAccessControlForTopic:(id)topic
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

- (unint64_t)remoteUserAccessControlForTopic:(id)topic
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

- (HMDAccessorySettingsEventHelper)initWithKeyPathMap:(id)map keyPathList:(id)list
{
  mapCopy = map;
  listCopy = list;
  v12.receiver = self;
  v12.super_class = HMDAccessorySettingsEventHelper;
  v9 = [(HMDAccessorySettingsEventHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPathMap, map);
    objc_storeStrong(&v10->_keyPaths, list);
  }

  return v10;
}

@end