@interface HDWorkoutBackgroundUtilities
+ (BOOL)hasBackgroundPermissionForBundleIdentifier:(id)identifier errorOut:(id *)out;
@end

@implementation HDWorkoutBackgroundUtilities

+ (BOOL)hasBackgroundPermissionForBundleIdentifier:(id)identifier errorOut:(id *)out
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "Client does not have background run mode. Will not take process assertion", v6, 2u);
  }

  return 0;
}

@end