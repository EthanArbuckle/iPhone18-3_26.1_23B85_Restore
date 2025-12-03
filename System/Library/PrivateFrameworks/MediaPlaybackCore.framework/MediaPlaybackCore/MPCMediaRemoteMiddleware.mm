@interface MPCMediaRemoteMiddleware
- ($04B05C73ED6AEEF31C5815932084562D)playerItemDuration:(SEL)duration atIndexPath:(id *)path chain:(id)chain;
- (BOOL)playerCommandEnabled:(BOOL)enabled command:(unsigned int)command chain:(id)chain;
- (BOOL)playerCommandSupported:(BOOL)supported command:(unsigned int)command chain:(id)chain;
- (BOOL)playerEnhanceDialogueActive:(BOOL)active chain:(id)chain;
- (BOOL)playerIsSharedListeningSession:(BOOL)session chain:(id)chain;
- (BOOL)playerItemIsFavoritable:(BOOL)favoritable atIndexPath:(id)path chain:(id)chain;
- (BOOL)playerItemIsPlaceholder:(BOOL)placeholder atIndexPath:(id)path chain:(id)chain;
- (BOOL)playerItemIsPreview:(BOOL)preview atIndexPath:(id)path chain:(id)chain;
- (BOOL)playerItemShouldDisableJumpToItem:(BOOL)item atIndexPath:(id)path boundsCheck:(BOOL)check chain:(id)chain;
- (BOOL)playerVocalsControlActive:(BOOL)active chain:(id)chain;
- (BOOL)playerVocalsControlContinuous:(BOOL)continuous chain:(id)chain;
- (BOOL)sectionIsAutoPlaySection:(BOOL)section atIndex:(int64_t)index chain:(id)chain;
- (BOOL)transitionsActive:(BOOL)active chain:(id)chain;
- (double)playerSleepTimerFireDate:(double)date chain:(id)chain;
- (double)playerSleepTimerTime:(double)time chain:(id)chain;
- (float)_playbackRateForContentItem:(id)item;
- (float)playerMaxVocalsLevel:(float)level chain:(id)chain;
- (float)playerMinVocalsLevel:(float)level chain:(id)chain;
- (float)playerVocalsLevel:(float)level chain:(id)chain;
- (id)_stateDumpObject;
- (id)_supportedCommands:(unsigned int)commands infoValueForKey:(id)key;
- (id)activeAudioFormat:(id)format chain:(id)chain;
- (id)alternateAudioFormats:(id)formats chain:(id)chain;
- (id)audioRoute:(id)route chain:(id)chain;
- (id)controller:(id)controller chain:(id)chain;
- (id)lastSectionModelObject:(id)object propertySet:(id)set chain:(id)chain;
- (id)operationsForPlayerRequest:(id)request;
- (id)operationsForRequest:(id)request;
- (id)participant:(id)participant atIndexPath:(id)path chain:(id)chain;
- (id)playerCommandOptionValue:(id)value forKey:(id)key command:(unsigned int)command chain:(id)chain;
- (id)playerItemContentID:(id)d atIndexPath:(id)path chain:(id)chain;
- (id)playerItemCurrentLanguageOptions:(id)options atIndexPath:(id)path chain:(id)chain;
- (id)playerItemExplicitBadge:(id)badge atIndexPath:(id)path chain:(id)chain;
- (id)playerItemLanguageOptionGroups:(id)groups atIndexPath:(id)path chain:(id)chain;
- (id)playerItemLocalizedDurationString:(id)string atIndexPath:(id)path chain:(id)chain;
- (id)playerItemTransitionInfo:(id)info atIndexPath:(id)path chain:(id)chain;
- (id)playerModelObject:(id)object propertySet:(id)set atIndexPath:(id)path chain:(id)chain;
- (id)playerPlayingItemIndexPath:(id)path chain:(id)chain;
- (id)preferredAudioFormat:(id)format chain:(id)chain;
- (id)queueItemIdentifier:(id)identifier atIndexPath:(id)path chain:(id)chain;
- (id)tracklistProperties:(id)properties chain:(id)chain;
- (id)tracklistUniqueIdentifier:(id)identifier chain:(id)chain;
- (int64_t)activeAudioFormatJustification:(int64_t)justification chain:(id)chain;
- (int64_t)playerCommandDisabledReason:(int64_t)reason command:(unsigned int)command chain:(id)chain;
- (int64_t)playerExplicitContentState:(int64_t)state chain:(id)chain;
- (int64_t)playerGlobalItemCount:(int64_t)count chain:(id)chain;
- (int64_t)playerItemEditingStyleFlags:(int64_t)flags atIndexPath:(id)path chain:(id)chain;
- (int64_t)playerLastChangeDirection:(int64_t)direction chain:(id)chain;
- (int64_t)playerPlayingItemGlobalIndex:(int64_t)index chain:(id)chain;
- (int64_t)playerQueueEndAction:(int64_t)action chain:(id)chain;
- (int64_t)playerRepeatType:(int64_t)type chain:(id)chain;
- (int64_t)playerShuffleType:(int64_t)type chain:(id)chain;
- (int64_t)playerSleepTimerStopMode:(int64_t)mode chain:(id)chain;
- (int64_t)playerState:(int64_t)state chain:(id)chain;
- (int64_t)playerUpNextItemCount:(int64_t)count chain:(id)chain;
- (int64_t)transitionStyle:(int64_t)style chain:(id)chain;
- (unint64_t)audioFormatPreference:(unint64_t)preference chain:(id)chain;
- (unint64_t)playerNumberOfItems:(unint64_t)items inSection:(unint64_t)section chain:(id)chain;
- (unint64_t)playerNumberOfSections:(unint64_t)sections chain:(id)chain;
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
  invalidationObservers = [(MPCMediaRemoteMiddleware *)self invalidationObservers];
  v7 = invalidationObservers;
  v8 = @"<NULL>";
  if (invalidationObservers)
  {
    v8 = invalidationObservers;
  }

  v12[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (id)operationsForPlayerRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [MPCMediaRemoteMiddlewareControllerOperation alloc];
  playerPath = [requestCopy playerPath];
  v8 = [(MPCMediaRemoteMiddlewareControllerOperation *)v6 initWithMiddleware:self playerPath:playerPath];

  [v5 addObject:v8];
  playingItemProperties = [requestCopy playingItemProperties];
  if (playingItemProperties || ([requestCopy queueSectionProperties], (playingItemProperties = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v10 = [[MPCMediaRemoteMiddlewareMetadataOperation alloc] initWithMiddleware:self request:requestCopy];
    [(MPCMediaRemoteMiddlewareMetadataOperation *)v10 addDependency:v8];
    [v5 addObject:v10];
    v11 = [[MPCMediaRemoteMiddlewareParticipantsOperation alloc] initWithMiddleware:self];
    [(MPCMediaRemoteMiddlewareParticipantsOperation *)v11 addDependency:v8];
    [v5 addObject:v11];

    goto LABEL_5;
  }

  queueItemProperties = [requestCopy queueItemProperties];

  if (queueItemProperties)
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

- (id)operationsForRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MPCMediaRemoteMiddleware *)self operationsForPlayerRequest:requestCopy];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)controller:(id)controller chain:(id)chain
{
  controllerCopy = controller;
  chainCopy = chain;
  controller = [(MPCMediaRemoteMiddleware *)self controller];

  controller2 = controllerCopy;
  if (controller)
  {
    controller2 = [(MPCMediaRemoteMiddleware *)self controller];
  }

  nextObject = [chainCopy nextObject];
  v11 = [nextObject controller:controller2 chain:chainCopy];

  return v11;
}

