@interface MTSound
+ (id)_loadDefaultAlarmSound;
+ (id)_loadDefaultTimerSound;
+ (id)defaultSoundForCategory:(unint64_t)category;
+ (id)descriptionForCategory:(unint64_t)category;
+ (id)songSoundWithIdentifier:(id)identifier vibrationIdentifier:(id)vibrationIdentifier volume:(id)volume;
+ (id)toneSoundWithIdentifier:(id)identifier vibrationIdentifer:(id)identifer volume:(id)volume;
+ (int64_t)_alertTypeForCategory:(unint64_t)category;
+ (void)_saveDefaultAlarmSound:(id)sound;
+ (void)_saveDefaultTimerSound:(id)sound;
+ (void)setDefaultSound:(id)sound forCategory:(unint64_t)category;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSound:(id)sound;
- (BOOL)isSilent;
- (MTSound)initWithCoder:(id)coder;
- (MTSound)initWithMTCDSound:(id)sound;
- (MTSound)initWithMediaItemIdentifier:(id)identifier vibrationIdentifier:(id)vibrationIdentifier volume:(id)volume;
- (MTSound)initWithSound:(id)sound usingVolume:(id)volume;
- (MTSound)initWithToneIdentifier:(id)identifier vibrationIdentifer:(id)identifer volume:(id)volume;
- (NSString)description;
- (id)previewWithCompletionHandler:(id)handler;
- (id)soundByUpdatingVibrationIdentifier:(id)identifier;
- (id)soundByUpdatingVolume:(id)volume;
- (id)unSoundForCategory:(unint64_t)category;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updatePreview:(id)preview;
@end

@implementation MTSound

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  toneIdentifier = [(MTSound *)self toneIdentifier];
  mediaItemIdentifier = [(MTSound *)self mediaItemIdentifier];
  vibrationIdentifier = [(MTSound *)self vibrationIdentifier];
  soundVolume = [(MTSound *)self soundVolume];
  v9 = [v3 stringWithFormat:@"<%@:%p toneID: %@, mediaItemID: %@, vibeID: %@, volume: %@", v4, self, toneIdentifier, mediaItemIdentifier, vibrationIdentifier, soundVolume];

  return v9;
}

+ (int64_t)_alertTypeForCategory:(unint64_t)category
{
  v3 = 13;
  if (category == 1)
  {
    v3 = 14;
  }

  if (category == 4)
  {
    return 17;
  }

  else
  {
    return v3;
  }
}

- (id)unSoundForCategory:(unint64_t)category
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() descriptionForCategory:category];
    v21 = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "[Sound] Converting %{public}@ to UNNotificationSound for category %{public}@", &v21, 0x16u);
  }

  v7 = [MEMORY[0x1E6983238] soundWithAlertType:{objc_msgSend(objc_opt_class(), "_alertTypeForCategory:", category)}];
  v8 = v7;
  if (category == 4)
  {
    [v7 setShouldRepeat:0];
  }

  else if (category == 2)
  {
    [v7 setShouldRepeat:0];
    [v8 setAlertTopic:*MEMORY[0x1E69DA908]];
  }

  else
  {
    [v7 setShouldRepeat:1];
    [v8 setShouldIgnoreRingerSwitch:1];
    v9 = +[MTUserDefaults sharedUserDefaults];
    v10 = [v9 integerForKey:@"MTAlertSoundDuration" defaultValue:15];

    [v8 setMaximumDuration:(60 * v10)];
    soundVolume = [(MTSound *)self soundVolume];
    [v8 setAudioVolume:soundVolume];

    if (category == 3)
    {
      [v8 setAlertTopic:*MEMORY[0x1E69DA910]];
    }

    vibrationIdentifier = [(MTSound *)self vibrationIdentifier];
    [v8 setVibrationIdentifier:vibrationIdentifier];

    soundType = [(MTSound *)self soundType];
    if (soundType == 3)
    {
      mediaItemIdentifier = [(MTSound *)self mediaItemIdentifier];
      integerValue = [mediaItemIdentifier integerValue];

      [v8 setToneMediaLibraryItemIdentifier:integerValue];
    }

    else if (soundType == 2)
    {
      toneIdentifier = [(MTSound *)self toneIdentifier];
      [v8 setToneIdentifier:toneIdentifier];
    }
  }

  v17 = MTLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    mt_Description = [v8 mt_Description];
    v21 = 138412290;
    selfCopy = mt_Description;
    _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "[Sound] Made %@", &v21, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)defaultSoundForCategory:(unint64_t)category
{
  if (category <= 1)
  {
    if (!category)
    {
      v4 = +[MTSound _loadDefaultAlarmSound];
      goto LABEL_13;
    }

    if (category == 1)
    {
      v4 = +[MTSound _loadDefaultTimerSound];
      goto LABEL_13;
    }
  }

  else
  {
    switch(category)
    {
      case 2uLL:
        goto LABEL_5;
      case 3uLL:
        v3 = &unk_1F2966018;
        goto LABEL_10;
      case 4uLL:
LABEL_5:
        v3 = 0;
LABEL_10:
        v4 = [MTSound toneSoundWithIdentifier:0 vibrationIdentifer:0 volume:v3];
        goto LABEL_13;
    }
  }

  NSLog(&cfstr_UnexpectedMtso.isa, a2, category);
  v4 = 0;
LABEL_13:

  return v4;
}

