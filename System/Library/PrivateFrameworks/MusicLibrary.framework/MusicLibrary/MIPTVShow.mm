@interface MIPTVShow
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVideoQuality:(BOOL)quality;
- (void)writeTo:(id)to;
@end

@implementation MIPTVShow

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  artist = self->_artist;
  v6 = *(fromCopy + 1);
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

    [(MIPTVShow *)self setArtist:?];
  }

  fromCopy = v11;
LABEL_7:
  series = self->_series;
  v8 = *(fromCopy + 7);
  if (series)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MIPSeries *)series mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MIPTVShow *)self setSeries:?];
  }

  fromCopy = v11;
LABEL_13:
  if (*(fromCopy + 68))
  {
    self->_seasonNumber = *(fromCopy + 12);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(MIPTVShow *)self setEpisodeId:?];
    fromCopy = v11;
  }

  if (*(fromCopy + 3))
  {
    [(MIPTVShow *)self setEpisodeSortId:?];
    fromCopy = v11;
  }

  if ((*(fromCopy + 68) & 2) != 0)
  {
    self->_videoQuality = *(fromCopy + 16);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 5))
  {
    [(MIPTVShow *)self setNetworkName:?];
    fromCopy = v11;
  }

  genre = self->_genre;
  v10 = *(fromCopy + 4);
  if (genre)
  {
    if (v10)
    {
      [(MIPGenre *)genre mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(MIPTVShow *)self setGenre:?];
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  v3 = [(MIPArtist *)self->_artist hash];
  v4 = [(MIPSeries *)self->_series hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_seasonNumber;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_episodeId hash];
  v7 = [(NSString *)self->_episodeSortId hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_videoQuality;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_networkName hash];
  return v9 ^ [(MIPGenre *)self->_genre hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  artist = self->_artist;
  if (artist | *(equalCopy + 1))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_24;
    }
  }

  series = self->_series;
  if (series | *(equalCopy + 7))
  {
    if (![(MIPSeries *)series isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_seasonNumber != *(equalCopy + 12))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 68))
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  episodeId = self->_episodeId;
  if (episodeId | *(equalCopy + 2) && ![(NSString *)episodeId isEqual:?])
  {
    goto LABEL_24;
  }

  episodeSortId = self->_episodeSortId;
  if (episodeSortId | *(equalCopy + 3))
  {
    if (![(NSString *)episodeSortId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_videoQuality != *(equalCopy + 16))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
    goto LABEL_24;
  }

  networkName = self->_networkName;
  if (networkName | *(equalCopy + 5) && ![(NSString *)networkName isEqual:?])
  {
    goto LABEL_24;
  }

  genre = self->_genre;
  if (genre | *(equalCopy + 4))
  {
    v11 = [(MIPGenre *)genre isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_25:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MIPArtist *)self->_artist copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(MIPSeries *)self->_series copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_seasonNumber;
    *(v5 + 68) |= 1u;
  }

  v10 = [(NSString *)self->_episodeId copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_episodeSortId copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 64) = self->_videoQuality;
    *(v5 + 68) |= 2u;
  }

  v14 = [(NSString *)self->_networkName copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(MIPGenre *)self->_genre copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_artist)
  {
    [toCopy setArtist:?];
    toCopy = v5;
  }

  if (self->_series)
  {
    [v5 setSeries:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 12) = self->_seasonNumber;
    *(toCopy + 68) |= 1u;
  }

  if (self->_episodeId)
  {
    [v5 setEpisodeId:?];
    toCopy = v5;
  }

  if (self->_episodeSortId)
  {
    [v5 setEpisodeSortId:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 16) = self->_videoQuality;
    *(toCopy + 68) |= 2u;
  }

  if (self->_networkName)
  {
    [v5 setNetworkName:?];
    toCopy = v5;
  }

  if (self->_genre)
  {
    [v5 setGenre:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_series)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_episodeId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_episodeSortId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_networkName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_genre)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
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

  series = self->_series;
  if (series)
  {
    dictionaryRepresentation2 = [(MIPSeries *)series dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"series"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_seasonNumber];
    [dictionary setObject:v8 forKey:@"seasonNumber"];
  }

  episodeId = self->_episodeId;
  if (episodeId)
  {
    [dictionary setObject:episodeId forKey:@"episodeId"];
  }

  episodeSortId = self->_episodeSortId;
  if (episodeSortId)
  {
    [dictionary setObject:episodeSortId forKey:@"episodeSortId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_videoQuality];
    [dictionary setObject:v11 forKey:@"videoQuality"];
  }

  networkName = self->_networkName;
  if (networkName)
  {
    [dictionary setObject:networkName forKey:@"networkName"];
  }

  genre = self->_genre;
  if (genre)
  {
    dictionaryRepresentation3 = [(MIPGenre *)genre dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"genre"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPTVShow;
  v4 = [(MIPTVShow *)&v8 description];
  dictionaryRepresentation = [(MIPTVShow *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasVideoQuality:(BOOL)quality
{
  if (quality)
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