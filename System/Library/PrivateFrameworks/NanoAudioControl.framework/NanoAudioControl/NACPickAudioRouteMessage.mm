@interface NACPickAudioRouteMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NACPickAudioRouteMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NACPickAudioRouteMessage;
  v4 = [(NACPickAudioRouteMessage *)&v8 description];
  dictionaryRepresentation = [(NACPickAudioRouteMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  category = self->_category;
  if (category)
  {
    [dictionary setObject:category forKey:@"category"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_category)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_category)
  {
    [toCopy setCategory:?];
    toCopy = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_category copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((category = self->_category, !(category | equalCopy[1])) || -[NSString isEqual:](category, "isEqual:")))
  {
    identifier = self->_identifier;
    if (identifier | equalCopy[2])
    {
      v7 = [(NSString *)identifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NACPickAudioRouteMessage *)self setCategory:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NACPickAudioRouteMessage *)self setIdentifier:?];
    fromCopy = v5;
  }
}

@end