+ (void)setDefaultSound:(id)sound forCategory:(unint64_t)category
{
  soundCopy = sound;
  v6 = soundCopy;
  if (soundCopy)
  {
    if (category - 2 < 3)
    {
      goto LABEL_10;
    }

    v7 = soundCopy;
    if (category == 1)
    {
      soundCopy = [MTSound _saveDefaultTimerSound:soundCopy];
    }

    else if (category)
    {
      NSLog(&cfstr_UnexpectedMtso.isa, soundCopy, category);
    }

    else
    {
      soundCopy = [MTSound _saveDefaultAlarmSound:soundCopy];
    }
  }

  else
  {
    v7 = 0;
    NSLog(&cfstr_SoundMustBeNon.isa, 0);
  }

  v6 = v7;
LABEL_10:

  MEMORY[0x1EEE66BB8](soundCopy, v6);
}

+ (id)descriptionForCategory:(unint64_t)category
{
  if (category < 5)
  {
    return off_1E7B0E420[category];
  }

  NSLog(&cfstr_UnexpectedMtso.isa, a2, category);
  return 0;
}

+ (id)toneSoundWithIdentifier:(id)identifier vibrationIdentifer:(id)identifer volume:(id)volume
{
  volumeCopy = volume;
  identiferCopy = identifer;
  identifierCopy = identifier;
  v10 = [[MTSound alloc] initWithToneIdentifier:identifierCopy vibrationIdentifer:identiferCopy volume:volumeCopy];

  return v10;
}

+ (id)songSoundWithIdentifier:(id)identifier vibrationIdentifier:(id)vibrationIdentifier volume:(id)volume
{
  volumeCopy = volume;
  vibrationIdentifierCopy = vibrationIdentifier;
  identifierCopy = identifier;
  v10 = [[MTSound alloc] initWithMediaItemIdentifier:identifierCopy vibrationIdentifier:vibrationIdentifierCopy volume:volumeCopy];

  return v10;
}

