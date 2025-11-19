@interface _MRNowPlayingPlayerProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAudioSessionType:(id)a3;
- (int)audioSessionType;
- (int64_t)mxSessionIDAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAudioSessionType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRNowPlayingPlayerProtobuf

- (int)audioSessionType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_audioSessionType;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = _MRNowPlayingPlayerProtobuf;
  [(_MRNowPlayingPlayerProtobuf *)&v3 dealloc];
}

- (void)setHasAudioSessionType:(BOOL)a3
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

- (int)StringAsAudioSessionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LongForm"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Independent"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)mxSessionIDAtIndex:(unint64_t)a3
{
  p_mxSessionIDs = &self->_mxSessionIDs;
  count = self->_mxSessionIDs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_mxSessionIDs->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRNowPlayingPlayerProtobuf;
  v4 = [(_MRNowPlayingPlayerProtobuf *)&v8 description];
  v5 = [(_MRNowPlayingPlayerProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    audioSessionType = self->_audioSessionType;
    if (audioSessionType >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_audioSessionType];
    }

    else
    {
      v8 = off_1E769B128[audioSessionType];
    }

    [v4 setObject:v8 forKey:@"audioSessionType"];
  }

  v9 = PBRepeatedInt64NSArray();
  [v4 setObject:v9 forKey:@"mxSessionID"];

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_audioSessionID];
    [v4 setObject:v10 forKey:@"audioSessionID"];
  }

  iconURL = self->_iconURL;
  if (iconURL)
  {
    [v4 setObject:iconURL forKey:@"iconURL"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    audioSessionType = self->_audioSessionType;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_mxSessionIDs.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_mxSessionIDs.list[v6];
      PBDataWriterWriteInt64Field();
      v4 = v9;
      ++v6;
    }

    while (v6 < self->_mxSessionIDs.count);
  }

  if (*&self->_has)
  {
    audioSessionID = self->_audioSessionID;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

  if (self->_iconURL)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v9;
  }

  if (self->_displayName)
  {
    [v9 setDisplayName:?];
    v4 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 9) = self->_audioSessionType;
    *(v4 + 64) |= 2u;
  }

  if ([(_MRNowPlayingPlayerProtobuf *)self mxSessionIDsCount])
  {
    [v9 clearMxSessionIDs];
    v5 = [(_MRNowPlayingPlayerProtobuf *)self mxSessionIDsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v9 addMxSessionID:{-[_MRNowPlayingPlayerProtobuf mxSessionIDAtIndex:](self, "mxSessionIDAtIndex:", i)}];
      }
    }
  }

  v8 = v9;
  if (*&self->_has)
  {
    *(v9 + 8) = self->_audioSessionID;
    *(v9 + 64) |= 1u;
  }

  if (self->_iconURL)
  {
    [v9 setIconURL:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 36) = self->_audioSessionType;
    *(v5 + 64) |= 2u;
  }

  PBRepeatedInt64Copy();
  if (*&self->_has)
  {
    *(v5 + 32) = self->_audioSessionID;
    *(v5 + 64) |= 1u;
  }

  v10 = [(NSString *)self->_iconURL copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 7))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 5))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v7 = *(v4 + 64);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_audioSessionType != *(v4 + 9))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_19;
  }

  if (!PBRepeatedInt64IsEqual())
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v8 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_audioSessionID != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_19;
  }

  iconURL = self->_iconURL;
  if (iconURL | *(v4 + 6))
  {
    v10 = [(NSString *)iconURL isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_displayName hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_audioSessionType;
  }

  else
  {
    v5 = 0;
  }

  v6 = PBRepeatedInt64Hash();
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_audioSessionID;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_iconURL hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 7))
  {
    [(_MRNowPlayingPlayerProtobuf *)self setIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 5))
  {
    [(_MRNowPlayingPlayerProtobuf *)self setDisplayName:?];
    v4 = v9;
  }

  if ((v4[16] & 2) != 0)
  {
    self->_audioSessionType = v4[9];
    *&self->_has |= 2u;
  }

  v5 = [v4 mxSessionIDsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[_MRNowPlayingPlayerProtobuf addMxSessionID:](self, "addMxSessionID:", [v9 mxSessionIDAtIndex:i]);
    }
  }

  v8 = v9;
  if (v9[16])
  {
    self->_audioSessionID = v9[8];
    *&self->_has |= 1u;
  }

  if (*(v9 + 6))
  {
    [(_MRNowPlayingPlayerProtobuf *)self setIconURL:?];
    v8 = v9;
  }
}

@end