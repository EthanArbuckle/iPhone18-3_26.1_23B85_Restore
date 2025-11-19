@interface MIPTVShow
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVideoQuality:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPTVShow

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  artist = self->_artist;
  v6 = *(v4 + 1);
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

    [(MIPTVShow *)self setArtist:?];
  }

  v4 = v11;
LABEL_7:
  series = self->_series;
  v8 = *(v4 + 7);
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

  v4 = v11;
LABEL_13:
  if (*(v4 + 68))
  {
    self->_seasonNumber = *(v4 + 12);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(MIPTVShow *)self setEpisodeId:?];
    v4 = v11;
  }

  if (*(v4 + 3))
  {
    [(MIPTVShow *)self setEpisodeSortId:?];
    v4 = v11;
  }

  if ((*(v4 + 68) & 2) != 0)
  {
    self->_videoQuality = *(v4 + 16);
    *&self->_has |= 2u;
  }

  if (*(v4 + 5))
  {
    [(MIPTVShow *)self setNetworkName:?];
    v4 = v11;
  }

  genre = self->_genre;
  v10 = *(v4 + 4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  artist = self->_artist;
  if (artist | *(v4 + 1))
  {
    if (![(MIPArtist *)artist isEqual:?])
    {
      goto LABEL_24;
    }
  }

  series = self->_series;
  if (series | *(v4 + 7))
  {
    if (![(MIPSeries *)series isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_seasonNumber != *(v4 + 12))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 68))
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  episodeId = self->_episodeId;
  if (episodeId | *(v4 + 2) && ![(NSString *)episodeId isEqual:?])
  {
    goto LABEL_24;
  }

  episodeSortId = self->_episodeSortId;
  if (episodeSortId | *(v4 + 3))
  {
    if (![(NSString *)episodeSortId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_videoQuality != *(v4 + 16))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
    goto LABEL_24;
  }

  networkName = self->_networkName;
  if (networkName | *(v4 + 5) && ![(NSString *)networkName isEqual:?])
  {
    goto LABEL_24;
  }

  genre = self->_genre;
  if (genre | *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MIPArtist *)self->_artist copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(MIPSeries *)self->_series copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_seasonNumber;
    *(v5 + 68) |= 1u;
  }

  v10 = [(NSString *)self->_episodeId copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_episodeSortId copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 64) = self->_videoQuality;
    *(v5 + 68) |= 2u;
  }

  v14 = [(NSString *)self->_networkName copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(MIPGenre *)self->_genre copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_artist)
  {
    [v4 setArtist:?];
    v4 = v5;
  }

  if (self->_series)
  {
    [v5 setSeries:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 12) = self->_seasonNumber;
    *(v4 + 68) |= 1u;
  }

  if (self->_episodeId)
  {
    [v5 setEpisodeId:?];
    v4 = v5;
  }

  if (self->_episodeSortId)
  {
    [v5 setEpisodeSortId:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 16) = self->_videoQuality;
    *(v4 + 68) |= 2u;
  }

  if (self->_networkName)
  {
    [v5 setNetworkName:?];
    v4 = v5;
  }

  if (self->_genre)
  {
    [v5 setGenre:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_artist)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_series)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_episodeId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_episodeSortId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_networkName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_genre)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
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

  series = self->_series;
  if (series)
  {
    v7 = [(MIPSeries *)series dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"series"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_seasonNumber];
    [v3 setObject:v8 forKey:@"seasonNumber"];
  }

  episodeId = self->_episodeId;
  if (episodeId)
  {
    [v3 setObject:episodeId forKey:@"episodeId"];
  }

  episodeSortId = self->_episodeSortId;
  if (episodeSortId)
  {
    [v3 setObject:episodeSortId forKey:@"episodeSortId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_videoQuality];
    [v3 setObject:v11 forKey:@"videoQuality"];
  }

  networkName = self->_networkName;
  if (networkName)
  {
    [v3 setObject:networkName forKey:@"networkName"];
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
  v8.super_class = MIPTVShow;
  v4 = [(MIPTVShow *)&v8 description];
  v5 = [(MIPTVShow *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasVideoQuality:(BOOL)a3
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