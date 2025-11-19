@interface MPCMediaRemoteMiddleware
- ($04B05C73ED6AEEF31C5815932084562D)playerItemDuration:(SEL)a3 atIndexPath:(id *)a4 chain:(id)a5;
- (BOOL)playerCommandEnabled:(BOOL)a3 command:(unsigned int)a4 chain:(id)a5;
- (BOOL)playerCommandSupported:(BOOL)a3 command:(unsigned int)a4 chain:(id)a5;
- (BOOL)playerEnhanceDialogueActive:(BOOL)a3 chain:(id)a4;
- (BOOL)playerIsSharedListeningSession:(BOOL)a3 chain:(id)a4;
- (BOOL)playerItemIsFavoritable:(BOOL)a3 atIndexPath:(id)a4 chain:(id)a5;
- (BOOL)playerItemIsPlaceholder:(BOOL)a3 atIndexPath:(id)a4 chain:(id)a5;
- (BOOL)playerItemIsPreview:(BOOL)a3 atIndexPath:(id)a4 chain:(id)a5;
- (BOOL)playerItemShouldDisableJumpToItem:(BOOL)a3 atIndexPath:(id)a4 boundsCheck:(BOOL)a5 chain:(id)a6;
- (BOOL)playerVocalsControlActive:(BOOL)a3 chain:(id)a4;
- (BOOL)playerVocalsControlContinuous:(BOOL)a3 chain:(id)a4;
- (BOOL)sectionIsAutoPlaySection:(BOOL)a3 atIndex:(int64_t)a4 chain:(id)a5;
- (BOOL)transitionsActive:(BOOL)a3 chain:(id)a4;
- (double)playerSleepTimerFireDate:(double)a3 chain:(id)a4;
- (double)playerSleepTimerTime:(double)a3 chain:(id)a4;
- (float)_playbackRateForContentItem:(id)a3;
- (float)playerMaxVocalsLevel:(float)a3 chain:(id)a4;
- (float)playerMinVocalsLevel:(float)a3 chain:(id)a4;
- (float)playerVocalsLevel:(float)a3 chain:(id)a4;
- (id)_stateDumpObject;
- (id)_supportedCommands:(unsigned int)a3 infoValueForKey:(id)a4;
- (id)activeAudioFormat:(id)a3 chain:(id)a4;
- (id)alternateAudioFormats:(id)a3 chain:(id)a4;
- (id)audioRoute:(id)a3 chain:(id)a4;
- (id)controller:(id)a3 chain:(id)a4;
- (id)lastSectionModelObject:(id)a3 propertySet:(id)a4 chain:(id)a5;
- (id)operationsForPlayerRequest:(id)a3;
- (id)operationsForRequest:(id)a3;
- (id)participant:(id)a3 atIndexPath:(id)a4 chain:(id)a5;
- (id)playerCommandOptionValue:(id)a3 forKey:(id)a4 command:(unsigned int)a5 chain:(id)a6;
- (id)playerItemContentID:(id)a3 atIndexPath:(id)a4 chain:(id)a5;
- (id)playerItemCurrentLanguageOptions:(id)a3 atIndexPath:(id)a4 chain:(id)a5;
- (id)playerItemExplicitBadge:(id)a3 atIndexPath:(id)a4 chain:(id)a5;
- (id)playerItemLanguageOptionGroups:(id)a3 atIndexPath:(id)a4 chain:(id)a5;
- (id)playerItemLocalizedDurationString:(id)a3 atIndexPath:(id)a4 chain:(id)a5;
- (id)playerItemTransitionInfo:(id)a3 atIndexPath:(id)a4 chain:(id)a5;
- (id)playerModelObject:(id)a3 propertySet:(id)a4 atIndexPath:(id)a5 chain:(id)a6;
- (id)playerPlayingItemIndexPath:(id)a3 chain:(id)a4;
- (id)preferredAudioFormat:(id)a3 chain:(id)a4;
- (id)queueItemIdentifier:(id)a3 atIndexPath:(id)a4 chain:(id)a5;
- (id)tracklistProperties:(id)a3 chain:(id)a4;
- (id)tracklistUniqueIdentifier:(id)a3 chain:(id)a4;
- (int64_t)activeAudioFormatJustification:(int64_t)a3 chain:(id)a4;
- (int64_t)playerCommandDisabledReason:(int64_t)a3 command:(unsigned int)a4 chain:(id)a5;
- (int64_t)playerExplicitContentState:(int64_t)a3 chain:(id)a4;
- (int64_t)playerGlobalItemCount:(int64_t)a3 chain:(id)a4;
- (int64_t)playerItemEditingStyleFlags:(int64_t)a3 atIndexPath:(id)a4 chain:(id)a5;
- (int64_t)playerLastChangeDirection:(int64_t)a3 chain:(id)a4;
- (int64_t)playerPlayingItemGlobalIndex:(int64_t)a3 chain:(id)a4;
- (int64_t)playerQueueEndAction:(int64_t)a3 chain:(id)a4;
- (int64_t)playerRepeatType:(int64_t)a3 chain:(id)a4;
- (int64_t)playerShuffleType:(int64_t)a3 chain:(id)a4;
- (int64_t)playerSleepTimerStopMode:(int64_t)a3 chain:(id)a4;
- (int64_t)playerState:(int64_t)a3 chain:(id)a4;
- (int64_t)playerUpNextItemCount:(int64_t)a3 chain:(id)a4;
- (int64_t)transitionStyle:(int64_t)a3 chain:(id)a4;
- (unint64_t)audioFormatPreference:(unint64_t)a3 chain:(id)a4;
- (unint64_t)playerNumberOfItems:(unint64_t)a3 inSection:(unint64_t)a4 chain:(id)a5;
- (unint64_t)playerNumberOfSections:(unint64_t)a3 chain:(id)a4;
@end

