@interface MPCPlayerResponseItem
- ($04B05C73ED6AEEF31C5815932084562D)duration;
- (BOOL)_isDisliked;
- (BOOL)_isDislikedValueForSong:(id)song;
- (BOOL)_isFavoriteEligible;
- (BOOL)_isFavoriteValueForSong:(id)song;
- (BOOL)_isFavorited;
- (MPCPlayerResponse)response;
- (MPCPlayerResponseItem)initWithModelGenericObject:(id)object indexPath:(id)path enqueueingParticipant:(id)participant response:(id)response;
- (MPCPlayerResponseItemMusicAudio)musicAudio;
- (id)_buildLanguageOptionGroups:(id)groups currentLanguageOptions:(id)options;
- (id)_favoriteCommandWithMediaRemoteCommand:(unsigned int)command;
- (id)_feedbackCommandWithMediaRemoteCommand:(unsigned int)command;
- (id)_initWithContentItemID:(id)d autoPlay:(BOOL)play;
- (id)_modelSongMetadataObject;
- (id)_stateDumpObject;
- (id)dislikeCommand;
- (id)likeCommand;
- (id)playbackRateCommand;
- (id)rateCommand;
- (id)remove;
- (id)seekCommand;
- (unint64_t)_determineSeekSupport;
@end

@implementation MPCPlayerResponseItem

- (MPCPlayerResponse)response
{
  WeakRetained = objc_loadWeakRetained(&self->_response);

  return WeakRetained;
}

- ($04B05C73ED6AEEF31C5815932084562D)duration
{
  v3 = *&self[3].var1;
  *&retstr->var0 = *&self[2].var7;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[3].var3;
  *&retstr->var7 = *&self[3].var5;
  return self;
}

- (BOOL)_isDislikedValueForSong:(id)song
{
  songCopy = song;
  v4 = songCopy;
  if (songCopy && [songCopy hasLoadedValueForKey:*MEMORY[0x1E696FF58]])
  {
    isDisliked = [v4 isDisliked];
  }

  else
  {
    isDisliked = 0;
  }

  return isDisliked;
}

- (BOOL)_isDisliked
{
  _modelSongMetadataObject = [(MPCPlayerResponseItem *)self _modelSongMetadataObject];
  mEMORY[0x1E69706D8] = [MEMORY[0x1E69706D8] sharedDeviceLibraryController];
  v5 = [mEMORY[0x1E69706D8] transientFavoriteStateForModelObject:_modelSongMetadataObject];
  if (v5)
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = [(MPCPlayerResponseItem *)self _isDislikedValueForSong:_modelSongMetadataObject];
  }

  return v6;
}

- (BOOL)_isFavoriteValueForSong:(id)song
{
  songCopy = song;
  v4 = songCopy;
  if (songCopy && [songCopy hasLoadedValueForKey:*MEMORY[0x1E696FF60]])
  {
    isFavorite = [v4 isFavorite];
  }

  else
  {
    isFavorite = 0;
  }

  return isFavorite;
}

- (BOOL)_isFavorited
{
  _modelSongMetadataObject = [(MPCPlayerResponseItem *)self _modelSongMetadataObject];
  mEMORY[0x1E69706D8] = [MEMORY[0x1E69706D8] sharedDeviceLibraryController];
  v5 = [mEMORY[0x1E69706D8] transientFavoriteStateForModelObject:_modelSongMetadataObject];
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = [(MPCPlayerResponseItem *)self _isFavoriteValueForSong:_modelSongMetadataObject];
  }

  return v6;
}

- (BOOL)_isFavoriteEligible
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  if (_os_feature_enabled_impl() && [MEMORY[0x1E69705E8] authorizationStatus] == 3 && self->_metadataObject && self->_isFavoritable)
  {
    requestingUserSubscriptionStatus = [WeakRetained requestingUserSubscriptionStatus];
    capabilities = [requestingUserSubscriptionStatus capabilities];

    _modelSongMetadataObject = [(MPCPlayerResponseItem *)self _modelSongMetadataObject];
    v7 = _modelSongMetadataObject;
    if (capabilities & 0x200) != 0 && ([_modelSongMetadataObject isLibraryAddEligible])
    {
      isLibraryAdded = 1;
    }

    else
    {
      isLibraryAdded = [v7 isLibraryAdded];
    }
  }

  else
  {
    isLibraryAdded = 0;
  }

  return isLibraryAdded;
}

