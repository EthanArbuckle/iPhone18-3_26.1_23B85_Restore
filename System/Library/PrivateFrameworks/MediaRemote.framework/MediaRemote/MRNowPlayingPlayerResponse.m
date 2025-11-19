@interface MRNowPlayingPlayerResponse
- (BOOL)deviceHasPlayedRecently;
- (BOOL)playerHasPlayedRecently;
- (MRNowPlayingPlayerResponse)initWithCoder:(id)a3;
- (MRPlayerPath)playerPath;
- (NSArray)proxiableSupportedCommands;
- (NSDate)deviceLastPlayingDate;
- (NSDate)playerLastPlayingDate;
- (NSDictionary)debugDictionaryRepresentation;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)shortDictionaryRepresentation;
- (float)playbackRate;
- (id)_mostRelevantItem;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (int)repeatMode;
- (int)shuffleMode;
- (void)encodeWithCoder:(id)a3;
- (void)setPlayerPath:(id)a3;
@end

@implementation MRNowPlayingPlayerResponse

- (BOOL)playerHasPlayedRecently
{
  v2 = [(MRNowPlayingPlayerResponse *)self playerLastPlayingDate];
  [v2 timeIntervalSinceNow];
  v4 = -v3;
  v5 = +[MRUserSettings currentSettings];
  [v5 mediaRecentlyPlayedInterval];
  v7 = v6 > v4;

  return v7;
}

- (NSDate)playerLastPlayingDate
{
  if (MRMediaRemotePlaybackStateIsAdvancing([(MRNowPlayingPlayerResponse *)self playbackState]))
  {
    v3 = [MEMORY[0x1E695DF00] date];
  }

  else
  {
    playerLastPlayingDate = self->_playerLastPlayingDate;
    if (playerLastPlayingDate)
    {
      v3 = playerLastPlayingDate;
    }

    else
    {
      v3 = [MEMORY[0x1E695DF00] distantPast];
    }
  }

  return v3;
}

- (BOOL)deviceHasPlayedRecently
{
  v2 = [(MRNowPlayingPlayerResponse *)self deviceLastPlayingDate];
  [v2 timeIntervalSinceNow];
  v4 = -v3;
  v5 = +[MRUserSettings currentSettings];
  [v5 mediaRecentlyPlayedInterval];
  v7 = v6 > v4;

  return v7;
}

- (NSDate)deviceLastPlayingDate
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [MRPlayerPath alloc];
  v7 = [(MRNowPlayingPlayerResponse *)self playerPath];
  v8 = [v7 origin];
  v9 = [(MRPlayerPath *)v6 initWithOrigin:v8 client:0 player:0];

  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]", v4];
  v11 = [(MRNowPlayingPlayerResponse *)self playerPath];

  if (v11)
  {
    v12 = [(MRNowPlayingPlayerResponse *)self playerPath];
    [(__CFString *)v10 appendFormat:@" for %@", v12];
  }

  v13 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v10;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v14 = MRGetSharedService();
  v48 = 0;
  v15 = MRMediaRemoteServiceGetLastPlayingDateForPlayerSync(v14, v9, &v48);
  v16 = v48;
  v17 = MEMORY[0x1E696AEC0];
  v18 = MEMORY[0x1E696AD98];
  [v15 timeIntervalSinceNow];
  v20 = [v18 numberWithDouble:-v19];
  v21 = [v17 stringWithFormat:@"deviceLastPlayingDate = %@. Time since playing = %@ seconds.", v15, v20];

  v22 = [(MRNowPlayingPlayerResponse *)self playerPath];

  v23 = _MRLogForCategory(0xAuLL);
  v24 = v23;
  if (!v16 && v21)
  {
    v25 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v25)
      {
        v26 = [(MRNowPlayingPlayerResponse *)self playerPath];
        v27 = [MEMORY[0x1E695DF00] date];
        [v27 timeIntervalSinceDate:v5];
        *buf = 138544386;
        v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
        v51 = 2114;
        v52 = v4;
        v53 = 2112;
        v54 = v21;
        v55 = 2114;
        v56 = v26;
        v57 = 2048;
        v58 = v28;
        v29 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v30 = v24;
        v31 = 52;
LABEL_17:
        _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);