@implementation MPCMediaRemoteMiddleware

- (id)_stateDumpObject
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v12[0] = v3;
  v11[1] = @"_skippedMetadata";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_skippedMetadata];
  v12[1] = v4;
  v11[2] = @"controller";
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self->_controller];
  v12[2] = v5;
  v11[3] = @"invalidationObservers";
  v6 = [(MPCMediaRemoteMiddleware *)self invalidationObservers];
  v7 = v6;
  v8 = @"<NULL>";
  if (v6)
  {
    v8 = v6;
  }

  v12[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (id)operationsForPlayerRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [MPCMediaRemoteMiddlewareControllerOperation alloc];
  v7 = [v4 playerPath];
  v8 = [(MPCMediaRemoteMiddlewareControllerOperation *)v6 initWithMiddleware:self playerPath:v7];

  [v5 addObject:v8];
  v9 = [v4 playingItemProperties];
  if (v9 || ([v4 queueSectionProperties], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v10 = [[MPCMediaRemoteMiddlewareMetadataOperation alloc] initWithMiddleware:self request:v4];
    [(MPCMediaRemoteMiddlewareMetadataOperation *)v10 addDependency:v8];
    [v5 addObject:v10];
    v11 = [[MPCMediaRemoteMiddlewareParticipantsOperation alloc] initWithMiddleware:self];
    [(MPCMediaRemoteMiddlewareParticipantsOperation *)v11 addDependency:v8];
    [v5 addObject:v11];

    goto LABEL_5;
  }

  v15 = [v4 queueItemProperties];

  if (v15)
  {
    goto LABEL_4;
  }

  self->_skippedMetadata = 1;
LABEL_5:
  v12 = [[MPCMediaRemoteMiddlewareCommandsOperation alloc] initWithMiddleware:self];
  [(MPCMediaRemoteMiddlewareCommandsOperation *)v12 addDependency:v8];
  [v5 addObject:v12];
  v13 = [[MPCMediaRemoteMiddlewarePlaybackStateOperation alloc] initWithMiddleware:self];
  [(MPCMediaRemoteMiddlewarePlaybackStateOperation *)v13 addDependency:v8];
  [v5 addObject:v13];

  return v5;
}

- (id)operationsForRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MPCMediaRemoteMiddleware *)self operationsForPlayerRequest:v4];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)controller:(id)a3 chain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self controller];

  v9 = v6;
  if (v8)
  {
    v9 = [(MPCMediaRemoteMiddleware *)self controller];
  }

  v10 = [v7 nextObject];
  v11 = [v10 controller:v9 chain:v7];

  return v11;
}

