@interface MPCPlayerResponseItem
- ($04B05C73ED6AEEF31C5815932084562D)duration;
- (BOOL)_isDisliked;
- (BOOL)_isDislikedValueForSong:(id)a3;
- (BOOL)_isFavoriteEligible;
- (BOOL)_isFavoriteValueForSong:(id)a3;
- (BOOL)_isFavorited;
- (MPCPlayerResponse)response;
- (MPCPlayerResponseItem)initWithModelGenericObject:(id)a3 indexPath:(id)a4 enqueueingParticipant:(id)a5 response:(id)a6;
- (MPCPlayerResponseItemMusicAudio)musicAudio;
- (id)_buildLanguageOptionGroups:(id)a3 currentLanguageOptions:(id)a4;
- (id)_favoriteCommandWithMediaRemoteCommand:(unsigned int)a3;
- (id)_feedbackCommandWithMediaRemoteCommand:(unsigned int)a3;
- (id)_initWithContentItemID:(id)a3 autoPlay:(BOOL)a4;
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

- (BOOL)_isDislikedValueForSong:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 hasLoadedValueForKey:*MEMORY[0x1E696FF58]])
  {
    v5 = [v4 isDisliked];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isDisliked
{
  v3 = [(MPCPlayerResponseItem *)self _modelSongMetadataObject];
  v4 = [MEMORY[0x1E69706D8] sharedDeviceLibraryController];
  v5 = [v4 transientFavoriteStateForModelObject:v3];
  if (v5)
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = [(MPCPlayerResponseItem *)self _isDislikedValueForSong:v3];
  }

  return v6;
}

- (BOOL)_isFavoriteValueForSong:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 hasLoadedValueForKey:*MEMORY[0x1E696FF60]])
  {
    v5 = [v4 isFavorite];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isFavorited
{
  v3 = [(MPCPlayerResponseItem *)self _modelSongMetadataObject];
  v4 = [MEMORY[0x1E69706D8] sharedDeviceLibraryController];
  v5 = [v4 transientFavoriteStateForModelObject:v3];
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = [(MPCPlayerResponseItem *)self _isFavoriteValueForSong:v3];
  }

  return v6;
}

