@interface _MRPlaybackSessionMigrateRequestProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEndpointOptions:(id)a3;
- (int)StringAsPlaybackState:(id)a3;
- (int)StringAsPlayerOptions:(id)a3;
- (int)StringAsRecipeType:(id)a3;
- (int)endpointOptions;
- (int)playbackState;
- (int)playerOptions;
- (int)recipeType;
- (unint64_t)hash;
- (void)addEvents:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAllowFadeTransition:(BOOL)a3;
- (void)setHasDestinationTypes:(BOOL)a3;
- (void)setHasEndpointOptions:(BOOL)a3;
- (void)setHasOriginatorType:(BOOL)a3;
- (void)setHasPlaybackRate:(BOOL)a3;
- (void)setHasPlaybackState:(BOOL)a3;
- (void)setHasPlayerOptions:(BOOL)a3;
- (void)setHasRecipeType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRPlaybackSessionMigrateRequestProtobuf

- (int)playerOptions
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_playerOptions;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPlayerOptions:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)StringAsPlayerOptions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RestoreDestinationPlaybackState"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PlayDestination"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PauseSource"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RestorePlaybackPosition"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"RestorePlaybackRate"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)endpointOptions
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_endpointOptions;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEndpointOptions:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsEndpointOptions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UpdateActiveEndpoint"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FallbackToAddOutputDevices"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AllowMigrateToGroup"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AllowMigrateFromGroup"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addEvents:(id)a3
{
  v4 = a3;
  events = self->_events;
  v8 = v4;
  if (!events)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_events;
    self->_events = v6;

    v4 = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:v4];
}

- (int)playbackState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_playbackState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPlaybackState:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsPlaybackState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Playing"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Paused"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Stopped"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Interrupted"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Seeking"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPlaybackRate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasAllowFadeTransition:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasOriginatorType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDestinationTypes:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)recipeType
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_recipeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRecipeType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsRecipeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotPossible"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Legacy"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OneShot"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPlaybackSessionMigrateRequestProtobuf;
  v4 = [(_MRPlaybackSessionMigrateRequestProtobuf *)&v8 description];
  v5 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  requestID = self->_requestID;
  if (requestID)
  {
    [v3 setObject:requestID forKey:@"requestID"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    playerOptions = self->_playerOptions;
    if (playerOptions > 3)
    {
      switch(playerOptions)
      {
        case 4:
          v8 = @"PauseSource";
          goto LABEL_18;
        case 8:
          v8 = @"RestorePlaybackPosition";
          goto LABEL_18;
        case 16:
          v8 = @"RestorePlaybackRate";
          goto LABEL_18;
      }
    }

    else
    {
      switch(playerOptions)
      {
        case 0:
          v8 = @"None";
          goto LABEL_18;
        case 1:
          v8 = @"RestoreDestinationPlaybackState";
          goto LABEL_18;
        case 2:
          v8 = @"PlayDestination";
LABEL_18:
          [v4 setObject:v8 forKey:@"playerOptions"];

          has = self->_has;
          goto LABEL_19;
      }
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_playerOptions];
    goto LABEL_18;
  }

LABEL_19:
  if ((has & 8) != 0)
  {
    endpointOptions = self->_endpointOptions;
    if (endpointOptions < 9 && ((0x117u >> endpointOptions) & 1) != 0)
    {
      v10 = off_1E76A1820[endpointOptions];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_endpointOptions];
    }

    [v4 setObject:v10 forKey:@"endpointOptions"];
  }

  if ([(NSMutableArray *)self->_events count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v12 = self->_events;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"events"];
  }

  if (*&self->_has)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_playbackPosition];
    [v4 setObject:v18 forKey:@"playbackPosition"];
  }

  contentItem = self->_contentItem;
  if (contentItem)
  {
    v20 = [(_MRContentItemProtobuf *)contentItem dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"contentItem"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v22 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v4 setObject:v22 forKey:@"playerPath"];
  }

  v23 = self->_has;
  if ((v23 & 0x20) != 0)
  {
    playbackState = self->_playbackState;
    if (playbackState >= 6)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_playbackState];
    }

    else
    {
      v25 = off_1E76A1868[playbackState];
    }

    [v4 setObject:v25 forKey:@"playbackState"];

    v23 = self->_has;
  }

  if ((v23 & 2) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_playbackRate];
    [v4 setObject:v26 forKey:@"playbackRate"];
  }

  playbackSessionRequest = self->_playbackSessionRequest;
  if (playbackSessionRequest)
  {
    v28 = [(_MRPlaybackSessionRequestProtobuf *)playbackSessionRequest dictionaryRepresentation];
    [v4 setObject:v28 forKey:@"playbackSessionRequest"];
  }

  v29 = self->_has;
  if ((v29 & 0x100) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowFadeTransition];
    [v4 setObject:v38 forKey:@"allowFadeTransition"];

    v29 = self->_has;
    if ((v29 & 0x10) == 0)
    {
LABEL_51:
      if ((v29 & 4) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else if ((v29 & 0x10) == 0)
  {
    goto LABEL_51;
  }

  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_originatorType];
  [v4 setObject:v39 forKey:@"originatorType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_52:
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_destinationTypes];
    [v4 setObject:v30 forKey:@"destinationTypes"];
  }

