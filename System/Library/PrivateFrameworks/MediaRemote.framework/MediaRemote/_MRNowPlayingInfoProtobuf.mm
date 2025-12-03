@interface _MRNowPlayingInfoProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRepeatMode:(id)mode;
- (int)StringAsShuffleMode:(id)mode;
- (int)repeatMode;
- (int)shuffleMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasElapsedTime:(BOOL)time;
- (void)setHasIsAdvertisement:(BOOL)advertisement;
- (void)setHasIsAlwaysLive:(BOOL)live;
- (void)setHasIsExplicitTrack:(BOOL)track;
- (void)setHasIsInTransition:(BOOL)transition;
- (void)setHasIsMusicApp:(BOOL)app;
- (void)setHasPlaybackRate:(BOOL)rate;
- (void)setHasRadioStationIdentifier:(BOOL)identifier;
- (void)setHasRepeatMode:(BOOL)mode;
- (void)setHasShuffleMode:(BOOL)mode;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUniqueIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
@end

@implementation _MRNowPlayingInfoProtobuf

- (void)setHasElapsedTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPlaybackRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)repeatMode
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_repeatMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRepeatMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)StringAsRepeatMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"One"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"All"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)shuffleMode
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_shuffleMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasShuffleMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)StringAsShuffleMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Albums"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"Songs"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasUniqueIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsExplicitTrack:(BOOL)track
{
  if (track)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsMusicApp:(BOOL)app
{
  if (app)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasRadioStationIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsAlwaysLive:(BOOL)live
{
  if (live)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsAdvertisement:(BOOL)advertisement
{
  if (advertisement)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsInTransition:(BOOL)transition
{
  if (transition)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRNowPlayingInfoProtobuf;
  v4 = [(_MRNowPlayingInfoProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRNowPlayingInfoProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  album = self->_album;
  if (album)
  {
    [dictionary setObject:album forKey:@"album"];
  }

  artist = self->_artist;
  if (artist)
  {
    [v5 setObject:artist forKey:@"artist"];
  }

  has = self->_has;
  if (has)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    [v5 setObject:v19 forKey:@"duration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_elapsedTime];
  [v5 setObject:v20 forKey:@"elapsedTime"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *&v4 = self->_playbackRate;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v21 forKey:@"playbackRate"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_35:
  repeatMode = self->_repeatMode;
  if (repeatMode >= 4)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_repeatMode];
  }

  else
  {
    v23 = off_1E76A1A08[repeatMode];
  }

  [v5 setObject:v23 forKey:@"repeatMode"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_46:
  shuffleMode = self->_shuffleMode;
  if (shuffleMode >= 4)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_shuffleMode];
  }

  else
  {
    v30 = off_1E76A1A28[shuffleMode];
  }

  [v5 setObject:v30 forKey:@"shuffleMode"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
    [v5 setObject:v9 forKey:@"timestamp"];
  }

LABEL_12:
  title = self->_title;
  if (title)
  {
    [v5 setObject:title forKey:@"title"];
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_uniqueIdentifier];
    [v5 setObject:v24 forKey:@"uniqueIdentifier"];

    v11 = self->_has;
    if ((v11 & 0x400) == 0)
    {
LABEL_16:
      if ((v11 & 0x1000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExplicitTrack];
  [v5 setObject:v25 forKey:@"isExplicitTrack"];

  v11 = self->_has;
  if ((v11 & 0x1000) == 0)
  {
LABEL_17:
    if ((v11 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_39:
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMusicApp];
  [v5 setObject:v26 forKey:@"isMusicApp"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_radioStationIdentifier];
    [v5 setObject:v12 forKey:@"radioStationIdentifier"];
  }

LABEL_19:
  radioStationHash = self->_radioStationHash;
  if (radioStationHash)
  {
    [v5 setObject:radioStationHash forKey:@"radioStationHash"];
  }

  radioStationName = self->_radioStationName;
  if (radioStationName)
  {
    [v5 setObject:radioStationName forKey:@"radioStationName"];
  }

  artworkDataDigest = self->_artworkDataDigest;
  if (artworkDataDigest)
  {
    [v5 setObject:artworkDataDigest forKey:@"artworkDataDigest"];
  }

  v16 = self->_has;
  if ((v16 & 0x200) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAlwaysLive];
    [v5 setObject:v27 forKey:@"isAlwaysLive"];

    v16 = self->_has;
    if ((v16 & 0x100) == 0)
    {
LABEL_27:
      if ((v16 & 0x800) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_27;
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAdvertisement];
  [v5 setObject:v28 forKey:@"isAdvertisement"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_28:
    v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInTransition];
    [v5 setObject:v17 forKey:@"isInTransition"];
  }

LABEL_29:

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v21 = toCopy;
  if (self->_album)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_artist)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    toCopy = v21;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  elapsedTime = self->_elapsedTime;
  PBDataWriterWriteDoubleField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  playbackRate = self->_playbackRate;
  PBDataWriterWriteFloatField();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  repeatMode = self->_repeatMode;
  PBDataWriterWriteInt32Field();
  toCopy = v21;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_36:
  shuffleMode = self->_shuffleMode;
  PBDataWriterWriteInt32Field();
  toCopy = v21;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v21;
  }

LABEL_12:
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    PBDataWriterWriteUint64Field();
    toCopy = v21;
    v7 = self->_has;
    if ((v7 & 0x400) == 0)
    {
LABEL_16:
      if ((v7 & 0x1000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_16;
  }

  isExplicitTrack = self->_isExplicitTrack;
  PBDataWriterWriteBOOLField();
  toCopy = v21;
  v7 = self->_has;
  if ((v7 & 0x1000) == 0)
  {
LABEL_17:
    if ((v7 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_40:
  isMusicApp = self->_isMusicApp;
  PBDataWriterWriteBOOLField();
  toCopy = v21;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    radioStationIdentifier = self->_radioStationIdentifier;
    PBDataWriterWriteInt64Field();
    toCopy = v21;
  }

LABEL_19:
  if (self->_radioStationHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_radioStationName)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_artworkDataDigest)
  {
    PBDataWriterWriteDataField();
    toCopy = v21;
  }

  v9 = self->_has;
  if ((v9 & 0x200) != 0)
  {
    isAlwaysLive = self->_isAlwaysLive;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
    v9 = self->_has;
    if ((v9 & 0x100) == 0)
    {
LABEL_27:
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_27;
  }

  isAdvertisement = self->_isAdvertisement;
  PBDataWriterWriteBOOLField();
  toCopy = v21;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_28:
    isInTransition = self->_isInTransition;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
  }

LABEL_29:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_album)
  {
    [toCopy setAlbum:?];
    toCopy = v8;
  }

  if (self->_artist)
  {
    [v8 setArtist:?];
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_duration;
    *(toCopy + 60) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 2) = *&self->_elapsedTime;
  *(toCopy + 60) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 18) = LODWORD(self->_playbackRate);
  *(toCopy + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 24) = self->_repeatMode;
  *(toCopy + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_36:
  *(toCopy + 25) = self->_shuffleMode;
  *(toCopy + 60) |= 0x80u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(toCopy + 4) = *&self->_timestamp;
    *(toCopy + 60) |= 8u;
  }

LABEL_12:
  if (self->_title)
  {
    [v8 setTitle:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 5) = self->_uniqueIdentifier;
    *(toCopy + 60) |= 0x10u;
    v6 = self->_has;
    if ((v6 & 0x400) == 0)
    {
LABEL_16:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_16;
  }

  *(toCopy + 114) = self->_isExplicitTrack;
  *(toCopy + 60) |= 0x400u;
  v6 = self->_has;
  if ((v6 & 0x1000) == 0)
  {
LABEL_17:
    if ((v6 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_40:
  *(toCopy + 116) = self->_isMusicApp;
  *(toCopy + 60) |= 0x1000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    *(toCopy + 3) = self->_radioStationIdentifier;
    *(toCopy + 60) |= 4u;
  }

LABEL_19:
  if (self->_radioStationHash)
  {
    [v8 setRadioStationHash:?];
    toCopy = v8;
  }

  if (self->_radioStationName)
  {
    [v8 setRadioStationName:?];
    toCopy = v8;
  }

  if (self->_artworkDataDigest)
  {
    [v8 setArtworkDataDigest:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x200) != 0)
  {
    *(toCopy + 113) = self->_isAlwaysLive;
    *(toCopy + 60) |= 0x200u;
    v7 = self->_has;
    if ((v7 & 0x100) == 0)
    {
LABEL_27:
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_27;
  }

  *(toCopy + 112) = self->_isAdvertisement;
  *(toCopy + 60) |= 0x100u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_28:
    *(toCopy + 115) = self->_isInTransition;
    *(toCopy + 60) |= 0x800u;
  }

LABEL_29:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_album copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_artist copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 120) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_elapsedTime;
  *(v5 + 120) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 72) = self->_playbackRate;
  *(v5 + 120) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 96) = self->_repeatMode;
  *(v5 + 120) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  *(v5 + 100) = self->_shuffleMode;
  *(v5 + 120) |= 0x80u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v5 + 32) = self->_timestamp;
    *(v5 + 120) |= 8u;
  }

LABEL_8:
  v11 = [(NSString *)self->_title copyWithZone:zone];
  v12 = *(v5 + 104);
  *(v5 + 104) = v11;

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    *(v5 + 40) = self->_uniqueIdentifier;
    *(v5 + 120) |= 0x10u;
    v13 = self->_has;
    if ((v13 & 0x400) == 0)
    {
LABEL_10:
      if ((v13 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 114) = self->_isExplicitTrack;
  *(v5 + 120) |= 0x400u;
  v13 = self->_has;
  if ((v13 & 0x1000) == 0)
  {
LABEL_11:
    if ((v13 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_26:
  *(v5 + 116) = self->_isMusicApp;
  *(v5 + 120) |= 0x1000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v5 + 24) = self->_radioStationIdentifier;
    *(v5 + 120) |= 4u;
  }

LABEL_13:
  v14 = [(NSString *)self->_radioStationHash copyWithZone:zone];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  v16 = [(NSString *)self->_radioStationName copyWithZone:zone];
  v17 = *(v5 + 88);
  *(v5 + 88) = v16;

  v18 = [(NSData *)self->_artworkDataDigest copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = self->_has;
  if ((v20 & 0x200) == 0)
  {
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    *(v5 + 112) = self->_isAdvertisement;
    *(v5 + 120) |= 0x100u;
    if ((*&self->_has & 0x800) == 0)
    {
      return v5;
    }

    goto LABEL_16;
  }

  *(v5 + 113) = self->_isAlwaysLive;
  *(v5 + 120) |= 0x200u;
  v20 = self->_has;
  if ((v20 & 0x100) != 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  if ((v20 & 0x800) != 0)
  {
LABEL_16:
    *(v5 + 115) = self->_isInTransition;
    *(v5 + 120) |= 0x800u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_76;
  }

  album = self->_album;
  if (album | *(equalCopy + 6))
  {
    if (![(NSString *)album isEqual:?])
    {
      goto LABEL_76;
    }
  }

  artist = self->_artist;
  if (artist | *(equalCopy + 7))
  {
    if (![(NSString *)artist isEqual:?])
    {
      goto LABEL_76;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 60);
  if (has)
  {
    if ((v8 & 1) == 0 || self->_duration != *(equalCopy + 1))
    {
      goto LABEL_76;
    }
  }

  else if (v8)
  {
    goto LABEL_76;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_elapsedTime != *(equalCopy + 2))
    {
      goto LABEL_76;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_playbackRate != *(equalCopy + 18))
    {
      goto LABEL_76;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_repeatMode != *(equalCopy + 24))
    {
      goto LABEL_76;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_shuffleMode != *(equalCopy + 25))
    {
      goto LABEL_76;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_timestamp != *(equalCopy + 4))
    {
      goto LABEL_76;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_76;
  }

  title = self->_title;
  if (title | *(equalCopy + 13))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_76;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 60);
  if ((has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_uniqueIdentifier != *(equalCopy + 5))
    {
      goto LABEL_76;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x400) != 0)
  {
    if ((*(equalCopy + 60) & 0x400) == 0)
    {
      goto LABEL_76;
    }

    v11 = *(equalCopy + 114);
    if (self->_isExplicitTrack)
    {
      if ((*(equalCopy + 114) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(equalCopy + 114))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 60) & 0x400) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x1000) != 0)
  {
    if ((*(equalCopy + 60) & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    v12 = *(equalCopy + 116);
    if (self->_isMusicApp)
    {
      if ((*(equalCopy + 116) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(equalCopy + 116))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 60) & 0x1000) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_radioStationIdentifier != *(equalCopy + 3))
    {
      goto LABEL_76;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_76;
  }

  radioStationHash = self->_radioStationHash;
  if (radioStationHash | *(equalCopy + 10) && ![(NSString *)radioStationHash isEqual:?])
  {
    goto LABEL_76;
  }

  radioStationName = self->_radioStationName;
  if (radioStationName | *(equalCopy + 11))
  {
    if (![(NSString *)radioStationName isEqual:?])
    {
      goto LABEL_76;
    }
  }

  artworkDataDigest = self->_artworkDataDigest;
  if (artworkDataDigest | *(equalCopy + 8))
  {
    if (![(NSData *)artworkDataDigest isEqual:?])
    {
      goto LABEL_76;
    }
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 60) & 0x200) == 0)
    {
      goto LABEL_76;
    }

    v18 = *(equalCopy + 113);
    if (self->_isAlwaysLive)
    {
      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(equalCopy + 113))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 60) & 0x200) != 0)
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 60) & 0x100) == 0)
    {
      goto LABEL_76;
    }

    v19 = *(equalCopy + 112);
    if (self->_isAdvertisement)
    {
      if ((*(equalCopy + 112) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (*(equalCopy + 112))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 60) & 0x100) != 0)
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 60) & 0x800) != 0)
    {
      if (self->_isInTransition)
      {
        if (*(equalCopy + 115))
        {
          goto LABEL_95;
        }
      }

      else if (!*(equalCopy + 115))
      {
LABEL_95:
        v16 = 1;
        goto LABEL_77;
      }
    }

LABEL_76:
    v16 = 0;
    goto LABEL_77;
  }

  v16 = (*(equalCopy + 60) & 0x800) == 0;
