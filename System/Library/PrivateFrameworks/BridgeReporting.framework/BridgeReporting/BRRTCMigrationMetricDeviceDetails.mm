@interface BRRTCMigrationMetricDeviceDetails
- (id)dictionaryOfMetricKeysWithRecordedValues;
@end

@implementation BRRTCMigrationMetricDeviceDetails

- (id)dictionaryOfMetricKeysWithRecordedValues
{
  v3 = objc_opt_new();
  gizmoBuild = [(BRRTCMigrationMetricDeviceDetails *)self gizmoBuild];

  if (gizmoBuild)
  {
    gizmoBuild2 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoBuild];
    [v3 setObject:gizmoBuild2 forKey:@"WatchBuild"];
  }

  gizmoHardware = [(BRRTCMigrationMetricDeviceDetails *)self gizmoHardware];

  if (gizmoHardware)
  {
    gizmoHardware2 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoHardware];
    [v3 setObject:gizmoHardware2 forKey:@"WatchHardware"];
  }

  gizmoBuildType = [(BRRTCMigrationMetricDeviceDetails *)self gizmoBuildType];

  if (gizmoBuildType)
  {
    gizmoBuildType2 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoBuildType];
    [v3 setObject:gizmoBuildType2 forKey:@"WatchBuildType"];
  }

  pairedDeviceCount = [(BRRTCMigrationMetricDeviceDetails *)self pairedDeviceCount];

  if (pairedDeviceCount)
  {
    pairedDeviceCount2 = [(BRRTCMigrationMetricDeviceDetails *)self pairedDeviceCount];
    [v3 setObject:pairedDeviceCount2 forKey:@"PairedDeviceCount"];
  }

  gizmoMaxPairingVersion = [(BRRTCMigrationMetricDeviceDetails *)self gizmoMaxPairingVersion];

  if (gizmoMaxPairingVersion)
  {
    gizmoMaxPairingVersion2 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoMaxPairingVersion];
    [v3 setObject:gizmoMaxPairingVersion2 forKey:@"WatchMaxPairingVersion"];
  }

  gizmoEnclosureMaterial = [(BRRTCMigrationMetricDeviceDetails *)self gizmoEnclosureMaterial];

  if (gizmoEnclosureMaterial)
  {
    gizmoEnclosureMaterial2 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoEnclosureMaterial];
    [v3 setObject:gizmoEnclosureMaterial2 forKey:@"WatchEnclosureMateral"];
  }

  switchCounter = [(BRRTCMigrationMetricDeviceDetails *)self switchCounter];

  if (switchCounter)
  {
    switchCounter2 = [(BRRTCMigrationMetricDeviceDetails *)self switchCounter];
    [v3 setObject:switchCounter2 forKey:@"SwitchCounter"];
  }

  migratingDeviceId = [(BRRTCMigrationMetricDeviceDetails *)self migratingDeviceId];

  if (migratingDeviceId)
  {
    migratingDeviceId2 = [(BRRTCMigrationMetricDeviceDetails *)self migratingDeviceId];
    [v3 setObject:migratingDeviceId2 forKey:@"MigratingDeviceId"];
  }

  return v3;
}

@end