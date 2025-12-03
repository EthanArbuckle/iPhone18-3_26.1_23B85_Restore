@interface MTPBSound
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSoundVolume:(BOOL)volume;
- (void)writeTo:(id)to;
@end

@implementation MTPBSound

- (void)setHasSoundVolume:(BOOL)volume
{
  if (volume)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBSound;
  v4 = [(MTPBSound *)&v8 description];
  dictionaryRepresentation = [(MTPBSound *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_soundType];
  [dictionary setObject:v4 forKey:@"soundType"];

  toneID = self->_toneID;
  if (toneID)
  {
    [dictionary setObject:toneID forKey:@"toneID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_mediaID];
    [dictionary setObject:v7 forKey:@"mediaID"];
  }

  vibeID = self->_vibeID;
  if (vibeID)
  {
    [dictionary setObject:vibeID forKey:@"vibeID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    *&v5 = self->_soundVolume;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [dictionary setObject:v9 forKey:@"soundVolume"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  soundType = self->_soundType;
  v9 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_toneID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    mediaID = self->_mediaID;
    PBDataWriterWriteDoubleField();
  }

  v7 = v9;
  if (self->_vibeID)
  {
    PBDataWriterWriteStringField();
    v7 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    soundVolume = self->_soundVolume;
    PBDataWriterWriteFloatField();
    v7 = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_soundType;
  v5 = toCopy;
  if (self->_toneID)
  {
    [toCopy setToneID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_mediaID;
    *(toCopy + 40) |= 1u;
  }

  if (self->_vibeID)
  {
    [v5 setVibeID:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[5] = LODWORD(self->_soundVolume);
    *(toCopy + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_soundType;
  v6 = [(NSString *)self->_toneID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_mediaID;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_vibeID copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_soundVolume;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if (self->_soundType != *(equalCopy + 4))
  {
    goto LABEL_17;
  }

  toneID = self->_toneID;
  if (toneID | *(equalCopy + 3))
  {
    if (![(NSString *)toneID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 40);
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_mediaID != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_17;
  }

  vibeID = self->_vibeID;
  if (vibeID | *(equalCopy + 4))
  {
    if (![(NSString *)vibeID isEqual:?])
    {
LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  v9 = (*(equalCopy + 40) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_soundVolume != *(equalCopy + 5))
    {
      goto LABEL_17;
    }

    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  soundType = self->_soundType;
  v4 = [(NSString *)self->_toneID hash];
  if (*&self->_has)
  {
    mediaID = self->_mediaID;
    if (mediaID < 0.0)
    {
      mediaID = -mediaID;
    }

    *v5.i64 = floor(mediaID + 0.5);
    v9 = (mediaID - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = [(NSString *)self->_vibeID hash];
  if ((*&self->_has & 2) != 0)
  {
    soundVolume = self->_soundVolume;
    if (soundVolume < 0.0)
    {
      soundVolume = -soundVolume;
    }

    *v12.i32 = floorf(soundVolume + 0.5);
    v16 = (soundVolume - *v12.i32) * 1.8447e19;
    *v13.i32 = *v12.i32 - (truncf(*v12.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v14 = 2654435761u * *vbslq_s8(v17, v13, v12).i32;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabsf(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v7 ^ v11 ^ v14 ^ (2654435761 * soundType);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_soundType = *(fromCopy + 4);
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(MTPBSound *)self setToneID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 40))
  {
    self->_mediaID = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(MTPBSound *)self setVibeID:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 40) & 2) != 0)
  {
    self->_soundVolume = *(fromCopy + 5);
    *&self->_has |= 2u;
  }
}

@end