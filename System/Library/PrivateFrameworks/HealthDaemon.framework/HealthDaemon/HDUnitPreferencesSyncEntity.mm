@interface HDUnitPreferencesSyncEntity
+ (void)didReceiveValuesForKeys:(id)keys profile:(id)profile;
@end

@implementation HDUnitPreferencesSyncEntity

+ (void)didReceiveValuesForKeys:(id)keys profile:(id)profile
{
  unitPreferencesManager = [profile unitPreferencesManager];
  if (unitPreferencesManager)
  {
    v6 = unitPreferencesManager;
    os_unfair_lock_lock(unitPreferencesManager + 8);
    v5 = *&v6[4]._os_unfair_lock_opaque;
    *&v6[4]._os_unfair_lock_opaque = 0;

    [(HDUnitPreferencesManager *)v6 _lock_notifyObserversWithUnitPreferences];
    os_unfair_lock_unlock(v6 + 8);
    unitPreferencesManager = v6;
  }
}

@end