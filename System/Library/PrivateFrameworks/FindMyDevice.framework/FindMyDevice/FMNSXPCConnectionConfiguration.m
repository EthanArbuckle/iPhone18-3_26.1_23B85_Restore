@interface FMNSXPCConnectionConfiguration
+ (FMNSXPCConnectionConfiguration)btDiscoveryConfiguration;
+ (FMNSXPCConnectionConfiguration)emergencyCallInfoPublisherConfiguration;
+ (FMNSXPCConnectionConfiguration)eraseDeviceServiceConfiguration;
+ (FMNSXPCConnectionConfiguration)fmipConfiguration;
+ (FMNSXPCConnectionConfiguration)helperConfiguration;
+ (FMNSXPCConnectionConfiguration)identityConfiguration;
+ (FMNSXPCConnectionConfiguration)sharedConfigurationConfiguration;
+ (FMNSXPCConnectionConfiguration)userNotificationConfiguration;
@end

@implementation FMNSXPCConnectionConfiguration

+ (FMNSXPCConnectionConfiguration)fmipConfiguration
{
  v2 = objc_alloc_init(FMNSXPCConnectionConfiguration);
  [(FMNSXPCConnectionConfiguration *)v2 setServiceName:@"com.apple.icloud.findmydeviced"];
  [(FMNSXPCConnectionConfiguration *)v2 setOptions:4096];
  [(FMNSXPCConnectionConfiguration *)v2 setMachService:1];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAB1C0];
  [v10 setClasses:v9 forSelector:sel_getAccessoriesWithCompletion_ argumentIndex:1 ofReply:1];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v10 setClasses:v11 forSelector:sel_registerDeviceForPairingLock_completion_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v10 setClasses:v12 forSelector:sel_registerDeviceForPairingLock_completion_ argumentIndex:1 ofReply:1];

  v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v10 setClasses:v13 forSelector:sel_updatePairingLockInfo_completion_ argumentIndex:0 ofReply:0];

  [(FMNSXPCConnectionConfiguration *)v2 setRemoteInterface:v10];

  return v2;
}

+ (FMNSXPCConnectionConfiguration)sharedConfigurationConfiguration
{
  v2 = objc_alloc_init(FMNSXPCConnectionConfiguration);
  [(FMNSXPCConnectionConfiguration *)v2 setServiceName:@"com.apple.icloud.FindMyDevice.FindMyDeviceSharedConfigurationXPCService"];
  [(FMNSXPCConnectionConfiguration *)v2 setOptions:0];
  [(FMNSXPCConnectionConfiguration *)v2 setMachService:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAB2E0];
  [(FMNSXPCConnectionConfiguration *)v2 setRemoteInterface:v3];

  return v2;
}

+ (FMNSXPCConnectionConfiguration)identityConfiguration
{
  v2 = objc_alloc_init(FMNSXPCConnectionConfiguration);
  [(FMNSXPCConnectionConfiguration *)v2 setServiceName:@"com.apple.icloud.FindMyDevice.FindMyDeviceIdentityXPCService"];
  [(FMNSXPCConnectionConfiguration *)v2 setOptions:0];
  [(FMNSXPCConnectionConfiguration *)v2 setMachService:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAAFE0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [v3 setClasses:v11 forSelector:sel_baaIdentityAttestationForSigningRequest_completion_ argumentIndex:0 ofReply:1];
  [v3 setClasses:v11 forSelector:sel_baaIdentityAttestationForSigningRequest_completion_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v11 forSelector:sel_identityForPasscodeActivationUnlockWithContext_completion_ argumentIndex:0 ofReply:1];
  [v3 setClasses:v11 forSelector:sel_identityForPasscodeActivationUnlockWithContext_completion_ argumentIndex:1 ofReply:1];
  [(FMNSXPCConnectionConfiguration *)v2 setRemoteInterface:v3];

  return v2;
}

+ (FMNSXPCConnectionConfiguration)emergencyCallInfoPublisherConfiguration
{
  v2 = objc_alloc_init(FMNSXPCConnectionConfiguration);
  [(FMNSXPCConnectionConfiguration *)v2 setServiceName:@"com.apple.icloud.FindMyDevice.FindMyDeviceEmergencyCallInfoPublisherXPCService"];
  [(FMNSXPCConnectionConfiguration *)v2 setOptions:0];
  [(FMNSXPCConnectionConfiguration *)v2 setMachService:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAB040];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
  [v3 setClasses:v9 forSelector:sel_publishInfo_completion_ argumentIndex:0 ofReply:0];
  [(FMNSXPCConnectionConfiguration *)v2 setRemoteInterface:v3];

  return v2;
}

+ (FMNSXPCConnectionConfiguration)userNotificationConfiguration
{
  v2 = objc_alloc_init(FMNSXPCConnectionConfiguration);
  [(FMNSXPCConnectionConfiguration *)v2 setServiceName:@"com.apple.icloud.FindMyDevice.FindMyDeviceUserNotificationsXPCService"];
  [(FMNSXPCConnectionConfiguration *)v2 setOptions:0];
  [(FMNSXPCConnectionConfiguration *)v2 setMachService:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAB0A0];
  [(FMNSXPCConnectionConfiguration *)v2 setRemoteInterface:v3];

  return v2;
}

+ (FMNSXPCConnectionConfiguration)btDiscoveryConfiguration
{
  v2 = objc_alloc_init(FMNSXPCConnectionConfiguration);
  [(FMNSXPCConnectionConfiguration *)v2 setServiceName:@"com.apple.icloud.FindMyDevice.FindMyDeviceBTDiscoveryXPCService"];
  [(FMNSXPCConnectionConfiguration *)v2 setOptions:0];
  [(FMNSXPCConnectionConfiguration *)v2 setMachService:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAB100];
  [(FMNSXPCConnectionConfiguration *)v2 setRemoteInterface:v3];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAB160];
  [(FMNSXPCConnectionConfiguration *)v2 setExportedInterface:v4];

  return v2;
}

+ (FMNSXPCConnectionConfiguration)helperConfiguration
{
  v2 = objc_alloc_init(FMNSXPCConnectionConfiguration);
  [(FMNSXPCConnectionConfiguration *)v2 setOptions:0];
  [(FMNSXPCConnectionConfiguration *)v2 setMachService:0];
  [(FMNSXPCConnectionConfiguration *)v2 setServiceName:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService"];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAB220];
  [(FMNSXPCConnectionConfiguration *)v2 setRemoteInterface:v3];

  return v2;
}

+ (FMNSXPCConnectionConfiguration)eraseDeviceServiceConfiguration
{
  v2 = objc_alloc_init(FMNSXPCConnectionConfiguration);
  [(FMNSXPCConnectionConfiguration *)v2 setServiceName:@"com.apple.icloud.FindMyDevice.FindMyDeviceEraseXPCService"];
  [(FMNSXPCConnectionConfiguration *)v2 setOptions:0];
  [(FMNSXPCConnectionConfiguration *)v2 setMachService:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AAB280];
  [(FMNSXPCConnectionConfiguration *)v2 setRemoteInterface:v3];

  return v2;
}

@end