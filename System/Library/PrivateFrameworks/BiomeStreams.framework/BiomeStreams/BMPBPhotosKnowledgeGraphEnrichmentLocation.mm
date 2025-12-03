@interface BMPBPhotosKnowledgeGraphEnrichmentLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBPhotosKnowledgeGraphEnrichmentLocation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPhotosKnowledgeGraphEnrichmentLocation;
  v4 = [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)&v8 description];
  dictionaryRepresentation = [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  street = self->_street;
  if (street)
  {
    [dictionary setObject:street forKey:@"street"];
  }

  city = self->_city;
  if (city)
  {
    [v4 setObject:city forKey:@"city"];
  }

  state = self->_state;
  if (state)
  {
    [v4 setObject:state forKey:@"state"];
  }

  country = self->_country;
  if (country)
  {
    [v4 setObject:country forKey:@"country"];
  }

  encodedLocation = self->_encodedLocation;
  if (encodedLocation)
  {
    [v4 setObject:encodedLocation forKey:@"encodedLocation"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_street)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_encodedLocation)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_street)
  {
    [toCopy setStreet:?];
    toCopy = v5;
  }

  if (self->_city)
  {
    [v5 setCity:?];
    toCopy = v5;
  }

  if (self->_state)
  {
    [v5 setState:?];
    toCopy = v5;
  }

  if (self->_country)
  {
    [v5 setCountry:?];
    toCopy = v5;
  }

  if (self->_encodedLocation)
  {
    [v5 setEncodedLocation:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_street copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_city copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_state copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_country copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSData *)self->_encodedLocation copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((street = self->_street, !(street | equalCopy[5])) || -[NSString isEqual:](street, "isEqual:")) && ((city = self->_city, !(city | equalCopy[1])) || -[NSString isEqual:](city, "isEqual:")) && ((state = self->_state, !(state | equalCopy[4])) || -[NSString isEqual:](state, "isEqual:")) && ((country = self->_country, !(country | equalCopy[2])) || -[NSString isEqual:](country, "isEqual:")))
  {
    encodedLocation = self->_encodedLocation;
    if (encodedLocation | equalCopy[3])
    {
      v10 = [(NSData *)encodedLocation isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_street hash];
  v4 = [(NSString *)self->_city hash]^ v3;
  v5 = [(NSString *)self->_state hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_country hash];
  return v6 ^ [(NSData *)self->_encodedLocation hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setStreet:?];
  }

  if (fromCopy[1])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setCity:?];
  }

  if (fromCopy[4])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setState:?];
  }

  if (fromCopy[2])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setCountry:?];
  }

  if (fromCopy[3])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setEncodedLocation:?];
  }
}

@end