LABEL_25:
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    if (!v25)
    {
      goto LABEL_26;
    }

    v26 = [MEMORY[0x1E695DF00] date];
    [v26 timeIntervalSinceDate:v5];
    *buf = 138544130;
    v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
    v51 = 2114;
    v52 = v4;
    v53 = 2112;
    v54 = v21;
    v55 = 2048;
    v56 = v38;
    v39 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v40 = v24;
    v41 = 42;
LABEL_24:
    _os_log_impl(&dword_1A2860000, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
    goto LABEL_25;
  }

  if (v16)
  {
    v32 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v32)
      {
        v33 = [(MRNowPlayingPlayerResponse *)self playerPath];
        v34 = [MEMORY[0x1E695DF00] date];
        [v34 timeIntervalSinceDate:v5];
        *buf = 138544386;
        v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
        v51 = 2114;
        v52 = v4;
        v53 = 2114;
        v54 = v16;
        v55 = 2114;
        v56 = v33;
        v57 = 2048;
        v58 = v35;
        _os_log_error_impl(&dword_1A2860000, v24, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);

LABEL_31:
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E695DF00] date];
      [v33 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
      v51 = 2114;
      v52 = v4;
      v53 = 2114;
      v54 = v16;
      v55 = 2048;
      v56 = v47;
      _os_log_error_impl(&dword_1A2860000, v24, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_31;
    }

    v42 = [MEMORY[0x1E695DF00] distantPast];
    goto LABEL_27;
  }

  v36 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (!v22)
  {
    if (!v36)
    {
      goto LABEL_26;
    }

    v26 = [MEMORY[0x1E695DF00] date];
    [v26 timeIntervalSinceDate:v5];
    *buf = 138543874;
    v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
    v51 = 2114;
    v52 = v4;
    v53 = 2048;
    v54 = v43;
    v39 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v40 = v24;
    v41 = 32;
    goto LABEL_24;
  }

  if (v36)
  {
    v26 = [(MRNowPlayingPlayerResponse *)self playerPath];
    v27 = [MEMORY[0x1E695DF00] date];
    [v27 timeIntervalSinceDate:v5];
    *buf = 138544130;
    v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
    v51 = 2114;
    v52 = v4;
    v53 = 2114;
    v54 = v26;
    v55 = 2048;
    v56 = v37;
    v29 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v30 = v24;
    v31 = 42;
    goto LABEL_17;
  }

LABEL_26:

  v42 = v15;
LABEL_27:
  v44 = v42;

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

- (NSArray)proxiableSupportedCommands
{
  v2 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  v3 = [v2 mr_filter:&__block_literal_global_86];

  return v3;
}

BOOL __56__MRNowPlayingPlayerResponse_proxiableSupportedCommands__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 options];
  v3 = [v2 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoDoNotProxy"];
  v4 = v3 == 0;

  return v4;
}

- (int)shuffleMode
{
  v3 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  v4 = [v3 msv_firstWhere:&__block_literal_global_27_2];

  v5 = [v4 options];
  v6 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoShuffleMode"];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v8 = [(MRNowPlayingPlayerResponse *)self _mostRelevantItem];
    v9 = [v8 nowPlayingInfo];
    v10 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoShuffleMode"];
    v7 = [v10 intValue];
  }

  return v7;
}

BOOL __41__MRNowPlayingPlayerResponse_shuffleMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 command] == 26 || objc_msgSend(v2, "command") == 6;

  return v3;
}

- (int)repeatMode
{
  v3 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  v4 = [v3 msv_firstWhere:&__block_literal_global_29_3];

  v5 = [v4 options];
  v6 = [v5 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoRepeatMode"];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v8 = [(MRNowPlayingPlayerResponse *)self _mostRelevantItem];
    v9 = [v8 nowPlayingInfo];
    v10 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRepeatMode"];
    v7 = [v10 intValue];
  }

  return v7;
}

BOOL __40__MRNowPlayingPlayerResponse_repeatMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 command] == 25 || objc_msgSend(v2, "command") == 7;

  return v3;
}

