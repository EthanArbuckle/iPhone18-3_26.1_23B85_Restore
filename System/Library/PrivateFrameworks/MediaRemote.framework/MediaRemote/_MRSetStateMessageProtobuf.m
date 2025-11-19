@interface _MRSetStateMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlaybackState:(id)a3;
- (int)playbackState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPlaybackState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSetStateMessageProtobuf

- (int)playbackState
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetStateMessageProtobuf;
  v4 = [(_MRSetStateMessageProtobuf *)&v8 description];
  v5 = [(_MRSetStateMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo)
  {
    v5 = [(_MRNowPlayingInfoProtobuf *)nowPlayingInfo dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"nowPlayingInfo"];
  }

  supportedCommands = self->_supportedCommands;
  if (supportedCommands)
  {
    v7 = [(_MRSupportedCommandsProtobuf *)supportedCommands dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"supportedCommands"];
  }

  playbackQueue = self->_playbackQueue;
  if (playbackQueue)
  {
    v9 = [(_MRPlaybackQueueProtobuf *)playbackQueue dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"playbackQueue"];
  }

  displayID = self->_displayID;
  if (displayID)
  {
    [v3 setObject:displayID forKey:@"displayID"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKey:@"displayName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    playbackState = self->_playbackState;
    if (playbackState >= 6)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_playbackState];
    }

    else
    {
      v13 = off_1E769B7F8[playbackState];
    }

    [v3 setObject:v13 forKey:@"playbackState"];
  }

  playbackQueueCapabilities = self->_playbackQueueCapabilities;
  if (playbackQueueCapabilities)
  {
    v15 = [(_MRPlaybackQueueCapabilitiesProtobuf *)playbackQueueCapabilities dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"playbackQueueCapabilities"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v17 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"playerPath"];
  }

  request = self->_request;
  if (request)
  {
    v19 = [(_MRPlaybackQueueRequestProtobuf *)request dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"request"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_playbackStateTimestamp];
    [v3 setObject:v20 forKey:@"playbackStateTimestamp"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_nowPlayingInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_supportedCommands)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_playbackQueue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_displayID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    playbackState = self->_playbackState;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_playbackQueueCapabilities)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (*&self->_has)
  {
    playbackStateTimestamp = self->_playbackStateTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_nowPlayingInfo)
  {
    [v4 setNowPlayingInfo:?];
    v4 = v5;
  }

  if (self->_supportedCommands)
  {
    [v5 setSupportedCommands:?];
    v4 = v5;
  }

  if (self->_playbackQueue)
  {
    [v5 setPlaybackQueue:?];
    v4 = v5;
  }

  if (self->_displayID)
  {
    [v5 setDisplayID:?];
    v4 = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 14) = self->_playbackState;
    *(v4 + 88) |= 2u;
  }

  if (self->_playbackQueueCapabilities)
  {
    [v5 setPlaybackQueueCapabilities:?];
    v4 = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    v4 = v5;
  }

  if (self->_request)
  {
    [v5 setRequest:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_playbackStateTimestamp;
    *(v4 + 88) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRNowPlayingInfoProtobuf *)self->_nowPlayingInfo copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(_MRSupportedCommandsProtobuf *)self->_supportedCommands copyWithZone:a3];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(_MRPlaybackQueueProtobuf *)self->_playbackQueue copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_displayID copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_displayName copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 56) = self->_playbackState;
    *(v5 + 88) |= 2u;
  }

  v16 = [(_MRPlaybackQueueCapabilitiesProtobuf *)self->_playbackQueueCapabilities copyWithZone:a3];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(_MRPlaybackQueueRequestProtobuf *)self->_request copyWithZone:a3];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_playbackStateTimestamp;
    *(v5 + 88) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo | *(v4 + 4))
  {
    if (![(_MRNowPlayingInfoProtobuf *)nowPlayingInfo isEqual:?])
    {
      goto LABEL_27;
    }
  }

  supportedCommands = self->_supportedCommands;
  if (supportedCommands | *(v4 + 10))
  {
    if (![(_MRSupportedCommandsProtobuf *)supportedCommands isEqual:?])
    {
      goto LABEL_27;
    }
  }

  playbackQueue = self->_playbackQueue;
  if (playbackQueue | *(v4 + 5))
  {
    if (![(_MRPlaybackQueueProtobuf *)playbackQueue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  displayID = self->_displayID;
  if (displayID | *(v4 + 2))
  {
    if (![(NSString *)displayID isEqual:?])
    {
      goto LABEL_27;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 3))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v10 = *(v4 + 88);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_playbackState != *(v4 + 14))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 88) & 2) != 0)
  {
LABEL_27:
    v14 = 0;
    goto LABEL_28;
  }

  playbackQueueCapabilities = self->_playbackQueueCapabilities;
  if (playbackQueueCapabilities | *(v4 + 6) && ![(_MRPlaybackQueueCapabilitiesProtobuf *)playbackQueueCapabilities isEqual:?])
  {
    goto LABEL_27;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(v4 + 8))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_27;
    }
  }

  request = self->_request;
  if (request | *(v4 + 9))
  {
    if (![(_MRPlaybackQueueRequestProtobuf *)request isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v14 = (*(v4 + 88) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_playbackStateTimestamp != *(v4 + 1))
    {
      goto LABEL_27;
    }

    v14 = 1;
  }

LABEL_28:

  return v14;
}

- (unint64_t)hash
{
  v18 = [(_MRNowPlayingInfoProtobuf *)self->_nowPlayingInfo hash];
  v3 = [(_MRSupportedCommandsProtobuf *)self->_supportedCommands hash];
  v4 = [(_MRPlaybackQueueProtobuf *)self->_playbackQueue hash];
  v5 = [(NSString *)self->_displayID hash];
  v6 = [(NSString *)self->_displayName hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_playbackState;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_MRPlaybackQueueCapabilitiesProtobuf *)self->_playbackQueueCapabilities hash];
  v9 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  v10 = [(_MRPlaybackQueueRequestProtobuf *)self->_request hash];
  if (*&self->_has)
  {
    playbackStateTimestamp = self->_playbackStateTimestamp;
    if (playbackStateTimestamp < 0.0)
    {
      playbackStateTimestamp = -playbackStateTimestamp;
    }

    *v11.i64 = floor(playbackStateTimestamp + 0.5);
    v15 = (playbackStateTimestamp - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  return v3 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  nowPlayingInfo = self->_nowPlayingInfo;
  v6 = *(v4 + 4);
  v17 = v4;
  if (nowPlayingInfo)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRNowPlayingInfoProtobuf *)nowPlayingInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRSetStateMessageProtobuf *)self setNowPlayingInfo:?];
  }

  v4 = v17;
