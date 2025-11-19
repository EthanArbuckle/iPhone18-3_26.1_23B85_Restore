@interface MTSound
+ (id)_loadDefaultAlarmSound;
+ (id)_loadDefaultTimerSound;
+ (id)defaultSoundForCategory:(unint64_t)a3;
+ (id)descriptionForCategory:(unint64_t)a3;
+ (id)songSoundWithIdentifier:(id)a3 vibrationIdentifier:(id)a4 volume:(id)a5;
+ (id)toneSoundWithIdentifier:(id)a3 vibrationIdentifer:(id)a4 volume:(id)a5;
+ (int64_t)_alertTypeForCategory:(unint64_t)a3;
+ (void)_saveDefaultAlarmSound:(id)a3;
+ (void)_saveDefaultTimerSound:(id)a3;
+ (void)setDefaultSound:(id)a3 forCategory:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSound:(id)a3;
- (BOOL)isSilent;
- (MTSound)initWithCoder:(id)a3;
- (MTSound)initWithMTCDSound:(id)a3;
- (MTSound)initWithMediaItemIdentifier:(id)a3 vibrationIdentifier:(id)a4 volume:(id)a5;
- (MTSound)initWithSound:(id)a3 usingVolume:(id)a4;
- (MTSound)initWithToneIdentifier:(id)a3 vibrationIdentifer:(id)a4 volume:(id)a5;
- (NSString)description;
- (id)previewWithCompletionHandler:(id)a3;
- (id)soundByUpdatingVibrationIdentifier:(id)a3;
- (id)soundByUpdatingVolume:(id)a3;
- (id)unSoundForCategory:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updatePreview:(id)a3;
@end

@implementation MTSound

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTSound *)self toneIdentifier];
  v6 = [(MTSound *)self mediaItemIdentifier];
  v7 = [(MTSound *)self vibrationIdentifier];
  v8 = [(MTSound *)self soundVolume];
  v9 = [v3 stringWithFormat:@"<%@:%p toneID: %@, mediaItemID: %@, vibeID: %@, volume: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

+ (int64_t)_alertTypeForCategory:(unint64_t)a3
{
  v3 = 13;
  if (a3 == 1)
  {
    v3 = 14;
  }

  if (a3 == 4)
  {
    return 17;
  }

  else
  {
    return v3;
  }
}

- (id)unSoundForCategory:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() descriptionForCategory:a3];
    v21 = 138543618;
    v22 = self;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "[Sound] Converting %{public}@ to UNNotificationSound for category %{public}@", &v21, 0x16u);
  }

  v7 = [MEMORY[0x1E6983238] soundWithAlertType:{objc_msgSend(objc_opt_class(), "_alertTypeForCategory:", a3)}];
  v8 = v7;
  if (a3 == 4)
  {
    [v7 setShouldRepeat:0];
  }

  else if (a3 == 2)
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
    v11 = [(MTSound *)self soundVolume];
    [v8 setAudioVolume:v11];

    if (a3 == 3)
    {
      [v8 setAlertTopic:*MEMORY[0x1E69DA910]];
    }

    v12 = [(MTSound *)self vibrationIdentifier];
    [v8 setVibrationIdentifier:v12];

    v13 = [(MTSound *)self soundType];
    if (v13 == 3)
    {
      v15 = [(MTSound *)self mediaItemIdentifier];
      v16 = [v15 integerValue];

      [v8 setToneMediaLibraryItemIdentifier:v16];
    }

    else if (v13 == 2)
    {
      v14 = [(MTSound *)self toneIdentifier];
      [v8 setToneIdentifier:v14];
    }
  }

  v17 = MTLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v8 mt_Description];
    v21 = 138412290;
    v22 = v18;
    _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "[Sound] Made %@", &v21, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)defaultSoundForCategory:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v4 = +[MTSound _loadDefaultAlarmSound];
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      v4 = +[MTSound _loadDefaultTimerSound];
      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
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

  NSLog(&cfstr_UnexpectedMtso.isa, a2, a3);
  v4 = 0;
LABEL_13:

  return v4;
}

+ (void)setDefaultSound:(id)a3 forCategory:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (a4 - 2 < 3)
    {
      goto LABEL_10;
    }

    v7 = v5;
    if (a4 == 1)
    {
      v5 = [MTSound _saveDefaultTimerSound:v5];
    }

    else if (a4)
    {
      NSLog(&cfstr_UnexpectedMtso.isa, v5, a4);
    }

    else
    {
      v5 = [MTSound _saveDefaultAlarmSound:v5];
    }
  }

  else
  {
    v7 = 0;
    NSLog(&cfstr_SoundMustBeNon.isa, 0);
  }

  v6 = v7;
