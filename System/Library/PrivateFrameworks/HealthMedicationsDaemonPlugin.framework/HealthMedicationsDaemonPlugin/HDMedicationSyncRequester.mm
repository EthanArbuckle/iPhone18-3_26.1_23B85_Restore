@interface HDMedicationSyncRequester
- (HDMedicationSyncRequester)initWithProfileExtension:(id)a3;
- (void)_triggerSyncIfNeededForSchedulesBySyncIdentity:(void *)a1;
@end

@implementation HDMedicationSyncRequester

- (HDMedicationSyncRequester)initWithProfileExtension:(id)a3
{
  v4 = a3;
  v5 = [v4 profile];
  v9.receiver = self;
  v9.super_class = HDMedicationSyncRequester;
  v6 = [(HDSyncRequester *)&v9 initWithProfile:v5];

  if (v6)
  {
    v7 = [v4 medicationScheduleManager];
    [v7 registerObserver:v6 queue:0];
  }

  return v6;
}

- (void)_triggerSyncIfNeededForSchedulesBySyncIdentity:(void *)a1
{
  v10 = a2;
  if (a1)
  {
    v3 = [a1 profile];
    v4 = [v3 syncIdentityManager];
    v5 = [v4 currentSyncIdentity];
    v6 = [v5 entity];
    v7 = [v6 persistentID];

    v8 = [v10 allKeys];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
    LODWORD(v5) = [v8 containsObject:v9];

    if (v5)
    {
      [a1 requestSyncsWithReason:@"Did insert medication schedules" options:1];
    }
  }
}

@end