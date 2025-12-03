@interface HDDaemon(HealthMedicationsDaemonPlugin)
- (id)healthMedicationsDaemonExtension;
- (void)healthMedicationsDaemonExtension;
@end

@implementation HDDaemon(HealthMedicationsDaemonPlugin)

- (id)healthMedicationsDaemonExtension
{
  v4 = [self daemonExtensionWithIdentifier:@"com.apple.health.MedicationsDaemonPlugin"];
  if (!v4)
  {
    [(HDDaemon(HealthMedicationsDaemonPlugin) *)a2 healthMedicationsDaemonExtension];
  }

  return v4;
}

- (void)healthMedicationsDaemonExtension
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HDHealthMedicationsDaemonExtension.m" lineNumber:95 description:@"Health Medications Daemon Extension should not be nil"];
}

@end