- (float)_playbackRateForContentItem:(id)item
{
  itemCopy = item;
  [itemCopy playbackRate];
  v6 = v5;
  playerState = [(MPCMediaRemoteMiddleware *)self playerState];
  if (playerState > 3)
  {
    if (playerState != 4 && playerState != 6)
    {
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0.0;
    goto LABEL_10;
  }

  if (playerState == 1)
  {
    goto LABEL_9;
  }

  if (playerState == 2)
  {
    [itemCopy _mediaRemoteContentItem];
    if (!MRContentItemHasPlaybackRate())
    {
      v6 = 1.0;
    }
  }

LABEL_10:

  return v6;
}

- (id)_supportedCommands:(unsigned int)commands infoValueForKey:(id)key
{
  v4 = *&commands;
  keyCopy = key;
  supportedCommands = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v8 = [supportedCommands commandInfoForCommand:v4];

  if (v8)
  {
    v8 = MRMediaRemoteCommandInfoCopyValueForKey();
  }

  return v8;
}

- (BOOL)playerEnhanceDialogueActive:(BOOL)active chain:(id)chain
{
  activeCopy = active;
  v6 = *MEMORY[0x1E69B0C68];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:147 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    activeCopy = [v8 BOOLValue];
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject playerEnhanceDialogueActive:activeCopy chain:chainCopy];

  return v10;
}

- (int64_t)transitionStyle:(int64_t)style chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0D78];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:149 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    style = [v8 unsignedIntegerValue];
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject transitionStyle:style chain:chainCopy];

  return v10;
}