- (id)_modelSongMetadataObject
{
  type = [(MPModelGenericObject *)self->_metadataObject type];
  if (type == 5)
  {
    playlistEntry = [(MPModelGenericObject *)self->_metadataObject playlistEntry];
    song = [playlistEntry song];
  }

  else if (type == 1)
  {
    song = [(MPModelGenericObject *)self->_metadataObject song];
  }

  else
  {
    song = 0;
  }

  return song;
}

- (id)_feedbackCommandWithMediaRemoteCommand:(unsigned int)command
{
  v3 = *&command;
  WeakRetained = objc_loadWeakRetained(&self->_response);
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v8 = [builder playerCommandEnabled:0 command:v3 chain:chain];

  builder2 = [WeakRetained builder];
  v10 = *MEMORY[0x1E69B0CD0];
  chain2 = [WeakRetained chain];
  v12 = [builder2 playerCommandOptionValue:&unk_1F4599670 forKey:v10 command:v3 chain:chain2];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &unk_1F4599670;
  }

  v15 = v14;

  integerValue = [v15 integerValue];
  v17 = 0;
  if (v8 && integerValue != 2)
  {
    v17 = [[_MPCPlayerFeedbackCommand alloc] initWithResponse:WeakRetained mediaRemoteCommand:v3];
    [(_MPCPlayerItemCommand *)v17 setContentItemID:self->_contentItemIdentifier];
    [(_MPCPlayerFeedbackCommand *)v17 setPresentationStyle:integerValue];
    if (v3 == 21)
    {
      v18 = @"REMOTE_CONTROL_LIKE_TRACK_SHORT";
      v19 = @"REMOTE_CONTROL_LIKE_TRACK_RADIO";
    }

    else
    {
      if (v3 != 22)
      {
        v23 = 0;
        v21 = 0;
        goto LABEL_12;
      }

      v18 = @"REMOTE_CONTROL_DISLIKE_TRACK_SHORT";
      v19 = @"REMOTE_CONTROL_DISLIKE_TRACK_RADIO";
    }

    mediaPlaybackCoreBundle = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v21 = [mediaPlaybackCoreBundle localizedStringForKey:v19 value:&stru_1F454A698 table:@"MediaPlaybackCore"];

    mediaPlaybackCoreBundle2 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v23 = [mediaPlaybackCoreBundle2 localizedStringForKey:v18 value:&stru_1F454A698 table:@"MediaPlaybackCore"];

LABEL_12:
    builder3 = [WeakRetained builder];
    v25 = *MEMORY[0x1E69B0C80];
    chain3 = [WeakRetained chain];
    v27 = [builder3 playerCommandOptionValue:v21 forKey:v25 command:v3 chain:chain3];
    [(_MPCPlayerFeedbackCommand *)v17 setLocalizedTitle:v27];

    builder4 = [WeakRetained builder];
    v29 = *MEMORY[0x1E69B0C78];
    chain4 = [WeakRetained chain];
    v31 = [builder4 playerCommandOptionValue:v23 forKey:v29 command:v3 chain:chain4];
    [(_MPCPlayerFeedbackCommand *)v17 setLocalizedShortTitle:v31];

    builder5 = [WeakRetained builder];
    v33 = *MEMORY[0x1E69B0C68];
    chain5 = [WeakRetained chain];
    v35 = MEMORY[0x1E695E110];
    v36 = [builder5 playerCommandOptionValue:MEMORY[0x1E695E110] forKey:v33 command:v3 chain:chain5];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = v35;
    }

    v39 = v38;

    bOOLValue = [v39 BOOLValue];
    [(_MPCPlayerFeedbackCommand *)v17 setValue:bOOLValue];
  }

  return v17;
}

- (id)_buildLanguageOptionGroups:(id)groups currentLanguageOptions:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  optionsCopy = options;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = groupsCopy;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [MPCPlayerLanguageOptionGroup alloc];
        WeakRetained = objc_loadWeakRetained(&self->_response);
        v16 = [(MPCPlayerLanguageOptionGroup *)v14 initWithLanguageOptionGroups:v13 currentLanguageOptions:optionsCopy response:WeakRetained];
        [v8 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [v8 copy];

  return v17;
}