- (MTSound)initWithToneIdentifier:(id)identifier vibrationIdentifer:(id)identifer volume:(id)volume
{
  identifierCopy = identifier;
  identiferCopy = identifer;
  volumeCopy = volume;
  v20.receiver = self;
  v20.super_class = MTSound;
  v11 = [(MTSound *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_soundType = 2;
    v13 = [identifierCopy copy];
    toneIdentifier = v12->_toneIdentifier;
    v12->_toneIdentifier = v13;

    v15 = [identiferCopy copy];
    vibrationIdentifier = v12->_vibrationIdentifier;
    v12->_vibrationIdentifier = v15;

    v17 = [volumeCopy copy];
    soundVolume = v12->_soundVolume;
    v12->_soundVolume = v17;
  }

  return v12;
}

- (MTSound)initWithMediaItemIdentifier:(id)identifier vibrationIdentifier:(id)vibrationIdentifier volume:(id)volume
{
  identifierCopy = identifier;
  vibrationIdentifierCopy = vibrationIdentifier;
  volumeCopy = volume;
  v20.receiver = self;
  v20.super_class = MTSound;
  v11 = [(MTSound *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_soundType = 3;
    v13 = [identifierCopy copy];
    mediaItemIdentifier = v12->_mediaItemIdentifier;
    v12->_mediaItemIdentifier = v13;

    v15 = [vibrationIdentifierCopy copy];
    vibrationIdentifier = v12->_vibrationIdentifier;
    v12->_vibrationIdentifier = v15;

    v17 = [volumeCopy copy];
    soundVolume = v12->_soundVolume;
    v12->_soundVolume = v17;
  }

  return v12;
}

- (MTSound)initWithSound:(id)sound usingVolume:(id)volume
{
  soundCopy = sound;
  volumeCopy = volume;
  v19.receiver = self;
  v19.super_class = MTSound;
  v8 = [(MTSound *)&v19 init];
  if (v8)
  {
    v8->_soundType = [soundCopy soundType];
    mediaItemIdentifier = [soundCopy mediaItemIdentifier];
    v10 = [mediaItemIdentifier copy];
    mediaItemIdentifier = v8->_mediaItemIdentifier;
    v8->_mediaItemIdentifier = v10;

    vibrationIdentifier = [soundCopy vibrationIdentifier];
    v13 = [vibrationIdentifier copy];
    vibrationIdentifier = v8->_vibrationIdentifier;
    v8->_vibrationIdentifier = v13;

    toneIdentifier = [soundCopy toneIdentifier];
    v16 = [toneIdentifier copy];
    toneIdentifier = v8->_toneIdentifier;
    v8->_toneIdentifier = v16;

    objc_storeStrong(&v8->_soundVolume, volume);
  }

  return v8;
}

- (id)soundByUpdatingVibrationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(MTSound *)self soundType]== 3)
  {
    mediaItemIdentifier = [(MTSound *)self mediaItemIdentifier];
    soundVolume = [(MTSound *)self soundVolume];
    [MTSound songSoundWithIdentifier:mediaItemIdentifier vibrationIdentifier:identifierCopy volume:soundVolume];
  }

  else
  {
    mediaItemIdentifier = [(MTSound *)self toneIdentifier];
    soundVolume = [(MTSound *)self soundVolume];
    [MTSound toneSoundWithIdentifier:mediaItemIdentifier vibrationIdentifer:identifierCopy volume:soundVolume];
  }
  v7 = ;

  return v7;
}

- (id)soundByUpdatingVolume:(id)volume
{
  volumeCopy = volume;
  if ([(MTSound *)self soundType]== 3)
  {
    mediaItemIdentifier = [(MTSound *)self mediaItemIdentifier];
    vibrationIdentifier = [(MTSound *)self vibrationIdentifier];
    [MTSound songSoundWithIdentifier:mediaItemIdentifier vibrationIdentifier:vibrationIdentifier volume:volumeCopy];
  }

  else
  {
    mediaItemIdentifier = [(MTSound *)self toneIdentifier];
    vibrationIdentifier = [(MTSound *)self vibrationIdentifier];
    [MTSound toneSoundWithIdentifier:mediaItemIdentifier vibrationIdentifer:vibrationIdentifier volume:volumeCopy];
  }
  v7 = ;

  return v7;
}

+ (id)_loadDefaultAlarmSound
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = +[MTUserDefaults sharedUserDefaults];
  v3 = [v2 objectForKey:@"MTDefaultAlarmSoundType"];

  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  if (unsignedIntegerValue >= 4)
  {
    NSLog(&cfstr_SoundTypeInteg.isa, unsignedIntegerValue);
  }

  else if (unsignedIntegerValue == 3)
  {
    v8 = +[MTUserDefaults sharedUserDefaults];
    v9 = [v8 objectForKey:@"MTDefaultAlarmMediaItemID"];

    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_17;
    }

    v20 = MTLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "[Sound] No media item ID is specified in defaults. Switch to the tone type and use the ToneLibrary default";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v15 = +[MTUserDefaults sharedUserDefaults];
  v16 = [v15 objectForKey:@"MTDefaultAlarmToneID"];

  objc_opt_class();
  v17 = v16;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v13 = v18;

  if (!v13)
  {
    v20 = MTLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "[Sound] No tone ID is specified in defaults. Fall back to the ToneLibrary default";
LABEL_23:
      _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    }

LABEL_24:

    mEMORY[0x1E69DA8F0] = [MEMORY[0x1E69DA8F0] sharedToneManager];
    v13 = [mEMORY[0x1E69DA8F0] defaultToneIdentifierForAlertType:13];
    v10 = 0;
    v14 = 1;
    goto LABEL_25;
  }

  v10 = 0;
  v14 = 1;
