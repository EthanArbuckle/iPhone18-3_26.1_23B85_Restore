@interface MRCommandInfo
+ (id)commandInfosFromData:(id)data;
+ (id)dataFromCommandInfos:(id)infos;
- (BOOL)isEqual:(id)equal;
- (MRCommandInfo)initWithData:(id)data;
- (MRCommandInfo)initWithPropertyListData:(id)data;
- (MRCommandInfo)initWithProtobuf:(id)protobuf;
- (NSData)data;
- (NSData)propertyListData;
- (NSDictionary)dictionaryRepresentation;
- (_MRCommandInfoProtobuf)protobuf;
- (id)description;
- (unint64_t)hash;
@end

@implementation MRCommandInfo

- (NSData)propertyListData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MRCommandInfo command](self, "command")}];
  [v3 setObject:v4 forKeyedSubscript:@"kCommandInfoCommandKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCommandInfo isEnabled](self, "isEnabled")}];
  [v3 setObject:v5 forKeyedSubscript:@"kCommandInfoEnabledKey"];

  options = [(MRCommandInfo *)self options];
  v7 = [options count];

  if (v7)
  {
    options2 = [(MRCommandInfo *)self options];
    [v3 setObject:options2 forKeyedSubscript:@"kCommandInfoOptionsKey"];
  }

  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];

  return v9;
}