- (float)_playbackRateForContentItem:(id)a3
{
  v4 = a3;
  [v4 playbackRate];
  v6 = v5;
  v7 = [(MPCMediaRemoteMiddleware *)self playerState];
  if (v7 > 3)
  {
    if (v7 != 4 && v7 != 6)
    {
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0.0;
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    goto LABEL_9;
  }

  if (v7 == 2)
  {
    [v4 _mediaRemoteContentItem];
    if (!MRContentItemHasPlaybackRate())
    {
      v6 = 1.0;
    }
  }

LABEL_10:

  return v6;
}

- (id)_supportedCommands:(unsigned int)a3 infoValueForKey:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v8 = [v7 commandInfoForCommand:v4];

  if (v8)
  {
    v8 = MRMediaRemoteCommandInfoCopyValueForKey();
  }

  return v8;
}

- (BOOL)playerEnhanceDialogueActive:(BOOL)a3 chain:(id)a4
{
  v4 = a3;
  v6 = *MEMORY[0x1E69B0C68];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:147 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    v4 = [v8 BOOLValue];
  }

  v9 = [v7 nextObject];
  v10 = [v9 playerEnhanceDialogueActive:v4 chain:v7];

  return v10;
}

- (int64_t)transitionStyle:(int64_t)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0D78];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:149 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    a3 = [v8 unsignedIntegerValue];
  }

  v9 = [v7 nextObject];
  v10 = [v9 transitionStyle:a3 chain:v7];

  return v10;
}

- (BOOL)transitionsActive:(BOOL)a3 chain:(id)a4
{
  v4 = a3;
  v6 = *MEMORY[0x1E69B0C68];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:149 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    v4 = [v8 BOOLValue];
  }

  v9 = [v7 nextObject];
  v10 = [v9 transitionsActive:v4 chain:v7];

  return v10;
}

- (int64_t)playerSleepTimerStopMode:(int64_t)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0D10];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:124 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 unsignedIntegerValue];
    a3 = MPSleepTimerStopModeFromMediaRemoteSleepTimerStopMode();
  }

  v9 = [v7 nextObject];
  v10 = [v9 playerSleepTimerStopMode:a3 chain:v7];

  return v10;
}

- (double)playerSleepTimerFireDate:(double)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0D08];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:124 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 doubleValue];
    a3 = v9;
  }

  v10 = [v7 nextObject];
  [v10 playerSleepTimerFireDate:v7 chain:a3];
  v12 = v11;

  return v12;
}

- (double)playerSleepTimerTime:(double)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0D18];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:124 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 doubleValue];
    a3 = v9;
  }

  v10 = [v7 nextObject];
  [v10 playerSleepTimerTime:v7 chain:a3];
  v12 = v11;

  return v12;
}

- (BOOL)playerVocalsControlContinuous:(BOOL)a3 chain:(id)a4
{
  v4 = a3;
  v6 = *MEMORY[0x1E69B0D90];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    v4 = [v8 BOOLValue];
  }

  v9 = [v7 nextObject];
  v10 = [v9 playerVocalsControlContinuous:v4 chain:v7];

  return v10;
}

- (float)playerMaxVocalsLevel:(float)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0DA0];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 floatValue];
    a3 = v9;
  }

  v10 = [v7 nextObject];
  *&v11 = a3;
  [v10 playerMaxVocalsLevel:v7 chain:v11];
  v13 = v12;

  return v13;
}

- (float)playerMinVocalsLevel:(float)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0DA8];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 floatValue];
    a3 = v9;
  }

  v10 = [v7 nextObject];
  *&v11 = a3;
  [v10 playerMinVocalsLevel:v7 chain:v11];
  v13 = v12;

  return v13;
}

- (float)playerVocalsLevel:(float)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0D98];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 floatValue];
    a3 = v9;
  }

  v10 = [v7 nextObject];
  *&v11 = a3;
  [v10 playerVocalsLevel:v7 chain:v11];
  v13 = v12;

  return v13;
}

- (BOOL)playerVocalsControlActive:(BOOL)a3 chain:(id)a4
{
  v4 = a3;
  v6 = *MEMORY[0x1E69B0D88];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    v4 = [v8 BOOLValue];
  }

  v9 = [v7 nextObject];
  v10 = [v9 playerVocalsControlActive:v4 chain:v7];

  return v10;
}

