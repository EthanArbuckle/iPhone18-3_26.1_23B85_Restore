@interface MIPPodcast
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MIPPodcast

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  artist = self->_artist;
  v9 = fromCopy;
  v6 = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((artist = self->_artist, !(artist | equalCopy[1])) || -[MIPArtist isEqual:](artist, "isEqual:")) && ((series = self->_series, !(series | equalCopy[4])) || -[MIPSeries isEqual:](series, "isEqual:")) && ((externalGuid = self->_externalGuid, !(externalGuid | equalCopy[2])) || -[NSString isEqual:](externalGuid, "isEqual:")))
  {
    feedUrl = self->_feedUrl;
    if (feedUrl | equalCopy[3])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MIPArtist *)self->_artist copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(MIPSeries *)self->_series copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_externalGuid copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_feedUrl copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

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

  if (self->_externalGuid)
  {
    [v5 setExternalGuid:?];
    toCopy = v5;
  }

  if (self->_feedUrl)
  {
    [v5 setFeedUrl:?];
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

  if (self->_externalGuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_feedUrl)
  {
    PBDataWriterWriteStringField();
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

  externalGuid = self->_externalGuid;
  if (externalGuid)
  {
    [dictionary setObject:externalGuid forKey:@"externalGuid"];
  }

  feedUrl = self->_feedUrl;
  if (feedUrl)
  {
    [dictionary setObject:feedUrl forKey:@"feedUrl"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPPodcast;
  v4 = [(MIPPodcast *)&v8 description];
  dictionaryRepresentation = [(MIPPodcast *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end