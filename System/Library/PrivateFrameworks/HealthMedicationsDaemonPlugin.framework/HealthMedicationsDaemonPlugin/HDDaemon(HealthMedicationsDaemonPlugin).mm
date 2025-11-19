@interface HDDaemon(HealthMedicationsDaemonPlugin)
- (id)healthMedicationsDaemonExtension;
- (void)healthMedicationsDaemonExtension;
@end

@implementation HDDaemon(HealthMedicationsDaemonPlugin)

- (id)healthMedicationsDaemonExtension
{
  v4 = [a1 daemonExtensionWithIdentifier:@"com.apple.health.MedicationsDaemonPlugin"];
  if (!v4)
  {
    [(HDDaemon(HealthMedicationsDaemonPlugin) *)a2 healthMedicationsDaemonExtension];
  }

  return v4;
}

- (void)healthMedicationsDaemonExtension
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthMedicationsDaemonExtension.m" lineNumber:95 description:@"Health Medications Daemon Extension should not be nil"];
}

@end