- (id)audioRoute:(id)a3 chain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [v9 itemAtIndexPath:self->_playingIndexPath];

  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:509 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  v11 = [v10 audioRoute];

  v12 = v7;
  if (v11)
  {
    v13 = [MPCPlayerAudioRoute alloc];
    v14 = [v10 audioRoute];
    v12 = [(MPCPlayerAudioRoute *)v13 initWithNowPlayingInfoAudioRoute:v14];
  }

  v15 = [v8 nextObject];
  v16 = [v15 audioRoute:v12 chain:v8];

  return v16;
}

- (id)alternateAudioFormats:(id)a3 chain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [v9 itemAtIndexPath:self->_playingIndexPath];

  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:499 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  v11 = [v10 alternativeFormats];
  v12 = [v11 msv_map:&__block_literal_global_27727];

  v13 = [v8 nextObject];
  v14 = [v13 alternateAudioFormats:v12 chain:v8];

  return v14;
}

MPCPlayerAudioFormat *__82__MPCMediaRemoteMiddleware_MPCPlayerResponseBuilder__alternateAudioFormats_chain___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MPCPlayerAudioFormat alloc] initWithNowPlayingInfoAudioFormat:v2];

  return v3;
}

- (unint64_t)audioFormatPreference:(unint64_t)a3 chain:(id)a4
{
  v6 = a4;
  v7 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v8 = [v7 itemAtIndexPath:self->_playingIndexPath];

  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:491 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  v9 = [v8 formatTierPreference];
  v10 = [v6 nextObject];
  v11 = [v10 audioFormatPreference:v9 chain:v6];

  return v11;
}

- (int64_t)activeAudioFormatJustification:(int64_t)a3 chain:(id)a4
{
  v6 = a4;
  v7 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v8 = [v7 itemAtIndexPath:self->_playingIndexPath];

  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:483 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  v9 = [v8 activeFormatJustification];
  v10 = [v6 nextObject];
  v11 = [v10 activeAudioFormatJustification:v9 chain:v6];

  return v11;
}

- (id)activeAudioFormat:(id)a3 chain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [v9 itemAtIndexPath:self->_playingIndexPath];

  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:473 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  v11 = [v10 activeFormat];

  v12 = v7;
  if (v11)
  {
    v13 = [MPCPlayerAudioFormat alloc];
    v14 = [v10 activeFormat];
    v12 = [(MPCPlayerAudioFormat *)v13 initWithNowPlayingInfoAudioFormat:v14];
  }

  v15 = [v8 nextObject];
  v16 = [v15 activeAudioFormat:v12 chain:v8];

  return v16;
}

- (id)preferredAudioFormat:(id)a3 chain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [v9 itemAtIndexPath:self->_playingIndexPath];

  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:463 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  v11 = [v10 preferredFormat];

  v12 = v7;
  if (v11)
  {
    v13 = [MPCPlayerAudioFormat alloc];
    v14 = [v10 preferredFormat];
    v12 = [(MPCPlayerAudioFormat *)v13 initWithNowPlayingInfoAudioFormat:v14];
  }

  v15 = [v8 nextObject];
  v16 = [v15 preferredAudioFormat:v12 chain:v8];

  return v16;
}

- (BOOL)playerItemIsFavoritable:(BOOL)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v11 = [v10 itemAtIndexPath:v8];

  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:455 description:{@"Could not find content item at indexPath: %@", v8}];
  }

  if ([v11 mediaType])
  {
    v12 = 1;
  }

  else
  {
    v12 = ([v11 mediaType] >> 11) & 1;
  }

  v13 = [v9 nextObject];
  v14 = [v13 playerItemIsFavoritable:v12 atIndexPath:v8 chain:v9];

  return v14;
}

- (id)participant:(id)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [v9 itemAtIndexPath:v7];

  v11 = [v10 associatedParticipantIdentifier];
  if (v11)
  {
    v12 = [(MPCMediaRemoteMiddleware *)self queueParticipants];
    v13 = [v12 objectForKeyedSubscript:v11];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v8 nextObject];
  v15 = [v14 participant:v13 atIndexPath:v7 chain:v8];

  return v15;
}

