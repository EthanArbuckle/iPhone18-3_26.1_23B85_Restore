@interface MRNowPlayingPlayerResponse
- (BOOL)deviceHasPlayedRecently;
- (BOOL)playerHasPlayedRecently;
- (MRNowPlayingPlayerResponse)initWithCoder:(id)coder;
- (MRPlayerPath)playerPath;
- (NSArray)proxiableSupportedCommands;
- (NSDate)deviceLastPlayingDate;
- (NSDate)playerLastPlayingDate;
- (NSDictionary)debugDictionaryRepresentation;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)shortDictionaryRepresentation;
- (float)playbackRate;
- (id)_mostRelevantItem;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (int)repeatMode;
- (int)shuffleMode;
- (void)encodeWithCoder:(id)coder;
- (void)setPlayerPath:(id)path;
@end

@implementation MRNowPlayingPlayerResponse

- (BOOL)playerHasPlayedRecently
{
  playerLastPlayingDate = [(MRNowPlayingPlayerResponse *)self playerLastPlayingDate];
  [playerLastPlayingDate timeIntervalSinceNow];
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
    date = [MEMORY[0x1E695DF00] date];
  }

  else
  {
    playerLastPlayingDate = self->_playerLastPlayingDate;
    if (playerLastPlayingDate)
    {
      date = playerLastPlayingDate;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] distantPast];
    }
  }

  return date;
}

- (BOOL)deviceHasPlayedRecently
{
  deviceLastPlayingDate = [(MRNowPlayingPlayerResponse *)self deviceLastPlayingDate];
  [deviceLastPlayingDate timeIntervalSinceNow];
  v4 = -v3;
  v5 = +[MRUserSettings currentSettings];
  [v5 mediaRecentlyPlayedInterval];
  v7 = v6 > v4;

  return v7;
}

