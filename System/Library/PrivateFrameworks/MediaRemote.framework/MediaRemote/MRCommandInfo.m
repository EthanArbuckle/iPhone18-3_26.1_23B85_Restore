@interface MRCommandInfo
+ (id)commandInfosFromData:(id)a3;
+ (id)dataFromCommandInfos:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MRCommandInfo)initWithData:(id)a3;
- (MRCommandInfo)initWithPropertyListData:(id)a3;
- (MRCommandInfo)initWithProtobuf:(id)a3;
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

  v6 = [(MRCommandInfo *)self options];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(MRCommandInfo *)self options];
    [v3 setObject:v8 forKeyedSubscript:@"kCommandInfoOptionsKey"];
  }

  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];

  return v9;
}

- (id)description
{
  v3 = MRMediaRemoteCopyCommandDescription([(MRCommandInfo *)self command]);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = [(MRCommandInfo *)self isEnabled];
  v7 = [(MRCommandInfo *)self options];
  v8 = [v4 initWithFormat:@"<%@: %p, %@, enabled = %d, options = %@>", v5, self, v3, v6, v7];

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
  v6 = [(MRCommandInfo *)self options];
  [v3 setObject:v6 forKeyedSubscript:@"options"];

  return v3;
}

- (MRCommandInfo)initWithProtobuf:(id)a3
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v90.receiver = self;
    v90.super_class = MRCommandInfo;
    v5 = [(MRCommandInfo *)&v90 init];

    if (v5)
    {
      v5->_command = MRMediaRemoteCommandFromProtobuf([v4 command]);
      v5->_enabled = [v4 enabled];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([v4 preferredIntervalsCount])
      {
        v7 = PBRepeatedDoubleNSArray();
        [v6 setObject:v7 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPreferredIntervalsKey"];
      }

      if ([v4 hasActive])
      {
        v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "active")}];
        [v6 setObject:v8 forKeyedSubscript:@"kMRMediaRemoteCommandInfoIsActiveKey"];
      }

      if ([v4 hasLocalizedTitle])
      {
        v9 = [v4 localizedTitle];
        [v6 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteCommandInfoLocalizedTitleKey"];
      }

      if ([v4 hasLocalizedShortTitle])
      {
        v10 = [v4 localizedShortTitle];
        [v6 setObject:v10 forKeyedSubscript:@"kMRMediaRemoteCommandInfoLocalizedShortTitleKey"];
      }

      if ([v4 hasMinimumRating])
      {
        v11 = MEMORY[0x1E696AD98];
        [v4 minimumRating];
        v12 = [v11 numberWithFloat:?];
        [v6 setObject:v12 forKeyedSubscript:@"kMRMediaRemoteCommandInfoMinimumRatingKey"];
      }

      if ([v4 hasMaximumRating])
      {
        v13 = MEMORY[0x1E696AD98];
        [v4 maximumRating];
        v14 = [v13 numberWithFloat:?];
        [v6 setObject:v14 forKeyedSubscript:@"kMRMediaRemoteCommandInfoMaximumRatingKey"];
      }

      if ([v4 supportedRatesCount])
      {
        v15 = PBRepeatedFloatNSArray();
        [v6 setObject:v15 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackRates"];
      }

      if ([v4 extendedSupportedRatesCount])
      {
        v16 = PBRepeatedFloatNSArray();
        [v6 setObject:v16 forKeyedSubscript:@"kMRMediaRemoteCommandInfoExtendedSupportedPlaybackRates"];
      }

      if ([v4 hasRepeatMode])
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "repeatMode")}];
        [v6 setObject:v17 forKeyedSubscript:@"kMRMediaRemoteCommandInfoRepeatMode"];
      }

      if ([v4 hasShuffleMode])
      {
        v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "shuffleMode")}];
        [v6 setObject:v18 forKeyedSubscript:@"kMRMediaRemoteCommandInfoShuffleMode"];
      }

      if ([v4 hasPresentationStyle])
      {
        v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "presentationStyle")}];
        [v6 setObject:v19 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPresentationStyleKey"];
      }

      if ([v4 hasSkipInterval])
      {
        v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "skipInterval")}];
        [v6 setObject:v20 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSkipInterval"];
      }

      if ([v4 hasNumAvailableSkips])
      {
        v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "numAvailableSkips")}];
        [v6 setObject:v21 forKeyedSubscript:@"kMRMediaRemoteCommandInfoNumberOfAvailableSkips"];
      }

      if ([v4 hasSkipFrequency])
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "skipFrequency")}];
        [v6 setObject:v22 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSkipFrequency"];
      }

      if ([v4 hasCanScrub])
      {
        v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "canScrub")}];
        [v6 setObject:v23 forKeyedSubscript:@"kMRMediaRemoteCommandInfoCanBeControlledByScrubbingKey"];
      }

      if ([v4 supportedPlaybackQueueTypes])
      {
        v24 = PBRepeatedInt32NSArray();
        [v6 setObject:v24 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackQueueTypes"];
      }

      v25 = [v4 supportedCustomQueueIdentifiers];

      if (v25)
      {
        v26 = [v4 supportedCustomQueueIdentifiers];
        [v6 setObject:v26 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedCustomPlaybackQueueIdentifiers"];
      }

      if ([v4 supportedInsertionPositions])
      {
        v27 = PBRepeatedInt32NSArray();
        [v6 setObject:v27 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedInsertionPositions"];
      }

      if ([v4 hasUpNextItemCount])
      {
        v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "upNextItemCount")}];
        [v6 setObject:v28 forKeyedSubscript:@"kMRMediaRemoteCommandInfoUpNextItemCount"];
      }

      if ([v4 hasPreferredPlaybackRate])
      {
        v29 = MEMORY[0x1E696AD98];
        [v4 preferredPlaybackRate];
        v30 = [v29 numberWithFloat:?];
        [v6 setObject:v30 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPreferredPlaybackRate"];
      }

      v31 = [v4 supportedPlaybackSessionTypes];

      if (v31)
      {
        v32 = [v4 supportedPlaybackSessionTypes];
        [v6 setObject:v32 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionTypes"];
      }

      v33 = [v4 currentPlaybackSessionTypes];

      if (v33)
      {
        v34 = [v4 currentPlaybackSessionTypes];
        [v6 setObject:v34 forKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentPlaybackSessionTypes"];
      }

      v35 = [v4 playbackSessionIdentifier];

      if (v35)
      {
        v36 = [v4 playbackSessionIdentifier];
        [v6 setObject:v36 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionIdentifier"];
      }

      if ([v4 currentQueueEndAction])
      {
        v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "currentQueueEndAction")}];
        [v6 setObject:v37 forKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentQueueEndAction"];
      }

      if ([v4 supportedQueueEndActions])
      {
        v38 = PBRepeatedInt32NSArray();
        [v6 setObject:v38 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedQueueEndActions"];
      }

      v39 = [v4 proactiveCommandOptions];

      if (v39)
      {
        v40 = [v4 proactiveCommandOptions];
        v41 = MRMediaRemoteCommandOptionsFromProtobuf(v40);
        [v6 setObject:v41 forKeyedSubscript:@"kMRMediaRemoteCommandInfoProactiveCommandOptions"];
      }

      if ([v4 hasDisabledReason])
      {
        v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "disabledReason")}];
        [v6 setObject:v42 forKeyedSubscript:@"kMRMediaRemoteCommandInfoDisabledReason"];
      }

      if ([v4 hasVocalsControlActive])
      {
        v43 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "vocalsControlActive")}];
        [v6 setObject:v43 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlActive"];
      }

      if ([v4 hasVocalsControlLevel])
      {
        v44 = MEMORY[0x1E696AD98];
        [v4 vocalsControlLevel];
        v45 = [v44 numberWithFloat:?];
        [v6 setObject:v45 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlLevel"];
      }

      if ([v4 hasVocalsControlContinuous])
      {
        v46 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "vocalsControlContinuous")}];
        [v6 setObject:v46 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlContinuous"];
      }

      if ([v4 hasVocalsControlMaxLevel])
      {
        v47 = MEMORY[0x1E696AD98];
        [v4 vocalsControlMaxLevel];
        v48 = [v47 numberWithFloat:?];
        [v6 setObject:v48 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlMaxLevel"];
      }

      if ([v4 hasVocalsControlMinLevel])
      {
        v49 = MEMORY[0x1E696AD98];
        [v4 vocalsControlMinLevel];
        v50 = [v49 numberWithFloat:?];
        [v6 setObject:v50 forKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlMinLevel"];
      }

      if ([v4 hasSleepTimerTime])
      {
        v51 = MEMORY[0x1E696AD98];
        [v4 sleepTimerTime];
        v52 = [v51 numberWithDouble:?];
        [v6 setObject:v52 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerTime"];
      }

      if ([v4 hasSleepTimerStopMode])
      {
        v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "sleepTimerStopMode")}];
        [v6 setObject:v53 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerStopMode"];
      }

      if ([v4 hasSleepTimerFireDate])
      {
        v54 = MEMORY[0x1E696AD98];
        [v4 sleepTimerFireDate];
        v55 = [v54 numberWithDouble:?];
        [v6 setObject:v55 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerFireDate"];
      }

      if ([v4 hasLastSectionContentItemID])
      {
        v56 = [v4 lastSectionContentItemID];
        [v6 setObject:v56 forKeyedSubscript:@"kMRMediaRemoteCommandInfoLastSectionContentItemID"];
      }

      if ([v4 hasDialogOptions])
      {
        v57 = [v4 dialogOptions];
        v58 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v57);
        [v6 setObject:v58 forKeyedSubscript:@"kMRMediaRemoteCommandInfoDialogOptions"];
      }

      if ([v4 hasPlaybackSessionRequirements])
      {
        v59 = [v4 playbackSessionRequirements];
        v60 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v59);
        [v6 setObject:v60 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionRequirements"];
      }

      if ([v4 hasTransitionStyle])
      {
        v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "transitionStyle")}];
        [v6 setObject:v61 forKeyedSubscript:@"kMRMediaRemoteCommandInfoTransitionStyle"];
      }

      if ([v4 hasSupportsReferencePosition])
      {
        v62 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "supportsReferencePosition")}];
        [v6 setObject:v62 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportsReferencePosition"];
      }

      v63 = [v4 supportedPlaybackSessionIdentifiers];

      if (v63)
      {
        v83 = v6;
        v84 = v5;
        v64 = [MEMORY[0x1E695DF90] dictionary];
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v85 = v4;
        v65 = [v4 supportedPlaybackSessionIdentifiers];
        v66 = [v65 countByEnumeratingWithState:&v86 objects:v91 count:16];
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
                objc_enumerationMutation(v65);
              }

              v70 = *(*(&v86 + 1) + 8 * i);
              v71 = [v70 playbackSessionIdentifier];

              if (v71)
              {
                v72 = [MEMORY[0x1E695DF90] dictionary];
                v73 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v70, "playbackSessionPriority")}];
                [v72 setObject:v73 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionPriority"];

                v74 = [v70 playbackSessionRevision];
                [v72 setObject:v74 forKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionRevision"];

                v75 = [v72 copy];
                v76 = [v70 playbackSessionIdentifier];
                [v64 setObject:v75 forKeyedSubscript:v76];
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v86 objects:v91 count:16];
          }

          while (v67);
        }

        v77 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v64];
        v6 = v83;
        [v83 setObject:v77 forKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionIdentifiers"];

        v5 = v84;
        v4 = v85;
      }

      if ([v6 count])
      {
        v78 = [v6 copy];
        options = v5->_options;
        v5->_options = v78;
      }
    }

    self = v5;
    v80 = self;
  }

  else
  {
    v80 = 0;
  }

  v81 = *MEMORY[0x1E69E9840];
  return v80;
}