LABEL_53:
  initiator = self->_initiator;
  if (initiator)
  {
    [v4 setObject:initiator forKey:@"initiator"];
  }

  resolvedPlayerPath = self->_resolvedPlayerPath;
  if (resolvedPlayerPath)
  {
    v33 = [(_MRNowPlayingPlayerPathProtobuf *)resolvedPlayerPath dictionaryRepresentation];
    [v4 setObject:v33 forKey:@"resolvedPlayerPath"];
  }

  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  if (setPlaybackSessionCommandStatus)
  {
    v35 = [(_MRSendCommandResultStatusProtobuf *)setPlaybackSessionCommandStatus dictionaryRepresentation];
    [v4 setObject:v35 forKey:@"setPlaybackSessionCommandStatus"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    recipeType = self->_recipeType;
    if (recipeType >= 3)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_recipeType];
    }

    else
    {
      v37 = off_1E76A1898[recipeType];
    }

    [v4 setObject:v37 forKey:@"recipeType"];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    playerOptions = self->_playerOptions;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    endpointOptions = self->_endpointOptions;
    PBDataWriterWriteInt32Field();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_events;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    playbackPosition = self->_playbackPosition;
    PBDataWriterWriteDoubleField();
  }

  if (self->_contentItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = self->_has;
  if ((v15 & 0x20) != 0)
  {
    playbackState = self->_playbackState;
    PBDataWriterWriteInt32Field();
    v15 = self->_has;
  }

  if ((v15 & 2) != 0)
  {
    playbackRate = self->_playbackRate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_playbackSessionRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = self->_has;
  if ((v18 & 0x100) != 0)
  {
    allowFadeTransition = self->_allowFadeTransition;
    PBDataWriterWriteBOOLField();
    v18 = self->_has;
    if ((v18 & 0x10) == 0)
    {
LABEL_28:
      if ((v18 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((v18 & 0x10) == 0)
  {
    goto LABEL_28;
  }

  originatorType = self->_originatorType;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_29:
    destinationTypes = self->_destinationTypes;
    PBDataWriterWriteUint32Field();
  }

LABEL_30:
  if (self->_initiator)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_resolvedPlayerPath)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_setPlaybackSessionCommandStatus)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    recipeType = self->_recipeType;
    PBDataWriterWriteInt32Field();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_requestID)
  {
    [v4 setRequestID:?];
    v4 = v13;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v4 + 19) = self->_playerOptions;
    *(v4 + 62) |= 0x40u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v4 + 9) = self->_endpointOptions;
    *(v4 + 62) |= 8u;
  }

  if ([(_MRPlaybackSessionMigrateRequestProtobuf *)self eventsCount])
  {
    [v13 clearEvents];
    v6 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self eventsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(_MRPlaybackSessionMigrateRequestProtobuf *)self eventsAtIndex:i];
        [v13 addEvents:v9];
      }
    }
  }

  v10 = v13;
  if (*&self->_has)
  {
    *(v13 + 1) = *&self->_playbackPosition;
    *(v13 + 62) |= 1u;
  }

  if (self->_contentItem)
  {
    [v13 setContentItem:?];
    v10 = v13;
  }

  if (self->_playerPath)
  {
    [v13 setPlayerPath:?];
    v10 = v13;
  }

  v11 = self->_has;
  if ((v11 & 0x20) != 0)
  {
    v10[18] = self->_playbackState;
    *(v10 + 62) |= 0x20u;
    v11 = self->_has;
  }

  if ((v11 & 2) != 0)
  {
    *(v10 + 2) = *&self->_playbackRate;
    *(v10 + 62) |= 2u;
  }

  if (self->_playbackSessionRequest)
  {
    [v13 setPlaybackSessionRequest:?];
    v10 = v13;
  }

  v12 = self->_has;
  if ((v12 & 0x100) != 0)
  {
    *(v10 + 120) = self->_allowFadeTransition;
    *(v10 + 62) |= 0x100u;
    v12 = self->_has;
    if ((v12 & 0x10) == 0)
    {
LABEL_25:
      if ((v12 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_25;
  }

  v10[14] = self->_originatorType;
  *(v10 + 62) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_26:
    v10[8] = self->_destinationTypes;
    *(v10 + 62) |= 4u;
  }

LABEL_27:
  if (self->_initiator)
  {
    [v13 setInitiator:?];
    v10 = v13;
  }

  if (self->_resolvedPlayerPath)
  {
    [v13 setResolvedPlayerPath:?];
    v10 = v13;
  }

  if (self->_setPlaybackSessionCommandStatus)
  {
    [v13 setSetPlaybackSessionCommandStatus:?];
    v10 = v13;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v10[22] = self->_recipeType;
    *(v10 + 62) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestID copyWithZone:a3];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 76) = self->_playerOptions;
    *(v5 + 124) |= 0x40u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 36) = self->_endpointOptions;
    *(v5 + 124) |= 8u;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = self->_events;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v31 + 1) + 8 * i) copyWithZone:{a3, v31}];
        [v5 addEvents:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_playbackPosition;
    *(v5 + 124) |= 1u;
  }

  v15 = [(_MRContentItemProtobuf *)self->_contentItem copyWithZone:a3, v31];
  v16 = *(v5 + 24);
  *(v5 + 24) = v15;

  v17 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v18 = *(v5 + 80);
  *(v5 + 80) = v17;

  v19 = self->_has;
  if ((v19 & 0x20) != 0)
  {
    *(v5 + 72) = self->_playbackState;
    *(v5 + 124) |= 0x20u;
    v19 = self->_has;
  }

  if ((v19 & 2) != 0)
  {
    *(v5 + 16) = self->_playbackRate;
    *(v5 + 124) |= 2u;
  }

  v20 = [(_MRPlaybackSessionRequestProtobuf *)self->_playbackSessionRequest copyWithZone:a3];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  v22 = self->_has;
  if ((v22 & 0x100) != 0)
  {
    *(v5 + 120) = self->_allowFadeTransition;
    *(v5 + 124) |= 0x100u;
    v22 = self->_has;
    if ((v22 & 0x10) == 0)
    {
LABEL_20:
      if ((v22 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((v22 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  *(v5 + 56) = self->_originatorType;
  *(v5 + 124) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_21:
    *(v5 + 32) = self->_destinationTypes;
    *(v5 + 124) |= 4u;
  }

LABEL_22:
  v23 = [(NSString *)self->_initiator copyWithZone:a3];
  v24 = *(v5 + 48);
  *(v5 + 48) = v23;

  v25 = [(_MRNowPlayingPlayerPathProtobuf *)self->_resolvedPlayerPath copyWithZone:a3];
  v26 = *(v5 + 104);
  *(v5 + 104) = v25;

  v27 = [(_MRSendCommandResultStatusProtobuf *)self->_setPlaybackSessionCommandStatus copyWithZone:a3];
  v28 = *(v5 + 112);
  *(v5 + 112) = v27;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v5 + 88) = self->_recipeType;
    *(v5 + 124) |= 0x80u;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_68;
  }

  requestID = self->_requestID;
  if (requestID | *(v4 + 12))
  {
    if (![(NSString *)requestID isEqual:?])
    {
      goto LABEL_68;
    }
  }

  has = self->_has;
  v7 = *(v4 + 62);
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_playerOptions != *(v4 + 19))
    {
      goto LABEL_68;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_68;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_endpointOptions != *(v4 + 9))
    {
      goto LABEL_68;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_68;
  }

  events = self->_events;
  if (events | *(v4 + 5))
  {
    if (![(NSMutableArray *)events isEqual:?])
    {
      goto LABEL_68;
    }

    has = self->_has;
  }

  v9 = *(v4 + 62);
  if (has)
  {
    if ((v9 & 1) == 0 || self->_playbackPosition != *(v4 + 1))
    {
      goto LABEL_68;
    }
  }

  else if (v9)
  {
    goto LABEL_68;
  }

  contentItem = self->_contentItem;
  if (contentItem | *(v4 + 3) && ![(_MRContentItemProtobuf *)contentItem isEqual:?])
  {
    goto LABEL_68;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 10))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_68;
    }
  }

  v12 = self->_has;
  v13 = *(v4 + 62);
  if ((v12 & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_playbackState != *(v4 + 18))
    {
      goto LABEL_68;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_68;
  }

  if ((v12 & 2) != 0)
  {
    if ((v13 & 2) == 0 || self->_playbackRate != *(v4 + 2))
    {
      goto LABEL_68;
    }
  }

  else if ((v13 & 2) != 0)
  {
    goto LABEL_68;
  }

  playbackSessionRequest = self->_playbackSessionRequest;
  if (playbackSessionRequest | *(v4 + 8))
  {
    if (![(_MRPlaybackSessionRequestProtobuf *)playbackSessionRequest isEqual:?])
    {
      goto LABEL_68;
    }

    v12 = self->_has;
  }

  v15 = *(v4 + 62);
  if ((v12 & 0x100) == 0)
  {
    if ((*(v4 + 62) & 0x100) == 0)
    {
      goto LABEL_41;
    }

LABEL_68:
    v21 = 0;
    goto LABEL_69;
  }

  if ((*(v4 + 62) & 0x100) == 0)
  {
    goto LABEL_68;
  }

  v16 = *(v4 + 120);
  if (self->_allowFadeTransition)
  {
    if ((*(v4 + 120) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (*(v4 + 120))
  {
    goto LABEL_68;
  }

LABEL_41:
  if ((v12 & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0 || self->_originatorType != *(v4 + 14))
    {
      goto LABEL_68;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_68;
  }

  if ((v12 & 4) != 0)
  {
    if ((v15 & 4) == 0 || self->_destinationTypes != *(v4 + 8))
    {
      goto LABEL_68;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_68;
  }

  initiator = self->_initiator;
  if (initiator | *(v4 + 6) && ![(NSString *)initiator isEqual:?])
  {
    goto LABEL_68;
  }

  resolvedPlayerPath = self->_resolvedPlayerPath;
  if (resolvedPlayerPath | *(v4 + 13))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)resolvedPlayerPath isEqual:?])
    {
      goto LABEL_68;
    }
  }

  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  if (setPlaybackSessionCommandStatus | *(v4 + 14))
  {
    if (![(_MRSendCommandResultStatusProtobuf *)setPlaybackSessionCommandStatus isEqual:?])
    {
      goto LABEL_68;
    }
  }

  v20 = *(v4 + 62);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v20 & 0x80) == 0 || self->_recipeType != *(v4 + 22))
    {
      goto LABEL_68;
    }

    v21 = 1;
  }

  else
  {
    v21 = (v20 & 0x80) == 0;
  }