- (BOOL)playerIsSharedListeningSession:(BOOL)a3 chain:(id)a4
{
  v5 = a4;
  v6 = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v7 = [v6 commandInfoForCommand:139];

  v8 = v7 != 0;
  v9 = [v5 nextObject];
  LOBYTE(v8) = [v9 playerIsSharedListeningSession:v8 chain:v5];

  return v8;
}

- (BOOL)sectionIsAutoPlaySection:(BOOL)a3 atIndex:(int64_t)a4 chain:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [v9 sectionAtIndex:a4];

  v11 = [v10 userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69702B8]];
  v13 = [v12 BOOLValue];

  v14 = [v8 nextObject];
  LOBYTE(a4) = [v14 sectionIsAutoPlaySection:v13 | v6 atIndex:a4 chain:v8];

  return a4;
}

- (id)tracklistProperties:(id)a3 chain:(id)a4
{
  v5 = a4;
  v6 = [(MPCMediaRemoteMiddleware *)self queueProperties];
  v7 = [v5 nextObject];
  v8 = [v7 tracklistProperties:v6 chain:v5];

  return v8;
}

- (id)tracklistUniqueIdentifier:(id)a3 chain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self queueIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:133 infoValueForKey:*MEMORY[0x1E69B0CA0]];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    v10 = v13;
  }

  v14 = [v7 nextObject];
  v15 = [v14 tracklistUniqueIdentifier:v10 chain:v7];

  return v15;
}

- (id)lastSectionModelObject:(id)a3 propertySet:(id)a4 chain:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MPCMediaRemoteMiddleware *)self lastSectionContentItem];
  if (v7)
  {
    v8 = [MEMORY[0x1E6970620] translatorForMPModelClass:objc_opt_class()];
    v9 = objc_alloc_init(MEMORY[0x1E6970628]);
    v10 = [(MPCMediaRemoteMiddleware *)self controller];
    [v9 setArtworkGenerator:v10];

    if (!v6)
    {
      v11 = MEMORY[0x1E69708B0];
      v17[0] = *MEMORY[0x1E69700D8];
      v12 = [MEMORY[0x1E69708B0] emptyPropertySet];
      v18[0] = v12;
      v17[1] = *MEMORY[0x1E6970118];
      v13 = [MEMORY[0x1E69708B0] emptyPropertySet];
      v18[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v6 = [v11 propertySetWithRelationships:v14];
    }

    v15 = [v8 sectionObjectForPropertySet:v6 contentItem:v7 context:v9];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)playerCommandDisabledReason:(int64_t)a3 command:(unsigned int)a4 chain:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v10 = [v9 commandInfoForCommand:v5];

  if (v10)
  {
    IntegerValueForKey = MRMediaRemoteCommandInfoGetIntegerValueForKey();
    if (IntegerValueForKey - 1 >= 6)
    {
      a3 = 0;
    }

    else
    {
      a3 = IntegerValueForKey;
    }
  }

  v12 = [v8 nextObject];
  v13 = [v12 playerCommandDisabledReason:a3 command:v5 chain:v8];

  return v13;
}

- (id)playerCommandOptionValue:(id)a3 forKey:(id)a4 command:(unsigned int)a5 chain:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:v7 infoValueForKey:v12];
  v14 = v13;
  v15 = v10;
  if (v13)
  {
    v15 = v13;
  }

  v16 = [v11 nextObject];
  v17 = [v16 playerCommandOptionValue:v15 forKey:v12 command:v7 chain:v11];

  return v17;
}

- (BOOL)playerCommandEnabled:(BOOL)a3 command:(unsigned int)a4 chain:(id)a5
{
  v5 = *&a4;
  v6 = a3;
  v8 = a5;
  v9 = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v10 = [v9 commandInfoForCommand:v5];

  if (v10)
  {
    v6 = MRMediaRemoteCommandInfoGetEnabled() != 0;
  }

  v11 = [v8 nextObject];
  v12 = [v11 playerCommandEnabled:v6 command:v5 chain:v8];

  return v12;
}

- (BOOL)playerCommandSupported:(BOOL)a3 command:(unsigned int)a4 chain:(id)a5
{
  v5 = *&a4;
  LODWORD(v6) = a3;
  v8 = a5;
  v9 = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v10 = [v9 commandInfoForCommand:v5];

  if (v10)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  v11 = [v8 nextObject];
  v12 = [v11 playerCommandSupported:v6 command:v5 chain:v8];

  return v12;
}

