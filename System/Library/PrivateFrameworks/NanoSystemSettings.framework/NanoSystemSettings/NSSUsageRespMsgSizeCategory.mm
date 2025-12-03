@interface NSSUsageRespMsgSizeCategory
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSUsageRespMsgSizeCategory

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsgSizeCategory;
  v4 = [(NSSUsageRespMsgSizeCategory *)&v8 description];
  dictionaryRepresentation = [(NSSUsageRespMsgSizeCategory *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  categoryIdentifier = self->_categoryIdentifier;
  if (categoryIdentifier)
  {
    [v4 setObject:categoryIdentifier forKey:@"categoryIdentifier"];
  }

  size = self->_size;
  if (size)
  {
    dictionaryRepresentation = [(NSSUsageSize *)size dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"size"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_categoryIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_size)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_categoryIdentifier)
  {
    [v5 setCategoryIdentifier:?];
    toCopy = v5;
  }

  if (self->_size)
  {
    [v5 setSize:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_categoryIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSSUsageSize *)self->_size copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[2])) || -[NSString isEqual:](name, "isEqual:")) && ((categoryIdentifier = self->_categoryIdentifier, !(categoryIdentifier | equalCopy[1])) || -[NSString isEqual:](categoryIdentifier, "isEqual:")))
  {
    size = self->_size;
    if (size | equalCopy[3])
    {
      v8 = [(NSSUsageSize *)size isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_categoryIdentifier hash]^ v3;
  return v4 ^ [(NSSUsageSize *)self->_size hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(NSSUsageRespMsgSizeCategory *)self setName:?];
    fromCopy = v7;
  }

  if (fromCopy[1])
  {
    [(NSSUsageRespMsgSizeCategory *)self setCategoryIdentifier:?];
    fromCopy = v7;
  }

  size = self->_size;
  v6 = fromCopy[3];
  if (size)
  {
    if (v6)
    {
      [(NSSUsageSize *)size mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NSSUsageRespMsgSizeCategory *)self setSize:?];
  }

  MEMORY[0x2821F96F8]();
}

@end