LABEL_69:

  return v21;
}

- (unint64_t)hash
{
  v35 = [(NSString *)self->_requestID hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v34 = 2654435761 * self->_playerOptions;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = 0;
    if ((has & 8) != 0)
    {
LABEL_3:
      v33 = 2654435761 * self->_endpointOptions;
      goto LABEL_6;
    }
  }

  v33 = 0;
LABEL_6:
  v32 = [(NSMutableArray *)self->_events hash];
  if (*&self->_has)
  {
    playbackPosition = self->_playbackPosition;
    if (playbackPosition < 0.0)
    {
      playbackPosition = -playbackPosition;
    }

    *v4.i64 = floor(playbackPosition + 0.5);
    v8 = (playbackPosition - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  v30 = [(_MRContentItemProtobuf *)self->_contentItem hash];
  v29 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  v12 = self->_has;
  if ((v12 & 0x20) != 0)
  {
    v27 = 2654435761 * self->_playbackState;
    if ((v12 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v27 = 0;
  if ((v12 & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  playbackRate = self->_playbackRate;
  if (playbackRate < 0.0)
  {
    playbackRate = -playbackRate;
  }

  *v10.i64 = floor(playbackRate + 0.5);
  v14 = (playbackRate - *v10.i64) * 1.84467441e19;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

LABEL_22:
  v17 = [(_MRPlaybackSessionRequestProtobuf *)self->_playbackSessionRequest hash];
  v18 = self->_has;
  if ((v18 & 0x100) == 0)
  {
    v19 = 0;
    if ((v18 & 0x10) != 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v20 = 0;
    if ((v18 & 4) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v19 = 2654435761 * self->_allowFadeTransition;
  if ((v18 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v20 = 2654435761 * self->_originatorType;
  if ((v18 & 4) != 0)
  {
LABEL_25:
    v21 = 2654435761 * self->_destinationTypes;
    goto LABEL_29;
  }

LABEL_28:
  v21 = 0;
LABEL_29:
  v22 = [(NSString *)self->_initiator hash];
  v23 = [(_MRNowPlayingPlayerPathProtobuf *)self->_resolvedPlayerPath hash];
  v24 = [(_MRSendCommandResultStatusProtobuf *)self->_setPlaybackSessionCommandStatus hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v25 = 2654435761 * self->_recipeType;
  }

  else
  {
    v25 = 0;
  }

  return v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v16 ^ v17 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
}

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 12))
  {
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self setRequestID:?];
  }

  v5 = *(v4 + 62);
  if ((v5 & 0x40) != 0)
  {
    self->_playerOptions = *(v4 + 19);
    *&self->_has |= 0x40u;
    v5 = *(v4 + 62);
  }

  if ((v5 & 8) != 0)
  {
    self->_endpointOptions = *(v4 + 9);
    *&self->_has |= 8u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(v4 + 5);
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_MRPlaybackSessionMigrateRequestProtobuf *)self addEvents:*(*(&v24 + 1) + 8 * i), v24];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  if (*(v4 + 62))
  {
    self->_playbackPosition = *(v4 + 1);
    *&self->_has |= 1u;
  }

  contentItem = self->_contentItem;
  v12 = *(v4 + 3);
  if (contentItem)
  {
    if (v12)
    {
      [(_MRContentItemProtobuf *)contentItem mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self setContentItem:?];
  }

  playerPath = self->_playerPath;
  v14 = *(v4 + 10);
  if (playerPath)
  {
    if (v14)
    {
      [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self setPlayerPath:?];
  }

  v15 = *(v4 + 62);
  if ((v15 & 0x20) != 0)
  {
    self->_playbackState = *(v4 + 18);
    *&self->_has |= 0x20u;
    v15 = *(v4 + 62);
  }

  if ((v15 & 2) != 0)
  {
    self->_playbackRate = *(v4 + 2);
    *&self->_has |= 2u;
  }

  playbackSessionRequest = self->_playbackSessionRequest;
  v17 = *(v4 + 8);
  if (playbackSessionRequest)
  {
    if (v17)
    {
      [(_MRPlaybackSessionRequestProtobuf *)playbackSessionRequest mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self setPlaybackSessionRequest:?];
  }

  v18 = *(v4 + 62);
  if ((v18 & 0x100) != 0)
  {
    self->_allowFadeTransition = *(v4 + 120);
    *&self->_has |= 0x100u;
    v18 = *(v4 + 62);
    if ((v18 & 0x10) == 0)
    {
LABEL_37:
      if ((v18 & 4) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if ((v18 & 0x10) == 0)
  {
    goto LABEL_37;
  }

  self->_originatorType = *(v4 + 14);
  *&self->_has |= 0x10u;
  if ((*(v4 + 62) & 4) != 0)
  {
LABEL_38:
    self->_destinationTypes = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_39:
  if (*(v4 + 6))
  {
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self setInitiator:?];
  }

  resolvedPlayerPath = self->_resolvedPlayerPath;
  v20 = *(v4 + 13);
  if (resolvedPlayerPath)
  {
    if (v20)
    {
      [(_MRNowPlayingPlayerPathProtobuf *)resolvedPlayerPath mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self setResolvedPlayerPath:?];
  }

  setPlaybackSessionCommandStatus = self->_setPlaybackSessionCommandStatus;
  v22 = *(v4 + 14);
  if (setPlaybackSessionCommandStatus)
  {
    if (v22)
    {
      [(_MRSendCommandResultStatusProtobuf *)setPlaybackSessionCommandStatus mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(_MRPlaybackSessionMigrateRequestProtobuf *)self setSetPlaybackSessionCommandStatus:?];
  }

  if ((*(v4 + 62) & 0x80) != 0)
  {
    self->_recipeType = *(v4 + 22);
    *&self->_has |= 0x80u;
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end