- (BOOL)transitionsActive:(BOOL)active chain:(id)chain
{
  activeCopy = active;
  v6 = *MEMORY[0x1E69B0C68];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:149 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    activeCopy = [v8 BOOLValue];
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject transitionsActive:activeCopy chain:chainCopy];

  return v10;
}

- (int64_t)playerSleepTimerStopMode:(int64_t)mode chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0D10];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:124 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 unsignedIntegerValue];
    mode = MPSleepTimerStopModeFromMediaRemoteSleepTimerStopMode();
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject playerSleepTimerStopMode:mode chain:chainCopy];

  return v10;
}

- (double)playerSleepTimerFireDate:(double)date chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0D08];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:124 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 doubleValue];
    date = v9;
  }

  nextObject = [chainCopy nextObject];
  [nextObject playerSleepTimerFireDate:chainCopy chain:date];
  v12 = v11;

  return v12;
}

- (double)playerSleepTimerTime:(double)time chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0D18];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:124 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 doubleValue];
    time = v9;
  }

  nextObject = [chainCopy nextObject];
  [nextObject playerSleepTimerTime:chainCopy chain:time];
  v12 = v11;

  return v12;
}

- (BOOL)playerVocalsControlContinuous:(BOOL)continuous chain:(id)chain
{
  continuousCopy = continuous;
  v6 = *MEMORY[0x1E69B0D90];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    continuousCopy = [v8 BOOLValue];
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject playerVocalsControlContinuous:continuousCopy chain:chainCopy];

  return v10;
}

- (float)playerMaxVocalsLevel:(float)level chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0DA0];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 floatValue];
    level = v9;
  }

  nextObject = [chainCopy nextObject];
  *&v11 = level;
  [nextObject playerMaxVocalsLevel:chainCopy chain:v11];
  v13 = v12;

  return v13;
}

- (float)playerMinVocalsLevel:(float)level chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0DA8];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 floatValue];
    level = v9;
  }

  nextObject = [chainCopy nextObject];
  *&v11 = level;
  [nextObject playerMinVocalsLevel:chainCopy chain:v11];
  v13 = v12;

  return v13;
}

- (float)playerVocalsLevel:(float)level chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0D98];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 floatValue];
    level = v9;
  }

  nextObject = [chainCopy nextObject];
  *&v11 = level;
  [nextObject playerVocalsLevel:chainCopy chain:v11];
  v13 = v12;

  return v13;
}

- (BOOL)playerVocalsControlActive:(BOOL)active chain:(id)chain
{
  activeCopy = active;
  v6 = *MEMORY[0x1E69B0D88];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:142 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    activeCopy = [v8 BOOLValue];
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject playerVocalsControlActive:activeCopy chain:chainCopy];

  return v10;
}

- (id)audioRoute:(id)route chain:(id)chain
{
  routeCopy = route;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [queueContentItems itemAtIndexPath:self->_playingIndexPath];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:509 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  audioRoute = [v10 audioRoute];

  v12 = routeCopy;
  if (audioRoute)
  {
    v13 = [MPCPlayerAudioRoute alloc];
    audioRoute2 = [v10 audioRoute];
    v12 = [(MPCPlayerAudioRoute *)v13 initWithNowPlayingInfoAudioRoute:audioRoute2];
  }

  nextObject = [chainCopy nextObject];
  v16 = [nextObject audioRoute:v12 chain:chainCopy];

  return v16;
}

- (id)alternateAudioFormats:(id)formats chain:(id)chain
{
  formatsCopy = formats;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [queueContentItems itemAtIndexPath:self->_playingIndexPath];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:499 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  alternativeFormats = [v10 alternativeFormats];
  v12 = [alternativeFormats msv_map:&__block_literal_global_27727];

  nextObject = [chainCopy nextObject];
  v14 = [nextObject alternateAudioFormats:v12 chain:chainCopy];

  return v14;
}

MPCPlayerAudioFormat *__82__MPCMediaRemoteMiddleware_MPCPlayerResponseBuilder__alternateAudioFormats_chain___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MPCPlayerAudioFormat alloc] initWithNowPlayingInfoAudioFormat:v2];

  return v3;
}

- (unint64_t)audioFormatPreference:(unint64_t)preference chain:(id)chain
{
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v8 = [queueContentItems itemAtIndexPath:self->_playingIndexPath];

  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:491 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  formatTierPreference = [v8 formatTierPreference];
  nextObject = [chainCopy nextObject];
  v11 = [nextObject audioFormatPreference:formatTierPreference chain:chainCopy];

  return v11;
}