- (NSDate)deviceLastPlayingDate
{
  v59 = *MEMORY[0x1E69E9840];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v6 = [MRPlayerPath alloc];
  playerPath = [(MRNowPlayingPlayerResponse *)self playerPath];
  origin = [playerPath origin];
  v9 = [(MRPlayerPath *)v6 initWithOrigin:origin client:0 player:0];

  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]", uUIDString];
  playerPath2 = [(MRNowPlayingPlayerResponse *)self playerPath];

  if (playerPath2)
  {
    playerPath3 = [(MRNowPlayingPlayerResponse *)self playerPath];
    [(__CFString *)v10 appendFormat:@" for %@", playerPath3];
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

  playerPath4 = [(MRNowPlayingPlayerResponse *)self playerPath];

  v23 = _MRLogForCategory(0xAuLL);
  v24 = v23;
  if (!v16 && v21)
  {
    v25 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (playerPath4)
    {
      if (v25)
      {
        playerPath5 = [(MRNowPlayingPlayerResponse *)self playerPath];
        date2 = [MEMORY[0x1E695DF00] date];
        [date2 timeIntervalSinceDate:date];
        *buf = 138544386;
        v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
        v51 = 2114;
        v52 = uUIDString;
        v53 = 2112;
        v54 = v21;
        v55 = 2114;
        v56 = playerPath5;
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

    playerPath5 = [MEMORY[0x1E695DF00] date];
    [playerPath5 timeIntervalSinceDate:date];
    *buf = 138544130;
    v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
    v51 = 2114;
    v52 = uUIDString;
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
    if (playerPath4)
    {
      if (v32)
      {
        playerPath6 = [(MRNowPlayingPlayerResponse *)self playerPath];
        date3 = [MEMORY[0x1E695DF00] date];
        [date3 timeIntervalSinceDate:date];
        *buf = 138544386;
        v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
        v51 = 2114;
        v52 = uUIDString;
        v53 = 2114;
        v54 = v16;
        v55 = 2114;
        v56 = playerPath6;
        v57 = 2048;
        v58 = v35;
        _os_log_error_impl(&dword_1A2860000, v24, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);

LABEL_31:
      }
    }

    else if (v32)
    {
      playerPath6 = [MEMORY[0x1E695DF00] date];
      [playerPath6 timeIntervalSinceDate:date];
      *buf = 138544130;
      v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
      v51 = 2114;
      v52 = uUIDString;
      v53 = 2114;
      v54 = v16;
      v55 = 2048;
      v56 = v47;
      _os_log_error_impl(&dword_1A2860000, v24, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_31;
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    goto LABEL_27;
  }

  v36 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (!playerPath4)
  {
    if (!v36)
    {
      goto LABEL_26;
    }

    playerPath5 = [MEMORY[0x1E695DF00] date];
    [playerPath5 timeIntervalSinceDate:date];
    *buf = 138543874;
    v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
    v51 = 2114;
    v52 = uUIDString;
    v53 = 2048;
    v54 = v43;
    v39 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v40 = v24;
    v41 = 32;
    goto LABEL_24;
  }

  if (v36)
  {
    playerPath5 = [(MRNowPlayingPlayerResponse *)self playerPath];
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    *buf = 138544130;
    v50 = @"[MRNowPlayingPlayerResponse deviceLastPlayingDate]";
    v51 = 2114;
    v52 = uUIDString;
    v53 = 2114;
    v54 = playerPath5;
    v55 = 2048;
    v56 = v37;
    v29 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v30 = v24;
    v31 = 42;
    goto LABEL_17;
  }

LABEL_26:

  distantPast = v15;
LABEL_27:
  v44 = distantPast;

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

- (NSArray)proxiableSupportedCommands
{
  supportedCommands = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  v3 = [supportedCommands mr_filter:&__block_literal_global_86];

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
  supportedCommands = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  v4 = [supportedCommands msv_firstWhere:&__block_literal_global_27_2];

  options = [v4 options];
  v6 = [options objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoShuffleMode"];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    _mostRelevantItem = [(MRNowPlayingPlayerResponse *)self _mostRelevantItem];
    nowPlayingInfo = [_mostRelevantItem nowPlayingInfo];
    v10 = [nowPlayingInfo objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoShuffleMode"];
    intValue = [v10 intValue];
  }

  return intValue;
}

BOOL __41__MRNowPlayingPlayerResponse_shuffleMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 command] == 26 || objc_msgSend(v2, "command") == 6;

  return v3;
}

- (int)repeatMode
{
  supportedCommands = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  v4 = [supportedCommands msv_firstWhere:&__block_literal_global_29_3];

  options = [v4 options];
  v6 = [options objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoRepeatMode"];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    _mostRelevantItem = [(MRNowPlayingPlayerResponse *)self _mostRelevantItem];
    nowPlayingInfo = [_mostRelevantItem nowPlayingInfo];
    v10 = [nowPlayingInfo objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRepeatMode"];
    intValue = [v10 intValue];
  }

  return intValue;
}

BOOL __40__MRNowPlayingPlayerResponse_repeatMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 command] == 25 || objc_msgSend(v2, "command") == 7;

  return v3;
}

- (float)playbackRate
{
  _mostRelevantItem = [(MRNowPlayingPlayerResponse *)self _mostRelevantItem];
  metadata = [_mostRelevantItem metadata];
  [metadata playbackRate];
  v5 = v4;

  return v5;
}

- (MRPlayerPath)playerPath
{
  destination = [(MRNowPlayingPlayerResponse *)self destination];
  playerPath = [destination playerPath];

  return playerPath;
}

- (void)setPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [[MRDestination alloc] initWithPlayerPath:pathCopy];

  [(MRNowPlayingPlayerResponse *)self setDestination:v5];
}

- (NSDictionary)shortDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  playerPath = [(MRNowPlayingPlayerResponse *)self playerPath];
  [v3 setObject:playerPath forKeyedSubscript:@"playerPath"];

  playbackQueue = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  hasLocation = [playbackQueue hasLocation];

  if (hasLocation)
  {
    playbackQueue2 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
    v8 = [playbackQueue2 contentItemWithOffset:0];

    if (v8)
    {
      v9 = MRContentItemCopyMinimalReadableDescription(v8);
      [v3 setObject:v9 forKeyedSubscript:@"nowPlayingItemIdentifier"];

      v10 = MEMORY[0x1E696AD98];
      [(MRNowPlayingPlayerResponse *)self playbackRate];
      v11 = [v10 numberWithFloat:?];
      [v3 setObject:v11 forKeyedSubscript:@"playbackRate"];

      metadata = [v8 metadata];
      title = [metadata title];
      [v3 setObject:title forKeyedSubscript:@"title"];
    }
  }

  supportedCommands = [(MRNowPlayingPlayerResponse *)self supportedCommands];

  if (supportedCommands)
  {
    v15 = MEMORY[0x1E696AD98];
    supportedCommands2 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(supportedCommands2, "count")}];
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
  shortDictionaryRepresentation = [(MRNowPlayingPlayerResponse *)self shortDictionaryRepresentation];
  v4 = [shortDictionaryRepresentation mutableCopy];

  playbackQueue = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  queueIdentifier = [playbackQueue queueIdentifier];
  [v4 setObject:queueIdentifier forKeyedSubscript:@"queueIdentifier"];

  playbackQueue2 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  properties = [playbackQueue2 properties];
  [v4 setObject:properties forKeyedSubscript:@"queueProperties"];

  playbackQueue3 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  auxiliaryNowPlayingInfo = [playbackQueue3 auxiliaryNowPlayingInfo];
  [v4 setObject:auxiliaryNowPlayingInfo forKeyedSubscript:@"auxiliaryNowPlayingInfo"];

  playbackQueue4 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  LODWORD(auxiliaryNowPlayingInfo) = [playbackQueue4 hasLocation];

  if (auxiliaryNowPlayingInfo)
  {
    playbackQueue5 = [(MRNowPlayingPlayerResponse *)self playbackQueue];
    v13 = [playbackQueue5 contentItemWithOffset:0];

    if (v13)
    {
      metadata = [v13 metadata];
      hasElapsedTime = [metadata hasElapsedTime];

      if (hasElapsedTime)
      {
        v16 = MEMORY[0x1E696AD98];
        metadata2 = [v13 metadata];
        [metadata2 calculatedPlaybackPosition];
        v18 = [v16 numberWithDouble:?];
        [v4 setObject:v18 forKeyedSubscript:@"calculateElapsedTime"];
      }

      metadata3 = [v13 metadata];
      hasDuration = [metadata3 hasDuration];

      if (hasDuration)
      {
        v21 = MEMORY[0x1E696AD98];
        metadata4 = [v13 metadata];
        [metadata4 duration];
        v23 = [v21 numberWithDouble:?];
        [v4 setObject:v23 forKeyedSubscript:@"duration"];
      }
    }
  }

  supportedCommands = [(MRNowPlayingPlayerResponse *)self supportedCommands];

  if (supportedCommands)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    supportedCommands2 = [(MRNowPlayingPlayerResponse *)self supportedCommands];
    v26 = [supportedCommands2 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
            objc_enumerationMutation(supportedCommands2);
          }

          v31 = *(*(&v40 + 1) + 8 * i);
          if ([v31 command] == 133 && objc_msgSend(v31, "isEnabled"))
          {
            [v4 setObject:v29 forKeyedSubscript:@"migrationEnabled"];
            options = [v31 options];
            [v4 setObject:options forKeyedSubscript:@"migrationTypes"];
          }
        }

        v27 = [supportedCommands2 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v27);
    }
  }

  if (self->_playerLastPlayingDate)
  {
    playerLastPlayingDate = [(MRNowPlayingPlayerResponse *)self playerLastPlayingDate];
    [v4 setObject:playerLastPlayingDate forKeyedSubscript:@"playerLastPlayingDate"];
  }

  if ([(MRNowPlayingPlayerResponse *)self playbackState])
  {
    v34 = MRMediaRemoteCopyPlaybackStateDescription([(MRNowPlayingPlayerResponse *)self playbackState]);
    [v4 setObject:v34 forKeyedSubscript:@"playbackState"];
  }

  clientProperties = [(MRNowPlayingPlayerResponse *)self clientProperties];
  [v4 setObject:clientProperties forKeyedSubscript:@"clientProperties"];

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
  dictionaryRepresentation = [(MRNowPlayingPlayerResponse *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  playbackQueue = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  [v4 setObject:playbackQueue forKeyedSubscript:@"playbackQueue"];

  supportedCommands = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  [v4 setObject:supportedCommands forKeyedSubscript:@"supportedCommands"];

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  shortDictionaryRepresentation = [(MRNowPlayingPlayerResponse *)self shortDictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, shortDictionaryRepresentation];

  return v6;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  debugDictionaryRepresentation = [(MRNowPlayingPlayerResponse *)self debugDictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, debugDictionaryRepresentation];

  return v6;
}

- (id)_mostRelevantItem
{
  if (![(MRPlaybackQueue *)self->_playbackQueue hasLocation]|| ([(MRPlaybackQueue *)self->_playbackQueue contentItemWithOffset:0], (firstObject = objc_claimAutoreleasedReturnValue()) == 0))
  {
    contentItems = [(MRPlaybackQueue *)self->_playbackQueue contentItems];
    firstObject = [contentItems firstObject];
  }

  return firstObject;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  destination = [(MRNowPlayingPlayerResponse *)self destination];
  v7 = [destination copyWithZone:zone];
  [v5 setDestination:v7];

  supportedCommands = [(MRNowPlayingPlayerResponse *)self supportedCommands];
  v9 = [supportedCommands copyWithZone:zone];
  [v5 setSupportedCommands:v9];

  [v5 setPlaybackState:{-[MRNowPlayingPlayerResponse playbackState](self, "playbackState")}];
  playbackQueue = [(MRNowPlayingPlayerResponse *)self playbackQueue];
  v11 = [playbackQueue copyWithZone:zone];
  [v5 setPlaybackQueue:v11];

  playerLastPlayingDate = [(MRNowPlayingPlayerResponse *)self playerLastPlayingDate];
  v13 = [playerLastPlayingDate copyWithZone:zone];
  [v5 setPlayerLastPlayingDate:v13];

  clientProperties = [(MRNowPlayingPlayerResponse *)self clientProperties];
  v15 = [clientProperties copyWithZone:zone];
  [v5 setClientProperties:v15];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  playbackQueue = self->_playbackQueue;
  coderCopy = coder;
  [coderCopy encodeObject:playbackQueue forKey:@"playbackQueue"];
  [coderCopy encodeObject:self->_destination forKey:@"destination"];
  [coderCopy encodeInt:self->_playbackState forKey:@"playbackState"];
  [coderCopy encodeObject:self->_playerLastPlayingDate forKey:@"playerLastPlayingDate"];
  v5 = [MRCommandInfo dataFromCommandInfos:self->_supportedCommands];
  [coderCopy encodeObject:v5 forKey:@"supportedCommandsData"];

  [coderCopy encodeObject:self->_clientProperties forKey:@"clientProperties"];
}

- (MRNowPlayingPlayerResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MRNowPlayingPlayerResponse;
  v5 = [(MRNowPlayingPlayerResponse *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playbackQueue"];
    playbackQueue = v5->_playbackQueue;
    v5->_playbackQueue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v8;

    v5->_playbackState = [coderCopy decodeIntForKey:@"playbackState"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerLastPlayingDate"];
    playerLastPlayingDate = v5->_playerLastPlayingDate;
    v5->_playerLastPlayingDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportedCommandsData"];
    v13 = [MRCommandInfo commandInfosFromData:v12];
    supportedCommands = v5->_supportedCommands;
    v5->_supportedCommands = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProperties"];
    clientProperties = v5->_clientProperties;
    v5->_clientProperties = v15;
  }

  return v5;
}

@end