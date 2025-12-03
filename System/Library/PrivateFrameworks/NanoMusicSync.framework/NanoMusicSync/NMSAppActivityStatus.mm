@interface NMSAppActivityStatus
- (BOOL)_exceedsDormancyInterval:(double)interval forDate:(id)date;
- (BOOL)isAppContentDormant;
- (BOOL)isAppContentDormantWithInterval:(double)interval;
- (BOOL)isAppDownloadingDormant;
- (BOOL)isAppDownloadingDormantWithInterval:(double)interval;
- (NMSAppActivityStatus)initWithBundleID:(id)d;
- (double)_defaultDormancyInterval;
- (id)description;
@end

@implementation NMSAppActivityStatus

- (NMSAppActivityStatus)initWithBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = NMSAppActivityStatus;
  v6 = [(NMSAppActivityStatus *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
    v8 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = +[NMSyncDefaults sharedDefaults];
  bundleID = [(NMSAppActivityStatus *)self bundleID];
  v5 = [v3 installDateForBundleID:bundleID];

  v6 = +[NMSyncDefaults sharedDefaults];
  bundleID2 = [(NMSAppActivityStatus *)self bundleID];
  v8 = [v6 lastUserPinningChangeDateForBundleID:bundleID2];

  v9 = +[NMSyncDefaults sharedDefaults];
  bundleID3 = [(NMSAppActivityStatus *)self bundleID];
  v11 = [v9 lastContentUsedDateForBundleID:bundleID3];

  v12 = +[NMSyncDefaults sharedDefaults];
  bundleID4 = [(NMSAppActivityStatus *)self bundleID];
  v14 = [v12 lastLocalPlaybackDateForBundleID:bundleID4];

  v15 = +[NMSyncDefaults sharedDefaults];
  bundleID5 = [(NMSAppActivityStatus *)self bundleID];
  v17 = [v15 dormancyIntervalInHoursForBundleID:bundleID5];

  v18 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = NMSAppActivityStatus;
  v19 = [(NMSAppActivityStatus *)&v23 description];
  bundleID6 = [(NMSAppActivityStatus *)self bundleID];
  v21 = [v18 stringWithFormat:@"%@ bundleID <%@> installDate <%@> lastPinChange <%@> lastContentUsedDate <%@> lastLocalPlaybackDate <%@> dormancyIntervalInHours <%ld>", v19, bundleID6, v5, v8, v11, v14, v17];

  return v21;
}

- (BOOL)_exceedsDormancyInterval:(double)interval forDate:(id)date
{
  if (!date)
  {
    return 1;
  }

  v5 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  [v5 timeIntervalSinceReferenceDate];
  v8 = v7;
  [dateCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  return v8 - v10 >= interval;
}

- (BOOL)isAppContentDormant
{
  [(NMSAppActivityStatus *)self _defaultDormancyInterval];

  return [(NMSAppActivityStatus *)self isAppContentDormantWithInterval:?];
}

- (BOOL)isAppContentDormantWithInterval:(double)interval
{
  v5 = +[NMSyncDefaults sharedDefaults];
  bundleID = [(NMSAppActivityStatus *)self bundleID];
  v7 = [v5 lastUserLaunchDateForBundleID:bundleID];

  if ([(NMSAppActivityStatus *)self _exceedsDormancyInterval:v7 forDate:interval])
  {
    v8 = +[NMSyncDefaults sharedDefaults];
    bundleID2 = [(NMSAppActivityStatus *)self bundleID];
    v10 = [v8 lastContentUsedDateForBundleID:bundleID2];

    if ([(NMSAppActivityStatus *)self _exceedsDormancyInterval:v10 forDate:interval])
    {
      v11 = [(NMSAppActivityStatus *)self isAppDownloadingDormantWithInterval:interval];
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

- (BOOL)isAppDownloadingDormantWithInterval:(double)interval
{
  v5 = +[NMSyncDefaults sharedDefaults];
  bundleID = [(NMSAppActivityStatus *)self bundleID];
  v7 = [v5 lastUserPinningChangeDateForBundleID:bundleID];

  if ([(NMSAppActivityStatus *)self _exceedsDormancyInterval:v7 forDate:interval])
  {
    v8 = +[NMSyncDefaults sharedDefaults];
    bundleID2 = [(NMSAppActivityStatus *)self bundleID];
    v10 = [v8 lastLocalPlaybackDateForBundleID:bundleID2];

    if ([(NMSAppActivityStatus *)self _exceedsDormancyInterval:v10 forDate:interval])
    {
      v11 = +[NMSyncDefaults sharedDefaults];
      bundleID3 = [(NMSAppActivityStatus *)self bundleID];
      v13 = [v11 installDateForBundleID:bundleID3];

      v14 = [(NMSAppActivityStatus *)self _exceedsDormancyInterval:v13 forDate:interval];
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
  bundleID = [(NMSAppActivityStatus *)self bundleID];
  v5 = [v3 dormancyIntervalInHoursForBundleID:bundleID];

  return (3600 * v5);
}

@end