- (int64_t)activeAudioFormatJustification:(int64_t)justification chain:(id)chain
{
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v8 = [queueContentItems itemAtIndexPath:self->_playingIndexPath];

  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:483 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  activeFormatJustification = [v8 activeFormatJustification];
  nextObject = [chainCopy nextObject];
  v11 = [nextObject activeAudioFormatJustification:activeFormatJustification chain:chainCopy];

  return v11;
}

- (id)activeAudioFormat:(id)format chain:(id)chain
{
  formatCopy = format;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [queueContentItems itemAtIndexPath:self->_playingIndexPath];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:473 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  activeFormat = [v10 activeFormat];

  v12 = formatCopy;
  if (activeFormat)
  {
    v13 = [MPCPlayerAudioFormat alloc];
    activeFormat2 = [v10 activeFormat];
    v12 = [(MPCPlayerAudioFormat *)v13 initWithNowPlayingInfoAudioFormat:activeFormat2];
  }

  nextObject = [chainCopy nextObject];
  v16 = [nextObject activeAudioFormat:v12 chain:chainCopy];

  return v16;
}

- (id)preferredAudioFormat:(id)format chain:(id)chain
{
  formatCopy = format;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [queueContentItems itemAtIndexPath:self->_playingIndexPath];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:463 description:{@"Could not find content item at indexPath: %@", self->_playingIndexPath}];
  }

  preferredFormat = [v10 preferredFormat];

  v12 = formatCopy;
  if (preferredFormat)
  {
    v13 = [MPCPlayerAudioFormat alloc];
    preferredFormat2 = [v10 preferredFormat];
    v12 = [(MPCPlayerAudioFormat *)v13 initWithNowPlayingInfoAudioFormat:preferredFormat2];
  }

  nextObject = [chainCopy nextObject];
  v16 = [nextObject preferredAudioFormat:v12 chain:chainCopy];

  return v16;
}

- (BOOL)playerItemIsFavoritable:(BOOL)favoritable atIndexPath:(id)path chain:(id)chain
{
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v11 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:455 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  if ([v11 mediaType])
  {
    v12 = 1;
  }

  else
  {
    v12 = ([v11 mediaType] >> 11) & 1;
  }

  nextObject = [chainCopy nextObject];
  v14 = [nextObject playerItemIsFavoritable:v12 atIndexPath:pathCopy chain:chainCopy];

  return v14;
}

- (id)participant:(id)participant atIndexPath:(id)path chain:(id)chain
{
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [queueContentItems itemAtIndexPath:pathCopy];

  associatedParticipantIdentifier = [v10 associatedParticipantIdentifier];
  if (associatedParticipantIdentifier)
  {
    queueParticipants = [(MPCMediaRemoteMiddleware *)self queueParticipants];
    v13 = [queueParticipants objectForKeyedSubscript:associatedParticipantIdentifier];
  }

  else
  {
    v13 = 0;
  }

  nextObject = [chainCopy nextObject];
  v15 = [nextObject participant:v13 atIndexPath:pathCopy chain:chainCopy];

  return v15;
}

- (BOOL)playerIsSharedListeningSession:(BOOL)session chain:(id)chain
{
  chainCopy = chain;
  supportedCommands = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v7 = [supportedCommands commandInfoForCommand:139];

  v8 = v7 != 0;
  nextObject = [chainCopy nextObject];
  LOBYTE(v8) = [nextObject playerIsSharedListeningSession:v8 chain:chainCopy];

  return v8;
}

- (BOOL)sectionIsAutoPlaySection:(BOOL)section atIndex:(int64_t)index chain:(id)chain
{
  sectionCopy = section;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [queueContentItems sectionAtIndex:index];

  userInfo = [v10 userInfo];
  v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69702B8]];
  bOOLValue = [v12 BOOLValue];

  nextObject = [chainCopy nextObject];
  LOBYTE(index) = [nextObject sectionIsAutoPlaySection:bOOLValue | sectionCopy atIndex:index chain:chainCopy];

  return index;
}

- (id)tracklistProperties:(id)properties chain:(id)chain
{
  chainCopy = chain;
  queueProperties = [(MPCMediaRemoteMiddleware *)self queueProperties];
  nextObject = [chainCopy nextObject];
  v8 = [nextObject tracklistProperties:queueProperties chain:chainCopy];

  return v8;
}