- (MRCommandInfo)initWithData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_MRCommandInfoProtobuf alloc] initWithData:v4];
    v6 = [(MRCommandInfo *)self initWithProtobuf:v5];
  }

  else
  {
    v6 = [(MRCommandInfo *)self initWithProtobuf:0];
  }

  return v6;
}

- (MRCommandInfo)initWithPropertyListData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = MRCommandInfo;
    v5 = [(MRCommandInfo *)&v15 init];
    if (v5)
    {
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
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
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)commandInfosFromData:(id)a3
{
  if (a3)
  {
    v4 = MRCreateArrayFromData(a3, &__block_literal_global_63);
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

+ (id)dataFromCommandInfos:(id)a3
{
  if (a3)
  {
    v4 = MRCreateDataFromArray(a3, &__block_literal_global_15);
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

  v5 = [(MRCommandInfo *)self options];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MRCommandInfo *)self options];
    v8 = [v7 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPreferredIntervalsKey"];

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

    v14 = [(MRCommandInfo *)self options];
    v15 = [v14 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoIsActiveKey"];

    if (v15)
    {
      -[_MRCommandInfoProtobuf setActive:](v3, "setActive:", [v15 BOOLValue]);
    }

    v16 = [(MRCommandInfo *)self options];
    v17 = [v16 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoLocalizedShortTitleKey"];

    v185 = v17;
    if ([v17 length])
    {
      [(_MRCommandInfoProtobuf *)v3 setLocalizedShortTitle:v17];
    }

    else
    {
      v18 = [(MRCommandInfo *)self options];
      v19 = [v18 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoLocalizedTitleKey"];

      if ([v19 length])
      {
        [(_MRCommandInfoProtobuf *)v3 setLocalizedTitle:v19];
      }
    }

    v20 = [(MRCommandInfo *)self options];
    v21 = [v20 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoMinimumRatingKey"];

    if (v21)
    {
      [v21 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setMinimumRating:?];
    }

    v22 = [(MRCommandInfo *)self options];
    v23 = [v22 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoMaximumRatingKey"];

    if (v23)
    {
      [v23 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setMaximumRating:?];
    }

    v24 = [(MRCommandInfo *)self options];
    v25 = [v24 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackRates"];

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

    v31 = [(MRCommandInfo *)self options];
    v32 = [v31 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoExtendedSupportedPlaybackRates"];

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

    v38 = [(MRCommandInfo *)self options];
    v39 = [v38 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoShuffleMode"];

    if (v39)
    {
      -[_MRCommandInfoProtobuf setShuffleMode:](v3, "setShuffleMode:", [v39 unsignedIntegerValue]);
    }

    v178 = v39;
    v40 = [(MRCommandInfo *)self options];
    v41 = [v40 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoRepeatMode"];

    if (v41)
    {
      -[_MRCommandInfoProtobuf setRepeatMode:](v3, "setRepeatMode:", [v41 unsignedIntegerValue]);
    }

    v177 = v41;
    v42 = [(MRCommandInfo *)self options];
    v43 = [v42 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPresentationStyleKey"];

    if (v43)
    {
      -[_MRCommandInfoProtobuf setPresentationStyle:](v3, "setPresentationStyle:", [v43 intValue]);
    }

    v176 = v43;
    v44 = [(MRCommandInfo *)self options];
    v45 = [v44 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSkipInterval"];

    if (v45)
    {
      -[_MRCommandInfoProtobuf setSkipInterval:](v3, "setSkipInterval:", [v45 intValue]);
    }

    v175 = v45;
    v46 = [(MRCommandInfo *)self options];
    v47 = [v46 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoNumberOfAvailableSkips"];

    if (v47)
    {
      -[_MRCommandInfoProtobuf setNumAvailableSkips:](v3, "setNumAvailableSkips:", [v47 intValue]);
    }

    v174 = v47;
    v48 = [(MRCommandInfo *)self options];
    v49 = [v48 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSkipFrequency"];

    if (v49)
    {
      -[_MRCommandInfoProtobuf setSkipFrequency:](v3, "setSkipFrequency:", [v49 intValue]);
    }

    v173 = v49;
    v50 = [(MRCommandInfo *)self options];
    v51 = [v50 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoCanBeControlledByScrubbingKey"];

    if (v51)
    {
      -[_MRCommandInfoProtobuf setCanScrub:](v3, "setCanScrub:", [v51 intValue]);
    }

    v172 = v51;
    v52 = [(MRCommandInfo *)self options];
    v53 = [v52 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackQueueTypes"];

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
    v60 = [(MRCommandInfo *)self options];
    v61 = [v60 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedCustomPlaybackQueueIdentifiers"];

    if (v61)
    {
      v62 = [v61 mutableCopy];
      [(_MRCommandInfoProtobuf *)v3 setSupportedCustomQueueIdentifiers:v62];
    }

    v63 = [(MRCommandInfo *)self options];
    v64 = [v63 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedInsertionPositions"];

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

    v70 = [(MRCommandInfo *)self options];
    v71 = [v70 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoUpNextItemCount"];

    if (v71)
    {
      -[_MRCommandInfoProtobuf setUpNextItemCount:](v3, "setUpNextItemCount:", [v71 intValue]);
    }

    v170 = v71;
    v72 = [(MRCommandInfo *)self options];
    v73 = [v72 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPreferredPlaybackRate"];

    v186 = v59;
    if (v73)
    {
      [v73 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setPreferredPlaybackRate:?];
    }

    v74 = [(MRCommandInfo *)self options];
    v75 = [v74 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionTypes"];

    if (v75)
    {
      v76 = [v75 mutableCopy];
      [(_MRCommandInfoProtobuf *)v3 setSupportedPlaybackSessionTypes:v76];
    }

    v168 = v75;
    v77 = [(MRCommandInfo *)self options];
    v78 = [v77 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentPlaybackSessionTypes"];

    if (v78)
    {
      v79 = [v78 mutableCopy];
      [(_MRCommandInfoProtobuf *)v3 setCurrentPlaybackSessionTypes:v79];
    }

    v167 = v78;
    v80 = [(MRCommandInfo *)self options];
    v81 = [v80 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionIdentifier"];

    if (v81)
    {
      [(_MRCommandInfoProtobuf *)v3 setPlaybackSessionIdentifier:v81];
    }

    v166 = v81;
    v82 = [(MRCommandInfo *)self options];
    v83 = [v82 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoProactiveCommandOptions"];

    if (v83)
    {
      v84 = MRMediaRemoteCommandOptionsToProtobuf(v83);
      [(_MRCommandInfoProtobuf *)v3 setProactiveCommandOptions:v84];
    }

    v169 = v73;
    v179 = v83;
    if ([(MRCommandInfo *)self command]== 135)
    {
      v85 = [(MRCommandInfo *)self options];
      v86 = [v85 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentQueueEndAction"];

      -[_MRCommandInfoProtobuf setCurrentQueueEndAction:](v3, "setCurrentQueueEndAction:", [v86 intValue]);
      v87 = [(MRCommandInfo *)self options];
      v88 = [v87 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedQueueEndActions"];

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

    v94 = [(MRCommandInfo *)self options];
    v95 = [v94 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoDisabledReason"];

    if (v95)
    {
      -[_MRCommandInfoProtobuf setDisabledReason:](v3, "setDisabledReason:", [v95 intValue]);
    }

    v165 = v95;
    v96 = [(MRCommandInfo *)self options];
    v97 = [v96 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlActive"];

    if (v97)
    {
      -[_MRCommandInfoProtobuf setVocalsControlActive:](v3, "setVocalsControlActive:", [v97 BOOLValue]);
    }

    v187 = v97;
    v98 = [(MRCommandInfo *)self options];
    v99 = [v98 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlLevel"];

    if (v99)
    {
      [v99 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setVocalsControlLevel:?];
    }

    v164 = v99;
    v100 = [(MRCommandInfo *)self options];
    v101 = [v100 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlMaxLevel"];

    if (v187)
    {
      [v101 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setVocalsControlMaxLevel:?];
    }

    v163 = v101;
    v102 = [(MRCommandInfo *)self options];
    v103 = [v102 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlMinLevel"];

    if (v103)
    {
      [v103 floatValue];
      [(_MRCommandInfoProtobuf *)v3 setVocalsControlMinLevel:?];
    }

    v104 = [(MRCommandInfo *)self options];
    v105 = [v104 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoVocalsControlContinuous"];

    if (v105)
    {
      -[_MRCommandInfoProtobuf setVocalsControlContinuous:](v3, "setVocalsControlContinuous:", [v105 BOOLValue]);
    }

    v106 = [(MRCommandInfo *)self options];
    v107 = [v106 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerTime"];

    if (v107)
    {
      [v107 doubleValue];
      [(_MRCommandInfoProtobuf *)v3 setSleepTimerTime:?];
    }

    v161 = v107;
    v108 = [(MRCommandInfo *)self options];
    v109 = [v108 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerStopMode"];

    if (v109)
    {
      -[_MRCommandInfoProtobuf setSleepTimerStopMode:](v3, "setSleepTimerStopMode:", [v109 unsignedIntegerValue]);
    }

    v160 = v109;
    v110 = [(MRCommandInfo *)self options];
    v111 = [v110 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSleepTimerFireDate"];

    if (v111)
    {
      [v111 doubleValue];
      [(_MRCommandInfoProtobuf *)v3 setSleepTimerFireDate:?];
    }

    v159 = v111;
    v112 = [(MRCommandInfo *)self options];
    v113 = [v112 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoLastSectionContentItemID"];

    if (v113)
    {
      [(_MRCommandInfoProtobuf *)v3 setLastSectionContentItemID:v113];
    }

    v158 = v113;
    v114 = [(MRCommandInfo *)self options];
    v115 = [v114 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoTransitionStyle"];

    v116 = v115;
    v117 = v179;
    if (v116)
    {
      [v116 doubleValue];
      [(_MRCommandInfoProtobuf *)v3 setTransitionStyle:v118];
    }

    v157 = v116;
    v119 = [(MRCommandInfo *)self options];
    v120 = [v119 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoDialogOptions"];

    if (v120)
    {
      v121 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v120);
      [(_MRCommandInfoProtobuf *)v3 setDialogOptions:v121];
    }

    v156 = v120;
    v122 = [(MRCommandInfo *)self options];
    v123 = [v122 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoPlaybackSessionRequirements"];

    if (v123)
    {
      v124 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v123);
      [(_MRCommandInfoProtobuf *)v3 setPlaybackSessionRequirements:v124];
    }

    v155 = v123;
    v162 = v105;
    v125 = [(MRCommandInfo *)self options];
    v126 = [v125 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportsReferencePosition"];

    v127 = v186;
    if (v126)
    {
      -[_MRCommandInfoProtobuf setSupportsReferencePosition:](v3, "setSupportsReferencePosition:", [v126 BOOLValue]);
    }

    v154 = v126;
    v128 = [(MRCommandInfo *)self options];
    v129 = [v128 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionIdentifiers"];

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
  v2 = [(MRCommandInfo *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRCommandInfo *)v5 command];
      if (v6 == [(MRCommandInfo *)self command]&& (v7 = [(MRCommandInfo *)v5 isEnabled], v7 == [(MRCommandInfo *)self isEnabled]))
      {
        v9 = [(MRCommandInfo *)v5 options];
        v10 = [(MRCommandInfo *)self options];
        if (v9 == v10)
        {
          v8 = 1;
        }

        else
        {
          v11 = [(MRCommandInfo *)v5 options];
          v12 = [(MRCommandInfo *)self options];
          v8 = [v11 isEqualToDictionary:v12];
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
  v3 = [(MRCommandInfo *)self command];
  if ([(MRCommandInfo *)self isEnabled])
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

@end