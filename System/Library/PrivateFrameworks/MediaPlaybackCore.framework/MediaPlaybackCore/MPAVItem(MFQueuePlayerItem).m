@interface MPAVItem(MFQueuePlayerItem)
- (BOOL)_isInContiguousAlbumWith:()MFQueuePlayerItem;
- (BOOL)hasSubscriptionAssetSource;
- (BOOL)shouldPerformGaplessTransitionWith:()MFQueuePlayerItem;
- (MPCPlayerAudioFormat)activeAudioFormat;
- (double)effectivePlaybackStartTime;
- (double)playbackStartTime;
- (double)playbackStartTimeOverride;
- (double)time;
- (id)gaplessParameters;
- (id)userIdentity;
- (uint64_t)isFullyDownloaded;
- (uint64_t)reset;
- (uint64_t)setCurrentItemTransition:()MFQueuePlayerItem;
- (uint64_t)shouldPerformOverlappingTransitionWith:()MFQueuePlayerItem;
- (void)setPlaybackStartTimeOverride:()MFQueuePlayerItem;
@end

@implementation MPAVItem(MFQueuePlayerItem)

- (BOOL)hasSubscriptionAssetSource
{
  v1 = [a1 modelGenericObject];
  v2 = [v1 flattenedGenericObject];

  v3 = [v2 type];
  switch(v3)
  {
    case 9:
      v4 = [v2 movie];
      break;
    case 6:
      v4 = [v2 tvEpisode];
      break;
    case 1:
      v4 = [v2 song];
      break;
    default:
      v6 = 0;
      goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 storeAsset];

LABEL_9:
  v7 = [v6 endpointType] == 3;

  return v7;
}

- (id)userIdentity
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 playbackRequestUserIdentity];
  }

  else
  {
    [MEMORY[0x1E69E4680] activeAccount];
  }
  v2 = ;

  return v2;
}

- (BOOL)_isInContiguousAlbumWith:()MFQueuePlayerItem
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1;
  v6 = v4;
  v7 = [v5 modelGenericObject];
  v8 = [v7 flattenedGenericObject];

  v9 = [v6 modelGenericObject];
  v10 = [v9 flattenedGenericObject];

  if ([v8 type] == 1 && objc_msgSend(v10, "type") == 1)
  {
    v11 = [v8 song];
    v38 = v10;
    v12 = [v10 song];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v5 contentItemID];
      v35 = [v11 discNumber];
      v34 = [v11 trackNumber];
      v37 = [v11 album];
      v15 = [v37 identifiers];
      v16 = [v6 contentItemID];
      v33 = [v12 discNumber];
      v32 = [v12 trackNumber];
      [v12 album];
      v17 = v36 = v12;
      v18 = [v17 identifiers];
      *buf = 138545154;
      v40 = v14;
      v41 = 2048;
      v42 = v35;
      v43 = 2048;
      v44 = v34;
      v45 = 2114;
      v46 = v15;
      v47 = 2114;
      v48 = v16;
      v49 = 2048;
      v50 = v33;
      v51 = 2048;
      v52 = v32;
      v53 = 2114;
      v54 = v18;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[MPAVItem isInContiguousAlbum] Current song: contentIdentifier=%{public}@ discNumber=%ld trackNumber=%ld album.identifiers=%{public}@ | Next song: contentIdentifier=%{public}@, discNumber=%ld, trackNumber=%ld, album.identifiers=%{public}@", buf, 0x52u);

      v12 = v36;
    }

    v19 = [v12 album];
    [v19 identifiers];
    v21 = v20 = v12;
    v22 = [v11 album];
    v23 = [v22 identifiers];
    v24 = [v21 intersectsSet:v23];

    if (v24 && (v25 = [v20 discNumber], v25 == -[NSObject discNumber](v11, "discNumber")))
    {
      v26 = [v20 trackNumber];
      v27 = v26 == [v11 trackNumber]+ 1;
    }

    else
    {
      v27 = 0;
    }

    v10 = v38;
  }

  else
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v5 contentItemID];
      v29 = [v8 type];
      v30 = [v6 contentItemID];
      *buf = 138544130;
      v40 = v28;
      v41 = 2048;
      v42 = v29;
      v43 = 2114;
      v44 = v30;
      v45 = 2048;
      v46 = [v10 type];
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[MPAVItem isInContiguousAlbum] Both items are not songs: currentID=%{public}@ - currentType=%ld, nextID=%{public}@ - nextType=%ld", buf, 0x2Au);
    }

    v27 = 0;
  }

  return v27;
}