- (BOOL)_isFavoriteEligible
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  if (_os_feature_enabled_impl() && [MEMORY[0x1E69705E8] authorizationStatus] == 3 && self->_metadataObject && self->_isFavoritable)
  {
    v4 = [WeakRetained requestingUserSubscriptionStatus];
    v5 = [v4 capabilities];

    v6 = [(MPCPlayerResponseItem *)self _modelSongMetadataObject];
    v7 = v6;
    if (v5 & 0x200) != 0 && ([v6 isLibraryAddEligible])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 isLibraryAdded];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_modelSongMetadataObject
{
  v3 = [(MPModelGenericObject *)self->_metadataObject type];
  if (v3 == 5)
  {
    v5 = [(MPModelGenericObject *)self->_metadataObject playlistEntry];
    v4 = [v5 song];
  }

  else if (v3 == 1)
  {
    v4 = [(MPModelGenericObject *)self->_metadataObject song];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_feedbackCommandWithMediaRemoteCommand:(unsigned int)a3
{
  v3 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v6 = [WeakRetained builder];
  v7 = [WeakRetained chain];
  v8 = [v6 playerCommandEnabled:0 command:v3 chain:v7];

  v9 = [WeakRetained builder];
  v10 = *MEMORY[0x1E69B0CD0];
  v11 = [WeakRetained chain];
  v12 = [v9 playerCommandOptionValue:&unk_1F4599670 forKey:v10 command:v3 chain:v11];
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

  v16 = [v15 integerValue];
  v17 = 0;
  if (v8 && v16 != 2)
  {
    v17 = [[_MPCPlayerFeedbackCommand alloc] initWithResponse:WeakRetained mediaRemoteCommand:v3];
    [(_MPCPlayerItemCommand *)v17 setContentItemID:self->_contentItemIdentifier];
    [(_MPCPlayerFeedbackCommand *)v17 setPresentationStyle:v16];
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

    v20 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v21 = [v20 localizedStringForKey:v19 value:&stru_1F454A698 table:@"MediaPlaybackCore"];

    v22 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
    v23 = [v22 localizedStringForKey:v18 value:&stru_1F454A698 table:@"MediaPlaybackCore"];

LABEL_12:
    v24 = [WeakRetained builder];
    v25 = *MEMORY[0x1E69B0C80];
    v26 = [WeakRetained chain];
    v27 = [v24 playerCommandOptionValue:v21 forKey:v25 command:v3 chain:v26];
    [(_MPCPlayerFeedbackCommand *)v17 setLocalizedTitle:v27];

    v28 = [WeakRetained builder];
    v29 = *MEMORY[0x1E69B0C78];
    v30 = [WeakRetained chain];
    v31 = [v28 playerCommandOptionValue:v23 forKey:v29 command:v3 chain:v30];
    [(_MPCPlayerFeedbackCommand *)v17 setLocalizedShortTitle:v31];

    v32 = [WeakRetained builder];
    v33 = *MEMORY[0x1E69B0C68];
    v34 = [WeakRetained chain];
    v35 = MEMORY[0x1E695E110];
    v36 = [v32 playerCommandOptionValue:MEMORY[0x1E695E110] forKey:v33 command:v3 chain:v34];
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

    v40 = [v39 BOOLValue];
    [(_MPCPlayerFeedbackCommand *)v17 setValue:v40];
  }

  return v17;
}

- (id)_buildLanguageOptionGroups:(id)a3 currentLanguageOptions:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
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
        v16 = [(MPCPlayerLanguageOptionGroup *)v14 initWithLanguageOptionGroups:v13 currentLanguageOptions:v7 response:WeakRetained];
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
  v3 = [WeakRetained builder];
  v4 = [WeakRetained chain];
  v5 = [v3 playerCommandEnabled:0 command:8 chain:v4];

  if (v5)
  {
    v6 = 7;
  }

  else
  {
    v6 = 1;
  }

  v7 = [WeakRetained builder];
  v8 = [WeakRetained chain];
  v9 = [v7 playerCommandEnabled:0 command:10 chain:v8];

  if (v9)
  {
    v6 |= 0x18uLL;
  }

  v10 = [WeakRetained builder];
  v11 = [WeakRetained chain];
  v12 = [v10 playerCommandEnabled:0 command:17 chain:v11];

  if (v12)
  {
    v6 |= 0x20uLL;
  }

  v13 = [WeakRetained builder];
  v14 = [WeakRetained chain];
  v15 = [v13 playerCommandEnabled:0 command:18 chain:v14];

  if (v15)
  {
    v6 |= 0x40uLL;
  }

  v16 = [WeakRetained builder];
  v17 = [WeakRetained chain];
  v18 = [v16 playerCommandEnabled:0 command:24 chain:v17];

  if (v18)
  {
    v19 = v6 | 0x80;
  }

  else
  {
    v19 = v6;
  }

  v20 = [WeakRetained builder];
  v21 = *MEMORY[0x1E69B0D70];
  v22 = [WeakRetained chain];
  v23 = [v20 playerCommandOptionValue:MEMORY[0x1E695E110] forKey:v21 command:24 chain:v22];
  v24 = [v23 BOOLValue];

  if (v24)
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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v4 = [WeakRetained builder];
  v5 = [WeakRetained chain];
  v6 = [v4 playerCommandEnabled:0 command:129 chain:v5];

  if (v6 && ([WeakRetained builder], v7 = objc_claimAutoreleasedReturnValue(), indexPath = self->_indexPath, objc_msgSend(WeakRetained, "chain"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(indexPath) = objc_msgSend(v7, "playerItemEditingStyleFlags:atIndexPath:chain:", 0, indexPath, v9), v9, v7, (indexPath & 2) != 0))
  {
    v11 = self->_contentItemIdentifier;
    if ([(NSString *)v11 length])
    {
      v18 = *MEMORY[0x1E69B10C8];
      v19[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = [MPCPlayerCommandRequest alloc];
      v14 = [WeakRetained controller];
      v15 = [WeakRetained request];
      v16 = [v15 label];
      v10 = [(MPCPlayerCommandRequest *)v13 initWithMediaRemoteCommand:129 options:v12 controller:v14 label:v16];
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
  v4 = [WeakRetained builder];
  v5 = [WeakRetained chain];
  v6 = [v4 playerCommandEnabled:0 command:20 chain:v5];

  if (v6)
  {
    v7 = [WeakRetained builder];
    v8 = *MEMORY[0x1E69B0C90];
    v9 = [WeakRetained chain];
    v10 = [v7 playerCommandOptionValue:&unk_1F4599B00 forKey:v8 command:20 chain:v9];
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

    v14 = [WeakRetained builder];
    v15 = *MEMORY[0x1E69B0C88];
    v16 = [WeakRetained chain];
    v17 = [v14 playerCommandOptionValue:&unk_1F4599AF0 forKey:v15 command:20 chain:v16];
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

- (id)_favoriteCommandWithMediaRemoteCommand:(unsigned int)a3
{
  v3 = *&a3;
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

    v11 = [(MPCPlayerResponseItem *)self _modelSongMetadataObject];
    [(_MPCPlayerFeedbackCommand *)v7 setFavoritableModelObject:v11];

    [(_MPCPlayerFeedbackCommand *)v7 setIsDislikingFavoritableModelObject:v8];
    [(_MPCPlayerFeedbackCommand *)v7 setValue:v5];
    [(_MPCPlayerFeedbackCommand *)v7 setPresentationStyle:1];
  }

  return v7;
}

- (id)dislikeCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_response);
  v4 = [WeakRetained controller];
  v5 = [v4 resolvedPlayerPath];
  v6 = [v5 isSystemMusicPath];

  if (v6)
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
  v4 = [WeakRetained controller];
  v5 = [v4 resolvedPlayerPath];
  v6 = [v5 isSystemMusicPath];

  if (v6)
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
  v4 = [WeakRetained builder];
  v5 = [WeakRetained chain];
  v6 = [v4 playerState:0 chain:v5];

  v7 = [WeakRetained builder];
  v8 = *MEMORY[0x1E69B0CC8];
  v9 = [WeakRetained chain];
  v10 = [v7 playerCommandOptionValue:0 forKey:v8 command:19 chain:v9];

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
    v12 = [WeakRetained request];
    v13 = [v12 disablePlaybackRateValidation];

    if (!v13)
    {
      v10 = 0;
      goto LABEL_19;
    }
  }

  v14 = [WeakRetained request];
  if (![v14 disablePlaybackRateValidation])
  {
    v15 = [WeakRetained builder];
    v16 = [WeakRetained chain];
    v17 = [v15 playerCommandEnabled:0 command:19 chain:v16];

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
  v19 = [WeakRetained builder];
  v20 = *MEMORY[0x1E69B0D40];
  v21 = [WeakRetained chain];
  v22 = [v19 playerCommandOptionValue:&unk_1F4599970 forKey:v20 command:19 chain:v21];
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

  v25 = [WeakRetained builder];
  v26 = *MEMORY[0x1E69B0C60];
  v27 = [WeakRetained chain];
  v28 = [v25 playerCommandOptionValue:0 forKey:v26 command:19 chain:v27];
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
    v31 = [WeakRetained builder];
    indexPath = self->_indexPath;
    v33 = [WeakRetained chain];
    if (v31)
    {
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      [v31 playerItemDuration:v36 atIndexPath:indexPath chain:v33];
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
    v6 = [(_MPCPlayerSeekCommand *)v4 seekSupport];
    v7 = MEMORY[0x1E69B0CC0];
    if ((v6 & 0x20) != 0)
    {
      v8 = [WeakRetained builder];
      v9 = *v7;
      v10 = [WeakRetained chain];
      v11 = [v8 playerCommandOptionValue:&unk_1F4599958 forKey:v9 command:17 chain:v10];
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
      v14 = [WeakRetained builder];
      v15 = *v7;
      v16 = [WeakRetained chain];
      v17 = [v14 playerCommandOptionValue:&unk_1F4599958 forKey:v15 command:18 chain:v16];
      v18 = v17;
      v19 = v17 ? v17 : &unk_1F4599958;
      [(_MPCPlayerSeekCommand *)v4 setPreferredBackwardJumpIntervals:v19];

      v20 = [(_MPCPlayerSeekCommand *)v4 preferredBackwardJumpIntervals];
      v21 = [v20 firstObject];
      [v21 doubleValue];
      v23 = v22;
      v24 = v22 < 0.0;

      [(_MPCPlayerSeekCommand *)v4 setPrefersNegativeBackwardSkipIntervals:v24];
      if (v23 >= 0.0)
      {
        v25 = [(_MPCPlayerSeekCommand *)v4 preferredBackwardJumpIntervals];
        v26 = [v25 mutableCopy];

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

- (id)_initWithContentItemID:(id)a3 autoPlay:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MPCPlayerResponseItem;
  v7 = [(MPCPlayerResponseItem *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    contentItemIdentifier = v7->_contentItemIdentifier;
    v7->_contentItemIdentifier = v8;

    v7->_autoPlay = a4;
  }

  return v7;
}

- (MPCPlayerResponseItem)initWithModelGenericObject:(id)a3 indexPath:(id)a4 enqueueingParticipant:(id)a5 response:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v92.receiver = self;
  v92.super_class = MPCPlayerResponseItem;
  v15 = [(MPCPlayerResponseItem *)&v92 init];
  if (v15)
  {
    v16 = [v11 identifiers];
    v17 = [v16 contentItemID];
    contentItemIdentifier = v15->_contentItemIdentifier;
    v15->_contentItemIdentifier = v17;

    v15->_revision = 0;
    objc_storeWeak(&v15->_response, v14);
    objc_storeStrong(&v15->_enqueueingParticipant, a5);
    objc_storeStrong(&v15->_indexPath, a4);
    objc_storeStrong(&v15->_metadataObject, a3);
    v19 = [v14 builder];
    indexPath = v15->_indexPath;
    v21 = [v14 chain];
    v22 = [v19 queueItemIdentifier:0 atIndexPath:indexPath chain:v21];
    v23 = v22;
    if (!v22)
    {
      v23 = v15->_contentItemIdentifier;
    }

    objc_storeStrong(&v15->_queueItemIdentifier, v23);

    v24 = [v14 builder];
    v25 = v15->_indexPath;
    v26 = [v14 chain];
    v15->_placeholder = [v24 playerItemIsPlaceholder:0 atIndexPath:v25 chain:v26];

    v27 = [v14 builder];
    v28 = v15->_indexPath;
    v29 = [v14 chain];
    if (v27)
    {
      v87 = 0;
      memset(v86, 0, sizeof(v86));
      [v27 playerItemDuration:v86 atIndexPath:v28 chain:v29];
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

    v31 = [v14 builder];
    v32 = v15->_indexPath;
    v33 = [v14 chain];
    v34 = [v31 playerItemLocalizedDurationString:0 atIndexPath:v32 chain:v33];
    localizedDurationString = v15->_localizedDurationString;
    v15->_localizedDurationString = v34;

    v36 = [v14 builder];
    v37 = v15->_indexPath;
    v38 = [v14 chain];
    v39 = [v36 playerItemExplicitBadge:0 atIndexPath:v37 chain:v38];
    explicitBadge = v15->_explicitBadge;
    v15->_explicitBadge = v39;

    v41 = [v14 builder];
    v42 = v15->_indexPath;
    v43 = [v14 chain];
    v44 = [v41 playerItemTransitionInfo:0 atIndexPath:v42 chain:v43];
    transitionInfo = v15->_transitionInfo;
    v15->_transitionInfo = v44;

    v46 = [v14 builder];
    v47 = [(NSIndexPath *)v15->_indexPath section];
    v48 = [v14 chain];
    v15->_autoPlay = [v46 sectionIsAutoPlaySection:0 atIndex:v47 chain:v48];

    v49 = [v14 builder];
    v50 = v15->_indexPath;
    v51 = [v14 chain];
    v15->_preview = [v49 playerItemIsPreview:0 atIndexPath:v50 chain:v51];

    v52 = [v14 builder];
    v53 = v15->_indexPath;
    v54 = [v14 chain];
    v55 = [v52 playerItemLanguageOptionGroups:0 atIndexPath:v53 chain:v54];

    v56 = [v14 builder];
    v57 = v15->_indexPath;
    v58 = [v14 chain];
    v59 = [v56 playerItemCurrentLanguageOptions:0 atIndexPath:v57 chain:v58];

    v60 = [(MPCPlayerResponseItem *)v15 _buildLanguageOptionGroups:v55 currentLanguageOptions:v59];
    languageOptionGroups = v15->_languageOptionGroups;
    v15->_languageOptionGroups = v60;

    v62 = [v14 builder];
    v63 = [v14 chain];
    v64 = [v62 preferredAudioFormat:0 chain:v63];
    preferredFormat = v15->_preferredFormat;
    v15->_preferredFormat = v64;

    v66 = [v14 builder];
    v67 = [v14 chain];
    v68 = [v66 activeAudioFormat:0 chain:v67];
    activeFormat = v15->_activeFormat;
    v15->_activeFormat = v68;

    v70 = [v14 builder];
    v71 = [v14 chain];
    v15->_activeFormatJustification = [v70 activeAudioFormatJustification:0 chain:v71];

    v72 = [v14 builder];
    v73 = [v14 chain];
    v15->_preferredTiers = [v72 audioFormatPreference:0 chain:v73];

    v74 = [v14 builder];
    v75 = [v14 chain];
    v76 = [v74 alternateAudioFormats:0 chain:v75];
    alternateFormats = v15->_alternateFormats;
    v15->_alternateFormats = v76;

    v78 = [v14 builder];
    v79 = [v14 chain];
    v80 = [v78 audioRoute:0 chain:v79];
    audioRoute = v15->_audioRoute;
    v15->_audioRoute = v80;

    v82 = [v14 builder];
    v83 = v15->_indexPath;
    v84 = [v14 chain];
    v15->_isFavoritable = [v82 playerItemIsFavoritable:0 atIndexPath:v83 chain:v84];
  }

  return v15;
}

@end