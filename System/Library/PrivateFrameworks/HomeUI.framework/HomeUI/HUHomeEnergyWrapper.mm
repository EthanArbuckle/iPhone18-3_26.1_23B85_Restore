@interface HUHomeEnergyWrapper
+ (void)setupGridForecastSnapshotsFor:(id)for;
@end

@implementation HUHomeEnergyWrapper

+ (void)setupGridForecastSnapshotsFor:(id)for
{
  v10 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[HUHomeEnergyWrapper setupGridForecastSnapshotsFor:]";
    v8 = 2112;
    v9 = forCopy;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  if (forCopy)
  {
    v5 = [[HUHomeEnergyManagerHelper alloc] initWithHome:forCopy];
    [(HUHomeEnergyManagerHelper *)v5 initializeGridForecastSnapshots];
  }
}

@end