- (MPCPlayerAudioFormat)activeAudioFormat
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 activeFormat];
  }

  else
  {
    v3 = [MPCPlayerAudioFormat alloc];
    v4 = [a1 contentItem];
    v5 = [v4 activeFormat];
    v2 = [(MPCPlayerAudioFormat *)v3 initWithNowPlayingInfoAudioFormat:v5];
  }

  return v2;
}

- (uint64_t)shouldPerformOverlappingTransitionWith:()MFQueuePlayerItem
{
  v4 = a3;
  if (!_os_feature_enabled_impl() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || ([a1 isConfiguredForVocalAttenuation] & 1) != 0 || (objc_msgSend(v4, "isConfiguredForVocalAttenuation") & 1) != 0 || (objc_msgSend(a1, "isVideoContent") & 1) != 0 || (objc_msgSend(v4, "isVideoContent") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 _isInContiguousAlbumWith:v4] ^ 1;
  }

  return v5;
}

- (BOOL)shouldPerformGaplessTransitionWith:()MFQueuePlayerItem
{
  if (![a1 _isInContiguousAlbumWith:?])
  {
    return 0;
  }

  v2 = [a1 gaplessParameters];
  v3 = v2 != 0;

  return v3;
}

- (id)gaplessParameters
{
  if ([a1 conformsToProtocol:&unk_1F459C5F0])
  {
    v2 = [a1 gaplessInfo];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)reset
{
  result = [a1 isPreloadedAsset];
  if ((result & 1) == 0)
  {

    return [a1 _clearAssetNow];
  }

  return result;
}

- (uint64_t)setCurrentItemTransition:()MFQueuePlayerItem
{
  if ((a3 + 1) > 6)
  {
    v3 = -2;
  }

  else
  {
    v3 = qword_1C6045400[a3 + 1];
  }

  return [a1 setLastChangeDirection:v3];
}

- (double)effectivePlaybackStartTime
{
  v1 = [a1 initialPlaybackStartTime];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (double)playbackStartTime
{
  v1 = [a1 playbackInfoStartTime];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (void)setPlaybackStartTimeOverride:()MFQueuePlayerItem
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [a1 setInitialPlaybackStartTimeOverride:v2];
}

- (double)playbackStartTimeOverride
{
  v1 = [a1 initialPlaybackStartTimeOverride];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (uint64_t)isFullyDownloaded
{
  if (![a1 isAssetLoaded])
  {
    return 0;
  }

  v2 = [a1 asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a1 asset];
    v4 = [v3 URL];
    v5 = [v4 isFileURL];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)time
{
  if (![a1 isAssetLoaded] || !objc_msgSend(a1, "canUseLoadedAsset"))
  {
    goto LABEL_11;
  }

  v2 = *MEMORY[0x1E6970A60];
  v3 = *&a1[v2];
  v4 = [v3 contentItemID];
  v5 = [a1 contentItemID];
  if (![v4 isEqualToString:v5])
  {

    goto LABEL_10;
  }

  v6 = [a1 canReusePlayerItem];

  if (v6)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  [v3 currentTime];
  if ((v13 & 0x100000000) == 0)
  {
LABEL_10:

LABEL_11:
    [a1 effectivePlaybackStartTime];
    return v8;
  }

  v7 = *&a1[v2];
  if (v7)
  {
    [v7 currentTime];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  Seconds = CMTimeGetSeconds(&v11);

  return Seconds;
}

@end