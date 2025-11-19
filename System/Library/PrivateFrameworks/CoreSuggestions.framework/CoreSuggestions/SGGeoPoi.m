@interface SGGeoPoi
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGGeoPoi

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  if (v8[4])
  {
    [(SGGeoPoi *)self setUrl:?];
  }

  if (v8[3])
  {
    [(SGGeoPoi *)self setTitle:?];
  }

  prefGeocode = self->_prefGeocode;
  v5 = v8[2];
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
  v7 = v8[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((url = self->_url, !(url | v4[4])) || -[NSString isEqual:](url, "isEqual:")) && ((title = self->_title, !(title | v4[3])) || -[NSString isEqual:](title, "isEqual:")) && ((prefGeocode = self->_prefGeocode, !(prefGeocode | v4[2])) || -[SGPoint isEqual:](prefGeocode, "isEqual:")))
  {
    address = self->_address;
    if (address | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_url copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(SGPoint *)self->_prefGeocode copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(SGStructuredAddress *)self->_address copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_url)
  {
    [v4 setUrl:?];
    v4 = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_prefGeocode)
  {
    [v5 setPrefGeocode:?];
    v4 = v5;
  }

  if (self->_address)
  {
    [v5 setAddress:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_url)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_prefGeocode)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_address)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  url = self->_url;
  if (url)
  {
    [v3 setObject:url forKey:@"url"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  prefGeocode = self->_prefGeocode;
  if (prefGeocode)
  {
    v8 = [(SGPoint *)prefGeocode dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"pref_geocode"];
  }

  address = self->_address;
  if (address)
  {
    v10 = [(SGStructuredAddress *)address dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"address"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGGeoPoi;
  v4 = [(SGGeoPoi *)&v8 description];
  v5 = [(SGGeoPoi *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end