- (id)description
{
  v3 = MRMediaRemoteCopyCommandDescription([(MRCommandInfo *)self command]);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  isEnabled = [(MRCommandInfo *)self isEnabled];
  options = [(MRCommandInfo *)self options];
  v8 = [v4 initWithFormat:@"<%@: %p, %@, enabled = %d, options = %@>", v5, self, v3, isEnabled, options];

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MRMediaRemoteCopyCommandDescription([(MRCommandInfo *)self command]);
  [v3 setObject:v4 forKeyedSubscript:@"command"];

  if ([(MRCommandInfo *)self isEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 setObject:v5 forKeyedSubscript:@"enabled"];
  options = [(MRCommandInfo *)self options];
  [v3 setObject:options forKeyedSubscript:@"options"];

  return v3;
}

- (MRCommandInfo)initWithProtobuf:(id)protobuf
{
  v92 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v90.receiver = self;
    v90.super_class = MRCommandInfo;
    v5 = [(MRCommandInfo *)&v90 init];

    if (v5)
    {
      v5->_command = MRMediaRemoteCommandFromProtobuf([protobufCopy command]);
      v5->_enabled = [protobufCopy enabled];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([protobufCopy preferredIntervalsCount])
      {
        v7 = PBRepeatedDoubleNSArray();
        [v6 setObject:v7 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPreferredIntervalsKey"];
      }

      if ([protobufCopy hasActive])
      {
        v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(protobufCopy, "active")}];
        [v6 setObject:v8 forKeyedSubscript:@"kMRMediaRemoteCommandInfoIsActiveKey"];
      }

      if ([protobufCopy hasLocalizedTitle])
      {
        localizedTitle = [protobufCopy localizedTitle];
        [v6 setObject:localizedTitle forKeyedSubscript:@"kMRMediaRemoteCommandInfoLocalizedTitleKey"];
      }

      if ([protobufCopy hasLocalizedShortTitle])
      {
        localizedShortTitle = [protobufCopy localizedShortTitle];
        [v6 setObject:localizedShortTitle forKeyedSubscript:@"kMRMediaRemoteCommandInfoLocalizedShortTitleKey"];
      }

      if ([protobufCopy hasMinimumRating])
      {
        v11 = MEMORY[0x1E696AD98];
        [protobufCopy minimumRating];
        v12 = [v11 numberWithFloat:?];
        [v6 setObject:v12 forKeyedSubscript:@"kMRMediaRemoteCommandInfoMinimumRatingKey"];
      }

      if ([protobufCopy hasMaximumRating])
      {
        v13 = MEMORY[0x1E696AD98];
        [protobufCopy maximumRating];
        v14 = [v13 numberWithFloat:?];
        [v6 setObject:v14 forKeyedSubscript:@"kMRMediaRemoteCommandInfoMaximumRatingKey"];
      }

      if ([protobufCopy supportedRatesCount])
      {
        v15 = PBRepeatedFloatNSArray();
        [v6 setObject:v15 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackRates"];
      }

      if ([protobufCopy extendedSupportedRatesCount])
      {
        v16 = PBRepeatedFloatNSArray();
        [v6 setObject:v16 forKeyedSubscript:@"kMRMediaRemoteCommandInfoExtendedSupportedPlaybackRates"];
      }

      if ([protobufCopy hasRepeatMode])
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "repeatMode")}];
        [v6 setObject:v17 forKeyedSubscript:@"kMRMediaRemoteCommandInfoRepeatMode"];
      }

      if ([protobufCopy hasShuffleMode])
      {
        v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "shuffleMode")}];
        [v6 setObject:v18 forKeyedSubscript:@"kMRMediaRemoteCommandInfoShuffleMode"];
      }

      if ([protobufCopy hasPresentationStyle])
      {
        v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "presentationStyle")}];
        [v6 setObject:v19 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPresentationStyleKey"];
      }

      if ([protobufCopy hasSkipInterval])
      {
        v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "skipInterval")}];
        [v6 setObject:v20 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSkipInterval"];
      }

      if ([protobufCopy hasNumAvailableSkips])
      {
        v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "numAvailableSkips")}];
        [v6 setObject:v21 forKeyedSubscript:@"kMRMediaRemoteCommandInfoNumberOfAvailableSkips"];
      }

      if ([protobufCopy hasSkipFrequency])
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "skipFrequency")}];
        [v6 setObject:v22 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSkipFrequency"];
      }

      if ([protobufCopy hasCanScrub])
      {
        v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "canScrub")}];
        [v6 setObject:v23 forKeyedSubscript:@"kMRMediaRemoteCommandInfoCanBeControlledByScrubbingKey"];
      }

      if ([protobufCopy supportedPlaybackQueueTypes])
      {
        v24 = PBRepeatedInt32NSArray();
        [v6 setObject:v24 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackQueueTypes"];
      }

      supportedCustomQueueIdentifiers = [protobufCopy supportedCustomQueueIdentifiers];

      if (supportedCustomQueueIdentifiers)
      {
        supportedCustomQueueIdentifiers2 = [protobufCopy supportedCustomQueueIdentifiers];
        [v6 setObject:supportedCustomQueueIdentifiers2 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedCustomPlaybackQueueIdentifiers"];
      }

      if ([protobufCopy supportedInsertionPositions])
      {
        v27 = PBRepeatedInt32NSArray();
        [v6 setObject:v27 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedInsertionPositions"];
      }

      if ([protobufCopy hasUpNextItemCount])
      {
        v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "upNextItemCount")}];
        [v6 setObject:v28 forKeyedSubscript:@"kMRMediaRemoteCommandInfoUpNextItemCount"];
      }

      if ([protobufCopy hasPreferredPlaybackRate])
      {
        v29 = MEMORY[0x1E696AD98];
        [protobufCopy preferredPlaybackRate];
        v30 = [v29 numberWithFloat:?];
        [v6 setObject:v30 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPreferredPlaybackRate"];
      }

      supportedPlaybackSessionTypes = [protobufCopy supportedPlaybackSessionTypes];

      if (supportedPlaybackSessionTypes)
      {
        supportedPlaybackSessionTypes2 = [protobufCopy supportedPlaybackSessionTypes];
        [v6 setObject:supportedPlaybackSessionTypes2 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionTypes"];
      }

      currentPlaybackSessionTypes = [protobufCopy currentPlaybackSessionTypes];

      if (currentPlaybackSessionTypes)
      {
        currentPlaybackSessionTypes2 = [protobufCopy currentPlaybackSessionTypes];
        [v6 setObject:currentPlaybackSessionTypes2 forKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentPlaybackSessionTypes"];
      }

      playbackSessionIdentifier = [protobufCopy playbackSessionIdentifier];

      if (playbackSessionIdentifier)
      {
        playbackSessionIdentifier2 = [protobufCopy playbackSessionIdentifier];
        [v6 setObject:playbackSessionIdentifier2 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionIdentifier"];
      }

      if ([protobufCopy currentQueueEndAction])
      {
        v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "currentQueueEndAction")}];
        [v6 setObject:v37 forKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentQueueEndAction"];
      }

      if ([protobufCopy supportedQueueEndActions])
      {
        v38 = PBRepeatedInt32NSArray();
        [v6 setObject:v38 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedQueueEndActions"];
      }

      proactiveCommandOptions = [protobufCopy proactiveCommandOptions];

      if (proactiveCommandOptions)
      {
        proactiveCommandOptions2 = [protobufCopy proactiveCommandOptions];
        v41 = MRMediaRemoteCommandOptionsFromProtobuf(proactiveCommandOptions2);
        [v6 setObject:v41 forKeyedSubscript:@"kMRMediaRemoteCommandInfoProactiveCommandOptions"];
      }

      if ([protobufCopy hasDisabledReason])
      {
        v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "disabledReason")}];
        [v6 setObject:v42 forKeyedSubscript:@"kMRMediaRemoteCommandInfoDisabledReason"];
      }

      if ([protobufCopy hasVocalsControlActive])
      {
        v43 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(protobufCopy, "vocalsControlActive")}];
        [v6 setObject:v43 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlActive"];
      }

      if ([protobufCopy hasVocalsControlLevel])
      {
        v44 = MEMORY[0x1E696AD98];
        [protobufCopy vocalsControlLevel];
        v45 = [v44 numberWithFloat:?];
        [v6 setObject:v45 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlLevel"];
      }

      if ([protobufCopy hasVocalsControlContinuous])
      {
        v46 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(protobufCopy, "vocalsControlContinuous")}];
        [v6 setObject:v46 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlContinuous"];
      }

      if ([protobufCopy hasVocalsControlMaxLevel])
      {
        v47 = MEMORY[0x1E696AD98];
        [protobufCopy vocalsControlMaxLevel];
        v48 = [v47 numberWithFloat:?];
        [v6 setObject:v48 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlMaxLevel"];
      }

      if ([protobufCopy hasVocalsControlMinLevel])
      {
        v49 = MEMORY[0x1E696AD98];
        [protobufCopy vocalsControlMinLevel];
        v50 = [v49 numberWithFloat:?];
        [v6 setObject:v50 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlMinLevel"];
      }

      if ([protobufCopy hasSleepTimerTime])
      {
        v51 = MEMORY[0x1E696AD98];
        [protobufCopy sleepTimerTime];
        v52 = [v51 numberWithDouble:?];
        [v6 setObject:v52 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerTime"];
      }

      if ([protobufCopy hasSleepTimerStopMode])
      {
        v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "sleepTimerStopMode")}];
        [v6 setObject:v53 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerStopMode"];
      }

      if ([protobufCopy hasSleepTimerFireDate])
      {
        v54 = MEMORY[0x1E696AD98];
        [protobufCopy sleepTimerFireDate];
        v55 = [v54 numberWithDouble:?];
        [v6 setObject:v55 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerFireDate"];
      }

      if ([protobufCopy hasLastSectionContentItemID])
      {
        lastSectionContentItemID = [protobufCopy lastSectionContentItemID];
        [v6 setObject:lastSectionContentItemID forKeyedSubscript:@"kMRMediaRemoteCommandInfoLastSectionContentItemID"];
      }

      if ([protobufCopy hasDialogOptions])
      {
        dialogOptions = [protobufCopy dialogOptions];
        v58 = _MRProtoUtilsNSDictionaryFromProtoDictionary(dialogOptions);
        [v6 setObject:v58 forKeyedSubscript:@"kMRMediaRemoteCommandInfoDialogOptions"];
      }

      if ([protobufCopy hasPlaybackSessionRequirements])
      {
        playbackSessionRequirements = [protobufCopy playbackSessionRequirements];
        v60 = _MRProtoUtilsNSDictionaryFromProtoDictionary(playbackSessionRequirements);
        [v6 setObject:v60 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionRequirements"];
      }

      if ([protobufCopy hasTransitionStyle])
      {
        v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "transitionStyle")}];
        [v6 setObject:v61 forKeyedSubscript:@"kMRMediaRemoteCommandInfoTransitionStyle"];
      }

      if ([protobufCopy hasSupportsReferencePosition])
      {
        v62 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(protobufCopy, "supportsReferencePosition")}];
        [v6 setObject:v62 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportsReferencePosition"];
      }

      supportedPlaybackSessionIdentifiers = [protobufCopy supportedPlaybackSessionIdentifiers];

      if (supportedPlaybackSessionIdentifiers)
      {
        v83 = v6;
        v84 = v5;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v85 = protobufCopy;
        supportedPlaybackSessionIdentifiers2 = [protobufCopy supportedPlaybackSessionIdentifiers];
        v66 = [supportedPlaybackSessionIdentifiers2 countByEnumeratingWithState:&v86 objects:v91 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v87;
          do
          {
            for (i = 0; i != v67; ++i)
            {
              if (*v87 != v68)
              {
                objc_enumerationMutation(supportedPlaybackSessionIdentifiers2);
              }

              v70 = *(*(&v86 + 1) + 8 * i);
              playbackSessionIdentifier3 = [v70 playbackSessionIdentifier];

              if (playbackSessionIdentifier3)
              {
                dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                v73 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v70, "playbackSessionPriority")}];
                [dictionary2 setObject:v73 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionPriority"];

                playbackSessionRevision = [v70 playbackSessionRevision];
                [dictionary2 setObject:playbackSessionRevision forKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionRevision"];

                v75 = [dictionary2 copy];
                playbackSessionIdentifier4 = [v70 playbackSessionIdentifier];
                [dictionary setObject:v75 forKeyedSubscript:playbackSessionIdentifier4];
              }
            }

            v67 = [supportedPlaybackSessionIdentifiers2 countByEnumeratingWithState:&v86 objects:v91 count:16];
          }

          while (v67);
        }

        v77 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
        v6 = v83;
        [v83 setObject:v77 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionIdentifiers"];

        v5 = v84;
        protobufCopy = v85;
      }

      if ([v6 count])
      {
        v78 = [v6 copy];
        options = v5->_options;
        v5->_options = v78;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v81 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (MRCommandInfo)initWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [[_MRCommandInfoProtobuf alloc] initWithData:dataCopy];
    v6 = [(MRCommandInfo *)self initWithProtobuf:v5];
  }

  else
  {
    v6 = [(MRCommandInfo *)self initWithProtobuf:0];
  }

  return v6;
}

