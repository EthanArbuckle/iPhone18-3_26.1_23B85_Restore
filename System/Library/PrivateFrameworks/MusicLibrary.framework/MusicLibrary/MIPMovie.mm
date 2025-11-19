@interface MIPMovie
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAudioLanguage:(BOOL)a3;
- (void)setHasAudioTrackId:(BOOL)a3;
- (void)setHasAudioTrackIndex:(BOOL)a3;
- (void)setHasHasAlternateAudio:(BOOL)a3;
- (void)setHasHasChapterData:(BOOL)a3;
- (void)setHasHasSubtitles:(BOOL)a3;
- (void)setHasRental:(BOOL)a3;
- (void)setHasRentalPlaybackDuration:(BOOL)a3;
- (void)setHasRentalPlaybackStartedDateTime:(BOOL)a3;
- (void)setHasRentalStartedDateTime:(BOOL)a3;
- (void)setHasSubtitleLanguage:(BOOL)a3;
- (void)setHasSubtitleTrackIndex:(BOOL)a3;
- (void)setHasVideoQuality:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPMovie

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  artist = self->_artist;
  v6 = *(v4 + 5);
  v11 = v4;
  if (artist)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MIPArtist *)artist mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MIPMovie *)self setArtist:?];
  }

  v4 = v11;
LABEL_7:
  v7 = *(v4 + 56);
  if ((v7 & 0x200) != 0)
  {
    self->_videoQuality = *(v4 + 26);
    *&self->_has |= 0x200u;
    v7 = *(v4 + 56);
    if ((v7 & 0x2000) == 0)
    {
LABEL_9:
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 56) & 0x2000) == 0)
  {
    goto LABEL_9;
  }

  self->_rental = *(v4 + 111);
  *&self->_has |= 0x2000u;
  if ((*(v4 + 56) & 0x800) != 0)
  {
LABEL_10:
    self->_hasChapterData = *(v4 + 109);
    *&self->_has |= 0x800u;
  }

