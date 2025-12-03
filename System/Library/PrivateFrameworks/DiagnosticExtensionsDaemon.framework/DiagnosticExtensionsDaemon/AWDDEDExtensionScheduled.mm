@interface AWDDEDExtensionScheduled
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDDEDExtensionScheduled

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDDEDExtensionScheduled;
  v4 = [(AWDDEDExtensionScheduled *)&v8 description];
  dictionaryRepresentation = [(AWDDEDExtensionScheduled *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  extension = self->_extension;
  if (extension)
  {
    [dictionary setObject:extension forKey:@"extension"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_delay];
    [dictionary setObject:v6 forKey:@"delay"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_extension)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    delay = self->_delay;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_timestamp;
    *(toCopy + 32) |= 2u;
  }

  if (self->_extension)
  {
    v5 = toCopy;
    [toCopy setExtension:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[1] = self->_delay;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_extension copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_delay;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  extension = self->_extension;
  if (extension | *(equalCopy + 3))
  {
    if (![(NSString *)extension isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 32) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_delay != *(equalCopy + 1))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_extension hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_delay;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[4] & 2) != 0)
  {
    self->_timestamp = fromCopy[2];
    *&self->_has |= 2u;
  }

  if (fromCopy[3])
  {
    v5 = fromCopy;
    [(AWDDEDExtensionScheduled *)self setExtension:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    self->_delay = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end