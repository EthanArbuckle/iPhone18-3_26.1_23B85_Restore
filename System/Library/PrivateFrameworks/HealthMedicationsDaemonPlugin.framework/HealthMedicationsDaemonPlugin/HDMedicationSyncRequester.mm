@interface HDMedicationSyncRequester
- (HDMedicationSyncRequester)initWithProfileExtension:(id)extension;
- (void)_triggerSyncIfNeededForSchedulesBySyncIdentity:(void *)identity;
@end

@implementation HDMedicationSyncRequester

- (HDMedicationSyncRequester)initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
  profile = [extensionCopy profile];
  v9.receiver = self;
  v9.super_class = HDMedicationSyncRequester;
  v6 = [(HDSyncRequester *)&v9 initWithProfile:profile];

  if (v6)
  {
    medicationScheduleManager = [extensionCopy medicationScheduleManager];
    [medicationScheduleManager registerObserver:v6 queue:0];
  }

  return v6;
}

- (void)_triggerSyncIfNeededForSchedulesBySyncIdentity:(void *)identity
{
  v10 = a2;
  if (identity)
  {
    profile = [identity profile];
    syncIdentityManager = [profile syncIdentityManager];
    currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
    entity = [currentSyncIdentity entity];
    persistentID = [entity persistentID];

    allKeys = [v10 allKeys];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:persistentID];
    LODWORD(currentSyncIdentity) = [allKeys containsObject:v9];

    if (currentSyncIdentity)
    {
      [identity requestSyncsWithReason:@"Did insert medication schedules" options:1];
    }
  }
}

@end