- (id)tracklistUniqueIdentifier:(id)identifier chain:(id)chain
{
  identifierCopy = identifier;
  chainCopy = chain;
  queueIdentifier = [(MPCMediaRemoteMiddleware *)self queueIdentifier];
  v9 = queueIdentifier;
  if (queueIdentifier)
  {
    v10 = queueIdentifier;
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
      v13 = identifierCopy;
    }

    v10 = v13;
  }

  nextObject = [chainCopy nextObject];
  v15 = [nextObject tracklistUniqueIdentifier:v10 chain:chainCopy];

  return v15;
}

- (id)lastSectionModelObject:(id)object propertySet:(id)set chain:(id)chain
{
  v18[2] = *MEMORY[0x1E69E9840];
  setCopy = set;
  lastSectionContentItem = [(MPCMediaRemoteMiddleware *)self lastSectionContentItem];
  if (lastSectionContentItem)
  {
    v8 = [MEMORY[0x1E6970620] translatorForMPModelClass:objc_opt_class()];
    v9 = objc_alloc_init(MEMORY[0x1E6970628]);
    controller = [(MPCMediaRemoteMiddleware *)self controller];
    [v9 setArtworkGenerator:controller];

    if (!setCopy)
    {
      v11 = MEMORY[0x1E69708B0];
      v17[0] = *MEMORY[0x1E69700D8];
      emptyPropertySet = [MEMORY[0x1E69708B0] emptyPropertySet];
      v18[0] = emptyPropertySet;
      v17[1] = *MEMORY[0x1E6970118];
      emptyPropertySet2 = [MEMORY[0x1E69708B0] emptyPropertySet];
      v18[1] = emptyPropertySet2;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      setCopy = [v11 propertySetWithRelationships:v14];
    }

    v15 = [v8 sectionObjectForPropertySet:setCopy contentItem:lastSectionContentItem context:v9];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)playerCommandDisabledReason:(int64_t)reason command:(unsigned int)command chain:(id)chain
{
  v5 = *&command;
  chainCopy = chain;
  supportedCommands = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v10 = [supportedCommands commandInfoForCommand:v5];

  if (v10)
  {
    IntegerValueForKey = MRMediaRemoteCommandInfoGetIntegerValueForKey();
    if (IntegerValueForKey - 1 >= 6)
    {
      reason = 0;
    }

    else
    {
      reason = IntegerValueForKey;
    }
  }

  nextObject = [chainCopy nextObject];
  v13 = [nextObject playerCommandDisabledReason:reason command:v5 chain:chainCopy];

  return v13;
}

- (id)playerCommandOptionValue:(id)value forKey:(id)key command:(unsigned int)command chain:(id)chain
{
  v7 = *&command;
  valueCopy = value;
  chainCopy = chain;
  keyCopy = key;
  v13 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:v7 infoValueForKey:keyCopy];
  v14 = v13;
  v15 = valueCopy;
  if (v13)
  {
    v15 = v13;
  }

  nextObject = [chainCopy nextObject];
  v17 = [nextObject playerCommandOptionValue:v15 forKey:keyCopy command:v7 chain:chainCopy];

  return v17;
}

- (BOOL)playerCommandEnabled:(BOOL)enabled command:(unsigned int)command chain:(id)chain
{
  v5 = *&command;
  enabledCopy = enabled;
  chainCopy = chain;
  supportedCommands = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v10 = [supportedCommands commandInfoForCommand:v5];

  if (v10)
  {
    enabledCopy = MRMediaRemoteCommandInfoGetEnabled() != 0;
  }

  nextObject = [chainCopy nextObject];
  v12 = [nextObject playerCommandEnabled:enabledCopy command:v5 chain:chainCopy];

  return v12;
}

- (BOOL)playerCommandSupported:(BOOL)supported command:(unsigned int)command chain:(id)chain
{
  v5 = *&command;
  LODWORD(v6) = supported;
  chainCopy = chain;
  supportedCommands = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  v10 = [supportedCommands commandInfoForCommand:v5];

  if (v10)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  nextObject = [chainCopy nextObject];
  v12 = [nextObject playerCommandSupported:v6 command:v5 chain:chainCopy];

  return v12;
}

- (id)playerItemCurrentLanguageOptions:(id)options atIndexPath:(id)path chain:(id)chain
{
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v11 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:356 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  nextObject = [chainCopy nextObject];
  currentLanguageOptions = [v11 currentLanguageOptions];
  v14 = [currentLanguageOptions copy];
  v15 = [nextObject playerItemCurrentLanguageOptions:v14 atIndexPath:pathCopy chain:chainCopy];

  return v15;
}

