@interface RegisterPeriodicPowerLoggingActivity
@end

@implementation RegisterPeriodicPowerLoggingActivity

void ___RegisterPeriodicPowerLoggingActivity_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v3 = [MEMORY[0x277D01840] sharedPowerLogger];
  v4 = [MEMORY[0x277D01788] sharedPreferences];
  v5 = [v4 voiceTriggerEnabled];
  v6 = [MEMORY[0x277D01788] sharedPreferences];
  v7 = [v6 powerLoggingCurrentLanguage];
  v8 = [MEMORY[0x277D01788] sharedPreferences];
  v9 = [v8 powerLoggingCurrentAssetConfigVersion];
  [v3 powerLogSiriConfigWithVoiceTriggerEnabled:v5 withLanguage:v7 withModelVersion:v9];

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
    v10 = v11;
  }
}

void ___RegisterPeriodicPowerLoggingActivity_block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86288], *MEMORY[0x277D862D0] + *MEMORY[0x277D862B8]);
    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86270], 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86398], 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D863A0], 0);
    xpc_activity_set_criteria(activity, v3);
  }
}

@end