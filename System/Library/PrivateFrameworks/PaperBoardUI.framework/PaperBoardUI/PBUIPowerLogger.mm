@interface PBUIPowerLogger
+ (void)sendTelemetryForPosterForegroundChange:(BOOL)a3 posterProviderID:(id)a4 posterPowerlogIdentifier:(unint64_t)a5;
@end

@implementation PBUIPowerLogger

+ (void)sendTelemetryForPosterForegroundChange:(BOOL)a3 posterProviderID:(id)a4 posterPowerlogIdentifier:(unint64_t)a5
{
  v6 = a3;
  v23[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  v9 = @"Unknown";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = @"background";
  if (v6)
  {
    v11 = @"foreground";
  }

  v12 = v11;
  v13 = v12;
  if (MEMORY[0x282227608])
  {
    v22[0] = @"event";
    v22[1] = @"WallpaperID";
    v23[0] = v12;
    v23[1] = v10;
    v22[2] = @"WallpaperType";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v23[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    if (_sharedWallpaperMetricsTelemetryIdentifier_onceToken != -1)
    {
      +[PBUIPowerLogger sendTelemetryForPosterForegroundChange:posterProviderID:posterPowerlogIdentifier:];
    }

    PPSSendTelemetry();
  }

  else
  {
    v15 = PBUILogPower();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PBUIPowerLogger sendTelemetryForPosterForegroundChange:v15 posterProviderID:? posterPowerlogIdentifier:?];
    }
  }

  v16 = PBUILogPower();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109634;
    v17[1] = v6;
    v18 = 2114;
    v19 = v10;
    v20 = 2048;
    v21 = a5;
    _os_log_impl(&dword_21E67D000, v16, OS_LOG_TYPE_DEFAULT, "Sent Telemetry: foreground=%{BOOL}d, posterID=%{public}@, posterPowerlogIdentifier=%lu", v17, 0x1Cu);
  }
}

@end