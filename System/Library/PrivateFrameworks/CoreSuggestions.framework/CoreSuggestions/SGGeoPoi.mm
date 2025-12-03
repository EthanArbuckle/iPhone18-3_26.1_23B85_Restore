@interface SGGeoPoi
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SGGeoPoi

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(SGGeoPoi *)self setUrl:?];
  }

  if (fromCopy[3])
  {
    [(SGGeoPoi *)self setTitle:?];
  }

  prefGeocode = self->_prefGeocode;
  v5 = fromCopy[2];
  if (prefGeocode)
  {
    if (v5)
    {
      [(SGPoint *)prefGeocode mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(SGGeoPoi *)self setPrefGeocode:?];
  }

  address = self->_address;
  v7 = fromCopy[1];
  if (address)
  {
    if (v7)
    {
      [(SGStructuredAddress *)address mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SGGeoPoi *)self setAddress:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_url hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  v5 = [(SGPoint *)self->_prefGeocode hash];
  return v4 ^ v5 ^ [(SGStructuredAddress *)self->_address hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((url = self->_url, !(url | equalCopy[4])) || -[NSString isEqual:](url, "isEqual:")) && ((title = self->_title, !(title | equalCopy[3])) || -[NSString isEqual:](title, "isEqual:")) && ((prefGeocode = self->_prefGeocode, !(prefGeocode | equalCopy[2])) || -[SGPoint isEqual:](prefGeocode, "isEqual:")))
  {
    address = self->_address;
    if (address | equalCopy[1])
    {
      v9 = [(SGStructuredAddress *)address isEqual:?];
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
  v6 = [(NSString *)self->_url copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(SGPoint *)self->_prefGeocode copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(SGStructuredAddress *)self->_address copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_url)
  {
    [toCopy setUrl:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_prefGeocode)
  {
    [v5 setPrefGeocode:?];
    toCopy = v5;
  }

  if (self->_address)
  {
    [v5 setAddress:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_url)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_prefGeocode)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_address)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  url = self->_url;
  if (url)
  {
    [dictionary setObject:url forKey:@"url"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  prefGeocode = self->_prefGeocode;
  if (prefGeocode)
  {
    dictionaryRepresentation = [(SGPoint *)prefGeocode dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"pref_geocode"];
  }

  address = self->_address;
  if (address)
  {
    dictionaryRepresentation2 = [(SGStructuredAddress *)address dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"address"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGGeoPoi;
  v4 = [(SGGeoPoi *)&v8 description];
  dictionaryRepresentation = [(SGGeoPoi *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end