- (float)playbackRate
{
  v2 = [(MRNowPlayingPlayerResponse *)self _mostRelevantItem];
  v3 = [v2 metadata];
  [v3 playbackRate];
  v5 = v4;

  return v5;
}

- (MRPlayerPath)playerPath
{
  v2 = [(MRNowPlayingPlayerResponse *)self destination];
  v3 = [v2 playerPath];

  return v3;
}

- (void)setPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [[MRDestination alloc] initWithPlayerPath:v4];

  [(MRNowPlayingPlayerResponse *)self setDestination:v5];
}

- (NSDictionary)shortDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MRNowPlayingPlayerResponse *)self playerPath];
  [v3 setObject:v4 forKeyedSubscript:@"playerPath"];

  v5 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  v6 = [v5 hasLocation];

  if (v6)
  {
    v7 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
    v8 = [v7 contentItemWithOffset:0];

    if (v8)
    {
      v9 = MRContentItemCopyMinimalReadableDescription(v8);
      [v3 setObject:v9 forKeyedSubscript:@"nowPlayingItemIdentifier"];

      v10 = MEMORY[0x1E696AD98];
      [(MRNowPlayingPlayerResponse *)self playbackRate];
      v11 = [v10 numberWithFloat:?];
      [v3 setObject:v11 forKeyedSubscript:@"playbackRate"];

      v12 = [v8 metadata];
      v13 = [v12 title];
      [v3 setObject:v13 forKeyedSubscript:@"title"];
    }
  }

  v14 = [(MRNowPlayingPlayerResponse *)self supportedCommands];

  if (v14)
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    [v3 setObject:v17 forKeyedSubscript:@"supportedCommandsCount"];
  }

  if ([(MRNowPlayingPlayerResponse *)self playbackState])
  {
    v18 = MRMediaRemoteCopyPlaybackStateDescription([(MRNowPlayingPlayerResponse *)self playbackState]);
    [v3 setObject:v18 forKeyedSubscript:@"playbackState"];
  }

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(MRNowPlayingPlayerResponse *)self shortDictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  v6 = [v5 queueIdentifier];
  [v4 setObject:v6 forKeyedSubscript:@"queueIdentifier"];

  v7 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  v8 = [v7 properties];
  [v4 setObject:v8 forKeyedSubscript:@"queueProperties"];

  v9 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  v10 = [v9 auxiliaryNowPlayingInfo];
  [v4 setObject:v10 forKeyedSubscript:@"auxiliaryNowPlayingInfo"];

  v11 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  LODWORD(v10) = [v11 hasLocation];

  if (v10)
  {
    v12 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
    v13 = [v12 contentItemWithOffset:0];

    if (v13)
    {
      v14 = [v13 metadata];
      v15 = [v14 hasElapsedTime];

      if (v15)
      {
        v16 = MEMORY[0x1E696AD98];
        v17 = [v13 metadata];
        [v17 calculatedPlaybackPosition];
        v18 = [v16 numberWithDouble:?];
        [v4 setObject:v18 forKeyedSubscript:@"calculateElapsedTime"];
      }

      v19 = [v13 metadata];
      v20 = [v19 hasDuration];

      if (v20)
      {
        v21 = MEMORY[0x1E696AD98];
        v22 = [v13 metadata];
        [v22 duration];
        v23 = [v21 numberWithDouble:?];
        [v4 setObject:v23 forKeyedSubscript:@"duration"];
      }
    }
  }

  v24 = [(MRNowPlayingPlayerResponse *)self supportedCommands];

  if (v24)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v41;
      v29 = MEMORY[0x1E695E118];
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v40 + 1) + 8 * i);
          if ([v31 command] == 133 && objc_msgSend(v31, "isEnabled"))
          {
            [v4 setObject:v29 forKeyedSubscript:@"migrationEnabled"];
            v32 = [v31 options];
            [v4 setObject:v32 forKeyedSubscript:@"migrationTypes"];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v27);
    }
  }

  if (self->_playerLastPlayingDate)
  {
    v33 = [(MRNowPlayingPlayerResponse *)self playerLastPlayingDate];
    [v4 setObject:v33 forKeyedSubscript:@"playerLastPlayingDate"];
  }

  if ([(MRNowPlayingPlayerResponse *)self playbackState])
  {
    v34 = MRMediaRemoteCopyPlaybackStateDescription([(MRNowPlayingPlayerResponse *)self playbackState]);
    [v4 setObject:v34 forKeyedSubscript:@"playbackState"];
  }

  v35 = [(MRNowPlayingPlayerResponse *)self clientProperties];
  [v4 setObject:v35 forKeyedSubscript:@"clientProperties"];

  if ([(MRNowPlayingPlayerResponse *)self repeatMode]>= 1)
  {
    v36 = MRMediaRemoteCopyRepeatModeDescription([(MRNowPlayingPlayerResponse *)self repeatMode]);
    [v4 setObject:v36 forKeyedSubscript:@"repeatMode"];
  }

  if ([(MRNowPlayingPlayerResponse *)self shuffleMode]>= 1)
  {
    v37 = MRMediaRemoteCopyShuffleModeDescription([(MRNowPlayingPlayerResponse *)self shuffleMode]);
    [v4 setObject:v37 forKeyedSubscript:@"shuffleMode"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSDictionary)debugDictionaryRepresentation
{
  v3 = [(MRNowPlayingPlayerResponse *)self dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  [v4 setObject:v5 forKeyedSubscript:@"playbackQueue"];

  v6 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  [v4 setObject:v6 forKeyedSubscript:@"supportedCommands"];

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRNowPlayingPlayerResponse *)self shortDictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRNowPlayingPlayerResponse *)self debugDictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)_mostRelevantItem
{
  if (![(MRPlaybackQueue *)self->_playbackQueue hasLocation]|| ([(MRPlaybackQueue *)self->_playbackQueue contentItemWithOffset:0], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(MRPlaybackQueue *)self->_playbackQueue contentItems];
    v3 = [v4 firstObject];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MRNowPlayingPlayerResponse *)self destination];
  v7 = [v6 copyWithZone:a3];
  [v5 setDestination:v7];

  v8 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  v9 = [v8 copyWithZone:a3];
  [v5 setSupportedCommands:v9];

  [v5 setPlaybackState:{-[MRNowPlayingPlayerResponse playbackState](self, "playbackState")}];
  v10 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  v11 = [v10 copyWithZone:a3];
  [v5 setPlaybackQueue:v11];

  v12 = [(MRNowPlayingPlayerResponse *)self playerLastPlayingDate];
  v13 = [v12 copyWithZone:a3];
  [v5 setPlayerLastPlayingDate:v13];

  v14 = [(MRNowPlayingPlayerResponse *)self clientProperties];
  v15 = [v14 copyWithZone:a3];
  [v5 setClientProperties:v15];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  playbackQueue = self->_playbackQueue;
  v6 = a3;
  [v6 encodeObject:playbackQueue forKey:@"playbackQueue"];
  [v6 encodeObject:self->_destination forKey:@"destination"];
  [v6 encodeInt:self->_playbackState forKey:@"playbackState"];
  [v6 encodeObject:self->_playerLastPlayingDate forKey:@"playerLastPlayingDate"];
  v5 = [MRCommandInfo dataFromCommandInfos:self->_supportedCommands];
  [v6 encodeObject:v5 forKey:@"supportedCommandsData"];

  [v6 encodeObject:self->_clientProperties forKey:@"clientProperties"];
}

- (MRNowPlayingPlayerResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MRNowPlayingPlayerResponse;
  v5 = [(MRNowPlayingPlayerResponse *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playbackQueue"];
    playbackQueue = v5->_playbackQueue;
    v5->_playbackQueue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v8;

    v5->_playbackState = [v4 decodeIntForKey:@"playbackState"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playerLastPlayingDate"];
    playerLastPlayingDate = v5->_playerLastPlayingDate;
    v5->_playerLastPlayingDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportedCommandsData"];
    v13 = [MRCommandInfo commandInfosFromData:v12];
    supportedCommands = v5->_supportedCommands;
    v5->_supportedCommands = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientProperties"];
    clientProperties = v5->_clientProperties;
    v5->_clientProperties = v15;
  }

  return v5;
}

@end