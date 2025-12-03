@interface HDProfile(HealthMedicationsDaemonPlugin)
- (BOOL)_profileExpectsExtension;
- (id)healthMedicationsProfileExtension;
- (void)healthMedicationsProfileExtension;
@end

@implementation HDProfile(HealthMedicationsDaemonPlugin)

- (id)healthMedicationsProfileExtension
{
  v4 = [self profileExtensionWithIdentifier:@"com.apple.health.MedicationsDaemonPlugin"];
  if ([self _profileExpectsExtension] && !v4)
  {
    [(HDProfile(HealthMedicationsDaemonPlugin) *)self healthMedicationsProfileExtension];
  }

  return v4;
}

- (BOOL)_profileExpectsExtension
{
  profileType = [self profileType];
  v2 = profileType == 1 || profileType == 100;
  return (profileType - 2) >= 3 && v2;
}

- (void)healthMedicationsProfileExtension
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  profileIdentifier = [self profileIdentifier];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HDHealthMedicationsProfileExtension.m" lineNumber:142 description:{@"Health Medications Profile Extension is nil in profile %@", profileIdentifier}];
}

@end