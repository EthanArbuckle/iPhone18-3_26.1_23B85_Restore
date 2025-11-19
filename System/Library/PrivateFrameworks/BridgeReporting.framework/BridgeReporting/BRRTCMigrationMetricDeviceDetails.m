@interface BRRTCMigrationMetricDeviceDetails
- (id)dictionaryOfMetricKeysWithRecordedValues;
@end

@implementation BRRTCMigrationMetricDeviceDetails

- (id)dictionaryOfMetricKeysWithRecordedValues
{
  v3 = objc_opt_new();
  v4 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoBuild];

  if (v4)
  {
    v5 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoBuild];
    [v3 setObject:v5 forKey:@"WatchBuild"];
  }

  v6 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoHardware];

  if (v6)
  {
    v7 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoHardware];
    [v3 setObject:v7 forKey:@"WatchHardware"];
  }

  v8 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoBuildType];

  if (v8)
  {
    v9 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoBuildType];
    [v3 setObject:v9 forKey:@"WatchBuildType"];
  }

  v10 = [(BRRTCMigrationMetricDeviceDetails *)self pairedDeviceCount];

  if (v10)
  {
    v11 = [(BRRTCMigrationMetricDeviceDetails *)self pairedDeviceCount];
    [v3 setObject:v11 forKey:@"PairedDeviceCount"];
  }

  v12 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoMaxPairingVersion];

  if (v12)
  {
    v13 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoMaxPairingVersion];
    [v3 setObject:v13 forKey:@"WatchMaxPairingVersion"];
  }

  v14 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoEnclosureMaterial];

  if (v14)
  {
    v15 = [(BRRTCMigrationMetricDeviceDetails *)self gizmoEnclosureMaterial];
    [v3 setObject:v15 forKey:@"WatchEnclosureMateral"];
  }

  v16 = [(BRRTCMigrationMetricDeviceDetails *)self switchCounter];

  if (v16)
  {
    v17 = [(BRRTCMigrationMetricDeviceDetails *)self switchCounter];
    [v3 setObject:v17 forKey:@"SwitchCounter"];
  }

  v18 = [(BRRTCMigrationMetricDeviceDetails *)self migratingDeviceId];

  if (v18)
  {
    v19 = [(BRRTCMigrationMetricDeviceDetails *)self migratingDeviceId];
    [v3 setObject:v19 forKey:@"MigratingDeviceId"];
  }

  return v3;
}

@end