LABEL_7:
  supportedCommands = self->_supportedCommands;
  v8 = *(v4 + 10);
  if (supportedCommands)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRSupportedCommandsProtobuf *)supportedCommands mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRSetStateMessageProtobuf *)self setSupportedCommands:?];
  }

  v4 = v17;
LABEL_13:
  playbackQueue = self->_playbackQueue;
  v10 = *(v4 + 5);
  if (playbackQueue)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(_MRPlaybackQueueProtobuf *)playbackQueue mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(_MRSetStateMessageProtobuf *)self setPlaybackQueue:?];
  }

  v4 = v17;
LABEL_19:
  if (*(v4 + 2))
  {
    [(_MRSetStateMessageProtobuf *)self setDisplayID:?];
    v4 = v17;
  }

  if (*(v4 + 3))
  {
    [(_MRSetStateMessageProtobuf *)self setDisplayName:?];
    v4 = v17;
  }

  if ((*(v4 + 88) & 2) != 0)
  {
    self->_playbackState = *(v4 + 14);
    *&self->_has |= 2u;
  }

  playbackQueueCapabilities = self->_playbackQueueCapabilities;
  v12 = *(v4 + 6);
  if (playbackQueueCapabilities)
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    [(_MRPlaybackQueueCapabilitiesProtobuf *)playbackQueueCapabilities mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    [(_MRSetStateMessageProtobuf *)self setPlaybackQueueCapabilities:?];
  }

  v4 = v17;
LABEL_31:
  playerPath = self->_playerPath;
  v14 = *(v4 + 8);
  if (playerPath)
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    [(_MRSetStateMessageProtobuf *)self setPlayerPath:?];
  }

  v4 = v17;
LABEL_37:
  request = self->_request;
  v16 = *(v4 + 9);
  if (request)
  {
    if (!v16)
    {
      goto LABEL_43;
    }

    [(_MRPlaybackQueueRequestProtobuf *)request mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_43;
    }

    [(_MRSetStateMessageProtobuf *)self setRequest:?];
  }

  v4 = v17;
LABEL_43:
  if (*(v4 + 88))
  {
    self->_playbackStateTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end