- (id)playerItemCurrentLanguageOptions:(id)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v11 = [v10 itemAtIndexPath:v8];

  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:356 description:{@"Could not find content item at indexPath: %@", v8}];
  }

  v12 = [v9 nextObject];
  v13 = [v11 currentLanguageOptions];
  v14 = [v13 copy];
  v15 = [v12 playerItemCurrentLanguageOptions:v14 atIndexPath:v8 chain:v9];

  return v15;
}

- (id)playerItemLanguageOptionGroups:(id)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v11 = [v10 itemAtIndexPath:v8];

  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:350 description:{@"Could not find content item at indexPath: %@", v8}];
  }

  v12 = [v9 nextObject];
  v13 = [v11 availableLanguageOptions];
  v14 = [v13 copy];
  v15 = [v12 playerItemLanguageOptionGroups:v14 atIndexPath:v8 chain:v9];

  return v15;
}

- (int64_t)playerGlobalItemCount:(int64_t)a3 chain:(id)a4
{
  v6 = a4;
  v7 = [(MPCMediaRemoteMiddleware *)self queueProperties];
  v8 = [v7 objectForKeyedSubscript:@"totalItemCount"];

  if (v8)
  {
    a3 = [v8 integerValue];
  }

  else
  {
    v9 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];

    if (v9)
    {
      v10 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
      v11 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
      v12 = [v10 itemAtIndexPath:v11];

      v13 = [v12 auxiliaryNowPlayingInfo];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69B1048]];
      a3 = [v14 integerValue];
    }
  }

  v15 = [v6 nextObject];
  v16 = [v15 playerGlobalItemCount:a3 chain:v6];

  return v16;
}

- (int64_t)playerPlayingItemGlobalIndex:(int64_t)a3 chain:(id)a4
{
  v6 = a4;
  v7 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];

  if (v7)
  {
    v8 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    v9 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
    v10 = [v8 itemAtIndexPath:v9];

    v11 = [v10 auxiliaryNowPlayingInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69B0FA0]];
    a3 = [v12 integerValue];
  }

  v13 = [v6 nextObject];
  v14 = [v13 playerPlayingItemGlobalIndex:a3 chain:v6];

  return v14;
}

- (BOOL)playerItemShouldDisableJumpToItem:(BOOL)a3 atIndexPath:(id)a4 boundsCheck:(BOOL)a5 chain:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v13 = [v12 itemAtIndexPath:v10];

  v14 = [v13 editingStyleFlags];
  if (v7 && !v13)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    v20 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:320 description:{@"Could not find content item at indexPath: %@ queueContentItems: %p queueContentItems.totalItemCount: %ld", v10, v19, objc_msgSend(v20, "totalItemCount")}];
  }

  v15 = [v11 nextObject];
  v16 = [v15 playerItemShouldDisableJumpToItem:(v14 >> 2) & 1 atIndexPath:v10 boundsCheck:v7 chain:v11];

  return v16;
}

- (id)playerPlayingItemIndexPath:(id)a3 chain:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  v12 = [v6 nextObject];
  v13 = [v12 playerPlayingItemIndexPath:v11 chain:v6];

  return v13;
}

- (id)playerModelObject:(id)a3 propertySet:(id)a4 atIndexPath:(id)a5 chain:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  if ([v11 length] == 1)
  {
    v14 = -[MPSectionedCollection sectionAtIndex:](self->_queueModelObjects, "sectionAtIndex:", [v11 section]);
    goto LABEL_5;
  }

  if ([v11 length] == 2)
  {
    v14 = [(MPSectionedCollection *)self->_queueModelObjects itemAtIndexPath:v11];
LABEL_5:
    v15 = v14;
    if ([v14 type])
    {
      if (v15)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (![0 type])
  {
    v15 = 0;
LABEL_10:
  }

LABEL_11:
  v15 = v10;
LABEL_12:
  v16 = [v12 nextObject];
  v17 = [v16 playerModelObject:v15 propertySet:v13 atIndexPath:v11 chain:v12];

  return v17;
}

- (id)playerItemContentID:(id)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [v9 itemAtIndexPath:v8];

  v11 = [v7 nextObject];
  v12 = [v10 identifier];
  v13 = [v11 playerItemContentID:v12 atIndexPath:v8 chain:v7];

  return v13;
}

