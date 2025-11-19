@interface HUHomeEnergyWrapper
+ (void)setupGridForecastSnapshotsFor:(id)a3;
@end

@implementation HUHomeEnergyWrapper

+ (void)setupGridForecastSnapshotsFor:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[HUHomeEnergyWrapper setupGridForecastSnapshotsFor:]";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  if (v3)
  {
    v5 = [[HUHomeEnergyManagerHelper alloc] initWithHome:v3];
    [(HUHomeEnergyManagerHelper *)v5 initializeGridForecastSnapshots];
  }
}

@end