- (id)playerItemLanguageOptionGroups:(id)groups atIndexPath:(id)path chain:(id)chain
{
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v11 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:350 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  nextObject = [chainCopy nextObject];
  availableLanguageOptions = [v11 availableLanguageOptions];
  v14 = [availableLanguageOptions copy];
  v15 = [nextObject playerItemLanguageOptionGroups:v14 atIndexPath:pathCopy chain:chainCopy];

  return v15;
}

- (int64_t)playerGlobalItemCount:(int64_t)count chain:(id)chain
{
  chainCopy = chain;
  queueProperties = [(MPCMediaRemoteMiddleware *)self queueProperties];
  v8 = [queueProperties objectForKeyedSubscript:@"totalItemCount"];

  if (v8)
  {
    count = [v8 integerValue];
  }

  else
  {
    playingIndexPath = [(MPCMediaRemoteMiddleware *)self playingIndexPath];

    if (playingIndexPath)
    {
      queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
      playingIndexPath2 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
      v12 = [queueContentItems itemAtIndexPath:playingIndexPath2];

      auxiliaryNowPlayingInfo = [v12 auxiliaryNowPlayingInfo];
      v14 = [auxiliaryNowPlayingInfo objectForKeyedSubscript:*MEMORY[0x1E69B1048]];
      count = [v14 integerValue];
    }
  }

  nextObject = [chainCopy nextObject];
  v16 = [nextObject playerGlobalItemCount:count chain:chainCopy];

  return v16;
}

- (int64_t)playerPlayingItemGlobalIndex:(int64_t)index chain:(id)chain
{
  chainCopy = chain;
  playingIndexPath = [(MPCMediaRemoteMiddleware *)self playingIndexPath];

  if (playingIndexPath)
  {
    queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    playingIndexPath2 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
    v10 = [queueContentItems itemAtIndexPath:playingIndexPath2];

    auxiliaryNowPlayingInfo = [v10 auxiliaryNowPlayingInfo];
    v12 = [auxiliaryNowPlayingInfo objectForKeyedSubscript:*MEMORY[0x1E69B0FA0]];
    index = [v12 integerValue];
  }

  nextObject = [chainCopy nextObject];
  v14 = [nextObject playerPlayingItemGlobalIndex:index chain:chainCopy];

  return v14;
}

- (BOOL)playerItemShouldDisableJumpToItem:(BOOL)item atIndexPath:(id)path boundsCheck:(BOOL)check chain:(id)chain
{
  checkCopy = check;
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v13 = [queueContentItems itemAtIndexPath:pathCopy];

  editingStyleFlags = [v13 editingStyleFlags];
  if (checkCopy && !v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    queueContentItems2 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    queueContentItems3 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:320 description:{@"Could not find content item at indexPath: %@ queueContentItems: %p queueContentItems.totalItemCount: %ld", pathCopy, queueContentItems2, objc_msgSend(queueContentItems3, "totalItemCount")}];
  }

  nextObject = [chainCopy nextObject];
  v16 = [nextObject playerItemShouldDisableJumpToItem:(editingStyleFlags >> 2) & 1 atIndexPath:pathCopy boundsCheck:checkCopy chain:chainCopy];

  return v16;
}

- (id)playerPlayingItemIndexPath:(id)path chain:(id)chain
{
  chainCopy = chain;
  pathCopy = path;
  playingIndexPath = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
  v9 = playingIndexPath;
  if (playingIndexPath)
  {
    v10 = playingIndexPath;
  }

  else
  {
    v10 = pathCopy;
  }

  v11 = v10;

  nextObject = [chainCopy nextObject];
  v13 = [nextObject playerPlayingItemIndexPath:v11 chain:chainCopy];

  return v13;
}