- (BOOL)playerItemIsPreview:(BOOL)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v6 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v12 = [v11 itemAtIndexPath:v9];

  if (!v12)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:276 description:{@"Could not find content item at indexPath: %@", v9}];
  }

  v13 = [v12 userInfo];
  v14 = [v13 objectForKeyedSubscript:@"preview"];

  if (v14)
  {
    v6 = [v14 BOOLValue];
  }

  v15 = [v10 nextObject];
  v16 = [v15 playerItemIsPreview:v6 atIndexPath:v9 chain:v10];

  return v16;
}

- (BOOL)playerItemIsPlaceholder:(BOOL)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v6 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v12 = [v11 itemAtIndexPath:v9];

  if (!v12)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:265 description:{@"Could not find content item at indexPath: %@", v9}];
  }

  v13 = [v12 userInfo];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69702C8]];

  if (v14)
  {
    v6 = [v14 BOOLValue];
  }

  v15 = [v10 nextObject];
  v16 = [v15 playerItemIsPlaceholder:v6 atIndexPath:v9 chain:v10];

  return v16;
}

- (id)queueItemIdentifier:(id)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [v9 itemAtIndexPath:v8];

  v11 = [v10 _mediaRemoteContentItem];
  v12 = [v11 queueIdentifier];
  v13 = [v7 nextObject];
  v14 = [v13 queueItemIdentifier:v12 atIndexPath:v8 chain:v7];

  return v14;
}

- (int64_t)playerItemEditingStyleFlags:(int64_t)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v11 = [v10 itemAtIndexPath:v8];

  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:250 description:{@"Could not find content item at indexPath: %@", v8}];
  }

  v12 = [v11 editingStyleFlags];
  v13 = [v9 nextObject];
  v14 = [v13 playerItemEditingStyleFlags:v12 atIndexPath:v8 chain:v9];

  return v14;
}

- (id)playerItemTransitionInfo:(id)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v13 = [v12 itemAtIndexPath:v10];

  if (!v13)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:240 description:{@"Could not find content item at indexPath: %@", v10}];
  }

  v14 = [v13 transitionInfo];
  v15 = [v11 nextObject];
  v16 = [v15 playerItemTransitionInfo:v14 atIndexPath:v10 chain:v11];

  return v16;
}

- (id)playerItemExplicitBadge:(id)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v9 = [v8 itemAtIndexPath:v7];

  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:232 description:{@"Could not find content item at indexPath: %@", v7}];
  }

  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69702A8]];

  return v11;
}

- (id)playerItemLocalizedDurationString:(id)a3 atIndexPath:(id)a4 chain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v13 = [v12 itemAtIndexPath:v10];

  if (!v13)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:224 description:{@"Could not find content item at indexPath: %@", v10}];
  }

  v14 = [v13 localizedDurationString];
  v15 = [v11 nextObject];
  v16 = [v15 playerItemLocalizedDurationString:v14 atIndexPath:v10 chain:v11];

  return v16;
}

- ($04B05C73ED6AEEF31C5815932084562D)playerItemDuration:(SEL)a3 atIndexPath:(id *)a4 chain:(id)a5
{
  v10 = a5;
  v11 = a6;
  v12 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v13 = [v12 itemAtIndexPath:v10];

  if (!v13)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a3 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:199 description:{@"Could not find content item at indexPath: %@", v10}];
  }

  if ([v13 isLoading])
  {
    v39 = 1;
  }

  else
  {
    v14 = [v13 userInfo];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69702C0]];
    v39 = [v15 BOOLValue];
  }

  [v13 elapsedTimeTimestamp];
  v17 = v16;
  [v13 startTime];
  v19 = v18;
  v20 = [v13 userInfo];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69702A0]];
  [v21 doubleValue];
  v23 = v22;
  [v13 duration];
  v25 = v24;
  [v13 elapsedTime];
  v27 = v26;
  [(MPCMediaRemoteMiddleware *)self _playbackRateForContentItem:v13];
  v29 = v28;
  [v13 defaultPlaybackRate];
  v31 = v30;
  v32 = [v13 isAlwaysLiveItem];
  v33 = [(MPCMediaRemoteMiddleware *)self playerState];
  v34 = [v13 isInTransition];

  v35 = [v11 nextObject];
  v36 = v35;
  if (v35)
  {
    v40[0] = v17;
    v40[1] = v19;
    v40[2] = v23;
    v40[3] = v25;
    v40[4] = v27;
    v41 = v29;
    v42 = v31;
    v43 = v32;
    v44 = (v33 == 2) & v39;
    v45 = v34;
    v46 = 0;
    v47 = 0;
    [v35 playerItemDuration:v40 atIndexPath:v10 chain:v11];
  }

  else
  {
    *&retstr->var7 = 0;
    *&retstr->var2 = 0u;
    *&retstr->var4 = 0u;
    *&retstr->var0 = 0u;
  }

  return result;
}

