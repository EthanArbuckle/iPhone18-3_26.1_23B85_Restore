@interface MIPPodcast
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPPodcast

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  artist = self->_artist;
  v9 = v4;
  v6 = v4[1];
  if (artist)
  {
    if (v6)
    {
      [(MIPArtist *)artist mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MIPPodcast *)self setArtist:?];
  }

  series = self->_series;
  v8 = v9[4];
  if (series)
  {
    if (v8)
    {
      [(MIPSeries *)series mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(MIPPodcast *)self setSeries:?];
  }

  if (v9[2])
  {
    [(MIPPodcast *)self setExternalGuid:?];
  }

  if (v9[3])
  {
    [(MIPPodcast *)self setFeedUrl:?];
  }
}

- (unint64_t)hash
{
  v3 = [(MIPArtist *)self->_artist hash];
  v4 = [(MIPSeries *)self->_series hash]^ v3;
  v5 = [(NSString *)self->_externalGuid hash];
  return v4 ^ v5 ^ [(NSString *)self->_feedUrl hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((artist = self->_artist, !(artist | v4[1])) || -[MIPArtist isEqual:](artist, "isEqual:")) && ((series = self->_series, !(series | v4[4])) || -[MIPSeries isEqual:](series, "isEqual:")) && ((externalGuid = self->_externalGuid, !(externalGuid | v4[2])) || -[NSString isEqual:](externalGuid, "isEqual:")))
  {
    feedUrl = self->_feedUrl;
    if (feedUrl | v4[3])
    {
      v9 = [(NSString *)feedUrl isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MIPArtist *)self->_artist copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(MIPSeries *)self->_series copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_externalGuid copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_feedUrl copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

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

  if (self->_externalGuid)
  {
    [v5 setExternalGuid:?];
    v4 = v5;
  }

  if (self->_feedUrl)
  {
    [v5 setFeedUrl:?];
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

  if (self->_externalGuid)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_feedUrl)
  {
    PBDataWriterWriteStringField();
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

  externalGuid = self->_externalGuid;
  if (externalGuid)
  {
    [v3 setObject:externalGuid forKey:@"externalGuid"];
  }

  feedUrl = self->_feedUrl;
  if (feedUrl)
  {
    [v3 setObject:feedUrl forKey:@"feedUrl"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPPodcast;
  v4 = [(MIPPodcast *)&v8 description];
  v5 = [(MIPPodcast *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end