LABEL_17:
  mEMORY[0x1E69DA8F0] = MTLogForCategory(0);
  if (os_log_type_enabled(mEMORY[0x1E69DA8F0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v13;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_1B1F9F000, mEMORY[0x1E69DA8F0], OS_LOG_TYPE_DEFAULT, "[Sound] Alarm sound from stored defaults (toneID: %@, mediaItemID: %@)", buf, 0x16u);
  }

LABEL_25:

  v22 = +[MTUserDefaults sharedUserDefaults];
  v23 = [v22 objectForKey:@"MTDefaultAlarmVibrationID"];

  objc_opt_class();
  v24 = v23;
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  mEMORY[0x1E69DA8F8] = MTLogForCategory(0);
  v28 = os_log_type_enabled(mEMORY[0x1E69DA8F8], OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v28)
    {
      *buf = 138412290;
      v35 = v26;
      _os_log_impl(&dword_1B1F9F000, mEMORY[0x1E69DA8F8], OS_LOG_TYPE_DEFAULT, "[Sound] Alarm vibration from stored defaults (vibrationID: %@)", buf, 0xCu);
    }

    v29 = v24;
  }

  else
  {
    if (v28)
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, mEMORY[0x1E69DA8F8], OS_LOG_TYPE_DEFAULT, "[Sound] No vibration ID is specified in defaults. Use the ToneLibrary default", buf, 2u);
    }

    mEMORY[0x1E69DA8F8] = [MEMORY[0x1E69DA8F8] sharedVibrationManager];
    v29 = [mEMORY[0x1E69DA8F8] defaultVibrationIdentifierForAlertType:13];
  }

  if (v14)
  {
    [MTSound toneSoundWithIdentifier:v13 vibrationIdentifer:v29 volume:0];
  }

  else
  {
    [MTSound songSoundWithIdentifier:v10 vibrationIdentifier:v29 volume:0];
  }
  v30 = ;
  v31 = MTLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v30;
    _os_log_impl(&dword_1B1F9F000, v31, OS_LOG_TYPE_DEFAULT, "[Sound] Default alarm sound is %@", buf, 0xCu);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)_loadDefaultTimerSound
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[MTUserDefaults sharedUserDefaults];
  v3 = [v2 objectForKey:@"MTDefaultTimerToneID"];

  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = v4;
  if (!v6)
  {
    mEMORY[0x1E69DA8F0] = [MEMORY[0x1E69DA8F0] sharedToneManager];
    v7 = [mEMORY[0x1E69DA8F0] defaultToneIdentifierForAlertType:14];
  }

  v9 = [MTSound toneSoundWithIdentifier:v7 vibrationIdentifer:0 volume:0];
  v10 = MTLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "[Sound] Default timer sound is %@", &v13, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)_saveDefaultAlarmSound:(id)sound
{
  v24 = *MEMORY[0x1E69E9840];
  soundCopy = sound;
  toneIdentifier = [soundCopy toneIdentifier];
  mediaItemIdentifier = [soundCopy mediaItemIdentifier];
  v6 = +[MTUserDefaults sharedUserDefaults];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(soundCopy, "soundType")}];
  [v6 setObject:v7 forKey:@"MTDefaultAlarmSoundType"];

  v8 = +[MTUserDefaults sharedUserDefaults];
  [v8 setObject:toneIdentifier forKey:@"MTDefaultAlarmToneID"];

  v9 = +[MTUserDefaults sharedUserDefaults];
  [v9 setObject:mediaItemIdentifier forKey:@"MTDefaultAlarmMediaItemID"];

  v10 = +[MTUserDefaults sharedUserDefaults];
  vibrationIdentifier = [soundCopy vibrationIdentifier];
  [v10 setObject:vibrationIdentifier forKey:@"MTDefaultAlarmVibrationID"];

  v12 = MTLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(soundCopy, "soundType")}];
    vibrationIdentifier2 = [soundCopy vibrationIdentifier];
    v16 = 138413058;
    v17 = v13;
    v18 = 2112;
    v19 = toneIdentifier;
    v20 = 2112;
    v21 = mediaItemIdentifier;
    v22 = 2112;
    v23 = vibrationIdentifier2;
    _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "[Sound] Storing Alarm Defaults (soundTypeKey: %@, toneIDKey: %@, mediaItemIDKey: %@, vibrationIDKey: %@)", &v16, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)_saveDefaultTimerSound:(id)sound
{
  v11 = *MEMORY[0x1E69E9840];
  soundCopy = sound;
  toneIdentifier = [soundCopy toneIdentifier];
  soundType = [soundCopy soundType];

  if (soundType != 2)
  {
    NSLog(&cfstr_TimersOnlySupp.isa);

    toneIdentifier = 0;
  }

  v6 = +[MTUserDefaults sharedUserDefaults];
  [v6 setObject:toneIdentifier forKey:@"MTDefaultTimerToneID"];

  v7 = MTLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = toneIdentifier;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "[Sound] Storing Timer Defaults (toneIDKey: %@)", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  toneIdentifier = [(MTSound *)self toneIdentifier];
  v4 = [toneIdentifier hash];
  mediaItemIdentifier = [(MTSound *)self mediaItemIdentifier];
  v6 = [mediaItemIdentifier hash] ^ v4;
  vibrationIdentifier = [(MTSound *)self vibrationIdentifier];
  v8 = [vibrationIdentifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(MTSound *)self isEqualToSound:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToSound:(id)sound
{
  soundCopy = sound;
  soundType = [(MTSound *)self soundType];
  if (soundType == [soundCopy soundType])
  {
    toneIdentifier = [(MTSound *)self toneIdentifier];
    toneIdentifier2 = [soundCopy toneIdentifier];
    if (toneIdentifier != toneIdentifier2)
    {
      toneIdentifier3 = [(MTSound *)self toneIdentifier];
      toneIdentifier4 = [soundCopy toneIdentifier];
      v35 = toneIdentifier3;
      if (![toneIdentifier3 isEqual:toneIdentifier4])
      {
        v11 = 0;
        goto LABEL_23;
      }
    }

    mediaItemIdentifier = [(MTSound *)self mediaItemIdentifier];
    mediaItemIdentifier2 = [soundCopy mediaItemIdentifier];
    if (mediaItemIdentifier != mediaItemIdentifier2)
    {
      mediaItemIdentifier3 = [(MTSound *)self mediaItemIdentifier];
      mediaItemIdentifier4 = [soundCopy mediaItemIdentifier];
      if (![mediaItemIdentifier3 isEqual:mediaItemIdentifier4])
      {
        v11 = 0;
LABEL_21:

LABEL_22:
        if (toneIdentifier == toneIdentifier2)
        {
LABEL_24:

          goto LABEL_25;
        }

LABEL_23:

        goto LABEL_24;
      }

      v33 = mediaItemIdentifier3;
    }

    vibrationIdentifier = [(MTSound *)self vibrationIdentifier];
    vibrationIdentifier2 = [soundCopy vibrationIdentifier];
    v34 = vibrationIdentifier;
    if (vibrationIdentifier == vibrationIdentifier2)
    {
      v31 = mediaItemIdentifier4;
      v32 = mediaItemIdentifier2;
    }

    else
    {
      vibrationIdentifier3 = [(MTSound *)self vibrationIdentifier];
      vibrationIdentifier4 = [soundCopy vibrationIdentifier];
      v30 = vibrationIdentifier3;
      if (![vibrationIdentifier3 isEqual:?])
      {
        v11 = 0;
        v26 = v34;
        goto LABEL_19;
      }

      v31 = mediaItemIdentifier4;
      v32 = mediaItemIdentifier2;
    }

    soundVolume = [(MTSound *)self soundVolume];
    soundVolume2 = [soundCopy soundVolume];
    v20 = soundVolume2;
    if (soundVolume == soundVolume2)
    {

      v11 = 1;
    }

    else
    {
      soundVolume3 = [(MTSound *)self soundVolume];
      [soundCopy soundVolume];
      v28 = toneIdentifier2;
      v22 = toneIdentifier;
      v23 = mediaItemIdentifier;
      v25 = v24 = toneIdentifier4;
      v11 = [soundVolume3 isEqual:v25];

      toneIdentifier4 = v24;
      mediaItemIdentifier = v23;
      toneIdentifier = v22;
      toneIdentifier2 = v28;
    }

    v26 = v34;
    mediaItemIdentifier4 = v31;
    mediaItemIdentifier2 = v32;
    if (v34 == vibrationIdentifier2)
    {
LABEL_20:

      mediaItemIdentifier3 = v33;
      if (mediaItemIdentifier == mediaItemIdentifier2)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_20;
  }

  v11 = 0;
LABEL_25:

  return v11;
}

- (BOOL)isSilent
{
  if ([(MTSound *)self soundType]!= 2)
  {
    return 0;
  }

  toneIdentifier = [(MTSound *)self toneIdentifier];
  v4 = [toneIdentifier isEqualToString:*MEMORY[0x1E69DA928]];

  return v4;
}

- (MTSound)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MTSound;
  v5 = [(MTSound *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundType"];
    v5->_soundType = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundToneID"];
    toneIdentifier = v5->_toneIdentifier;
    v5->_toneIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundMediaItemID"];
    mediaItemIdentifier = v5->_mediaItemIdentifier;
    v5->_mediaItemIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundVibrationID"];
    vibrationIdentifier = v5->_vibrationIdentifier;
    v5->_vibrationIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundVolume"];
    soundVolume = v5->_soundVolume;
    v5->_soundVolume = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[MTSound soundType](self, "soundType")}];
  [coderCopy encodeObject:v6 forKey:@"MTSoundType"];

  toneIdentifier = [(MTSound *)self toneIdentifier];
  [coderCopy encodeObject:toneIdentifier forKey:@"MTSoundToneID"];

  mediaItemIdentifier = [(MTSound *)self mediaItemIdentifier];
  [coderCopy encodeObject:mediaItemIdentifier forKey:@"MTSoundMediaItemID"];

  vibrationIdentifier = [(MTSound *)self vibrationIdentifier];
  [coderCopy encodeObject:vibrationIdentifier forKey:@"MTSoundVibrationID"];

  soundVolume = [(MTSound *)self soundVolume];
  [coderCopy encodeObject:soundVolume forKey:@"MTSoundVolume"];
}

- (id)previewWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [objc_alloc(MEMORY[0x1E69DA8E8]) initWithType:13];
  [v5 setTopic:*MEMORY[0x1E69DA910]];
  toneIdentifier = [(MTSound *)self toneIdentifier];
  [v5 setToneIdentifier:toneIdentifier];

  vibrationIdentifier = [(MTSound *)self vibrationIdentifier];
  [v5 setVibrationIdentifier:vibrationIdentifier];

  soundVolume = [(MTSound *)self soundVolume];
  [soundVolume floatValue];
  [v5 setAudioVolume:?];

  [v5 setShouldRepeat:0];
  [v5 setForPreview:1];
  v9 = [MEMORY[0x1E69DA8E0] alertWithConfiguration:v5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__MTSound_previewWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7B0E400;
  v13 = handlerCopy;
  v10 = handlerCopy;
  [v9 playWithCompletionHandler:v12];

  return v9;
}

void __40__MTSound_previewWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__MTSound_previewWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7B0E3D8;
  v10 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  [v6 performBlock:v8];
}

uint64_t __40__MTSound_previewWithCompletionHandler___block_invoke_2(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[4]);
  }

  return result;
}