LABEL_10:

  MEMORY[0x1EEE66BB8](v5, v6);
}

+ (id)descriptionForCategory:(unint64_t)a3
{
  if (a3 < 5)
  {
    return off_1E7B0E420[a3];
  }

  NSLog(&cfstr_UnexpectedMtso.isa, a2, a3);
  return 0;
}

+ (id)toneSoundWithIdentifier:(id)a3 vibrationIdentifer:(id)a4 volume:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MTSound alloc] initWithToneIdentifier:v9 vibrationIdentifer:v8 volume:v7];

  return v10;
}

+ (id)songSoundWithIdentifier:(id)a3 vibrationIdentifier:(id)a4 volume:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MTSound alloc] initWithMediaItemIdentifier:v9 vibrationIdentifier:v8 volume:v7];

  return v10;
}

- (MTSound)initWithToneIdentifier:(id)a3 vibrationIdentifer:(id)a4 volume:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = MTSound;
  v11 = [(MTSound *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_soundType = 2;
    v13 = [v8 copy];
    toneIdentifier = v12->_toneIdentifier;
    v12->_toneIdentifier = v13;

    v15 = [v9 copy];
    vibrationIdentifier = v12->_vibrationIdentifier;
    v12->_vibrationIdentifier = v15;

    v17 = [v10 copy];
    soundVolume = v12->_soundVolume;
    v12->_soundVolume = v17;
  }

  return v12;
}

- (MTSound)initWithMediaItemIdentifier:(id)a3 vibrationIdentifier:(id)a4 volume:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = MTSound;
  v11 = [(MTSound *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_soundType = 3;
    v13 = [v8 copy];
    mediaItemIdentifier = v12->_mediaItemIdentifier;
    v12->_mediaItemIdentifier = v13;

    v15 = [v9 copy];
    vibrationIdentifier = v12->_vibrationIdentifier;
    v12->_vibrationIdentifier = v15;

    v17 = [v10 copy];
    soundVolume = v12->_soundVolume;
    v12->_soundVolume = v17;
  }

  return v12;
}

- (MTSound)initWithSound:(id)a3 usingVolume:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = MTSound;
  v8 = [(MTSound *)&v19 init];
  if (v8)
  {
    v8->_soundType = [v6 soundType];
    v9 = [v6 mediaItemIdentifier];
    v10 = [v9 copy];
    mediaItemIdentifier = v8->_mediaItemIdentifier;
    v8->_mediaItemIdentifier = v10;

    v12 = [v6 vibrationIdentifier];
    v13 = [v12 copy];
    vibrationIdentifier = v8->_vibrationIdentifier;
    v8->_vibrationIdentifier = v13;

    v15 = [v6 toneIdentifier];
    v16 = [v15 copy];
    toneIdentifier = v8->_toneIdentifier;
    v8->_toneIdentifier = v16;

    objc_storeStrong(&v8->_soundVolume, a4);
  }

  return v8;
}

- (id)soundByUpdatingVibrationIdentifier:(id)a3
{
  v4 = a3;
  if ([(MTSound *)self soundType]== 3)
  {
    v5 = [(MTSound *)self mediaItemIdentifier];
    v6 = [(MTSound *)self soundVolume];
    [MTSound songSoundWithIdentifier:v5 vibrationIdentifier:v4 volume:v6];
  }

  else
  {
    v5 = [(MTSound *)self toneIdentifier];
    v6 = [(MTSound *)self soundVolume];
    [MTSound toneSoundWithIdentifier:v5 vibrationIdentifer:v4 volume:v6];
  }
  v7 = ;

  return v7;
}

