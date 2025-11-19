@interface _DKAirplaneModeMonitor
+ (id)_eventWithState:(BOOL)a3;
- (void)deactivate;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)updateAirplaneModeStatus;
@end

@implementation _DKAirplaneModeMonitor

+ (id)_eventWithState:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v3 = ;
  v4 = MEMORY[0x277CFE1D8];
  v5 = [MEMORY[0x277CFE298] airplaneModeStream];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v4 eventWithStream:v5 startDate:v6 endDate:v7 value:v3];

  return v8;
}

- (void)dealloc
{
  [(_DKAirplaneModeMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKAirplaneModeMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[_DKAirplaneModeMonitor start]";
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "%s: SCPreferencesCreate() failed for com.apple.radios.plist", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKAirplaneModeMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKAirplaneModeMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_22595A000, a1, a3, "%s: Deactivated _DKAirplaneModeMonitor", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateAirplaneModeStatus
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[_DKAirplaneModeMonitor updateAirplaneModeStatus]";
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "%s: SCPreferencesRef is nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end