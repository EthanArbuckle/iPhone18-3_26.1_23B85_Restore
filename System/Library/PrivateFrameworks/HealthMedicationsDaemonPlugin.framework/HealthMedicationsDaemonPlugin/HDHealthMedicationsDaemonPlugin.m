@interface HDHealthMedicationsDaemonPlugin
- (id)_databaseSchemaForProtectionClass:(id)a1;
- (id)createMedicationsDaemonExtensionForHealthDaemon:(id)a3;
- (id)createMedicationsProfileExtensionForProfile:(id)a3;
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (id)demoDataGeneratorClasses;
- (id)extensionForProfile:(id)a3;
- (id)notificationInstructionCriteriaClasses;
- (id)ontologyFeatureEvaluatorsForDaemon:(id)a3;
- (id)ontologySchemaImporterClasses;
- (id)orderedSyncEntities;
- (id)stateSyncEntityClasses;
- (id)taskServerClasses;
- (id)userDomainConceptEntityClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4;
@end

@implementation HDHealthMedicationsDaemonPlugin

- (id)extensionForProfile:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HDHealthMedicationsDaemonPlugin *)self createMedicationsProfileExtensionForProfile:v4];
    [v5 start];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createMedicationsDaemonExtensionForHealthDaemon:(id)a3
{
  v3 = a3;
  v4 = [[HDHealthMedicationsDaemonExtension alloc] initWithHealthDaemon:v3];

  return v4;
}

- (id)createMedicationsProfileExtensionForProfile:(id)a3
{
  v3 = a3;
  v4 = [[HDHealthMedicationsProfileExtension alloc] initWithProfile:v3];

  return v4;
}

- (id)taskServerClasses
{
  v5[7] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3
{
  v3 = [(HDHealthMedicationsDaemonPlugin *)self _databaseSchemaForProtectionClass:a3];
  v4 = [v3 currentSchemaVersion];

  return v4;
}

- (id)notificationInstructionCriteriaClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)userDomainConceptEntityClasses
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v6 = v2;
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)orderedSyncEntities
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)ontologySchemaImporterClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CCC628];
  v6[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)ontologyFeatureEvaluatorsForDaemon:(id)a3
{
  v3 = [a3 healthMedicationsDaemonExtension];
  v4 = [v3 ontologyFeatureEvaluators];

  return v4;
}

- (id)demoDataGeneratorClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)stateSyncEntityClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_databaseSchemaForProtectionClass:(id)a1
{
  if (a1)
  {
    if (a2 == 1)
    {
      v3 = off_2796CCA18;
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_7;
      }

      v3 = off_2796CCA10;
    }

    a1 = objc_alloc_init(*v3);
  }

LABEL_7:

  return a1;
}

- (id)databaseEntitiesForProtectionClass:(int64_t)a3
{
  v3 = [(HDHealthMedicationsDaemonPlugin *)self _databaseSchemaForProtectionClass:a3];
  v4 = [v3 databaseEntities];

  return v4;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)a3 migrator:(id)a4
{
  v6 = a4;
  v8 = [(HDHealthMedicationsDaemonPlugin *)self _databaseSchemaForProtectionClass:a3];
  v7 = [(HDHealthMedicationsDaemonPlugin *)self schemaName];
  [v8 registerMigrationStepsWithMigrator:v6 schemaName:v7];
}

@end