@interface NMSAppActivityStatus
- (BOOL)_exceedsDormancyInterval:(double)a3 forDate:(id)a4;
- (BOOL)isAppContentDormant;
- (BOOL)isAppContentDormantWithInterval:(double)a3;
- (BOOL)isAppDownloadingDormant;
- (BOOL)isAppDownloadingDormantWithInterval:(double)a3;
- (NMSAppActivityStatus)initWithBundleID:(id)a3;
- (double)_defaultDormancyInterval;
- (id)description;
@end

@implementation NMSAppActivityStatus

- (NMSAppActivityStatus)initWithBundleID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NMSAppActivityStatus;
  v6 = [(NMSAppActivityStatus *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = +[NMSyncDefaults sharedDefaults];
  v4 = [(NMSAppActivityStatus *)self bundleID];
  v5 = [v3 installDateForBundleID:v4];

  v6 = +[NMSyncDefaults sharedDefaults];
  v7 = [(NMSAppActivityStatus *)self bundleID];
  v8 = [v6 lastUserPinningChangeDateForBundleID:v7];

  v9 = +[NMSyncDefaults sharedDefaults];
  v10 = [(NMSAppActivityStatus *)self bundleID];
  v11 = [v9 lastContentUsedDateForBundleID:v10];

  v12 = +[NMSyncDefaults sharedDefaults];
  v13 = [(NMSAppActivityStatus *)self bundleID];
  v14 = [v12 lastLocalPlaybackDateForBundleID:v13];

  v15 = +[NMSyncDefaults sharedDefaults];
  v16 = [(NMSAppActivityStatus *)self bundleID];
  v17 = [v15 dormancyIntervalInHoursForBundleID:v16];

  v18 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = NMSAppActivityStatus;
  v19 = [(NMSAppActivityStatus *)&v23 description];
  v20 = [(NMSAppActivityStatus *)self bundleID];
  v21 = [v18 stringWithFormat:@"%@ bundleID <%@> installDate <%@> lastPinChange <%@> lastContentUsedDate <%@> lastLocalPlaybackDate <%@> dormancyIntervalInHours <%ld>", v19, v20, v5, v8, v11, v14, v17];

  return v21;
}

- (BOOL)_exceedsDormancyInterval:(double)a3 forDate:(id)a4
{
  if (!a4)
  {
    return 1;
  }

  v5 = MEMORY[0x277CBEAA8];
  v6 = a4;
  [v5 timeIntervalSinceReferenceDate];
  v8 = v7;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;

  return v8 - v10 >= a3;
}

- (BOOL)isAppContentDormant
{
  [(NMSAppActivityStatus *)self _defaultDormancyInterval];

  return [(NMSAppActivityStatus *)self isAppContentDormantWithInterval:?];
}

- (BOOL)isAppContentDormantWithInterval:(double)a3
{
  v5 = +[NMSyncDefaults sharedDefaults];
  v6 = [(NMSAppActivityStatus *)self bundleID];
  v7 = [v5 lastUserLaunchDateForBundleID:v6];

  if ([(NMSAppActivityStatus *)self _exceedsDormancyInterval:v7 forDate:a3])
  {
    v8 = +[NMSyncDefaults sharedDefaults];
    v9 = [(NMSAppActivityStatus *)self bundleID];
    v10 = [v8 lastContentUsedDateForBundleID:v9];

    if ([(NMSAppActivityStatus *)self _exceedsDormancyInterval:v10 forDate:a3])
    {
      v11 = [(NMSAppActivityStatus *)self isAppDownloadingDormantWithInterval:a3];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isAppDownloadingDormant
{
  [(NMSAppActivityStatus *)self _defaultDormancyInterval];

  return [(NMSAppActivityStatus *)self isAppDownloadingDormantWithInterval:?];
}

- (BOOL)isAppDownloadingDormantWithInterval:(double)a3
{
  v5 = +[NMSyncDefaults sharedDefaults];
  v6 = [(NMSAppActivityStatus *)self bundleID];
  v7 = [v5 lastUserPinningChangeDateForBundleID:v6];

  if ([(NMSAppActivityStatus *)self _exceedsDormancyInterval:v7 forDate:a3])
  {
    v8 = +[NMSyncDefaults sharedDefaults];
    v9 = [(NMSAppActivityStatus *)self bundleID];
    v10 = [v8 lastLocalPlaybackDateForBundleID:v9];

    if ([(NMSAppActivityStatus *)self _exceedsDormancyInterval:v10 forDate:a3])
    {
      v11 = +[NMSyncDefaults sharedDefaults];
      v12 = [(NMSAppActivityStatus *)self bundleID];
      v13 = [v11 installDateForBundleID:v12];

      v14 = [(NMSAppActivityStatus *)self _exceedsDormancyInterval:v13 forDate:a3];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (double)_defaultDormancyInterval
{
  v3 = +[NMSyncDefaults sharedDefaults];
  v4 = [(NMSAppActivityStatus *)self bundleID];
  v5 = [v3 dormancyIntervalInHoursForBundleID:v4];

  return (3600 * v5);
}

@end