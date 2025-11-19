@interface MIPSong
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAudioFormat:(BOOL)a3;
- (void)setHasDiscNumber:(BOOL)a3;
- (void)setHasExcludeFromShuffle:(BOOL)a3;
- (void)setHasHasVideo:(BOOL)a3;
- (void)setHasLyricsChecksum:(BOOL)a3;
- (void)setHasTrackNumber:(BOOL)a3;
- (void)setHasUserRating:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPSong

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  album = self->_album;
  v6 = *(v4 + 2);
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

    [(MIPSong *)self setAlbum:?];
  }

  v4 = v16;
LABEL_7:
  artist = self->_artist;
  v8 = *(v4 + 3);
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

    [(MIPSong *)self setArtist:?];
  }

  v4 = v16;
LABEL_13:
  composer = self->_composer;
  v10 = *(v4 + 5);
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

    [(MIPSong *)self setComposer:?];
  }

  v4 = v16;
LABEL_19:
  genre = self->_genre;
  v12 = *(v4 + 7);
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

    [(MIPSong *)self setGenre:?];
  }

  v4 = v16;
LABEL_25:
  v13 = *(v4 + 108);
  if ((v13 & 4) != 0)
  {
    self->_discNumber = *(v4 + 12);
    *&self->_has |= 4u;
    v13 = *(v4 + 108);
    if ((v13 & 0x10) == 0)
    {
LABEL_27:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    }
  }

  else if ((*(v4 + 108) & 0x10) == 0)
  {
    goto LABEL_27;
  }

  self->_trackNumber = *(v4 + 24);
  *&self->_has |= 0x10u;
  v13 = *(v4 + 108);
  if ((v13 & 0x20) == 0)
  {
LABEL_28:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_userRating = *(v4 + 25);
  *&self->_has |= 0x20u;
  v13 = *(v4 + 108);
  if ((v13 & 0x40) == 0)
  {
LABEL_29:
    if ((v13 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_excludeFromShuffle = *(v4 + 104);
  *&self->_has |= 0x40u;
  v13 = *(v4 + 108);
  if ((v13 & 1) == 0)
  {
LABEL_30:
    if ((v13 & 2) == 0)
    {
      goto LABEL_31;
    }

LABEL_42:
    self->_audioFormat = *(v4 + 8);
    *&self->_has |= 2u;
    if ((*(v4 + 108) & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_41:
  self->_geniusId = *(v4 + 1);
  *&self->_has |= 1u;
  v13 = *(v4 + 108);
  if ((v13 & 2) != 0)
  {
    goto LABEL_42;
  }

LABEL_31:
  if ((v13 & 0x80) == 0)
  {
    goto LABEL_32;
  }

LABEL_43:
  self->_hasVideo = *(v4 + 105);
  *&self->_has |= 0x80u;
LABEL_32:
  if (*(v4 + 9))
  {
    [(MIPSong *)self setLyrics:?];
    v4 = v16;
  }

  playbackInfo = self->_playbackInfo;
  v15 = *(v4 + 11);
  if (playbackInfo)
  {
    if (!v15)
    {
      goto LABEL_47;
    }

    [(MIPPlaybackInfo *)playbackInfo mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_47;
    }

    [(MIPSong *)self setPlaybackInfo:?];
  }

  v4 = v16;
LABEL_47:
  if ((*(v4 + 108) & 8) != 0)
  {
    self->_lyricsChecksum = *(v4 + 20);
    *&self->_has |= 8u;
  }

  if (*(v4 + 8))
  {
    [(MIPSong *)self setHlsPlaylistURL:?];
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  v17 = [(MIPAlbum *)self->_album hash];
  v16 = [(MIPArtist *)self->_artist hash];
  v15 = [(MIPArtist *)self->_composer hash];
  v14 = [(MIPGenre *)self->_genre hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_discNumber;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_trackNumber;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_userRating;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_excludeFromShuffle;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if (*&self->_has)
  {
LABEL_6:
    v6 = 2654435761 * self->_geniusId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_audioFormat;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_8:
    v8 = 2654435761 * self->_hasVideo;
    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
LABEL_16:
  v9 = [(NSString *)self->_lyrics hash];
  v10 = [(MIPPlaybackInfo *)self->_playbackInfo hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_lyricsChecksum;
  }

  else
  {
    v11 = 0;
  }

  return v16 ^ v17 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_hlsPlaylistURL hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  album = self->_album;
  if (album | *(v4 + 2))
  {
    if (![(MIPAlbum *)album isEqual:?])
    {
      goto LABEL_61;
    }
  }

  artist = self->_artist;
  if (artist | *(v4 + 3))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_61;
    }
  }

  composer = self->_composer;
  if (composer | *(v4 + 5))
  {
    if (![(MIPArtist *)composer isEqual:?])
    {
      goto LABEL_61;
    }
  }

  genre = self->_genre;
  if (genre | *(v4 + 7))
  {
    if (![(MIPGenre *)genre isEqual:?])
    {
      goto LABEL_61;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 108) & 4) == 0 || self->_discNumber != *(v4 + 12))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 108) & 4) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 108) & 0x10) == 0 || self->_trackNumber != *(v4 + 24))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 108) & 0x10) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 108) & 0x20) == 0 || self->_userRating != *(v4 + 25))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 108) & 0x20) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 108) & 0x40) == 0)
    {
      goto LABEL_61;
    }

    if (self->_excludeFromShuffle)
    {
      if ((*(v4 + 104) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (*(v4 + 104))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 108) & 0x40) != 0)
  {
    goto LABEL_61;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 108) & 1) == 0 || self->_geniusId != *(v4 + 1))
    {
      goto LABEL_61;
    }
  }

  else if (*(v4 + 108))
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 108) & 2) == 0 || self->_audioFormat != *(v4 + 8))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 108) & 2) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x80) == 0)
  {
    if ((*(v4 + 108) & 0x80) == 0)
    {
      goto LABEL_45;
    }

LABEL_61:
    v12 = 0;
    goto LABEL_62;
  }

  if ((*(v4 + 108) & 0x80) == 0)
  {
    goto LABEL_61;
  }

  if (self->_hasVideo)
  {
    if ((*(v4 + 105) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (*(v4 + 105))
  {
    goto LABEL_61;
  }

LABEL_45:
  lyrics = self->_lyrics;
  if (lyrics | *(v4 + 9) && ![(NSString *)lyrics isEqual:?])
  {
    goto LABEL_61;
  }

  playbackInfo = self->_playbackInfo;
  if (playbackInfo | *(v4 + 11))
  {
    if (![(MIPPlaybackInfo *)playbackInfo isEqual:?])
    {
      goto LABEL_61;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 108) & 8) == 0 || self->_lyricsChecksum != *(v4 + 20))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 108) & 8) != 0)
  {
    goto LABEL_61;
  }

  hlsPlaylistURL = self->_hlsPlaylistURL;
  if (hlsPlaylistURL | *(v4 + 8))
  {
    v12 = [(NSString *)hlsPlaylistURL isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_62:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MIPAlbum *)self->_album copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(MIPArtist *)self->_artist copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(MIPArtist *)self->_composer copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(MIPGenre *)self->_genre copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_discNumber;
    *(v5 + 108) |= 4u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 96) = self->_trackNumber;
  *(v5 + 108) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 100) = self->_userRating;
  *(v5 + 108) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 104) = self->_excludeFromShuffle;
  *(v5 + 108) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    *(v5 + 32) = self->_audioFormat;
    *(v5 + 108) |= 2u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_15:
  *(v5 + 8) = self->_geniusId;
  *(v5 + 108) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((has & 0x80) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  *(v5 + 105) = self->_hasVideo;
  *(v5 + 108) |= 0x80u;
LABEL_8:
  v15 = [(NSString *)self->_lyrics copyWithZone:a3];
  v16 = *(v5 + 72);
  *(v5 + 72) = v15;

  v17 = [(MIPPlaybackInfo *)self->_playbackInfo copyWithZone:a3];
  v18 = *(v5 + 88);
  *(v5 + 88) = v17;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 80) = self->_lyricsChecksum;
    *(v5 + 108) |= 8u;
  }

  v19 = [(NSString *)self->_hlsPlaylistURL copyWithZone:a3];
  v20 = *(v5 + 64);
  *(v5 + 64) = v19;

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
  if ((has & 4) != 0)
  {
    *(v4 + 12) = self->_discNumber;
    *(v4 + 108) |= 4u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 24) = self->_trackNumber;
  *(v4 + 108) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 25) = self->_userRating;
  *(v4 + 108) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 104) = self->_excludeFromShuffle;
  *(v4 + 108) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    *(v4 + 8) = self->_audioFormat;
    *(v4 + 108) |= 2u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_31:
  *(v4 + 1) = self->_geniusId;
  *(v4 + 108) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_33:
  *(v4 + 105) = self->_hasVideo;
  *(v4 + 108) |= 0x80u;