- (void)updatePreview:(id)preview
{
  if (preview)
  {
    previewCopy = preview;
    soundVolume = [(MTSound *)self soundVolume];
    [soundVolume floatValue];
    [previewCopy _updateAudioVolumeDynamicallyToValue:?];
  }
}

- (MTSound)initWithMTCDSound:(id)sound
{
  soundCopy = sound;
  v20.receiver = self;
  v20.super_class = MTSound;
  v5 = [(MTSound *)&v20 init];
  v6 = v5;
  if (soundCopy && v5)
  {
    toneIdentifier = [soundCopy toneIdentifier];
    toneIdentifier = v6->_toneIdentifier;
    v6->_toneIdentifier = toneIdentifier;

    mediaItemIdentifier = [soundCopy mediaItemIdentifier];
    if (mediaItemIdentifier)
    {
      mediaItemIdentifier = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(soundCopy, "mediaItemIdentifier")}];
    }

    mediaItemIdentifier = v6->_mediaItemIdentifier;
    v6->_mediaItemIdentifier = mediaItemIdentifier;

    vibrationIdentifier = [soundCopy vibrationIdentifier];
    vibrationIdentifier2 = [vibrationIdentifier length];
    if (vibrationIdentifier2)
    {
      vibrationIdentifier2 = [soundCopy vibrationIdentifier];
    }

    vibrationIdentifier = v6->_vibrationIdentifier;
    v6->_vibrationIdentifier = vibrationIdentifier2;

    [soundCopy volumeLevel];
    if (v14 != 0.0)
    {
      [soundCopy volumeLevel];
      if (v15 >= 0.0)
      {
        v16 = MEMORY[0x1E696AD98];
        [soundCopy volumeLevel];
        v17 = [v16 numberWithDouble:?];
        soundVolume = v6->_soundVolume;
        v6->_soundVolume = v17;
      }
    }

    v6->_soundType = [soundCopy soundType];
  }

  return v6;
}

@end