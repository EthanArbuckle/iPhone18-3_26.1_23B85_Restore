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
  modelGenericObject = [self modelGenericObject];
  flattenedGenericObject = [modelGenericObject flattenedGenericObject];

  type = [flattenedGenericObject type];
  switch(type)
  {
    case 9:
      movie = [flattenedGenericObject movie];
      break;
    case 6:
      movie = [flattenedGenericObject tvEpisode];
      break;
    case 1:
      movie = [flattenedGenericObject song];
      break;
    default:
      storeAsset = 0;
      goto LABEL_9;
  }

  v5 = movie;
  storeAsset = [movie storeAsset];

LABEL_9:
  v7 = [storeAsset endpointType] == 3;

  return v7;
}

- (id)userIdentity
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self playbackRequestUserIdentity];
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
  selfCopy = self;
  v6 = v4;
  modelGenericObject = [selfCopy modelGenericObject];
  flattenedGenericObject = [modelGenericObject flattenedGenericObject];

  modelGenericObject2 = [v6 modelGenericObject];
  flattenedGenericObject2 = [modelGenericObject2 flattenedGenericObject];

  if ([flattenedGenericObject type] == 1 && objc_msgSend(flattenedGenericObject2, "type") == 1)
  {
    song = [flattenedGenericObject song];
    v38 = flattenedGenericObject2;
    song2 = [flattenedGenericObject2 song];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      contentItemID = [selfCopy contentItemID];
      discNumber = [song discNumber];
      trackNumber = [song trackNumber];
      album = [song album];
      identifiers = [album identifiers];
      contentItemID2 = [v6 contentItemID];
      discNumber2 = [song2 discNumber];
      trackNumber2 = [song2 trackNumber];
      [song2 album];
      v17 = v36 = song2;
      identifiers2 = [v17 identifiers];
      *buf = 138545154;
      v40 = contentItemID;
      v41 = 2048;
      v42 = discNumber;
      v43 = 2048;
      v44 = trackNumber;
      v45 = 2114;
      type2 = identifiers;
      v47 = 2114;
      v48 = contentItemID2;
      v49 = 2048;
      v50 = discNumber2;
      v51 = 2048;
      v52 = trackNumber2;
      v53 = 2114;
      v54 = identifiers2;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[MPAVItem isInContiguousAlbum] Current song: contentIdentifier=%{public}@ discNumber=%ld trackNumber=%ld album.identifiers=%{public}@ | Next song: contentIdentifier=%{public}@, discNumber=%ld, trackNumber=%ld, album.identifiers=%{public}@", buf, 0x52u);

      song2 = v36;
    }

    album2 = [song2 album];
    [album2 identifiers];
    v21 = v20 = song2;
    album3 = [song album];
    identifiers3 = [album3 identifiers];
    v24 = [v21 intersectsSet:identifiers3];

    if (v24 && (v25 = [v20 discNumber], v25 == -[NSObject discNumber](song, "discNumber")))
    {
      trackNumber3 = [v20 trackNumber];
      v27 = trackNumber3 == [song trackNumber]+ 1;
    }

    else
    {
      v27 = 0;
    }

    flattenedGenericObject2 = v38;
  }

  else
  {
    song = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(song, OS_LOG_TYPE_DEFAULT))
    {
      contentItemID3 = [selfCopy contentItemID];
      type = [flattenedGenericObject type];
      contentItemID4 = [v6 contentItemID];
      *buf = 138544130;
      v40 = contentItemID3;
      v41 = 2048;
      v42 = type;
      v43 = 2114;
      v44 = contentItemID4;
      v45 = 2048;
      type2 = [flattenedGenericObject2 type];
      _os_log_impl(&dword_1C5C61000, song, OS_LOG_TYPE_DEFAULT, "[MPAVItem isInContiguousAlbum] Both items are not songs: currentID=%{public}@ - currentType=%ld, nextID=%{public}@ - nextType=%ld", buf, 0x2Au);
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
    activeFormat = [self activeFormat];
  }

  else
  {
    v3 = [MPCPlayerAudioFormat alloc];
    contentItem = [self contentItem];
    activeFormat2 = [contentItem activeFormat];
    activeFormat = [(MPCPlayerAudioFormat *)v3 initWithNowPlayingInfoAudioFormat:activeFormat2];
  }

  return activeFormat;
}

- (uint64_t)shouldPerformOverlappingTransitionWith:()MFQueuePlayerItem
{
  v4 = a3;
  if (!_os_feature_enabled_impl() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || ([self isConfiguredForVocalAttenuation] & 1) != 0 || (objc_msgSend(v4, "isConfiguredForVocalAttenuation") & 1) != 0 || (objc_msgSend(self, "isVideoContent") & 1) != 0 || (objc_msgSend(v4, "isVideoContent") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self _isInContiguousAlbumWith:v4] ^ 1;
  }

  return v5;
}

- (BOOL)shouldPerformGaplessTransitionWith:()MFQueuePlayerItem
{
  if (![self _isInContiguousAlbumWith:?])
  {
    return 0;
  }

  gaplessParameters = [self gaplessParameters];
  v3 = gaplessParameters != 0;

  return v3;
}

- (id)gaplessParameters
{
  if ([self conformsToProtocol:&unk_1F459C5F0])
  {
    gaplessInfo = [self gaplessInfo];
  }

  else
  {
    gaplessInfo = 0;
  }

  return gaplessInfo;
}

- (uint64_t)reset
{
  result = [self isPreloadedAsset];
  if ((result & 1) == 0)
  {

    return [self _clearAssetNow];
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

  return [self setLastChangeDirection:v3];
}

- (double)effectivePlaybackStartTime
{
  initialPlaybackStartTime = [self initialPlaybackStartTime];
  [initialPlaybackStartTime doubleValue];
  v3 = v2;

  return v3;
}

- (double)playbackStartTime
{
  playbackInfoStartTime = [self playbackInfoStartTime];
  [playbackInfoStartTime doubleValue];
  v3 = v2;

  return v3;
}

- (void)setPlaybackStartTimeOverride:()MFQueuePlayerItem
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [self setInitialPlaybackStartTimeOverride:v2];
}

- (double)playbackStartTimeOverride
{
  initialPlaybackStartTimeOverride = [self initialPlaybackStartTimeOverride];
  [initialPlaybackStartTimeOverride doubleValue];
  v3 = v2;

  return v3;
}

- (uint64_t)isFullyDownloaded
{
  if (![self isAssetLoaded])
  {
    return 0;
  }

  asset = [self asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset2 = [self asset];
    v4 = [asset2 URL];
    isFileURL = [v4 isFileURL];
  }

  else
  {
    isFileURL = 0;
  }

  return isFileURL;
}

- (double)time
{
  if (![self isAssetLoaded] || !objc_msgSend(self, "canUseLoadedAsset"))
  {
    goto LABEL_11;
  }

  v2 = *MEMORY[0x1E6970A60];
  v3 = *&self[v2];
  contentItemID = [v3 contentItemID];
  contentItemID2 = [self contentItemID];
  if (![contentItemID isEqualToString:contentItemID2])
  {

    goto LABEL_10;
  }

  canReusePlayerItem = [self canReusePlayerItem];

  if (canReusePlayerItem)
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
    [self effectivePlaybackStartTime];
    return v8;
  }

  v7 = *&self[v2];
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