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
    v3 = [a1 mt_Description];
    v18 = 138412290;
    v19 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "[Sound] Converting %@ to MTSound", &v18, 0xCu);
  }

  v4 = [a1 toneIdentifier];

  if (v4)
  {
    v5 = [a1 toneIdentifier];
    v6 = [a1 vibrationIdentifier];
    v7 = [a1 audioVolume];
    v8 = [MTSound toneSoundWithIdentifier:v5 vibrationIdentifer:v6 volume:v7];
LABEL_7:
    v9 = v8;

    goto LABEL_8;
  }

  if ([a1 toneMediaLibraryItemIdentifier])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, "toneMediaLibraryItemIdentifier")}];
    v6 = [a1 vibrationIdentifier];
    v7 = [a1 audioVolume];
    v8 = [MTSound songSoundWithIdentifier:v5 vibrationIdentifier:v6 volume:v7];
    goto LABEL_7;
  }

  v13 = [a1 alertTopic];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69DA908]];

  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v16 = [a1 alertTopic];
    v17 = [v16 isEqualToString:*MEMORY[0x1E69DA910]];

    if (v17)
    {
      v15 = 3;
    }

    else
    {
      v15 = 4 * ([a1 alertType] == 17);
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
  v4 = [a1 alertTopic];
  v5 = [a1 toneIdentifier];
  v6 = [a1 toneMediaLibraryItemIdentifier];
  v7 = [a1 vibrationIdentifier];
  v8 = [a1 audioVolume];
  v9 = [v2 stringWithFormat:@"<%@:%p alertTopic: %@, toneID: %@, mediaItemID: %llu, vibeID: %@, volume: %@", v3, a1, v4, v5, v6, v7, v8];

  return v9;
}

@end