- (unint64_t)playerNumberOfItems:(unint64_t)a3 inSection:(unint64_t)a4 chain:(id)a5
{
  v8 = a5;
  v9 = [(MPCMediaRemoteMiddleware *)self queueContentItems];

  if (v9)
  {
    v10 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    a3 = [v10 numberOfItemsInSection:a4];
  }

  v11 = [v8 nextObject];
  v12 = [v11 playerNumberOfItems:a3 inSection:a4 chain:v8];

  return v12;
}

- (unint64_t)playerNumberOfSections:(unint64_t)a3 chain:(id)a4
{
  v5 = a4;
  v6 = [v5 nextObject];
  v7 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v8 = [v6 playerNumberOfSections:objc_msgSend(v7 chain:{"numberOfSections"), v5}];

  return v8;
}

- (int64_t)playerExplicitContentState:(int64_t)a3 chain:(id)a4
{
  v6 = a4;
  v7 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];

  if (v7)
  {
    v8 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    v9 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
    v10 = [v8 itemAtIndexPath:v9];

    v11 = [v10 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69702B0]];
    a3 = [v12 integerValue];
  }

  v13 = [v6 nextObject];
  v14 = [v13 playerExplicitContentState:a3 chain:v6];

  return v14;
}

- (int64_t)playerUpNextItemCount:(int64_t)a3 chain:(id)a4
{
  v5 = a4;
  v6 = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  IntegerValueForKey = [v6 commandInfoForCommand:122];

  if (IntegerValueForKey)
  {
    IntegerValueForKey = MRMediaRemoteCommandInfoGetIntegerValueForKey();
  }

  v8 = [v5 nextObject];
  v9 = [v8 playerUpNextItemCount:IntegerValueForKey chain:v5];

  return v9;
}

- (int64_t)playerLastChangeDirection:(int64_t)a3 chain:(id)a4
{
  v6 = a4;
  v7 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];

  if (v7)
  {
    v8 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    v9 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
    v10 = [v8 itemAtIndexPath:v9];

    v11 = [v10 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69702D0]];

    a3 = [v12 integerValue];
  }

  v13 = [v6 nextObject];
  v14 = [v13 playerLastChangeDirection:a3 chain:v6];

  return v14;
}

- (int64_t)playerQueueEndAction:(int64_t)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0C50];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:135 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    a3 = [v8 unsignedIntegerValue];
  }

  v9 = [v7 nextObject];
  v10 = [v9 playerQueueEndAction:a3 chain:v7];

  return v10;
}

- (int64_t)playerShuffleType:(int64_t)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0D00];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:26 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 unsignedIntegerValue];
    a3 = MPShuffleTypeFromMediaRemoteShuffleMode();
  }

  v9 = [v7 nextObject];
  v10 = [v9 playerShuffleType:a3 chain:v7];

  return v10;
}

- (int64_t)playerRepeatType:(int64_t)a3 chain:(id)a4
{
  v6 = *MEMORY[0x1E69B0CF8];
  v7 = a4;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:25 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 unsignedIntegerValue];
    a3 = MPRepeatTypeFromMediaRemoteRepeatMode();
  }

  v9 = [v7 nextObject];
  v10 = [v9 playerRepeatType:a3 chain:v7];

  return v10;
}

- (int64_t)playerState:(int64_t)a3 chain:(id)a4
{
  v5 = a4;
  v6 = [v5 nextObject];
  v7 = [v6 playerState:-[MPCMediaRemoteMiddleware playerState](self chain:{"playerState"), v5}];

  return v7;
}

@end