- (unint64_t)_determineSeekSupport
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v5 = [builder playerCommandEnabled:0 command:8 chain:chain];

  if (v5)
  {
    v6 = 7;
  }

  else
  {
    v6 = 1;
  }

  builder2 = [WeakRetained builder];
  chain2 = [WeakRetained chain];
  v9 = [builder2 playerCommandEnabled:0 command:10 chain:chain2];

  if (v9)
  {
    v6 |= 0x18uLL;
  }

  builder3 = [WeakRetained builder];
  chain3 = [WeakRetained chain];
  v12 = [builder3 playerCommandEnabled:0 command:17 chain:chain3];

  if (v12)
  {
    v6 |= 0x20uLL;
  }

  builder4 = [WeakRetained builder];
  chain4 = [WeakRetained chain];
  v15 = [builder4 playerCommandEnabled:0 command:18 chain:chain4];

  if (v15)
  {
    v6 |= 0x40uLL;
  }

  builder5 = [WeakRetained builder];
  chain5 = [WeakRetained chain];
  v18 = [builder5 playerCommandEnabled:0 command:24 chain:chain5];

  if (v18)
  {
    v19 = v6 | 0x80;
  }

  else
  {
    v19 = v6;
  }

  builder6 = [WeakRetained builder];
  v21 = *MEMORY[0x1E69B0D70];
  chain6 = [WeakRetained chain];
  v23 = [builder6 playerCommandOptionValue:MEMORY[0x1E695E110] forKey:v21 command:24 chain:chain6];
  bOOLValue = [v23 BOOLValue];

  if (bOOLValue)
  {
    v25 = v19 | 0x100;
  }

  else
  {
    v25 = v19;
  }

  return v25;
}

- (MPCPlayerResponseItemMusicAudio)musicAudio
{
  if (self->_activeFormat)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_stateDumpObject
{
  v46[11] = *MEMORY[0x1E69E9840];
  contentItemIdentifier = self->_contentItemIdentifier;
  if (!contentItemIdentifier)
  {
    contentItemIdentifier = @"@";
  }

  v44[0] = contentItemIdentifier;
  v42 = MEMORY[0x1E695DF90];
  v43[0] = @"contentItemID";
  v43[1] = @"revision";
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:self->_revision];
  v44[1] = v41;
  v43[2] = @"duration";
  snapshotTime = self->_duration.snapshotTime;
  startTime = self->_duration.startTime;
  endTime = self->_duration.endTime;
  duration = self->_duration.duration;
  elapsedDuration = self->_duration.elapsedDuration;
  rate = self->_duration.rate;
  defaultRate = self->_duration.defaultRate;
  isLiveContent = self->_duration.isLiveContent;
  isLoading = self->_duration.isLoading;
  isInTransition = self->_duration.isInTransition;
  v45[0] = @"snapshotTime";
  v40 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:snapshotTime];
  v46[0] = v40;
  v45[1] = @"startTime";
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:startTime];
  v46[1] = v39;
  v45[2] = @"endTime";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:endTime];
  v46[2] = v14;
  v45[3] = @"duration";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  v46[3] = v15;
  v45[4] = @"elapsedDuration";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:elapsedDuration];
  v46[4] = v16;
  v45[5] = @"rate";
  *&v17 = rate;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v46[5] = v18;
  v45[6] = @"defaultRate";
  *&v19 = defaultRate;
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v21 = v20;
  if (isLiveContent)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v46[6] = v20;
  v46[7] = v22;
  v45[7] = @"isLiveContent";
  v45[8] = @"isLoading";
  if (isLoading)
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v46[8] = v23;
  v45[9] = @"isInTransition";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:isInTransition];
  v46[9] = v24;
  v45[10] = @"_calculatedElapsedTime";
  v25 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v27 = elapsedDuration + (v26 - snapshotTime) * rate;
  if (v27 >= duration)
  {
    v27 = duration;
  }

  v28 = [v25 numberWithDouble:{fmax(v27, 0.0)}];
  v46[10] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:11];

  metadataObject = self->_metadataObject;
  if (!metadataObject)
  {
    metadataObject = @"@";
  }

  v44[2] = v29;
  v44[3] = metadataObject;
  v43[3] = @"metadataObject";
  v43[4] = @"isPlaceholder";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_placeholder];
  v32 = v31;
  indexPath = self->_indexPath;
  if (!indexPath)
  {
    indexPath = @"@";
  }

  v44[4] = v31;
  v44[5] = indexPath;
  v43[5] = @"indexPath";
  v43[6] = @"explicitBadge";
  explicitBadge = self->_explicitBadge;
  if (!explicitBadge)
  {
    explicitBadge = @"@";
  }

  v44[6] = explicitBadge;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:7];
  v36 = [v42 dictionaryWithDictionary:v35];

  localizedDurationString = self->_localizedDurationString;
  if (localizedDurationString)
  {
    [v36 setObject:localizedDurationString forKeyedSubscript:@"localizedDurationString"];
  }

  if ([(NSArray *)self->_languageOptionGroups count])
  {
    [v36 setObject:self->_languageOptionGroups forKeyedSubscript:@"languageOptionGroups"];
  }

  return v36;
}

