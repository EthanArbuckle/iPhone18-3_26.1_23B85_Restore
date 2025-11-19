@interface MIPAudiobook
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDiscNumber:(BOOL)a3;
- (void)setHasExcludeFromShuffle:(BOOL)a3;
- (void)setHasHasVideo:(BOOL)a3;
- (void)setHasTrackNumber:(BOOL)a3;
- (void)setHasUserRating:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPAudiobook

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  album = self->_album;
  v6 = *(v4 + 1);
  v16 = v4;
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

  v4 = v16;
LABEL_7:
  artist = self->_artist;
  v8 = *(v4 + 2);
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

  v4 = v16;
LABEL_13:
  composer = self->_composer;
  v10 = *(v4 + 4);
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

  v4 = v16;
LABEL_19:
  genre = self->_genre;
  v12 = *(v4 + 6);
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

  v4 = v16;
LABEL_25:
  v13 = *(v4 + 84);
  if ((v13 & 2) != 0)
  {
    self->_discNumber = *(v4 + 10);
    *&self->_has |= 2u;
    v13 = *(v4 + 84);
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

  else if ((*(v4 + 84) & 4) == 0)
  {
    goto LABEL_27;
  }

  self->_trackNumber = *(v4 + 18);
  *&self->_has |= 4u;
  v13 = *(v4 + 84);
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
  self->_userRating = *(v4 + 19);
  *&self->_has |= 8u;
  v13 = *(v4 + 84);
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
  self->_excludeFromShuffle = *(v4 + 80);
  *&self->_has |= 0x10u;
  v13 = *(v4 + 84);
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
  self->_audioFormat = *(v4 + 6);
  *&self->_has |= 1u;
  if ((*(v4 + 84) & 0x20) != 0)
  {
LABEL_31:
    self->_hasVideo = *(v4 + 81);
    *&self->_has |= 0x20u;
  }

LABEL_32:
  playbackInfo = self->_playbackInfo;
  v15 = *(v4 + 8);
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

  v4 = v16;
LABEL_44:
  if (*(v4 + 7))
  {
    playbackInfo = [(MIPAudiobook *)self setHlsPlaylistURL:?];
    v4 = v16;
  }

  MEMORY[0x2821F96F8](playbackInfo, v4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  album = self->_album;
  if (album | *(v4 + 1))
  {
    if (![(MIPAlbum *)album isEqual:?])
    {
      goto LABEL_45;
    }
  }

  artist = self->_artist;
  if (artist | *(v4 + 2))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_45;
    }
  }

  composer = self->_composer;
  if (composer | *(v4 + 4))
  {
    if (![(MIPArtist *)composer isEqual:?])
    {
      goto LABEL_45;
    }
  }

  genre = self->_genre;
  if (genre | *(v4 + 6))
  {
    if (![(MIPGenre *)genre isEqual:?])
    {
      goto LABEL_45;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 84) & 2) == 0 || self->_discNumber != *(v4 + 10))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 84) & 2) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 84) & 4) == 0 || self->_trackNumber != *(v4 + 18))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 84) & 4) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 84) & 8) == 0 || self->_userRating != *(v4 + 19))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 84) & 8) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 84) & 0x10) == 0)
    {
      goto LABEL_45;
    }

    if (self->_excludeFromShuffle)
    {
      if ((*(v4 + 80) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (*(v4 + 80))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 84) & 0x10) != 0)
  {
    goto LABEL_45;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_audioFormat != *(v4 + 6))
    {
      goto LABEL_45;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(v4 + 84) & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    v11 = 0;
    goto LABEL_46;
  }

  if ((*(v4 + 84) & 0x20) == 0)
  {
    goto LABEL_45;
  }

  if (self->_hasVideo)
  {
    if ((*(v4 + 81) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (*(v4 + 81))
  {
    goto LABEL_45;
  }

LABEL_38:
  playbackInfo = self->_playbackInfo;
  if (playbackInfo | *(v4 + 8) && ![(MIPPlaybackInfo *)playbackInfo isEqual:?])
  {
    goto LABEL_45;
  }

  hlsPlaylistURL = self->_hlsPlaylistURL;
  if (hlsPlaylistURL | *(v4 + 7))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MIPAlbum *)self->_album copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(MIPArtist *)self->_artist copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(MIPArtist *)self->_composer copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(MIPGenre *)self->_genre copyWithZone:a3];
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
  v15 = [(MIPPlaybackInfo *)self->_playbackInfo copyWithZone:a3];
  v16 = *(v5 + 64);
  *(v5 + 64) = v15;

  v17 = [(NSString *)self->_hlsPlaylistURL copyWithZone:a3];
  v18 = *(v5 + 56);
  *(v5 + 56) = v17;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_album)
  {
    [v4 setAlbum:?];
    v4 = v6;
  }

  if (self->_artist)
  {
    [v6 setArtist:?];
    v4 = v6;
  }

  if (self->_composer)
  {
    [v6 setComposer:?];
    v4 = v6;
  }

  if (self->_genre)
  {
    [v6 setGenre:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 10) = self->_discNumber;
    *(v4 + 84) |= 2u;
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

  *(v4 + 18) = self->_trackNumber;
  *(v4 + 84) |= 4u;
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
  *(v4 + 19) = self->_userRating;
  *(v4 + 84) |= 8u;
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
  *(v4 + 80) = self->_excludeFromShuffle;
  *(v4 + 84) |= 0x10u;
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
  *(v4 + 6) = self->_audioFormat;
  *(v4 + 84) |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    *(v4 + 81) = self->_hasVideo;
    *(v4 + 84) |= 0x20u;
  }

LABEL_16:
  if (self->_playbackInfo)
  {
    [v6 setPlaybackInfo:?];
    v4 = v6;
  }

  if (self->_hlsPlaylistURL)
  {
    [v6 setHlsPlaylistURL:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_album)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_composer)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_genre)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
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
  v4 = v6;
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
  v4 = v6;
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
  v4 = v6;
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
  v4 = v6;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

LABEL_16:
  if (self->_playbackInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_hlsPlaylistURL)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  album = self->_album;
  if (album)
  {
    v5 = [(MIPAlbum *)album dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"album"];
  }

  artist = self->_artist;
  if (artist)
  {
    v7 = [(MIPArtist *)artist dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"artist"];
  }

  composer = self->_composer;
  if (composer)
  {
    v9 = [(MIPArtist *)composer dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"composer"];
  }

  genre = self->_genre;
  if (genre)
  {
    v11 = [(MIPGenre *)genre dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"genre"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:self->_discNumber];
    [v3 setObject:v18 forKey:@"discNumber"];

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
  [v3 setObject:v19 forKey:@"trackNumber"];

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
  [v3 setObject:v20 forKey:@"userRating"];

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
  [v3 setObject:v21 forKey:@"excludeFromShuffle"];

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
  [v3 setObject:v22 forKey:@"audioFormat"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasVideo];
    [v3 setObject:v13 forKey:@"hasVideo"];
  }

LABEL_16:
  playbackInfo = self->_playbackInfo;
  if (playbackInfo)
  {
    v15 = [(MIPPlaybackInfo *)playbackInfo dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"playbackInfo"];
  }

  hlsPlaylistURL = self->_hlsPlaylistURL;
  if (hlsPlaylistURL)
  {
    [v3 setObject:hlsPlaylistURL forKey:@"hlsPlaylistURL"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPAudiobook;
  v4 = [(MIPAudiobook *)&v8 description];
  v5 = [(MIPAudiobook *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasHasVideo:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasExcludeFromShuffle:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUserRating:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTrackNumber:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDiscNumber:(BOOL)a3
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

@end