- (id)soundByUpdatingVolume:(id)a3
{
  v4 = a3;
  if ([(MTSound *)self soundType]== 3)
  {
    v5 = [(MTSound *)self mediaItemIdentifier];
    v6 = [(MTSound *)self vibrationIdentifier];
    [MTSound songSoundWithIdentifier:v5 vibrationIdentifier:v6 volume:v4];
  }

  else
  {
    v5 = [(MTSound *)self toneIdentifier];
    v6 = [(MTSound *)self vibrationIdentifier];
    [MTSound toneSoundWithIdentifier:v5 vibrationIdentifer:v6 volume:v4];
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

  v7 = [v6 unsignedIntegerValue];
  if (v7 >= 4)
  {
    NSLog(&cfstr_SoundTypeInteg.isa, v7);
  }

  else if (v7 == 3)
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

    v19 = [MEMORY[0x1E69DA8F0] sharedToneManager];
    v13 = [v19 defaultToneIdentifierForAlertType:13];
    v10 = 0;
    v14 = 1;
    goto LABEL_25;
  }

  v10 = 0;
  v14 = 1;
LABEL_17:
  v19 = MTLogForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v13;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "[Sound] Alarm sound from stored defaults (toneID: %@, mediaItemID: %@)", buf, 0x16u);
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

  v27 = MTLogForCategory(0);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v28)
    {
      *buf = 138412290;
      v35 = v26;
      _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_DEFAULT, "[Sound] Alarm vibration from stored defaults (vibrationID: %@)", buf, 0xCu);
    }

    v29 = v24;
  }

  else
  {
    if (v28)
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_DEFAULT, "[Sound] No vibration ID is specified in defaults. Use the ToneLibrary default", buf, 2u);
    }

    v27 = [MEMORY[0x1E69DA8F8] sharedVibrationManager];
    v29 = [v27 defaultVibrationIdentifierForAlertType:13];
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
    v8 = [MEMORY[0x1E69DA8F0] sharedToneManager];
    v7 = [v8 defaultToneIdentifierForAlertType:14];
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

