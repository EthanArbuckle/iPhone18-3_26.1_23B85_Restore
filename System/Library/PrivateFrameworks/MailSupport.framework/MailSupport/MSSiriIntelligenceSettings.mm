@interface MSSiriIntelligenceSettings
+ (BOOL)canShowSiriSuggestions;
+ (OS_os_log)log;
+ (void)_initializeSettings;
+ (void)canShowSiriSuggestions;
+ (void)setCanShowSiriSuggestions:(BOOL)suggestions;
@end

@implementation MSSiriIntelligenceSettings

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MSSiriIntelligenceSettings_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __33__MSSiriIntelligenceSettings_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

+ (BOOL)canShowSiriSuggestions
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSSiriIntelligenceSettings_canShowSiriSuggestions__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (canShowSiriSuggestions_onceToken != -1)
  {
    dispatch_once(&canShowSiriSuggestions_onceToken, block);
  }

  v2 = atomic_load(sMSCanShowSiriSuggestions);
  v3 = +[MSSiriIntelligenceSettings log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(MSSiriIntelligenceSettings *)v2];
  }

  return v2 & 1;
}

+ (void)setCanShowSiriSuggestions:(BOOL)suggestions
{
  atomic_store(suggestions, sMSCanShowSiriSuggestions);
  v4 = +[MSSiriIntelligenceSettings log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(MSSiriIntelligenceSettings *)suggestions setCanShowSiriSuggestions:v4];
  }
}

+ (void)_initializeSettings
{
  atomic_store(SGAppCanShowSiriSuggestions(*MEMORY[0x277D06BD8]), sMSCanShowSiriSuggestions);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__MSSiriIntelligenceSettings__initializeSettings__block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_v12__0i8l;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  out_token = 0;
  v4 = dispatch_get_global_queue(17, 0);
  notify_register_dispatch("com.apple.suggestions.settingsChanged", &out_token, v4, v3);
}

uint64_t __49__MSSiriIntelligenceSettings__initializeSettings__block_invoke(uint64_t a1)
{
  CanShowSiriSuggestions = SGAppCanShowSiriSuggestions(*MEMORY[0x277D06BD8]);
  v3 = *(a1 + 32);

  return [v3 setCanShowSiriSuggestions:CanShowSiriSuggestions];
}

+ (void)canShowSiriSuggestions
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self & 1;
  _os_log_debug_impl(&dword_257F8E000, a2, OS_LOG_TYPE_DEBUG, "canShowSiriSuggestions = %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)setCanShowSiriSuggestions:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_257F8E000, a2, OS_LOG_TYPE_DEBUG, "setCanShowSiriSuggestions = %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end