@interface _MRSetStateMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlaybackState:(id)state;
- (int)playbackState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPlaybackState:(BOOL)state;
- (void)writeTo:(id)to;
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

- (void)setHasPlaybackState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsPlaybackState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"Playing"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"Paused"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"Stopped"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"Interrupted"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"Seeking"])
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
  dictionaryRepresentation = [(_MRSetStateMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo)
  {
    dictionaryRepresentation = [(_MRNowPlayingInfoProtobuf *)nowPlayingInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"nowPlayingInfo"];
  }

  supportedCommands = self->_supportedCommands;
  if (supportedCommands)
  {
    dictionaryRepresentation2 = [(_MRSupportedCommandsProtobuf *)supportedCommands dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"supportedCommands"];
  }

  playbackQueue = self->_playbackQueue;
  if (playbackQueue)
  {
    dictionaryRepresentation3 = [(_MRPlaybackQueueProtobuf *)playbackQueue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"playbackQueue"];
  }

  displayID = self->_displayID;
  if (displayID)
  {
    [dictionary setObject:displayID forKey:@"displayID"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [dictionary setObject:displayName forKey:@"displayName"];
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

    [dictionary setObject:v13 forKey:@"playbackState"];
  }

  playbackQueueCapabilities = self->_playbackQueueCapabilities;
  if (playbackQueueCapabilities)
  {
    dictionaryRepresentation4 = [(_MRPlaybackQueueCapabilitiesProtobuf *)playbackQueueCapabilities dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"playbackQueueCapabilities"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation5 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"playerPath"];
  }

  request = self->_request;
  if (request)
  {
    dictionaryRepresentation6 = [(_MRPlaybackQueueRequestProtobuf *)request dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"request"];
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_playbackStateTimestamp];
    [dictionary setObject:v20 forKey:@"playbackStateTimestamp"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_nowPlayingInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_supportedCommands)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_playbackQueue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_displayID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    playbackState = self->_playbackState;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_playbackQueueCapabilities)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    playbackStateTimestamp = self->_playbackStateTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_nowPlayingInfo)
  {
    [toCopy setNowPlayingInfo:?];
    toCopy = v5;
  }

  if (self->_supportedCommands)
  {
    [v5 setSupportedCommands:?];
    toCopy = v5;
  }

  if (self->_playbackQueue)
  {
    [v5 setPlaybackQueue:?];
    toCopy = v5;
  }

  if (self->_displayID)
  {
    [v5 setDisplayID:?];
    toCopy = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 14) = self->_playbackState;
    *(toCopy + 88) |= 2u;
  }

  if (self->_playbackQueueCapabilities)
  {
    [v5 setPlaybackQueueCapabilities:?];
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    toCopy = v5;
  }

  if (self->_request)
  {
    [v5 setRequest:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_playbackStateTimestamp;
    *(toCopy + 88) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRNowPlayingInfoProtobuf *)self->_nowPlayingInfo copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(_MRSupportedCommandsProtobuf *)self->_supportedCommands copyWithZone:zone];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(_MRPlaybackQueueProtobuf *)self->_playbackQueue copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_displayID copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_displayName copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 56) = self->_playbackState;
    *(v5 + 88) |= 2u;
  }

  v16 = [(_MRPlaybackQueueCapabilitiesProtobuf *)self->_playbackQueueCapabilities copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(_MRPlaybackQueueRequestProtobuf *)self->_request copyWithZone:zone];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_playbackStateTimestamp;
    *(v5 + 88) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo | *(equalCopy + 4))
  {
    if (![(_MRNowPlayingInfoProtobuf *)nowPlayingInfo isEqual:?])
    {
      goto LABEL_27;
    }
  }

  supportedCommands = self->_supportedCommands;
  if (supportedCommands | *(equalCopy + 10))
  {
    if (![(_MRSupportedCommandsProtobuf *)supportedCommands isEqual:?])
    {
      goto LABEL_27;
    }
  }

  playbackQueue = self->_playbackQueue;
  if (playbackQueue | *(equalCopy + 5))
  {
    if (![(_MRPlaybackQueueProtobuf *)playbackQueue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  displayID = self->_displayID;
  if (displayID | *(equalCopy + 2))
  {
    if (![(NSString *)displayID isEqual:?])
    {
      goto LABEL_27;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 3))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v10 = *(equalCopy + 88);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_playbackState != *(equalCopy + 14))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
LABEL_27:
    v14 = 0;
    goto LABEL_28;
  }

  playbackQueueCapabilities = self->_playbackQueueCapabilities;
  if (playbackQueueCapabilities | *(equalCopy + 6) && ![(_MRPlaybackQueueCapabilitiesProtobuf *)playbackQueueCapabilities isEqual:?])
  {
    goto LABEL_27;
  }

  playerPath = self->_playerPath;
  if (playerPath | *(equalCopy + 8))
  {
    if (![(_MRNowPlayingPlayerPathProtobuf *)playerPath isEqual:?])
    {
      goto LABEL_27;
    }
  }

  request = self->_request;
  if (request | *(equalCopy + 9))
  {
    if (![(_MRPlaybackQueueRequestProtobuf *)request isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v14 = (*(equalCopy + 88) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_playbackStateTimestamp != *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  nowPlayingInfo = self->_nowPlayingInfo;
  v6 = *(fromCopy + 4);
  v17 = fromCopy;
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

  fromCopy = v17;
LABEL_7:
  supportedCommands = self->_supportedCommands;
  v8 = *(fromCopy + 10);
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

  fromCopy = v17;
LABEL_13:
  playbackQueue = self->_playbackQueue;
  v10 = *(fromCopy + 5);
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

  fromCopy = v17;
LABEL_19:
  if (*(fromCopy + 2))
  {
    [(_MRSetStateMessageProtobuf *)self setDisplayID:?];
    fromCopy = v17;
  }

  if (*(fromCopy + 3))
  {
    [(_MRSetStateMessageProtobuf *)self setDisplayName:?];
    fromCopy = v17;
  }

  if ((*(fromCopy + 88) & 2) != 0)
  {
    self->_playbackState = *(fromCopy + 14);
    *&self->_has |= 2u;
  }

  playbackQueueCapabilities = self->_playbackQueueCapabilities;
  v12 = *(fromCopy + 6);
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

  fromCopy = v17;
LABEL_31:
  playerPath = self->_playerPath;
  v14 = *(fromCopy + 8);
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

  fromCopy = v17;
LABEL_37:
  request = self->_request;
  v16 = *(fromCopy + 9);
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

  fromCopy = v17;
LABEL_43:
  if (*(fromCopy + 88))
  {
    self->_playbackStateTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end