LABEL_16:
  if (self->_lyrics)
  {
    [v6 setLyrics:?];
    v4 = v6;
  }

  if (self->_playbackInfo)
  {
    [v6 setPlaybackInfo:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 20) = self->_lyricsChecksum;
    *(v4 + 108) |= 8u;
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
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteInt32Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteInt32Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteBOOLField();
  v4 = v6;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    PBDataWriterWriteInt32Field();
    v4 = v6;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_31:
  PBDataWriterWriteInt64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_33:
  PBDataWriterWriteBOOLField();
  v4 = v6;
LABEL_16:
  if (self->_lyrics)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_playbackInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
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
  if ((has & 4) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_discNumber];
    [v3 setObject:v19 forKey:@"discNumber"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_trackNumber];
  [v3 setObject:v20 forKey:@"trackNumber"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_userRating];
  [v3 setObject:v21 forKey:@"userRating"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_excludeFromShuffle];
  [v3 setObject:v22 forKey:@"excludeFromShuffle"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    v24 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioFormat];
    [v3 setObject:v24 forKey:@"audioFormat"];

    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_31:
  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_geniusId];
  [v3 setObject:v23 forKey:@"geniusId"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_33:
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasVideo];
  [v3 setObject:v25 forKey:@"hasVideo"];

LABEL_16:
  lyrics = self->_lyrics;
  if (lyrics)
  {
    [v3 setObject:lyrics forKey:@"lyrics"];
  }

  playbackInfo = self->_playbackInfo;
  if (playbackInfo)
  {
    v15 = [(MIPPlaybackInfo *)playbackInfo dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"playbackInfo"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_lyricsChecksum];
    [v3 setObject:v16 forKey:@"lyricsChecksum"];
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
  v8.super_class = MIPSong;
  v4 = [(MIPSong *)&v8 description];
  v5 = [(MIPSong *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasLyricsChecksum:(BOOL)a3
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

- (void)setHasHasVideo:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasAudioFormat:(BOOL)a3
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

- (void)setHasExcludeFromShuffle:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasUserRating:(BOOL)a3
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

- (void)setHasTrackNumber:(BOOL)a3
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

- (void)setHasDiscNumber:(BOOL)a3
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

@end