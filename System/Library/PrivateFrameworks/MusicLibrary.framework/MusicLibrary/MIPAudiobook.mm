@interface MIPAudiobook
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDiscNumber:(BOOL)number;
- (void)setHasExcludeFromShuffle:(BOOL)shuffle;
- (void)setHasHasVideo:(BOOL)video;
- (void)setHasTrackNumber:(BOOL)number;
- (void)setHasUserRating:(BOOL)rating;
- (void)writeTo:(id)to;
@end

@implementation MIPAudiobook

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  album = self->_album;
  v6 = *(fromCopy + 1);
  v16 = fromCopy;
  if (album)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MIPAlbum *)album mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MIPAudiobook *)self setAlbum:?];
  }

  fromCopy = v16;
LABEL_7:
  artist = self->_artist;
  v8 = *(fromCopy + 2);
  if (artist)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MIPArtist *)artist mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MIPAudiobook *)self setArtist:?];
  }

  fromCopy = v16;
LABEL_13:
  composer = self->_composer;
  v10 = *(fromCopy + 4);
  if (composer)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(MIPArtist *)composer mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(MIPAudiobook *)self setComposer:?];
  }

  fromCopy = v16;
LABEL_19:
  genre = self->_genre;
  v12 = *(fromCopy + 6);
  if (genre)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(MIPGenre *)genre mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(MIPAudiobook *)self setGenre:?];
  }

  fromCopy = v16;
LABEL_25:
  v13 = *(fromCopy + 84);
  if ((v13 & 2) != 0)
  {
    self->_discNumber = *(fromCopy + 10);
    *&self->_has |= 2u;
    v13 = *(fromCopy + 84);
    if ((v13 & 4) == 0)
    {
LABEL_27:
      if ((v13 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }
  }

  else if ((*(fromCopy + 84) & 4) == 0)
  {
    goto LABEL_27;
  }

  self->_trackNumber = *(fromCopy + 18);
  *&self->_has |= 4u;
  v13 = *(fromCopy + 84);
  if ((v13 & 8) == 0)
  {
LABEL_28:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_userRating = *(fromCopy + 19);
  *&self->_has |= 8u;
  v13 = *(fromCopy + 84);
  if ((v13 & 0x10) == 0)
  {
LABEL_29:
    if ((v13 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_excludeFromShuffle = *(fromCopy + 80);
  *&self->_has |= 0x10u;
  v13 = *(fromCopy + 84);
  if ((v13 & 1) == 0)
  {
LABEL_30:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_39:
  self->_audioFormat = *(fromCopy + 6);
  *&self->_has |= 1u;
  if ((*(fromCopy + 84) & 0x20) != 0)
  {
LABEL_31:
    self->_hasVideo = *(fromCopy + 81);
    *&self->_has |= 0x20u;
  }

LABEL_32:
  playbackInfo = self->_playbackInfo;
  v15 = *(fromCopy + 8);
  if (playbackInfo)
  {
    if (!v15)
    {
      goto LABEL_44;
    }

    playbackInfo = [(MIPPlaybackInfo *)playbackInfo mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_44;
    }

    playbackInfo = [(MIPAudiobook *)self setPlaybackInfo:?];
  }

  fromCopy = v16;
LABEL_44:
  if (*(fromCopy + 7))
  {
    playbackInfo = [(MIPAudiobook *)self setHlsPlaylistURL:?];
    fromCopy = v16;
  }

  MEMORY[0x2821F96F8](playbackInfo, fromCopy);
}

- (unint64_t)hash
{
  v3 = [(MIPAlbum *)self->_album hash];
  v4 = [(MIPArtist *)self->_artist hash];
  v5 = [(MIPArtist *)self->_composer hash];
  v6 = [(MIPGenre *)self->_genre hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_discNumber;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_trackNumber;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_userRating;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v10 = 2654435761 * self->_excludeFromShuffle;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_12:
    v11 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v10 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = 2654435761 * self->_audioFormat;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v12 = 2654435761 * self->_hasVideo;
LABEL_14:
  v13 = v4 ^ v3 ^ v5 ^ v6;
  v14 = v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(MIPPlaybackInfo *)self->_playbackInfo hash];
  return v13 ^ v14 ^ [(NSString *)self->_hlsPlaylistURL hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  album = self->_album;
  if (album | *(equalCopy + 1))
  {
    if (![(MIPAlbum *)album isEqual:?])
    {
      goto LABEL_45;
    }
  }

  artist = self->_artist;
  if (artist | *(equalCopy + 2))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_45;
    }
  }

  composer = self->_composer;
  if (composer | *(equalCopy + 4))
  {
    if (![(MIPArtist *)composer isEqual:?])
    {
      goto LABEL_45;
    }
  }

  genre = self->_genre;
  if (genre | *(equalCopy + 6))
  {
    if (![(MIPGenre *)genre isEqual:?])
    {
      goto LABEL_45;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 84) & 2) == 0 || self->_discNumber != *(equalCopy + 10))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 84) & 2) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 84) & 4) == 0 || self->_trackNumber != *(equalCopy + 18))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 84) & 4) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 84) & 8) == 0 || self->_userRating != *(equalCopy + 19))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 84) & 8) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 84) & 0x10) == 0)
    {
      goto LABEL_45;
    }

    if (self->_excludeFromShuffle)
    {
      if ((*(equalCopy + 80) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (*(equalCopy + 80))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 84) & 0x10) != 0)
  {
    goto LABEL_45;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_audioFormat != *(equalCopy + 6))
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(equalCopy + 84) & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    v11 = 0;
    goto LABEL_46;
  }

  if ((*(equalCopy + 84) & 0x20) == 0)
  {
    goto LABEL_45;
  }

  if (self->_hasVideo)
  {
    if ((*(equalCopy + 81) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 81))
  {
    goto LABEL_45;
  }

LABEL_38:
  playbackInfo = self->_playbackInfo;
  if (playbackInfo | *(equalCopy + 8) && ![(MIPPlaybackInfo *)playbackInfo isEqual:?])
  {
    goto LABEL_45;
  }

  hlsPlaylistURL = self->_hlsPlaylistURL;
  if (hlsPlaylistURL | *(equalCopy + 7))
  {
    v11 = [(NSString *)hlsPlaylistURL isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_46:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MIPAlbum *)self->_album copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(MIPArtist *)self->_artist copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(MIPArtist *)self->_composer copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(MIPGenre *)self->_genre copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_discNumber;
    *(v5 + 84) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 72) = self->_trackNumber;
  *(v5 + 84) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v5 + 76) = self->_userRating;
  *(v5 + 84) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 24) = self->_audioFormat;
    *(v5 + 84) |= 1u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 80) = self->_excludeFromShuffle;
  *(v5 + 84) |= 0x10u;
  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 0x20) != 0)
  {
LABEL_7:
    *(v5 + 81) = self->_hasVideo;
    *(v5 + 84) |= 0x20u;
  }