- (id)remove
{
  v19[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_response);
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v6 = [builder playerCommandEnabled:0 command:129 chain:chain];

  if (v6 && ([WeakRetained builder], v7 = objc_claimAutoreleasedReturnValue(), indexPath = self->_indexPath, objc_msgSend(WeakRetained, "chain"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(indexPath) = objc_msgSend(v7, "playerItemEditingStyleFlags:atIndexPath:chain:", 0, indexPath, v9), v9, v7, (indexPath & 2) != 0))
  {
    v11 = self->_contentItemIdentifier;
    if ([(NSString *)v11 length])
    {
      v18 = *MEMORY[0x1E69B10C8];
      v19[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = [MPCPlayerCommandRequest alloc];
      controller = [WeakRetained controller];
      request = [WeakRetained request];
      label = [request label];
      v10 = [(MPCPlayerCommandRequest *)v13 initWithMediaRemoteCommand:129 options:v12 controller:controller label:label];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)rateCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v6 = [builder playerCommandEnabled:0 command:20 chain:chain];

  if (v6)
  {
    builder2 = [WeakRetained builder];
    v8 = *MEMORY[0x1E69B0C90];
    chain2 = [WeakRetained chain];
    v10 = [builder2 playerCommandOptionValue:&unk_1F4599B00 forKey:v8 command:20 chain:chain2];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_1F4599B00;
    }

    v13 = v12;

    builder3 = [WeakRetained builder];
    v15 = *MEMORY[0x1E69B0C88];
    chain3 = [WeakRetained chain];
    v17 = [builder3 playerCommandOptionValue:&unk_1F4599AF0 forKey:v15 command:20 chain:chain3];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &unk_1F4599AF0;
    }

    v20 = v19;

    v21 = [(_MPCPlayerCommand *)[_MPCPlayerRateCommand alloc] initWithResponse:WeakRetained];
    [(_MPCPlayerItemCommand *)v21 setContentItemID:self->_contentItemIdentifier];
    [v13 floatValue];
    v23 = v22;

    LODWORD(v24) = v23;
    [(_MPCPlayerRateCommand *)v21 setMinimumValue:v24];
    [v20 floatValue];
    v26 = v25;

    LODWORD(v27) = v26;
    [(_MPCPlayerRateCommand *)v21 setMaximumValue:v27];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_favoriteCommandWithMediaRemoteCommand:(unsigned int)command
{
  v3 = *&command;
  if (![(MPCPlayerResponseItem *)self _isFavoriteEligible]|| (LODWORD(v5) = [(MPCPlayerResponseItem *)self _isDisliked], v6 = [(MPCPlayerResponseItem *)self _isFavorited], v3 == 22) && v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = v3 == 22;
    if (v3 == 22)
    {
      v5 = v5;
    }

    else
    {
      v5 = (v3 == 21) & v6;
    }

    v9 = [_MPCPlayerFeedbackCommand alloc];
    WeakRetained = objc_loadWeakRetained(&self->_response);
    v7 = [(_MPCPlayerFeedbackCommand *)v9 initWithResponse:WeakRetained mediaRemoteCommand:v3];

    _modelSongMetadataObject = [(MPCPlayerResponseItem *)self _modelSongMetadataObject];
    [(_MPCPlayerFeedbackCommand *)v7 setFavoritableModelObject:_modelSongMetadataObject];

    [(_MPCPlayerFeedbackCommand *)v7 setIsDislikingFavoritableModelObject:v8];
    [(_MPCPlayerFeedbackCommand *)v7 setValue:v5];
    [(_MPCPlayerFeedbackCommand *)v7 setPresentationStyle:1];
  }

  return v7;
}

- (id)dislikeCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  controller = [WeakRetained controller];
  resolvedPlayerPath = [controller resolvedPlayerPath];
  isSystemMusicPath = [resolvedPlayerPath isSystemMusicPath];

  if (isSystemMusicPath)
  {
    [(MPCPlayerResponseItem *)self _favoriteCommandWithMediaRemoteCommand:22];
  }

  else
  {
    [(MPCPlayerResponseItem *)self _feedbackCommandWithMediaRemoteCommand:22];
  }
  v7 = ;

  return v7;
}

- (id)likeCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  controller = [WeakRetained controller];
  resolvedPlayerPath = [controller resolvedPlayerPath];
  isSystemMusicPath = [resolvedPlayerPath isSystemMusicPath];

  if (isSystemMusicPath)
  {
    [(MPCPlayerResponseItem *)self _favoriteCommandWithMediaRemoteCommand:21];
  }

  else
  {
    [(MPCPlayerResponseItem *)self _feedbackCommandWithMediaRemoteCommand:21];
  }
  v7 = ;

  return v7;
}

- (id)playbackRateCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  builder = [WeakRetained builder];
  chain = [WeakRetained chain];
  v6 = [builder playerState:0 chain:chain];

  builder2 = [WeakRetained builder];
  v8 = *MEMORY[0x1E69B0CC8];
  chain2 = [WeakRetained chain];
  v10 = [builder2 playerCommandOptionValue:0 forKey:v8 command:19 chain:chain2];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6 == 2;
  }

  if (!v11)
  {
    request = [WeakRetained request];
    disablePlaybackRateValidation = [request disablePlaybackRateValidation];

    if (!disablePlaybackRateValidation)
    {
      v10 = 0;
      goto LABEL_19;
    }
  }

  request2 = [WeakRetained request];
  if (![request2 disablePlaybackRateValidation])
  {
    builder3 = [WeakRetained builder];
    chain3 = [WeakRetained chain];
    v17 = [builder3 playerCommandEnabled:0 command:19 chain:chain3];

    if (v17)
    {
      goto LABEL_9;
    }

LABEL_19:
    v18 = 0;
    goto LABEL_23;
  }

