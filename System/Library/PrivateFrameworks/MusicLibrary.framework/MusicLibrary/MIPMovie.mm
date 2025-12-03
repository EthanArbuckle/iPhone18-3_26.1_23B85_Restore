@interface MIPMovie
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAudioLanguage:(BOOL)language;
- (void)setHasAudioTrackId:(BOOL)id;
- (void)setHasAudioTrackIndex:(BOOL)index;
- (void)setHasHasAlternateAudio:(BOOL)audio;
- (void)setHasHasChapterData:(BOOL)data;
- (void)setHasHasSubtitles:(BOOL)subtitles;
- (void)setHasRental:(BOOL)rental;
- (void)setHasRentalPlaybackDuration:(BOOL)duration;
- (void)setHasRentalPlaybackStartedDateTime:(BOOL)time;
- (void)setHasRentalStartedDateTime:(BOOL)time;
- (void)setHasSubtitleLanguage:(BOOL)language;
- (void)setHasSubtitleTrackIndex:(BOOL)index;
- (void)setHasVideoQuality:(BOOL)quality;
- (void)writeTo:(id)to;
@end

@implementation MIPMovie

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  artist = self->_artist;
  v6 = *(fromCopy + 5);
  v11 = fromCopy;
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

  fromCopy = v11;
LABEL_7:
  v7 = *(fromCopy + 56);
  if ((v7 & 0x200) != 0)
  {
    self->_videoQuality = *(fromCopy + 26);
    *&self->_has |= 0x200u;
    v7 = *(fromCopy + 56);
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

  else if ((*(fromCopy + 56) & 0x2000) == 0)
  {
    goto LABEL_9;
  }

  self->_rental = *(fromCopy + 111);
  *&self->_has |= 0x2000u;
  if ((*(fromCopy + 56) & 0x800) != 0)
  {
LABEL_10:
    self->_hasChapterData = *(fromCopy + 109);
    *&self->_has |= 0x800u;
  }

LABEL_11:
  if (*(fromCopy + 8))
  {
    [(MIPMovie *)self setExtendedContentName:?];
    fromCopy = v11;
  }

  if (*(fromCopy + 11))
  {
    [(MIPMovie *)self setMovieInfo:?];
    fromCopy = v11;
  }

  v8 = *(fromCopy + 56);
  if ((v8 & 0x400) != 0)
  {
    self->_hasAlternateAudio = *(fromCopy + 108);
    *&self->_has |= 0x400u;
    v8 = *(fromCopy + 56);
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

  else if ((*(fromCopy + 56) & 0x1000) == 0)
  {
    goto LABEL_17;
  }

  self->_hasSubtitles = *(fromCopy + 110);
  *&self->_has |= 0x1000u;
  v8 = *(fromCopy + 56);
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
  self->_audioLanguage = *(fromCopy + 12);
  *&self->_has |= 0x10u;
  v8 = *(fromCopy + 56);
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
  self->_audioTrackIndex = *(fromCopy + 14);
  *&self->_has |= 0x40u;
  v8 = *(fromCopy + 56);
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
  self->_audioTrackId = *(fromCopy + 13);
  *&self->_has |= 0x20u;
  v8 = *(fromCopy + 56);
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
  self->_subtitleLanguage = *(fromCopy + 24);
  *&self->_has |= 0x80u;
  v8 = *(fromCopy + 56);
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
  self->_subtitleTrackIndex = *(fromCopy + 25);
  *&self->_has |= 0x100u;
  v8 = *(fromCopy + 56);
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
  self->_rentalDuration = *(fromCopy + 1);
  *&self->_has |= 1u;
  v8 = *(fromCopy + 56);
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
  self->_rentalPlaybackDuration = *(fromCopy + 2);
  *&self->_has |= 2u;
  v8 = *(fromCopy + 56);
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
  self->_rentalPlaybackStartedDateTime = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 56) & 8) != 0)
  {
LABEL_26:
    self->_rentalStartedDateTime = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_27:
  if (*(fromCopy + 9))
  {
    [(MIPMovie *)self setFlattenedChapterData:?];
    fromCopy = v11;
  }

  genre = self->_genre;
  v10 = *(fromCopy + 10);
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

  fromCopy = v11;
LABEL_49:

  MEMORY[0x2821F96F8](genre, fromCopy);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_94;
  }

  artist = self->_artist;
  if (artist | *(equalCopy + 5))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_94;
    }
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 56) & 0x200) == 0 || self->_videoQuality != *(equalCopy + 26))
    {
      goto LABEL_94;
    }
  }

  else if ((*(equalCopy + 56) & 0x200) != 0)
  {
    goto LABEL_94;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 56) & 0x2000) == 0)
    {
      goto LABEL_94;
    }

    if (self->_rental)
    {
      if ((*(equalCopy + 111) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(equalCopy + 111))
    {
      goto LABEL_94;
    }
  }

  else if ((*(equalCopy + 56) & 0x2000) != 0)
  {
    goto LABEL_94;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 56) & 0x800) == 0)
    {
      goto LABEL_94;
    }

    if (self->_hasChapterData)
    {
      if ((*(equalCopy + 109) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(equalCopy + 109))
    {
      goto LABEL_94;
    }
  }

  else if ((*(equalCopy + 56) & 0x800) != 0)
  {
    goto LABEL_94;
  }

  extendedContentName = self->_extendedContentName;
  if (extendedContentName | *(equalCopy + 8) && ![(NSString *)extendedContentName isEqual:?])
  {
    goto LABEL_94;
  }

  movieInfo = self->_movieInfo;
  if (movieInfo | *(equalCopy + 11))
  {
    if (![(NSString *)movieInfo isEqual:?])
    {
      goto LABEL_94;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 56);
  if ((has & 0x400) != 0)
  {
    if ((*(equalCopy + 56) & 0x400) == 0)
    {
      goto LABEL_94;
    }

    if (self->_hasAlternateAudio)
    {
      if ((*(equalCopy + 108) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if (*(equalCopy + 108))
    {
      goto LABEL_94;
    }
  }

  else if ((*(equalCopy + 56) & 0x400) != 0)
  {
    goto LABEL_94;
  }

  if ((*&self->_has & 0x1000) == 0)
  {
    if ((*(equalCopy + 56) & 0x1000) == 0)
    {
      goto LABEL_21;
    }

LABEL_94:
    v12 = 0;
    goto LABEL_95;
  }

  if ((*(equalCopy + 56) & 0x1000) == 0)
  {
    goto LABEL_94;
  }

  if (self->_hasSubtitles)
  {
    if ((*(equalCopy + 110) & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else if (*(equalCopy + 110))
  {
    goto LABEL_94;
  }

LABEL_21:
  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_audioLanguage != *(equalCopy + 12))
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
    if ((v9 & 0x40) == 0 || self->_audioTrackIndex != *(equalCopy + 14))
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
    if ((v9 & 0x20) == 0 || self->_audioTrackId != *(equalCopy + 13))
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
    if ((v9 & 0x80) == 0 || self->_subtitleLanguage != *(equalCopy + 24))
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
    if ((*(equalCopy + 56) & 0x100) == 0 || self->_subtitleTrackIndex != *(equalCopy + 25))
    {
      goto LABEL_94;
    }
  }

  else if ((*(equalCopy + 56) & 0x100) != 0)
  {
    goto LABEL_94;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_rentalDuration != *(equalCopy + 1))
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
    if ((v9 & 2) == 0 || self->_rentalPlaybackDuration != *(equalCopy + 2))
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
    if ((v9 & 4) == 0 || self->_rentalPlaybackStartedDateTime != *(equalCopy + 3))
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
    if ((v9 & 8) == 0 || self->_rentalStartedDateTime != *(equalCopy + 4))
    {
      goto LABEL_94;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_94;
  }

  flattenedChapterData = self->_flattenedChapterData;
  if (flattenedChapterData | *(equalCopy + 9) && ![(NSData *)flattenedChapterData isEqual:?])
  {
    goto LABEL_94;
  }

  genre = self->_genre;
  if (genre | *(equalCopy + 10))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MIPArtist *)self->_artist copyWithZone:zone];
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
  v9 = [(NSString *)self->_extendedContentName copyWithZone:zone];
  v10 = *(v5 + 64);
  *(v5 + 64) = v9;

  v11 = [(NSString *)self->_movieInfo copyWithZone:zone];
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
  v14 = [(NSData *)self->_flattenedChapterData copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(MIPGenre *)self->_genre copyWithZone:zone];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_artist)
  {
    [toCopy setArtist:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(toCopy + 26) = self->_videoQuality;
    *(toCopy + 56) |= 0x200u;
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

  *(toCopy + 111) = self->_rental;
  *(toCopy + 56) |= 0x2000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    *(toCopy + 109) = self->_hasChapterData;
    *(toCopy + 56) |= 0x800u;
  }

LABEL_7:
  if (self->_extendedContentName)
  {
    [v7 setExtendedContentName:?];
    toCopy = v7;
  }

  if (self->_movieInfo)
  {
    [v7 setMovieInfo:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    *(toCopy + 108) = self->_hasAlternateAudio;
    *(toCopy + 56) |= 0x400u;
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

  *(toCopy + 110) = self->_hasSubtitles;
  *(toCopy + 56) |= 0x1000u;
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
  *(toCopy + 12) = self->_audioLanguage;
  *(toCopy + 56) |= 0x10u;
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
  *(toCopy + 14) = self->_audioTrackIndex;
  *(toCopy + 56) |= 0x40u;
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
  *(toCopy + 13) = self->_audioTrackId;
  *(toCopy + 56) |= 0x20u;
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
  *(toCopy + 24) = self->_subtitleLanguage;
  *(toCopy + 56) |= 0x80u;
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
  *(toCopy + 25) = self->_subtitleTrackIndex;
  *(toCopy + 56) |= 0x100u;
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
  *(toCopy + 1) = self->_rentalDuration;
  *(toCopy + 56) |= 1u;
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
  *(toCopy + 2) = self->_rentalPlaybackDuration;
  *(toCopy + 56) |= 2u;
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
  *(toCopy + 3) = self->_rentalPlaybackStartedDateTime;
  *(toCopy + 56) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    *(toCopy + 4) = self->_rentalStartedDateTime;
    *(toCopy + 56) |= 8u;
  }

LABEL_23:
  if (self->_flattenedChapterData)
  {
    [v7 setFlattenedChapterData:?];
    toCopy = v7;
  }

  if (self->_genre)
  {
    [v7 setGenre:?];
    toCopy = v7;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
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
  toCopy = v7;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

LABEL_7:
  if (self->_extendedContentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_movieInfo)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v7;
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
  toCopy = v7;
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
  toCopy = v7;
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
  toCopy = v7;
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
  toCopy = v7;
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
  toCopy = v7;
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
  toCopy = v7;
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
  toCopy = v7;
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
  toCopy = v7;
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
  toCopy = v7;
  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

LABEL_23:
  if (self->_flattenedChapterData)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_genre)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  artist = self->_artist;
  if (artist)
  {
    dictionaryRepresentation = [(MIPArtist *)artist dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"artist"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_videoQuality];
    [dictionary setObject:v16 forKey:@"videoQuality"];

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
  [dictionary setObject:v17 forKey:@"rental"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasChapterData];
    [dictionary setObject:v7 forKey:@"hasChapterData"];
  }

LABEL_7:
  extendedContentName = self->_extendedContentName;
  if (extendedContentName)
  {
    [dictionary setObject:extendedContentName forKey:@"extendedContentName"];
  }

  movieInfo = self->_movieInfo;
  if (movieInfo)
  {
    [dictionary setObject:movieInfo forKey:@"movieInfo"];
  }

  v10 = self->_has;
  if ((v10 & 0x400) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasAlternateAudio];
    [dictionary setObject:v18 forKey:@"hasAlternateAudio"];

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
  [dictionary setObject:v19 forKey:@"hasSubtitles"];

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
  [dictionary setObject:v20 forKey:@"audioLanguage"];

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
  [dictionary setObject:v21 forKey:@"audioTrackIndex"];

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
  [dictionary setObject:v22 forKey:@"audioTrackId"];

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
  [dictionary setObject:v23 forKey:@"subtitleLanguage"];

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
  [dictionary setObject:v24 forKey:@"subtitleTrackIndex"];

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
  [dictionary setObject:v25 forKey:@"rentalDuration"];

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
  [dictionary setObject:v26 forKey:@"rentalPlaybackDuration"];

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
  [dictionary setObject:v27 forKey:@"rentalPlaybackStartedDateTime"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_22:
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_rentalStartedDateTime];
    [dictionary setObject:v11 forKey:@"rentalStartedDateTime"];
  }

LABEL_23:
  flattenedChapterData = self->_flattenedChapterData;
  if (flattenedChapterData)
  {
    [dictionary setObject:flattenedChapterData forKey:@"flattenedChapterData"];
  }

  genre = self->_genre;
  if (genre)
  {
    dictionaryRepresentation2 = [(MIPGenre *)genre dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"genre"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPMovie;
  v4 = [(MIPMovie *)&v8 description];
  dictionaryRepresentation = [(MIPMovie *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasRentalStartedDateTime:(BOOL)time
{
  if (time)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRentalPlaybackStartedDateTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRentalPlaybackDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSubtitleTrackIndex:(BOOL)index
{
  if (index)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSubtitleLanguage:(BOOL)language
{
  if (language)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasAudioTrackId:(BOOL)id
{
  if (id)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAudioTrackIndex:(BOOL)index
{
  if (index)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasAudioLanguage:(BOOL)language
{
  if (language)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasHasSubtitles:(BOOL)subtitles
{
  if (subtitles)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasHasAlternateAudio:(BOOL)audio
{
  if (audio)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasHasChapterData:(BOOL)data
{
  if (data)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasRental:(BOOL)rental
{
  if (rental)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasVideoQuality:(BOOL)quality
{
  if (quality)
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