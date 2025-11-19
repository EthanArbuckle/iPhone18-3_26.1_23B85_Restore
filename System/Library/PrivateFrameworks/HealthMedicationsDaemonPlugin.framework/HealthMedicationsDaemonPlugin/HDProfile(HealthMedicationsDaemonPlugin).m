@interface HDProfile(HealthMedicationsDaemonPlugin)
- (BOOL)_profileExpectsExtension;
- (id)healthMedicationsProfileExtension;
- (void)healthMedicationsProfileExtension;
@end

@implementation HDProfile(HealthMedicationsDaemonPlugin)

- (id)healthMedicationsProfileExtension
{
  v4 = [a1 profileExtensionWithIdentifier:@"com.apple.health.MedicationsDaemonPlugin"];
  if ([a1 _profileExpectsExtension] && !v4)
  {
    [(HDProfile(HealthMedicationsDaemonPlugin) *)a1 healthMedicationsProfileExtension];
  }

  return v4;
}

- (BOOL)_profileExpectsExtension
{
  v1 = [a1 profileType];
  v2 = v1 == 1 || v1 == 100;
  return (v1 - 2) >= 3 && v2;
}

- (void)healthMedicationsProfileExtension
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [a1 profileIdentifier];
  [v5 handleFailureInMethod:a2 object:a1 file:@"HDHealthMedicationsProfileExtension.m" lineNumber:142 description:{@"Health Medications Profile Extension is nil in profile %@", v4}];
}

@end