@interface MPPlaybackArchive(ForShortcutsOnly)
- (uint64_t)containsAppleMusicRadioContent;
@end

@implementation MPPlaybackArchive(ForShortcutsOnly)

- (uint64_t)containsAppleMusicRadioContent
{
  v21 = *MEMORY[0x1E69E9840];
  if ([self type] != 1)
  {
    goto LABEL_4;
  }

  playbackSessionType = [self playbackSessionType];
  if (playbackSessionType == @"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack")
  {
  }

  else
  {
    v3 = playbackSessionType;
    v4 = [(__CFString *)playbackSessionType isEqual:@"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack"];

    if (!v4)
    {
LABEL_4:
      isKindOfClass = 0;
      return isKindOfClass & 1;
    }
  }

  v6 = MEMORY[0x1E69B1460];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  playbackSessionData = [self playbackSessionData];
  v16 = 0;
  v12 = [v6 decodedObjectOfClasses:v10 fromData:playbackSessionData error:&v16];
  v13 = v16;

  if (v13)
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "MPPlaybackArchive containsAppleMusicRadioContent failed [decode failure] archive=%{public}@ error=%{public}@", buf, 0x16u);
    }

    isKindOfClass = 0;
  }

  else
  {
    v14 = [v12 objectForKeyedSubscript:@"original"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end