LABEL_9:
  v18 = [(_MPCPlayerCommand *)[_MPCPlayerPlaybackRateCommand alloc] initWithResponse:WeakRetained];
  [(_MPCPlayerItemCommand *)v18 setContentItemID:self->_contentItemIdentifier];
  builder4 = [WeakRetained builder];
  v20 = *MEMORY[0x1E69B0D40];
  chain4 = [WeakRetained chain];
  v22 = [builder4 playerCommandOptionValue:&unk_1F4599970 forKey:v20 command:19 chain:chain4];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &unk_1F4599970;
  }

  [(_MPCPlayerPlaybackRateCommand *)v18 setSupportedPlaybackRates:v24];

  builder5 = [WeakRetained builder];
  v26 = *MEMORY[0x1E69B0C60];
  chain5 = [WeakRetained chain];
  v28 = [builder5 playerCommandOptionValue:0 forKey:v26 command:19 chain:chain5];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  [(_MPCPlayerPlaybackRateCommand *)v18 setExtendedSupportedPlaybackRates:v30];

  if (!v10)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    builder6 = [WeakRetained builder];
    indexPath = self->_indexPath;
    chain6 = [WeakRetained chain];
    if (builder6)
    {
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      [builder6 playerItemDuration:v36 atIndexPath:indexPath chain:chain6];
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
    }

    LODWORD(v34) = DWORD2(v40);
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  }

  [v10 floatValue];
  [(_MPCPlayerPlaybackRateCommand *)v18 setPreferredPlaybackRate:?];
LABEL_23:

  return v18;
}