- (id)playerModelObject:(id)object propertySet:(id)set atIndexPath:(id)path chain:(id)chain
{
  objectCopy = object;
  pathCopy = path;
  chainCopy = chain;
  setCopy = set;
  if ([pathCopy length] == 1)
  {
    v14 = -[MPSectionedCollection sectionAtIndex:](self->_queueModelObjects, "sectionAtIndex:", [pathCopy section]);
    goto LABEL_5;
  }

  if ([pathCopy length] == 2)
  {
    v14 = [(MPSectionedCollection *)self->_queueModelObjects itemAtIndexPath:pathCopy];
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
  v15 = objectCopy;
LABEL_12:
  nextObject = [chainCopy nextObject];
  v17 = [nextObject playerModelObject:v15 propertySet:setCopy atIndexPath:pathCopy chain:chainCopy];

  return v17;
}

- (id)playerItemContentID:(id)d atIndexPath:(id)path chain:(id)chain
{
  chainCopy = chain;
  pathCopy = path;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [queueContentItems itemAtIndexPath:pathCopy];

  nextObject = [chainCopy nextObject];
  identifier = [v10 identifier];
  v13 = [nextObject playerItemContentID:identifier atIndexPath:pathCopy chain:chainCopy];

  return v13;
}

- (BOOL)playerItemIsPreview:(BOOL)preview atIndexPath:(id)path chain:(id)chain
{
  previewCopy = preview;
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v12 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:276 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  userInfo = [v12 userInfo];
  v14 = [userInfo objectForKeyedSubscript:@"preview"];

  if (v14)
  {
    previewCopy = [v14 BOOLValue];
  }

  nextObject = [chainCopy nextObject];
  v16 = [nextObject playerItemIsPreview:previewCopy atIndexPath:pathCopy chain:chainCopy];

  return v16;
}

- (BOOL)playerItemIsPlaceholder:(BOOL)placeholder atIndexPath:(id)path chain:(id)chain
{
  placeholderCopy = placeholder;
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v12 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:265 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  userInfo = [v12 userInfo];
  v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69702C8]];

  if (v14)
  {
    placeholderCopy = [v14 BOOLValue];
  }

  nextObject = [chainCopy nextObject];
  v16 = [nextObject playerItemIsPlaceholder:placeholderCopy atIndexPath:pathCopy chain:chainCopy];

  return v16;
}

- (id)queueItemIdentifier:(id)identifier atIndexPath:(id)path chain:(id)chain
{
  chainCopy = chain;
  pathCopy = path;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v10 = [queueContentItems itemAtIndexPath:pathCopy];

  _mediaRemoteContentItem = [v10 _mediaRemoteContentItem];
  queueIdentifier = [_mediaRemoteContentItem queueIdentifier];
  nextObject = [chainCopy nextObject];
  v14 = [nextObject queueItemIdentifier:queueIdentifier atIndexPath:pathCopy chain:chainCopy];

  return v14;
}

- (int64_t)playerItemEditingStyleFlags:(int64_t)flags atIndexPath:(id)path chain:(id)chain
{
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v11 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:250 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  editingStyleFlags = [v11 editingStyleFlags];
  nextObject = [chainCopy nextObject];
  v14 = [nextObject playerItemEditingStyleFlags:editingStyleFlags atIndexPath:pathCopy chain:chainCopy];

  return v14;
}

- (id)playerItemTransitionInfo:(id)info atIndexPath:(id)path chain:(id)chain
{
  infoCopy = info;
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v13 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:240 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  transitionInfo = [v13 transitionInfo];
  nextObject = [chainCopy nextObject];
  v16 = [nextObject playerItemTransitionInfo:transitionInfo atIndexPath:pathCopy chain:chainCopy];

  return v16;
}

- (id)playerItemExplicitBadge:(id)badge atIndexPath:(id)path chain:(id)chain
{
  pathCopy = path;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v9 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:232 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  userInfo = [v9 userInfo];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69702A8]];

  return v11;
}

- (id)playerItemLocalizedDurationString:(id)string atIndexPath:(id)path chain:(id)chain
{
  stringCopy = string;
  pathCopy = path;
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v13 = [queueContentItems itemAtIndexPath:pathCopy];

  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:224 description:{@"Could not find content item at indexPath: %@", pathCopy}];
  }

  localizedDurationString = [v13 localizedDurationString];
  nextObject = [chainCopy nextObject];
  v16 = [nextObject playerItemLocalizedDurationString:localizedDurationString atIndexPath:pathCopy chain:chainCopy];

  return v16;
}

- ($04B05C73ED6AEEF31C5815932084562D)playerItemDuration:(SEL)duration atIndexPath:(id *)path chain:(id)chain
{
  chainCopy = chain;
  v11 = a6;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v13 = [queueContentItems itemAtIndexPath:chainCopy];

  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:duration object:self file:@"MPCMediaRemoteMiddleware.m" lineNumber:199 description:{@"Could not find content item at indexPath: %@", chainCopy}];
  }

  if ([v13 isLoading])
  {
    bOOLValue = 1;
  }

  else
  {
    userInfo = [v13 userInfo];
    v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69702C0]];
    bOOLValue = [v15 BOOLValue];
  }

  [v13 elapsedTimeTimestamp];
  v17 = v16;
  [v13 startTime];
  v19 = v18;
  userInfo2 = [v13 userInfo];
  v21 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69702A0]];
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
  isAlwaysLiveItem = [v13 isAlwaysLiveItem];
  playerState = [(MPCMediaRemoteMiddleware *)self playerState];
  isInTransition = [v13 isInTransition];

  nextObject = [v11 nextObject];
  v36 = nextObject;
  if (nextObject)
  {
    v40[0] = v17;
    v40[1] = v19;
    v40[2] = v23;
    v40[3] = v25;
    v40[4] = v27;
    v41 = v29;
    v42 = v31;
    v43 = isAlwaysLiveItem;
    v44 = (playerState == 2) & bOOLValue;
    v45 = isInTransition;
    v46 = 0;
    v47 = 0;
    [nextObject playerItemDuration:v40 atIndexPath:chainCopy chain:v11];
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

- (unint64_t)playerNumberOfItems:(unint64_t)items inSection:(unint64_t)section chain:(id)chain
{
  chainCopy = chain;
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];

  if (queueContentItems)
  {
    queueContentItems2 = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    items = [queueContentItems2 numberOfItemsInSection:section];
  }

  nextObject = [chainCopy nextObject];
  v12 = [nextObject playerNumberOfItems:items inSection:section chain:chainCopy];

  return v12;
}

