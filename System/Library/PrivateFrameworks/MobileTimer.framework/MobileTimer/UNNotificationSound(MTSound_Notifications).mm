@interface UNNotificationSound(MTSound_Notifications)
- (id)mtSound;
- (id)mt_Description;
@end

@implementation UNNotificationSound(MTSound_Notifications)

- (id)mtSound
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    mt_Description = [self mt_Description];
    v18 = 138412290;
    v19 = mt_Description;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "[Sound] Converting %@ to MTSound", &v18, 0xCu);
  }

  toneIdentifier = [self toneIdentifier];

  if (toneIdentifier)
  {
    toneIdentifier2 = [self toneIdentifier];
    vibrationIdentifier = [self vibrationIdentifier];
    audioVolume = [self audioVolume];
    v8 = [MTSound toneSoundWithIdentifier:toneIdentifier2 vibrationIdentifer:vibrationIdentifier volume:audioVolume];
LABEL_7:
    v9 = v8;

    goto LABEL_8;
  }

  if ([self toneMediaLibraryItemIdentifier])
  {
    toneIdentifier2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(self, "toneMediaLibraryItemIdentifier")}];
    vibrationIdentifier = [self vibrationIdentifier];
    audioVolume = [self audioVolume];
    v8 = [MTSound songSoundWithIdentifier:toneIdentifier2 vibrationIdentifier:vibrationIdentifier volume:audioVolume];
    goto LABEL_7;
  }

  alertTopic = [self alertTopic];
  v14 = [alertTopic isEqualToString:*MEMORY[0x1E69DA908]];

  if (v14)
  {
    v15 = 2;
  }

  else
  {
    alertTopic2 = [self alertTopic];
    v17 = [alertTopic2 isEqualToString:*MEMORY[0x1E69DA910]];

    if (v17)
    {
      v15 = 3;
    }

    else
    {
      v15 = 4 * ([self alertType] == 17);
    }
  }

  v9 = [MTSound defaultSoundForCategory:v15];
LABEL_8:
  v10 = MTLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "[Sound] Made %@", &v18, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)mt_Description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  alertTopic = [self alertTopic];
  toneIdentifier = [self toneIdentifier];
  toneMediaLibraryItemIdentifier = [self toneMediaLibraryItemIdentifier];
  vibrationIdentifier = [self vibrationIdentifier];
  audioVolume = [self audioVolume];
  v9 = [v2 stringWithFormat:@"<%@:%p alertTopic: %@, toneID: %@, mediaItemID: %llu, vibeID: %@, volume: %@", v3, self, alertTopic, toneIdentifier, toneMediaLibraryItemIdentifier, vibrationIdentifier, audioVolume];

  return v9;
}

@end