- (id)seekCommand
{
  seekSupport = self->_seekSupport;
  if ((seekSupport & 1) == 0)
  {
    seekSupport = [(MPCPlayerResponseItem *)self _determineSeekSupport];
    self->_seekSupport = seekSupport;
  }

  if (seekSupport == 1)
  {
    v4 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_response);
    v4 = [[_MPCPlayerSeekCommand alloc] initWithResponse:WeakRetained seekSupport:self->_seekSupport];
    [(_MPCPlayerItemCommand *)v4 setContentItemID:self->_contentItemIdentifier];
    seekSupport = [(_MPCPlayerSeekCommand *)v4 seekSupport];
    v7 = MEMORY[0x1E69B0CC0];
    if ((seekSupport & 0x20) != 0)
    {
      builder = [WeakRetained builder];
      v9 = *v7;
      chain = [WeakRetained chain];
      v11 = [builder playerCommandOptionValue:&unk_1F4599958 forKey:v9 command:17 chain:chain];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = &unk_1F4599958;
      }

      [(_MPCPlayerSeekCommand *)v4 setPreferredForwardJumpIntervals:v13];
    }

    if (([(_MPCPlayerSeekCommand *)v4 seekSupport]& 0x40) != 0)
    {
      builder2 = [WeakRetained builder];
      v15 = *v7;
      chain2 = [WeakRetained chain];
      v17 = [builder2 playerCommandOptionValue:&unk_1F4599958 forKey:v15 command:18 chain:chain2];
      v18 = v17;
      v19 = v17 ? v17 : &unk_1F4599958;
      [(_MPCPlayerSeekCommand *)v4 setPreferredBackwardJumpIntervals:v19];

      preferredBackwardJumpIntervals = [(_MPCPlayerSeekCommand *)v4 preferredBackwardJumpIntervals];
      firstObject = [preferredBackwardJumpIntervals firstObject];
      [firstObject doubleValue];
      v23 = v22;
      v24 = v22 < 0.0;

      [(_MPCPlayerSeekCommand *)v4 setPrefersNegativeBackwardSkipIntervals:v24];
      if (v23 >= 0.0)
      {
        preferredBackwardJumpIntervals2 = [(_MPCPlayerSeekCommand *)v4 preferredBackwardJumpIntervals];
        v26 = [preferredBackwardJumpIntervals2 mutableCopy];

        if ([v26 count] >= 1)
        {
          v27 = 0;
          do
          {
            v28 = MEMORY[0x1E696AD98];
            v29 = [v26 objectAtIndexedSubscript:v27];
            [v29 doubleValue];
            v31 = v30;

            v32 = -v31;
            if (v31 < 0.0)
            {
              v32 = v31;
            }

            v33 = [v28 numberWithDouble:v32];
            [v26 replaceObjectAtIndex:v27 withObject:v33];

            ++v27;
          }

          while (v27 < [v26 count]);
        }

        [(_MPCPlayerSeekCommand *)v4 setPreferredBackwardJumpIntervals:v26];
      }
    }
  }

  return v4;
}

- (id)_initWithContentItemID:(id)d autoPlay:(BOOL)play
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = MPCPlayerResponseItem;
  v7 = [(MPCPlayerResponseItem *)&v11 init];
  if (v7)
  {
    v8 = [dCopy copy];
    contentItemIdentifier = v7->_contentItemIdentifier;
    v7->_contentItemIdentifier = v8;

    v7->_autoPlay = play;
  }

  return v7;
}

