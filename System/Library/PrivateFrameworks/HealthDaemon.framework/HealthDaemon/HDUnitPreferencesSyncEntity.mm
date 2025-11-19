@interface HDUnitPreferencesSyncEntity
+ (void)didReceiveValuesForKeys:(id)a3 profile:(id)a4;
@end

@implementation HDUnitPreferencesSyncEntity

+ (void)didReceiveValuesForKeys:(id)a3 profile:(id)a4
{
  v4 = [a4 unitPreferencesManager];
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock(v4 + 8);
    v5 = *&v6[4]._os_unfair_lock_opaque;
    *&v6[4]._os_unfair_lock_opaque = 0;

    [(HDUnitPreferencesManager *)v6 _lock_notifyObserversWithUnitPreferences];
    os_unfair_lock_unlock(v6 + 8);
    v4 = v6;
  }
}

@end