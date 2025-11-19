@interface BMPBPhotosKnowledgeGraphEnrichmentLocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBPhotosKnowledgeGraphEnrichmentLocation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPhotosKnowledgeGraphEnrichmentLocation;
  v4 = [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)&v8 description];
  v5 = [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  street = self->_street;
  if (street)
  {
    [v3 setObject:street forKey:@"street"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_street)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_encodedLocation)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_street)
  {
    [v4 setStreet:?];
    v4 = v5;
  }

  if (self->_city)
  {
    [v5 setCity:?];
    v4 = v5;
  }

  if (self->_state)
  {
    [v5 setState:?];
    v4 = v5;
  }

  if (self->_country)
  {
    [v5 setCountry:?];
    v4 = v5;
  }

  if (self->_encodedLocation)
  {
    [v5 setEncodedLocation:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_street copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_city copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_state copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_country copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSData *)self->_encodedLocation copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((street = self->_street, !(street | v4[5])) || -[NSString isEqual:](street, "isEqual:")) && ((city = self->_city, !(city | v4[1])) || -[NSString isEqual:](city, "isEqual:")) && ((state = self->_state, !(state | v4[4])) || -[NSString isEqual:](state, "isEqual:")) && ((country = self->_country, !(country | v4[2])) || -[NSString isEqual:](country, "isEqual:")))
  {
    encodedLocation = self->_encodedLocation;
    if (encodedLocation | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setStreet:?];
  }

  if (v4[1])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setCity:?];
  }

  if (v4[4])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setState:?];
  }

  if (v4[2])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setCountry:?];
  }

  if (v4[3])
  {
    [(BMPBPhotosKnowledgeGraphEnrichmentLocation *)self setEncodedLocation:?];
  }
}

@end