- (MPCPlayerResponseItem)initWithModelGenericObject:(id)object indexPath:(id)path enqueueingParticipant:(id)participant response:(id)response
{
  objectCopy = object;
  pathCopy = path;
  participantCopy = participant;
  responseCopy = response;
  v92.receiver = self;
  v92.super_class = MPCPlayerResponseItem;
  v15 = [(MPCPlayerResponseItem *)&v92 init];
  if (v15)
  {
    identifiers = [objectCopy identifiers];
    contentItemID = [identifiers contentItemID];
    contentItemIdentifier = v15->_contentItemIdentifier;
    v15->_contentItemIdentifier = contentItemID;

    v15->_revision = 0;
    objc_storeWeak(&v15->_response, responseCopy);
    objc_storeStrong(&v15->_enqueueingParticipant, participant);
    objc_storeStrong(&v15->_indexPath, path);
    objc_storeStrong(&v15->_metadataObject, object);
    builder = [responseCopy builder];
    indexPath = v15->_indexPath;
    chain = [responseCopy chain];
    v22 = [builder queueItemIdentifier:0 atIndexPath:indexPath chain:chain];
    v23 = v22;
    if (!v22)
    {
      v23 = v15->_contentItemIdentifier;
    }

    objc_storeStrong(&v15->_queueItemIdentifier, v23);

    builder2 = [responseCopy builder];
    v25 = v15->_indexPath;
    chain2 = [responseCopy chain];
    v15->_placeholder = [builder2 playerItemIsPlaceholder:0 atIndexPath:v25 chain:chain2];

    builder3 = [responseCopy builder];
    v28 = v15->_indexPath;
    chain3 = [responseCopy chain];
    if (builder3)
    {
      v87 = 0;
      memset(v86, 0, sizeof(v86));
      [builder3 playerItemDuration:v86 atIndexPath:v28 chain:chain3];
    }

    else
    {
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v88 = 0u;
    }

    v30 = v89;
    *&v15->_duration.snapshotTime = v88;
    *&v15->_duration.endTime = v30;
    *&v15->_duration.elapsedDuration = v90;
    *&v15->_duration.isLiveContent = v91;

    builder4 = [responseCopy builder];
    v32 = v15->_indexPath;
    chain4 = [responseCopy chain];
    v34 = [builder4 playerItemLocalizedDurationString:0 atIndexPath:v32 chain:chain4];
    localizedDurationString = v15->_localizedDurationString;
    v15->_localizedDurationString = v34;

    builder5 = [responseCopy builder];
    v37 = v15->_indexPath;
    chain5 = [responseCopy chain];
    v39 = [builder5 playerItemExplicitBadge:0 atIndexPath:v37 chain:chain5];
    explicitBadge = v15->_explicitBadge;
    v15->_explicitBadge = v39;

    builder6 = [responseCopy builder];
    v42 = v15->_indexPath;
    chain6 = [responseCopy chain];
    v44 = [builder6 playerItemTransitionInfo:0 atIndexPath:v42 chain:chain6];
    transitionInfo = v15->_transitionInfo;
    v15->_transitionInfo = v44;

    builder7 = [responseCopy builder];
    section = [(NSIndexPath *)v15->_indexPath section];
    chain7 = [responseCopy chain];
    v15->_autoPlay = [builder7 sectionIsAutoPlaySection:0 atIndex:section chain:chain7];

    builder8 = [responseCopy builder];
    v50 = v15->_indexPath;
    chain8 = [responseCopy chain];
    v15->_preview = [builder8 playerItemIsPreview:0 atIndexPath:v50 chain:chain8];

    builder9 = [responseCopy builder];
    v53 = v15->_indexPath;
    chain9 = [responseCopy chain];
    v55 = [builder9 playerItemLanguageOptionGroups:0 atIndexPath:v53 chain:chain9];

    builder10 = [responseCopy builder];
    v57 = v15->_indexPath;
    chain10 = [responseCopy chain];
    v59 = [builder10 playerItemCurrentLanguageOptions:0 atIndexPath:v57 chain:chain10];

    v60 = [(MPCPlayerResponseItem *)v15 _buildLanguageOptionGroups:v55 currentLanguageOptions:v59];
    languageOptionGroups = v15->_languageOptionGroups;
    v15->_languageOptionGroups = v60;

    builder11 = [responseCopy builder];
    chain11 = [responseCopy chain];
    v64 = [builder11 preferredAudioFormat:0 chain:chain11];
    preferredFormat = v15->_preferredFormat;
    v15->_preferredFormat = v64;

    builder12 = [responseCopy builder];
    chain12 = [responseCopy chain];
    v68 = [builder12 activeAudioFormat:0 chain:chain12];
    activeFormat = v15->_activeFormat;
    v15->_activeFormat = v68;

    builder13 = [responseCopy builder];
    chain13 = [responseCopy chain];
    v15->_activeFormatJustification = [builder13 activeAudioFormatJustification:0 chain:chain13];

    builder14 = [responseCopy builder];
    chain14 = [responseCopy chain];
    v15->_preferredTiers = [builder14 audioFormatPreference:0 chain:chain14];

    builder15 = [responseCopy builder];
    chain15 = [responseCopy chain];
    v76 = [builder15 alternateAudioFormats:0 chain:chain15];
    alternateFormats = v15->_alternateFormats;
    v15->_alternateFormats = v76;

    builder16 = [responseCopy builder];
    chain16 = [responseCopy chain];
    v80 = [builder16 audioRoute:0 chain:chain16];
    audioRoute = v15->_audioRoute;
    v15->_audioRoute = v80;

    builder17 = [responseCopy builder];
    v83 = v15->_indexPath;
    chain17 = [responseCopy chain];
    v15->_isFavoritable = [builder17 playerItemIsFavoritable:0 atIndexPath:v83 chain:chain17];
  }

  return v15;
}

@end