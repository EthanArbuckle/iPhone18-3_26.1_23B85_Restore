@interface NSPersistentCloudKitContainerOptions(HomeEnergyDaemon)
+ (void)homeenergyd_optionsWithContainerIdentifier:()HomeEnergyDaemon apnsServiceName:;
@end

@implementation NSPersistentCloudKitContainerOptions(HomeEnergyDaemon)

+ (void)homeenergyd_optionsWithContainerIdentifier:()HomeEnergyDaemon apnsServiceName:
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setUseZoneWidePCS:1];
  v8 = [objc_alloc(MEMORY[0x277CBE3A0]) initWithContainerIdentifier:v6];

  [v8 setUseDeviceToDeviceEncryption:1];
  [v8 setAutomaticallyScheduleImportAndExportOperations:1];
  [v8 setContainerOptions:v7];
  [v8 setApsConnectionMachServiceName:v5];

  v9 = v8;
  return v8;
}

@end