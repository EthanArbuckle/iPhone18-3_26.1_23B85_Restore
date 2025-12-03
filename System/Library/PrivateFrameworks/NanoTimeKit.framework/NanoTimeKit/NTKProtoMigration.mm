@interface NTKProtoMigration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NTKProtoMigration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKProtoMigration;
  v4 = [(NTKProtoMigration *)&v8 description];
  dictionaryRepresentation = [(NTKProtoMigration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  from = self->_from;
  if (from)
  {
    [dictionary setObject:from forKey:@"from"];
  }

  to = self->_to;
  if (to)
  {
    [v4 setObject:to forKey:@"to"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_from)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_to)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_from)
  {
    [toCopy setFrom:?];
    toCopy = v5;
  }

  if (self->_to)
  {
    [v5 setTo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_from copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_to copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((from = self->_from, !(from | equalCopy[1])) || -[NSString isEqual:](from, "isEqual:")))
  {
    to = self->_to;
    if (to | equalCopy[2])
    {
      v7 = [(NSString *)to isEqual:?];
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
    [(NTKProtoMigration *)self setFrom:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NTKProtoMigration *)self setTo:?];
    fromCopy = v5;
  }
}

@end