- (unint64_t)playerNumberOfSections:(unint64_t)sections chain:(id)chain
{
  chainCopy = chain;
  nextObject = [chainCopy nextObject];
  queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
  v8 = [nextObject playerNumberOfSections:objc_msgSend(queueContentItems chain:{"numberOfSections"), chainCopy}];

  return v8;
}

- (int64_t)playerExplicitContentState:(int64_t)state chain:(id)chain
{
  chainCopy = chain;
  playingIndexPath = [(MPCMediaRemoteMiddleware *)self playingIndexPath];

  if (playingIndexPath)
  {
    queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    playingIndexPath2 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
    v10 = [queueContentItems itemAtIndexPath:playingIndexPath2];

    userInfo = [v10 userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69702B0]];
    state = [v12 integerValue];
  }

  nextObject = [chainCopy nextObject];
  v14 = [nextObject playerExplicitContentState:state chain:chainCopy];

  return v14;
}

- (int64_t)playerUpNextItemCount:(int64_t)count chain:(id)chain
{
  chainCopy = chain;
  supportedCommands = [(MPCMediaRemoteMiddleware *)self supportedCommands];
  IntegerValueForKey = [supportedCommands commandInfoForCommand:122];

  if (IntegerValueForKey)
  {
    IntegerValueForKey = MRMediaRemoteCommandInfoGetIntegerValueForKey();
  }

  nextObject = [chainCopy nextObject];
  v9 = [nextObject playerUpNextItemCount:IntegerValueForKey chain:chainCopy];

  return v9;
}

- (int64_t)playerLastChangeDirection:(int64_t)direction chain:(id)chain
{
  chainCopy = chain;
  playingIndexPath = [(MPCMediaRemoteMiddleware *)self playingIndexPath];

  if (playingIndexPath)
  {
    queueContentItems = [(MPCMediaRemoteMiddleware *)self queueContentItems];
    playingIndexPath2 = [(MPCMediaRemoteMiddleware *)self playingIndexPath];
    v10 = [queueContentItems itemAtIndexPath:playingIndexPath2];

    userInfo = [v10 userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69702D0]];

    direction = [v12 integerValue];
  }

  nextObject = [chainCopy nextObject];
  v14 = [nextObject playerLastChangeDirection:direction chain:chainCopy];

  return v14;
}

- (int64_t)playerQueueEndAction:(int64_t)action chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0C50];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:135 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    action = [v8 unsignedIntegerValue];
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject playerQueueEndAction:action chain:chainCopy];

  return v10;
}

- (int64_t)playerShuffleType:(int64_t)type chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0D00];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:26 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 unsignedIntegerValue];
    type = MPShuffleTypeFromMediaRemoteShuffleMode();
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject playerShuffleType:type chain:chainCopy];

  return v10;
}

- (int64_t)playerRepeatType:(int64_t)type chain:(id)chain
{
  v6 = *MEMORY[0x1E69B0CF8];
  chainCopy = chain;
  v8 = [(MPCMediaRemoteMiddleware *)self _supportedCommands:25 infoValueForKey:v6];
  if (_NSIsNSNumber())
  {
    [v8 unsignedIntegerValue];
    type = MPRepeatTypeFromMediaRemoteRepeatMode();
  }

  nextObject = [chainCopy nextObject];
  v10 = [nextObject playerRepeatType:type chain:chainCopy];

  return v10;
}

- (int64_t)playerState:(int64_t)state chain:(id)chain
{
  chainCopy = chain;
  nextObject = [chainCopy nextObject];
  v7 = [nextObject playerState:-[MPCMediaRemoteMiddleware playerState](self chain:{"playerState"), chainCopy}];

  return v7;
}

@end