LABEL_8:
  v15 = [(MIPPlaybackInfo *)self->_playbackInfo copyWithZone:zone];
  v16 = *(v5 + 64);
  *(v5 + 64) = v15;

  v17 = [(NSString *)self->_hlsPlaylistURL copyWithZone:zone];
  v18 = *(v5 + 56);
  *(v5 + 56) = v17;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_album)
  {
    [toCopy setAlbum:?];
    toCopy = v6;
  }

  if (self->_artist)
  {
    [v6 setArtist:?];
    toCopy = v6;
  }

  if (self->_composer)
  {
    [v6 setComposer:?];
    toCopy = v6;
  }

  if (self->_genre)
  {
    [v6 setGenre:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_discNumber;
    *(toCopy + 84) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 18) = self->_trackNumber;
  *(toCopy + 84) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 19) = self->_userRating;
  *(toCopy + 84) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 80) = self->_excludeFromShuffle;
  *(toCopy + 84) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_27:
  *(toCopy + 6) = self->_audioFormat;
  *(toCopy + 84) |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    *(toCopy + 81) = self->_hasVideo;
    *(toCopy + 84) |= 0x20u;
  }

LABEL_16:
  if (self->_playbackInfo)
  {
    [v6 setPlaybackInfo:?];
    toCopy = v6;
  }

  if (self->_hlsPlaylistURL)
  {
    [v6 setHlsPlaylistURL:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_album)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_composer)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_genre)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteInt32Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteInt32Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  toCopy = v6;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_27:
  PBDataWriterWriteInt32Field();
  toCopy = v6;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_16:
  if (self->_playbackInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_hlsPlaylistURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  album = self->_album;
  if (album)
  {
    dictionaryRepresentation = [(MIPAlbum *)album dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"album"];
  }

  artist = self->_artist;
  if (artist)
  {
    dictionaryRepresentation2 = [(MIPArtist *)artist dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"artist"];
  }

  composer = self->_composer;
  if (composer)
  {
    dictionaryRepresentation3 = [(MIPArtist *)composer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"composer"];
  }

  genre = self->_genre;
  if (genre)
  {
    dictionaryRepresentation4 = [(MIPGenre *)genre dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"genre"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:self->_discNumber];
    [dictionary setObject:v18 forKey:@"discNumber"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_trackNumber];
  [dictionary setObject:v19 forKey:@"trackNumber"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_userRating];
  [dictionary setObject:v20 forKey:@"userRating"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_excludeFromShuffle];
  [dictionary setObject:v21 forKey:@"excludeFromShuffle"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_27:
  v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioFormat];
  [dictionary setObject:v22 forKey:@"audioFormat"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasVideo];
    [dictionary setObject:v13 forKey:@"hasVideo"];
  }

LABEL_16:
  playbackInfo = self->_playbackInfo;
  if (playbackInfo)
  {
    dictionaryRepresentation5 = [(MIPPlaybackInfo *)playbackInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"playbackInfo"];
  }

  hlsPlaylistURL = self->_hlsPlaylistURL;
  if (hlsPlaylistURL)
  {
    [dictionary setObject:hlsPlaylistURL forKey:@"hlsPlaylistURL"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPAudiobook;
  v4 = [(MIPAudiobook *)&v8 description];
  dictionaryRepresentation = [(MIPAudiobook *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasHasVideo:(BOOL)video
{
  if (video)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasExcludeFromShuffle:(BOOL)shuffle
{
  if (shuffle)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUserRating:(BOOL)rating
{
  if (rating)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTrackNumber:(BOOL)number
{
  if (number)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDiscNumber:(BOOL)number
{
  if (number)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end