+ (void)_saveDefaultAlarmSound:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 toneIdentifier];
  v5 = [v3 mediaItemIdentifier];
  v6 = +[MTUserDefaults sharedUserDefaults];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "soundType")}];
  [v6 setObject:v7 forKey:@"MTDefaultAlarmSoundType"];

  v8 = +[MTUserDefaults sharedUserDefaults];
  [v8 setObject:v4 forKey:@"MTDefaultAlarmToneID"];

  v9 = +[MTUserDefaults sharedUserDefaults];
  [v9 setObject:v5 forKey:@"MTDefaultAlarmMediaItemID"];

  v10 = +[MTUserDefaults sharedUserDefaults];
  v11 = [v3 vibrationIdentifier];
  [v10 setObject:v11 forKey:@"MTDefaultAlarmVibrationID"];

  v12 = MTLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "soundType")}];
    v14 = [v3 vibrationIdentifier];
    v16 = 138413058;
    v17 = v13;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "[Sound] Storing Alarm Defaults (soundTypeKey: %@, toneIDKey: %@, mediaItemIDKey: %@, vibrationIDKey: %@)", &v16, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)_saveDefaultTimerSound:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 toneIdentifier];
  v5 = [v3 soundType];

  if (v5 != 2)
  {
    NSLog(&cfstr_TimersOnlySupp.isa);

    v4 = 0;
  }

  v6 = +[MTUserDefaults sharedUserDefaults];
  [v6 setObject:v4 forKey:@"MTDefaultTimerToneID"];

  v7 = MTLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "[Sound] Storing Timer Defaults (toneIDKey: %@)", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(MTSound *)self toneIdentifier];
  v4 = [v3 hash];
  v5 = [(MTSound *)self mediaItemIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(MTSound *)self vibrationIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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

- (BOOL)isEqualToSound:(id)a3
{
  v6 = a3;
  v7 = [(MTSound *)self soundType];
  if (v7 == [v6 soundType])
  {
    v8 = [(MTSound *)self toneIdentifier];
    v9 = [v6 toneIdentifier];
    if (v8 != v9)
    {
      v10 = [(MTSound *)self toneIdentifier];
      v3 = [v6 toneIdentifier];
      v35 = v10;
      if (![v10 isEqual:v3])
      {
        v11 = 0;
        goto LABEL_23;
      }
    }

    v12 = [(MTSound *)self mediaItemIdentifier];
    v13 = [v6 mediaItemIdentifier];
    if (v12 != v13)
    {
      v14 = [(MTSound *)self mediaItemIdentifier];
      v4 = [v6 mediaItemIdentifier];
      if (![v14 isEqual:v4])
      {
        v11 = 0;
LABEL_21:

LABEL_22:
        if (v8 == v9)
        {
LABEL_24:

          goto LABEL_25;
        }

LABEL_23:

        goto LABEL_24;
      }

      v33 = v14;
    }

    v15 = [(MTSound *)self vibrationIdentifier];
    v16 = [v6 vibrationIdentifier];
    v34 = v15;
    if (v15 == v16)
    {
      v31 = v4;
      v32 = v13;
    }

    else
    {
      v17 = [(MTSound *)self vibrationIdentifier];
      v29 = [v6 vibrationIdentifier];
      v30 = v17;
      if (![v17 isEqual:?])
      {
        v11 = 0;
        v26 = v34;
        goto LABEL_19;
      }

      v31 = v4;
      v32 = v13;
    }

    v18 = [(MTSound *)self soundVolume];
    v19 = [v6 soundVolume];
    v20 = v19;
    if (v18 == v19)
    {

      v11 = 1;
    }

    else
    {
      v21 = [(MTSound *)self soundVolume];
      [v6 soundVolume];
      v28 = v9;
      v22 = v8;
      v23 = v12;
      v25 = v24 = v3;
      v11 = [v21 isEqual:v25];

      v3 = v24;
      v12 = v23;
      v8 = v22;
      v9 = v28;
    }

    v26 = v34;
    v4 = v31;
    v13 = v32;
    if (v34 == v16)
    {
LABEL_20:

      v14 = v33;
      if (v12 == v13)
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

  v3 = [(MTSound *)self toneIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69DA928]];

  return v4;
}

- (MTSound)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MTSound;
  v5 = [(MTSound *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundType"];
    v5->_soundType = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundToneID"];
    toneIdentifier = v5->_toneIdentifier;
    v5->_toneIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundMediaItemID"];
    mediaItemIdentifier = v5->_mediaItemIdentifier;
    v5->_mediaItemIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundVibrationID"];
    vibrationIdentifier = v5->_vibrationIdentifier;
    v5->_vibrationIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTSoundVolume"];
    soundVolume = v5->_soundVolume;
    v5->_soundVolume = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[MTSound soundType](self, "soundType")}];
  [v5 encodeObject:v6 forKey:@"MTSoundType"];

  v7 = [(MTSound *)self toneIdentifier];
  [v5 encodeObject:v7 forKey:@"MTSoundToneID"];

  v8 = [(MTSound *)self mediaItemIdentifier];
  [v5 encodeObject:v8 forKey:@"MTSoundMediaItemID"];

  v9 = [(MTSound *)self vibrationIdentifier];
  [v5 encodeObject:v9 forKey:@"MTSoundVibrationID"];

  v10 = [(MTSound *)self soundVolume];
  [v5 encodeObject:v10 forKey:@"MTSoundVolume"];
}

- (id)previewWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69DA8E8]) initWithType:13];
  [v5 setTopic:*MEMORY[0x1E69DA910]];
  v6 = [(MTSound *)self toneIdentifier];
  [v5 setToneIdentifier:v6];

  v7 = [(MTSound *)self vibrationIdentifier];
  [v5 setVibrationIdentifier:v7];

  v8 = [(MTSound *)self soundVolume];
  [v8 floatValue];
  [v5 setAudioVolume:?];

  [v5 setShouldRepeat:0];
  [v5 setForPreview:1];
  v9 = [MEMORY[0x1E69DA8E0] alertWithConfiguration:v5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__MTSound_previewWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7B0E400;
  v13 = v4;
  v10 = v4;
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

- (void)updatePreview:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MTSound *)self soundVolume];
    [v5 floatValue];
    [v4 _updateAudioVolumeDynamicallyToValue:?];
  }
}

- (MTSound)initWithMTCDSound:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MTSound;
  v5 = [(MTSound *)&v20 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 toneIdentifier];
    toneIdentifier = v6->_toneIdentifier;
    v6->_toneIdentifier = v7;

    v9 = [v4 mediaItemIdentifier];
    if (v9)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "mediaItemIdentifier")}];
    }

    mediaItemIdentifier = v6->_mediaItemIdentifier;
    v6->_mediaItemIdentifier = v9;

    v11 = [v4 vibrationIdentifier];
    v12 = [v11 length];
    if (v12)
    {
      v12 = [v4 vibrationIdentifier];
    }

    vibrationIdentifier = v6->_vibrationIdentifier;
    v6->_vibrationIdentifier = v12;

    [v4 volumeLevel];
    if (v14 != 0.0)
    {
      [v4 volumeLevel];
      if (v15 >= 0.0)
      {
        v16 = MEMORY[0x1E696AD98];
        [v4 volumeLevel];
        v17 = [v16 numberWithDouble:?];
        soundVolume = v6->_soundVolume;
        v6->_soundVolume = v17;
      }
    }

    v6->_soundType = [v4 soundType];
  }

  return v6;
}

@end