LABEL_77:

  return v16;
}

- (unint64_t)hash
{
  v42 = [(NSString *)self->_album hash];
  v41 = [(NSString *)self->_artist hash];
  has = self->_has;
  if (has)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v3.i64 = floor(duration + 0.5);
    v8 = (duration - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
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

  if ((has & 2) != 0)
  {
    elapsedTime = self->_elapsedTime;
    if (elapsedTime < 0.0)
    {
      elapsedTime = -elapsedTime;
    }

    *v3.i64 = floor(elapsedTime + 0.5);
    v12 = (elapsedTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((has & 0x20) != 0)
  {
    playbackRate = self->_playbackRate;
    if (playbackRate < 0.0)
    {
      playbackRate = -playbackRate;
    }

    *v3.i32 = floorf(playbackRate + 0.5);
    v16 = (playbackRate - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v17, v4, v3);
    v14 = 2654435761u * *v3.i32;
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

  if ((has & 0x40) != 0)
  {
    v37 = 2654435761 * self->_repeatMode;
    if ((has & 0x80) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v37 = 0;
    if ((has & 0x80) != 0)
    {
LABEL_27:
      v36 = 2654435761 * self->_shuffleMode;
      goto LABEL_30;
    }
  }

  v36 = 0;
LABEL_30:
  v39 = v10;
  v40 = v6;
  v38 = v14;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v3.i64 = floor(timestamp + 0.5);
    v20 = (timestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v4, v3).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  v34 = [(NSString *)self->_title hash];
  v22 = self->_has;
  if ((v22 & 0x10) != 0)
  {
    v23 = 2654435761u * self->_uniqueIdentifier;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_40:
      v24 = 2654435761 * self->_isExplicitTrack;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_41;
      }

LABEL_45:
      v25 = 0;
      if ((v22 & 4) != 0)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v23 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_40;
    }
  }

  v24 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  v25 = 2654435761 * self->_isMusicApp;
  if ((v22 & 4) != 0)
  {
LABEL_42:
    v26 = 2654435761 * self->_radioStationIdentifier;
    goto LABEL_47;
  }

LABEL_46:
  v26 = 0;
LABEL_47:
  v27 = [(NSString *)self->_radioStationHash hash];
  v28 = [(NSString *)self->_radioStationName hash];
  v29 = [(NSData *)self->_artworkDataDigest hash];
  if ((*&self->_has & 0x200) == 0)
  {
    v30 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    v31 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    v32 = 0;
    return v41 ^ v42 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v18 ^ v35 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32;
  }

  v30 = 2654435761 * self->_isAlwaysLive;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  v31 = 2654435761 * self->_isAdvertisement;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_53;
  }

LABEL_50:
  v32 = 2654435761 * self->_isInTransition;
  return v41 ^ v42 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v18 ^ v35 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(_MRNowPlayingInfoProtobuf *)self setAlbum:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 7))
  {
    [(_MRNowPlayingInfoProtobuf *)self setArtist:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 60);
  if (v5)
  {
    self->_duration = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 60);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_elapsedTime = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_playbackRate = *(fromCopy + 18);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_repeatMode = *(fromCopy + 24);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_36:
  self->_shuffleMode = *(fromCopy + 25);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 60) & 8) != 0)
  {
LABEL_11:
    self->_timestamp = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(fromCopy + 13))
  {
    [(_MRNowPlayingInfoProtobuf *)self setTitle:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 60);
  if ((v6 & 0x10) != 0)
  {
    self->_uniqueIdentifier = *(fromCopy + 5);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 60);
    if ((v6 & 0x400) == 0)
    {
LABEL_16:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }
  }

  else if ((*(fromCopy + 60) & 0x400) == 0)
  {
    goto LABEL_16;
  }

  self->_isExplicitTrack = *(fromCopy + 114);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 60);
  if ((v6 & 0x1000) == 0)
  {
LABEL_17:
    if ((v6 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_40:
  self->_isMusicApp = *(fromCopy + 116);
  *&self->_has |= 0x1000u;
  if ((*(fromCopy + 60) & 4) != 0)
  {
LABEL_18:
    self->_radioStationIdentifier = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_19:
  if (*(fromCopy + 10))
  {
    [(_MRNowPlayingInfoProtobuf *)self setRadioStationHash:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 11))
  {
    [(_MRNowPlayingInfoProtobuf *)self setRadioStationName:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 8))
  {
    [(_MRNowPlayingInfoProtobuf *)self setArtworkDataDigest:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 60);
  if ((v7 & 0x200) != 0)
  {
    self->_isAlwaysLive = *(fromCopy + 113);
    *&self->_has |= 0x200u;
    v7 = *(fromCopy + 60);
    if ((v7 & 0x100) == 0)
    {
LABEL_27:
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*(fromCopy + 60) & 0x100) == 0)
  {
    goto LABEL_27;
  }

  self->_isAdvertisement = *(fromCopy + 112);
  *&self->_has |= 0x100u;
  if ((*(fromCopy + 60) & 0x800) != 0)
  {
LABEL_28:
    self->_isInTransition = *(fromCopy + 115);
    *&self->_has |= 0x800u;
  }

LABEL_29:
}

@end