- (MRCommandInfo)initWithPropertyListData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v15.receiver = self;
    v15.super_class = MRCommandInfo;
    v5 = [(MRCommandInfo *)&v15 init];
    if (v5)
    {
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:0];
      v7 = [v6 objectForKeyedSubscript:@"kCommandInfoCommandKey"];
      v5->_command = [v7 integerValue];
      v8 = [v6 objectForKeyedSubscript:@"kCommandInfoEnabledKey"];
      v5->_enabled = [v8 BOOLValue];
      v9 = [v6 objectForKeyedSubscript:@"kCommandInfoOptionsKey"];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 copy];
        options = v5->_options;
        v5->_options = v11;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)commandInfosFromData:(id)data
{
  if (data)
  {
    v4 = MRCreateArrayFromData(data, &__block_literal_global_63);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

MRCommandInfo *__38__MRCommandInfo_commandInfosFromData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRCommandInfo alloc] initWithPropertyListData:v2];

  return v3;
}

+ (id)dataFromCommandInfos:(id)infos
{
  if (infos)
  {
    v4 = MRCreateDataFromArray(infos, &__block_literal_global_15);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_MRCommandInfoProtobuf)protobuf
{
  v224 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_MRCommandInfoProtobuf);
  v4 = MRMediaRemoteCommandToProtobuf([(MRCommandInfo *)self command]);
  if (v4 >= 1)
  {
    [(_MRCommandInfoProtobuf *)v3 setCommand:v4];
  }

  if ([(MRCommandInfo *)self isEnabled])
  {
    [(_MRCommandInfoProtobuf *)v3 setEnabled:1];
  }

  options = [(MRCommandInfo *)self options];
  v6 = [options count];

  if (v6)
  {
    options2 = [(MRCommandInfo *)self options];
    v8 = [options2 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPreferredIntervalsKey"];

    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v213 objects:v223 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v214;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v214 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v213 + 1) + 8 * i) doubleValue];
          [(_MRCommandInfoProtobuf *)v3 addPreferredInterval:?];
        }

        v11 = [v9 countByEnumeratingWithState:&v213 objects:v223 count:16];
      }

      while (v11);
    }

    options3 = [(MRCommandInfo *)self options];
    v15 = [options3 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoIsActiveKey"];

    if (v15)
    {
      -[_MRCommandInfoProtobuf setActive:](v3, "setActive:", [v15 BOOLValue]);
    }

    options4 = [(MRCommandInfo *)self options];
    v17 = [options4 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoLocalizedShortTitleKey"];

    v185 = v17;
    if ([v17 length])
    {
      [(_MRCommandInfoProtobuf *)v3 setLocalizedShortTitle:v17];
    }

    else
    {
      options5 = [(MRCommandInfo *)self options];
      v19 = [options5 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoLocalizedTitleKey"];

      if ([v19 length])
      {
        [(_MRCommandInfoProtobuf *)v3 setLocalizedTitle:v19];
      }
    }

    options6 = [(MRCommandInfo *)self options];
    v21 = [options6 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoMinimumRatingKey"];

    if (v21)
    {
      [v21 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setMinimumRating:?];
    }

    options7 = [(MRCommandInfo *)self options];
    v23 = [options7 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoMaximumRatingKey"];

    if (v23)
    {
      [v23 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setMaximumRating:?];
    }

    options8 = [(MRCommandInfo *)self options];
    v25 = [options8 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackRates"];

    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v209 objects:v222 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v210;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v210 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v209 + 1) + 8 * j) floatValue];
          [(_MRCommandInfoProtobuf *)v3 addSupportedRate:?];
        }

        v28 = [v26 countByEnumeratingWithState:&v209 objects:v222 count:16];
      }

      while (v28);
    }

    v182 = v26;

    options9 = [(MRCommandInfo *)self options];
    v32 = [options9 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoExtendedSupportedPlaybackRates"];

    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v33 = v32;
    v34 = [v33 countByEnumeratingWithState:&v205 objects:v221 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v206;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v206 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v205 + 1) + 8 * k) floatValue];
          [(_MRCommandInfoProtobuf *)v3 addExtendedSupportedRate:?];
        }

        v35 = [v33 countByEnumeratingWithState:&v205 objects:v221 count:16];
      }

      while (v35);
    }

    options10 = [(MRCommandInfo *)self options];
    v39 = [options10 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoShuffleMode"];

    if (v39)
    {
      -[_MRCommandInfoProtobuf setShuffleMode:](v3, "setShuffleMode:", [v39 unsignedIntegerValue]);
    }

    v178 = v39;
    options11 = [(MRCommandInfo *)self options];
    v41 = [options11 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoRepeatMode"];

    if (v41)
    {
      -[_MRCommandInfoProtobuf setRepeatMode:](v3, "setRepeatMode:", [v41 unsignedIntegerValue]);
    }

    v177 = v41;
    options12 = [(MRCommandInfo *)self options];
    v43 = [options12 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPresentationStyleKey"];

    if (v43)
    {
      -[_MRCommandInfoProtobuf setPresentationStyle:](v3, "setPresentationStyle:", [v43 intValue]);
    }

    v176 = v43;
    options13 = [(MRCommandInfo *)self options];
    v45 = [options13 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSkipInterval"];

    if (v45)
    {
      -[_MRCommandInfoProtobuf setSkipInterval:](v3, "setSkipInterval:", [v45 intValue]);
    }

    v175 = v45;
    options14 = [(MRCommandInfo *)self options];
    v47 = [options14 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoNumberOfAvailableSkips"];

    if (v47)
    {
      -[_MRCommandInfoProtobuf setNumAvailableSkips:](v3, "setNumAvailableSkips:", [v47 intValue]);
    }

    v174 = v47;
    options15 = [(MRCommandInfo *)self options];
    v49 = [options15 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSkipFrequency"];

    if (v49)
    {
      -[_MRCommandInfoProtobuf setSkipFrequency:](v3, "setSkipFrequency:", [v49 intValue]);
    }

    v173 = v49;
    options16 = [(MRCommandInfo *)self options];
    v51 = [options16 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoCanBeControlledByScrubbingKey"];

    if (v51)
    {
      -[_MRCommandInfoProtobuf setCanScrub:](v3, "setCanScrub:", [v51 intValue]);
    }

    v172 = v51;
    options17 = [(MRCommandInfo *)self options];
    v53 = [options17 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackQueueTypes"];

    v188 = v33;
    v181 = v53;
    if (v53)
    {
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v201 objects:v220 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v202;
        do
        {
          for (m = 0; m != v56; ++m)
          {
            if (*v202 != v57)
            {
              objc_enumerationMutation(v54);
            }

            -[_MRCommandInfoProtobuf addSupportedPlaybackQueueTypes:](v3, "addSupportedPlaybackQueueTypes:", [*(*(&v201 + 1) + 8 * m) intValue]);
          }

          v56 = [v54 countByEnumeratingWithState:&v201 objects:v220 count:16];
        }

        while (v56);
      }

      v33 = v188;
    }

    v183 = v23;
    v184 = v21;
    v59 = v15;
    options18 = [(MRCommandInfo *)self options];
    v61 = [options18 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedCustomPlaybackQueueIdentifiers"];

    if (v61)
    {
      v62 = [v61 mutableCopy];
      [(_MRCommandInfoProtobuf *)v3 setSupportedCustomQueueIdentifiers:v62];
    }

    options19 = [(MRCommandInfo *)self options];
    v64 = [options19 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedInsertionPositions"];

    v171 = v61;
    v180 = v64;
    if (v64)
    {
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v65 = v64;
      v66 = [v65 countByEnumeratingWithState:&v197 objects:v219 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v198;
        do
        {
          for (n = 0; n != v67; ++n)
          {
            if (*v198 != v68)
            {
              objc_enumerationMutation(v65);
            }

            -[_MRCommandInfoProtobuf addSupportedInsertionPositions:](v3, "addSupportedInsertionPositions:", [*(*(&v197 + 1) + 8 * n) intValue]);
          }

          v67 = [v65 countByEnumeratingWithState:&v197 objects:v219 count:16];
        }

        while (v67);
      }

      v33 = v188;
    }

    options20 = [(MRCommandInfo *)self options];
    v71 = [options20 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoUpNextItemCount"];

    if (v71)
    {
      -[_MRCommandInfoProtobuf setUpNextItemCount:](v3, "setUpNextItemCount:", [v71 intValue]);
    }

    v170 = v71;
    options21 = [(MRCommandInfo *)self options];
    v73 = [options21 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPreferredPlaybackRate"];

    v186 = v59;
    if (v73)
    {
      [v73 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setPreferredPlaybackRate:?];
    }

    options22 = [(MRCommandInfo *)self options];
    v75 = [options22 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionTypes"];

    if (v75)
    {
      v76 = [v75 mutableCopy];
      [(_MRCommandInfoProtobuf *)v3 setSupportedPlaybackSessionTypes:v76];
    }

    v168 = v75;
    options23 = [(MRCommandInfo *)self options];
    v78 = [options23 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentPlaybackSessionTypes"];

    if (v78)
    {
      v79 = [v78 mutableCopy];
      [(_MRCommandInfoProtobuf *)v3 setCurrentPlaybackSessionTypes:v79];
    }

    v167 = v78;
    options24 = [(MRCommandInfo *)self options];
    v81 = [options24 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionIdentifier"];

    if (v81)
    {
      [(_MRCommandInfoProtobuf *)v3 setPlaybackSessionIdentifier:v81];
    }

    v166 = v81;
    options25 = [(MRCommandInfo *)self options];
    v83 = [options25 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoProactiveCommandOptions"];

    if (v83)
    {
      v84 = MRMediaRemoteCommandOptionsToProtobuf(v83);
      [(_MRCommandInfoProtobuf *)v3 setProactiveCommandOptions:v84];
    }

    v169 = v73;
    v179 = v83;
    if ([(MRCommandInfo *)self command]== 135)
    {
      options26 = [(MRCommandInfo *)self options];
      v86 = [options26 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentQueueEndAction"];

      -[_MRCommandInfoProtobuf setCurrentQueueEndAction:](v3, "setCurrentQueueEndAction:", [v86 intValue]);
      options27 = [(MRCommandInfo *)self options];
      v88 = [options27 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedQueueEndActions"];

      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v89 = v88;
      v90 = [v89 countByEnumeratingWithState:&v193 objects:v218 count:16];
      if (v90)
      {
        v91 = v90;
        v92 = *v194;
        do
        {
          for (ii = 0; ii != v91; ++ii)
          {
            if (*v194 != v92)
            {
              objc_enumerationMutation(v89);
            }

            -[_MRCommandInfoProtobuf addSupportedQueueEndActions:](v3, "addSupportedQueueEndActions:", [*(*(&v193 + 1) + 8 * ii) intValue]);
          }

          v91 = [v89 countByEnumeratingWithState:&v193 objects:v218 count:16];
        }

        while (v91);
      }

      v33 = v188;
    }

    options28 = [(MRCommandInfo *)self options];
    v95 = [options28 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoDisabledReason"];

    if (v95)
    {
      -[_MRCommandInfoProtobuf setDisabledReason:](v3, "setDisabledReason:", [v95 intValue]);
    }

    v165 = v95;
    options29 = [(MRCommandInfo *)self options];
    v97 = [options29 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlActive"];

    if (v97)
    {
      -[_MRCommandInfoProtobuf setVocalsControlActive:](v3, "setVocalsControlActive:", [v97 BOOLValue]);
    }

    v187 = v97;
    options30 = [(MRCommandInfo *)self options];
    v99 = [options30 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlLevel"];

    if (v99)
    {
      [v99 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setVocalsControlLevel:?];
    }

    v164 = v99;
    options31 = [(MRCommandInfo *)self options];
    v101 = [options31 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlMaxLevel"];

    if (v187)
    {
      [v101 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setVocalsControlMaxLevel:?];
    }

    v163 = v101;
    options32 = [(MRCommandInfo *)self options];
    v103 = [options32 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlMinLevel"];

    if (v103)
    {
      [v103 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setVocalsControlMinLevel:?];
    }

    options33 = [(MRCommandInfo *)self options];
    v105 = [options33 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlContinuous"];

    if (v105)
    {
      -[_MRCommandInfoProtobuf setVocalsControlContinuous:](v3, "setVocalsControlContinuous:", [v105 BOOLValue]);
    }

    options34 = [(MRCommandInfo *)self options];
    v107 = [options34 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerTime"];

    if (v107)
    {
      [v107 doubleValue];
      [(_MRCommandInfoProtobuf *)v3 setSleepTimerTime:?];
    }

    v161 = v107;
    options35 = [(MRCommandInfo *)self options];
    v109 = [options35 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerStopMode"];

    if (v109)
    {
      -[_MRCommandInfoProtobuf setSleepTimerStopMode:](v3, "setSleepTimerStopMode:", [v109 unsignedIntegerValue]);
    }

    v160 = v109;
    options36 = [(MRCommandInfo *)self options];
    v111 = [options36 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerFireDate"];

    if (v111)
    {
      [v111 doubleValue];
      [(_MRCommandInfoProtobuf *)v3 setSleepTimerFireDate:?];
    }

    v159 = v111;
    options37 = [(MRCommandInfo *)self options];
    v113 = [options37 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoLastSectionContentItemID"];

    if (v113)
    {
      [(_MRCommandInfoProtobuf *)v3 setLastSectionContentItemID:v113];
    }

    v158 = v113;
    options38 = [(MRCommandInfo *)self options];
    v115 = [options38 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoTransitionStyle"];

    v116 = v115;
    v117 = v179;
    if (v116)
    {
      [v116 doubleValue];
      [(_MRCommandInfoProtobuf *)v3 setTransitionStyle:v118];
    }

    v157 = v116;
    options39 = [(MRCommandInfo *)self options];
    v120 = [options39 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoDialogOptions"];

    if (v120)
    {
      v121 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v120);
      [(_MRCommandInfoProtobuf *)v3 setDialogOptions:v121];
    }

    v156 = v120;
    options40 = [(MRCommandInfo *)self options];
    v123 = [options40 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionRequirements"];

    if (v123)
    {
      v124 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v123);
      [(_MRCommandInfoProtobuf *)v3 setPlaybackSessionRequirements:v124];
    }

    v155 = v123;
    v162 = v105;
    options41 = [(MRCommandInfo *)self options];
    v126 = [options41 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportsReferencePosition"];

    v127 = v186;
    if (v126)
    {
      -[_MRCommandInfoProtobuf setSupportsReferencePosition:](v3, "setSupportsReferencePosition:", [v126 BOOLValue]);
    }

    v154 = v126;
    options42 = [(MRCommandInfo *)self options];
    v129 = [options42 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionIdentifiers"];

    v130 = v129;
    v132 = v184;
    v131 = v185;
    v133 = v182;
    v134 = v183;
    if (v130)
    {
      v151 = v103;
      v152 = v9;
      v153 = v3;
      v135 = v130;
      v136 = objc_opt_new();
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      v192 = 0u;
      v150 = v135;
      v137 = v135;
      v138 = [v137 countByEnumeratingWithState:&v189 objects:v217 count:16];
      if (v138)
      {
        v139 = v138;
        v140 = *v190;
        do
        {
          for (jj = 0; jj != v139; ++jj)
          {
            if (*v190 != v140)
            {
              objc_enumerationMutation(v137);
            }

            v142 = *(*(&v189 + 1) + 8 * jj);
            v143 = [v137 objectForKeyedSubscript:v142];
            v144 = objc_alloc_init(_MRPreloadedPlaybackSessionInfo);
            [(_MRPreloadedPlaybackSessionInfo *)v144 setPlaybackSessionIdentifier:v142];
            v145 = [v143 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionPriority"];
            -[_MRPreloadedPlaybackSessionInfo setPlaybackSessionPriority:](v144, "setPlaybackSessionPriority:", [v145 intValue]);

            v146 = [v143 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionRevision"];
            [(_MRPreloadedPlaybackSessionInfo *)v144 setPlaybackSessionRevision:v146];

            [v136 addObject:v144];
          }

          v139 = [v137 countByEnumeratingWithState:&v189 objects:v217 count:16];
        }

        while (v139);
      }

      v3 = v153;
      [(_MRCommandInfoProtobuf *)v153 setSupportedPlaybackSessionIdentifiers:v136];

      v103 = v151;
      v9 = v152;
      v131 = v185;
      v127 = v186;
      v134 = v183;
      v132 = v184;
      v133 = v182;
      v33 = v188;
      v117 = v179;
      v130 = v150;
    }
  }

  v147 = v3;

  v148 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSData)data
{
  protobuf = [(MRCommandInfo *)self protobuf];
  data = [protobuf data];

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      command = [(MRCommandInfo *)v5 command];
      if (command == [(MRCommandInfo *)self command]&& (v7 = [(MRCommandInfo *)v5 isEnabled], v7 == [(MRCommandInfo *)self isEnabled]))
      {
        options = [(MRCommandInfo *)v5 options];
        options2 = [(MRCommandInfo *)self options];
        if (options == options2)
        {
          v8 = 1;
        }

        else
        {
          options3 = [(MRCommandInfo *)v5 options];
          options4 = [(MRCommandInfo *)self options];
          v8 = [options3 isEqualToDictionary:options4];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

- (unint64_t)hash
{
  command = [(MRCommandInfo *)self command];
  if ([(MRCommandInfo *)self isEnabled])
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return v4 | command;
}

@end