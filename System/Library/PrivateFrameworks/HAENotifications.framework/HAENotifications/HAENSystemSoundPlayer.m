@interface HAENSystemSoundPlayer
+ (id)sharedInstance;
- (HAENSystemSoundPlayer)init;
- (id)playSystemSoundWithEvent:(id)a3 completion:(id)a4;
- (void)dealloc;
@end

@implementation HAENSystemSoundPlayer

+ (id)sharedInstance
{
  if (sharedInstance_once_3 != -1)
  {
    +[HAENSystemSoundPlayer sharedInstance];
  }

  v3 = sharedInstance_instance_3;

  return v3;
}

uint64_t __39__HAENSystemSoundPlayer_sharedInstance__block_invoke()
{
  sharedInstance_instance_3 = objc_alloc_init(HAENSystemSoundPlayer);

  return MEMORY[0x2821F96F8]();
}

- (HAENSystemSoundPlayer)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HAENSystemSoundPlayer;
  v2 = [(HAENSystemSoundPlayer *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEAC0];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
    v5 = *MEMORY[0x277CBA640];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v7 = *MEMORY[0x277CBA648];
    LODWORD(v8) = 1.0;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v10 = [v3 dictionaryWithObjectsAndKeys:{v4, v5, v6, v7, v9, *MEMORY[0x277CBA660], 0}];
    options = v2->_options;
    v2->_options = v10;

    v2->_turnOFFSound = 0;
    if (MGGetBoolAnswer())
    {
      CFPreferencesAppSynchronize(@"com.apple.coreaudio");
      if (CFPreferencesGetAppBooleanValue(@"haen_soundoff", @"com.apple.coreaudio", 0))
      {
        v2->_turnOFFSound = 1;
        v12 = HAENotificationsLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25081E000, v12, OS_LOG_TYPE_DEFAULT, "Setting HAEN Sounds off", buf, 2u);
        }
      }
    }

    v13 = HAENotificationsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v2->_options;
      *buf = 138412290;
      v19 = v14;
      _os_log_impl(&dword_25081E000, v13, OS_LOG_TYPE_INFO, "System Sound Options: %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)playSystemSoundWithEvent:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HAENotificationsLog();
  v9 = [v6 uuid];
  v10 = [v9 hash];

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = [v6 uuid];
    v15 = 138412290;
    v16 = v11;
    _os_signpost_emit_with_name_impl(&dword_25081E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "HAENSSPlayed", "%@", &v15, 0xCu);
  }

  if (!self->_turnOFFSound)
  {
    options = self->_options;
    AudioServicesPlaySystemSoundWithOptions();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = HAENSystemSoundPlayer;
  [(HAENSystemSoundPlayer *)&v2 dealloc];
}

@end