LABEL_11:
  if (*(v4 + 8))
  {
    [(MIPMovie *)self setExtendedContentName:?];
    v4 = v11;
  }

  if (*(v4 + 11))
  {
    [(MIPMovie *)self setMovieInfo:?];
    v4 = v11;
  }

  v8 = *(v4 + 56);
  if ((v8 & 0x400) != 0)
  {
    self->_hasAlternateAudio = *(v4 + 108);
    *&self->_has |= 0x400u;
    v8 = *(v4 + 56);
    if ((v8 & 0x1000) == 0)
    {
LABEL_17:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }
  }

  else if ((*(v4 + 56) & 0x1000) == 0)
  {
    goto LABEL_17;
  }

  self->_hasSubtitles = *(v4 + 110);
  *&self->_has |= 0x1000u;
  v8 = *(v4 + 56);
  if ((v8 & 0x10) == 0)
  {
LABEL_18:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_audioLanguage = *(v4 + 12);
  *&self->_has |= 0x10u;
  v8 = *(v4 + 56);
  if ((v8 & 0x40) == 0)
  {
LABEL_19:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_audioTrackIndex = *(v4 + 14);
  *&self->_has |= 0x40u;
  v8 = *(v4 + 56);
  if ((v8 & 0x20) == 0)
  {
LABEL_20:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_audioTrackId = *(v4 + 13);
  *&self->_has |= 0x20u;
  v8 = *(v4 + 56);
  if ((v8 & 0x80) == 0)
  {
LABEL_21:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_subtitleLanguage = *(v4 + 24);
  *&self->_has |= 0x80u;
  v8 = *(v4 + 56);
  if ((v8 & 0x100) == 0)
  {
LABEL_22:
    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_subtitleTrackIndex = *(v4 + 25);
  *&self->_has |= 0x100u;
  v8 = *(v4 + 56);
  if ((v8 & 1) == 0)
  {
LABEL_23:
    if ((v8 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_rentalDuration = *(v4 + 1);
  *&self->_has |= 1u;
  v8 = *(v4 + 56);
  if ((v8 & 2) == 0)
  {
LABEL_24:
    if ((v8 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_rentalPlaybackDuration = *(v4 + 2);
  *&self->_has |= 2u;
  v8 = *(v4 + 56);
  if ((v8 & 4) == 0)
  {
LABEL_25:
    if ((v8 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_44:
  self->_rentalPlaybackStartedDateTime = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 56) & 8) != 0)
  {
LABEL_26:
    self->_rentalStartedDateTime = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_27:
  if (*(v4 + 9))
  {
    [(MIPMovie *)self setFlattenedChapterData:?];
    v4 = v11;
  }

  genre = self->_genre;
  v10 = *(v4 + 10);
  if (genre)
  {
    if (!v10)
    {
      goto LABEL_49;
    }

    genre = [(MIPGenre *)genre mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_49;
    }

    genre = [(MIPMovie *)self setGenre:?];
  }

  v4 = v11;
LABEL_49:

  MEMORY[0x2821F96F8](genre, v4);
}

- (unint64_t)hash
{
  v3 = [(MIPArtist *)self->_artist hash];
  if ((*&self->_has & 0x200) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = 2654435761 * self->_videoQuality;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_rental;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_hasChapterData;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [(NSString *)self->_extendedContentName hash];
  v8 = [(NSString *)self->_movieInfo hash];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v10 = 2654435761 * self->_hasAlternateAudio;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_10:
      v11 = 2654435761 * self->_hasSubtitles;
      if ((has & 0x10) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_10;
    }
  }

  v11 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_audioLanguage;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_audioTrackIndex;
    if ((has & 0x20) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_audioTrackId;
    if ((has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_subtitleLanguage;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_subtitleTrackIndex;
    if (has)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = 0;
  if (has)
  {
LABEL_16:
    v17 = 2654435761 * self->_rentalDuration;
    if ((has & 2) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = 0;
  if ((has & 2) != 0)
  {
LABEL_17:
    v18 = 2654435761 * self->_rentalPlaybackDuration;
    if ((has & 4) != 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v19 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

LABEL_28:
  v18 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = 2654435761 * self->_rentalPlaybackStartedDateTime;
  if ((has & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  v20 = 2654435761 * self->_rentalStartedDateTime;
LABEL_31:
  v21 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11;
  v22 = v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ [(NSData *)self->_flattenedChapterData hash];
  return v21 ^ v22 ^ [(MIPGenre *)self->_genre hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_94;
  }

  artist = self->_artist;
  if (artist | *(v4 + 5))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_94;
    }
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 56) & 0x200) == 0 || self->_videoQuality != *(v4 + 26))
    {
      goto LABEL_94;
    }
  }

  else if ((*(v4 + 56) & 0x200) != 0)
  {
    goto LABEL_94;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 56) & 0x2000) == 0)
    {
      goto LABEL_94;
    }

    if (self->_rental)
    {
      if ((*(v4 + 111) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(v4 + 111))
    {
      goto LABEL_94;
    }
  }

  else if ((*(v4 + 56) & 0x2000) != 0)
  {
    goto LABEL_94;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 56) & 0x800) == 0)
    {
      goto LABEL_94;
    }

    if (self->_hasChapterData)
    {
      if ((*(v4 + 109) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(v4 + 109))
    {
      goto LABEL_94;
    }
  }

  else if ((*(v4 + 56) & 0x800) != 0)
  {
    goto LABEL_94;
  }

  extendedContentName = self->_extendedContentName;
  if (extendedContentName | *(v4 + 8) && ![(NSString *)extendedContentName isEqual:?])
  {
    goto LABEL_94;
  }

  movieInfo = self->_movieInfo;
  if (movieInfo | *(v4 + 11))
  {
    if (![(NSString *)movieInfo isEqual:?])
    {
      goto LABEL_94;
    }
  }

  has = self->_has;
  v9 = *(v4 + 56);
  if ((has & 0x400) != 0)
  {
    if ((*(v4 + 56) & 0x400) == 0)
    {
      goto LABEL_94;
    }

    if (self->_hasAlternateAudio)
    {
      if ((*(v4 + 108) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(v4 + 108))
    {
      goto LABEL_94;
    }
  }

  else if ((*(v4 + 56) & 0x400) != 0)
  {
    goto LABEL_94;
  }

  if ((*&self->_has & 0x1000) == 0)
  {
    if ((*(v4 + 56) & 0x1000) == 0)
    {
      goto LABEL_21;
    }

LABEL_94:
    v12 = 0;
    goto LABEL_95;
  }

  if ((*(v4 + 56) & 0x1000) == 0)
  {
    goto LABEL_94;
  }

  if (self->_hasSubtitles)
  {
    if ((*(v4 + 110) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else if (*(v4 + 110))
  {
    goto LABEL_94;
  }

LABEL_21:
  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_audioLanguage != *(v4 + 12))
    {
      goto LABEL_94;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_94;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_audioTrackIndex != *(v4 + 14))
    {
      goto LABEL_94;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_94;
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_audioTrackId != *(v4 + 13))
    {
      goto LABEL_94;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_94;
  }

  if ((has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_subtitleLanguage != *(v4 + 24))
    {
      goto LABEL_94;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_94;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 56) & 0x100) == 0 || self->_subtitleTrackIndex != *(v4 + 25))
    {
      goto LABEL_94;
    }
  }

  else if ((*(v4 + 56) & 0x100) != 0)
  {
    goto LABEL_94;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_rentalDuration != *(v4 + 1))
    {
      goto LABEL_94;
    }
  }

  else if (v9)
  {
    goto LABEL_94;
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_rentalPlaybackDuration != *(v4 + 2))
    {
      goto LABEL_94;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_94;
  }

  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_rentalPlaybackStartedDateTime != *(v4 + 3))
    {
      goto LABEL_94;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_94;
  }

  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_rentalStartedDateTime != *(v4 + 4))
    {
      goto LABEL_94;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_94;
  }

  flattenedChapterData = self->_flattenedChapterData;
  if (flattenedChapterData | *(v4 + 9) && ![(NSData *)flattenedChapterData isEqual:?])
  {
    goto LABEL_94;
  }

  genre = self->_genre;
  if (genre | *(v4 + 10))
  {
    v12 = [(MIPGenre *)genre isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_95:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MIPArtist *)self->_artist copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v5 + 104) = self->_videoQuality;
    *(v5 + 112) |= 0x200u;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 111) = self->_rental;
  *(v5 + 112) |= 0x2000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_4:
    *(v5 + 109) = self->_hasChapterData;
    *(v5 + 112) |= 0x800u;
  }

LABEL_5:
  v9 = [(NSString *)self->_extendedContentName copyWithZone:a3];
  v10 = *(v5 + 64);
  *(v5 + 64) = v9;

  v11 = [(NSString *)self->_movieInfo copyWithZone:a3];
  v12 = *(v5 + 88);
  *(v5 + 88) = v11;

  v13 = self->_has;
  if ((v13 & 0x400) != 0)
  {
    *(v5 + 108) = self->_hasAlternateAudio;
    *(v5 + 112) |= 0x400u;
    v13 = self->_has;
    if ((v13 & 0x1000) == 0)
    {
LABEL_7:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 110) = self->_hasSubtitles;
  *(v5 + 112) |= 0x1000u;
  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
LABEL_8:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 48) = self->_audioLanguage;
  *(v5 + 112) |= 0x10u;
  v13 = self->_has;
  if ((v13 & 0x40) == 0)
  {
LABEL_9:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 56) = self->_audioTrackIndex;
  *(v5 + 112) |= 0x40u;
  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
LABEL_10:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 52) = self->_audioTrackId;
  *(v5 + 112) |= 0x20u;
  v13 = self->_has;
  if ((v13 & 0x80) == 0)
  {
LABEL_11:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 96) = self->_subtitleLanguage;
  *(v5 + 112) |= 0x80u;
  v13 = self->_has;
  if ((v13 & 0x100) == 0)
  {
LABEL_12:
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 100) = self->_subtitleTrackIndex;
  *(v5 + 112) |= 0x100u;
  v13 = self->_has;
  if ((v13 & 1) == 0)
  {
LABEL_13:
    if ((v13 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 8) = self->_rentalDuration;
  *(v5 + 112) |= 1u;
  v13 = self->_has;
  if ((v13 & 2) == 0)
  {
LABEL_14:
    if ((v13 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    *(v5 + 24) = self->_rentalPlaybackStartedDateTime;
    *(v5 + 112) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  *(v5 + 16) = self->_rentalPlaybackDuration;
  *(v5 + 112) |= 2u;
  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v13 & 8) != 0)
  {
LABEL_16:
    *(v5 + 32) = self->_rentalStartedDateTime;
    *(v5 + 112) |= 8u;
  }

LABEL_17:
  v14 = [(NSData *)self->_flattenedChapterData copyWithZone:a3];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(MIPGenre *)self->_genre copyWithZone:a3];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_artist)
  {
    [v4 setArtist:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v4 + 26) = self->_videoQuality;
    *(v4 + 56) |= 0x200u;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_5:
      if ((has & 0x800) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 111) = self->_rental;
  *(v4 + 56) |= 0x2000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    *(v4 + 109) = self->_hasChapterData;
    *(v4 + 56) |= 0x800u;
  }

LABEL_7:
  if (self->_extendedContentName)
  {
    [v7 setExtendedContentName:?];
    v4 = v7;
  }

  if (self->_movieInfo)
  {
    [v7 setMovieInfo:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    *(v4 + 108) = self->_hasAlternateAudio;
    *(v4 + 56) |= 0x400u;
    v6 = self->_has;
    if ((v6 & 0x1000) == 0)
    {
LABEL_13:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_13;
  }

  *(v4 + 110) = self->_hasSubtitles;
  *(v4 + 56) |= 0x1000u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 12) = self->_audioLanguage;
  *(v4 + 56) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_15:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 14) = self->_audioTrackIndex;
  *(v4 + 56) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 13) = self->_audioTrackId;
  *(v4 + 56) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x80) == 0)
  {
LABEL_17:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v4 + 24) = self->_subtitleLanguage;
  *(v4 + 56) |= 0x80u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v4 + 25) = self->_subtitleTrackIndex;
  *(v4 + 56) |= 0x100u;
  v6 = self->_has;
  if ((v6 & 1) == 0)
  {
LABEL_19:
    if ((v6 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 1) = self->_rentalDuration;
  *(v4 + 56) |= 1u;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_20:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 2) = self->_rentalPlaybackDuration;
  *(v4 + 56) |= 2u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_21:
    if ((v6 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_42:
  *(v4 + 3) = self->_rentalPlaybackStartedDateTime;
  *(v4 + 56) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    *(v4 + 4) = self->_rentalStartedDateTime;
    *(v4 + 56) |= 8u;
  }

LABEL_23:
  if (self->_flattenedChapterData)
  {
    [v7 setFlattenedChapterData:?];
    v4 = v7;
  }

  if (self->_genre)
  {
    [v7 setGenre:?];
    v4 = v7;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_5:
      if ((has & 0x800) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  v4 = v7;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

LABEL_7:
  if (self->_extendedContentName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_movieInfo)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
    v6 = self->_has;
    if ((v6 & 0x1000) == 0)
    {
LABEL_13:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteBOOLField();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteInt32Field();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_15:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteInt32Field();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteInt32Field();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 0x80) == 0)
  {
LABEL_17:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteInt32Field();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteInt32Field();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 1) == 0)
  {
LABEL_19:
    if ((v6 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_20:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_21:
    if ((v6 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_42:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

LABEL_23:
  if (self->_flattenedChapterData)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_genre)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  artist = self->_artist;
  if (artist)
  {
    v5 = [(MIPArtist *)artist dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"artist"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_videoQuality];
    [v3 setObject:v16 forKey:@"videoQuality"];

    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_5:
      if ((has & 0x800) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_5;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_rental];
  [v3 setObject:v17 forKey:@"rental"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasChapterData];
    [v3 setObject:v7 forKey:@"hasChapterData"];
  }

LABEL_7:
  extendedContentName = self->_extendedContentName;
  if (extendedContentName)
  {
    [v3 setObject:extendedContentName forKey:@"extendedContentName"];
  }

  movieInfo = self->_movieInfo;
  if (movieInfo)
  {
    [v3 setObject:movieInfo forKey:@"movieInfo"];
  }

  v10 = self->_has;
  if ((v10 & 0x400) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasAlternateAudio];
    [v3 setObject:v18 forKey:@"hasAlternateAudio"];

    v10 = self->_has;
    if ((v10 & 0x1000) == 0)
    {
LABEL_13:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_13;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasSubtitles];
  [v3 setObject:v19 forKey:@"hasSubtitles"];

  v10 = self->_has;
  if ((v10 & 0x10) == 0)
  {
LABEL_14:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioLanguage];
  [v3 setObject:v20 forKey:@"audioLanguage"];

  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_15:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioTrackIndex];
  [v3 setObject:v21 forKey:@"audioTrackIndex"];

  v10 = self->_has;
  if ((v10 & 0x20) == 0)
  {
LABEL_16:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_audioTrackId];
  [v3 setObject:v22 forKey:@"audioTrackId"];

  v10 = self->_has;
  if ((v10 & 0x80) == 0)
  {
LABEL_17:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  v23 = [MEMORY[0x277CCABB0] numberWithInt:self->_subtitleLanguage];
  [v3 setObject:v23 forKey:@"subtitleLanguage"];

  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_18:
    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  v24 = [MEMORY[0x277CCABB0] numberWithInt:self->_subtitleTrackIndex];
  [v3 setObject:v24 forKey:@"subtitleTrackIndex"];

  v10 = self->_has;
  if ((v10 & 1) == 0)
  {
LABEL_19:
    if ((v10 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  v25 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_rentalDuration];
  [v3 setObject:v25 forKey:@"rentalDuration"];

  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
LABEL_20:
    if ((v10 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  v26 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_rentalPlaybackDuration];
  [v3 setObject:v26 forKey:@"rentalPlaybackDuration"];

  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_21:
    if ((v10 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_42:
  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_rentalPlaybackStartedDateTime];
  [v3 setObject:v27 forKey:@"rentalPlaybackStartedDateTime"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_rentalStartedDateTime];
    [v3 setObject:v11 forKey:@"rentalStartedDateTime"];
  }

LABEL_23:
  flattenedChapterData = self->_flattenedChapterData;
  if (flattenedChapterData)
  {
    [v3 setObject:flattenedChapterData forKey:@"flattenedChapterData"];
  }

  genre = self->_genre;
  if (genre)
  {
    v14 = [(MIPGenre *)genre dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"genre"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPMovie;
  v4 = [(MIPMovie *)&v8 description];
  v5 = [(MIPMovie *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasRentalStartedDateTime:(BOOL)a3
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

- (void)setHasRentalPlaybackStartedDateTime:(BOOL)a3
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

- (void)setHasRentalPlaybackDuration:(BOOL)a3
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

- (void)setHasSubtitleTrackIndex:(BOOL)a3
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

- (void)setHasSubtitleLanguage:(BOOL)a3
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

- (void)setHasAudioTrackId:(BOOL)a3
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

- (void)setHasAudioTrackIndex:(BOOL)a3
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

- (void)setHasAudioLanguage:(BOOL)a3
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

- (void)setHasHasSubtitles:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasHasAlternateAudio:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasHasChapterData:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasRental:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasVideoQuality:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

@end