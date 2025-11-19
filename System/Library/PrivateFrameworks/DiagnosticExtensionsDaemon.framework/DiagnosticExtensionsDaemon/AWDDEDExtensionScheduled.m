@interface AWDDEDExtensionScheduled
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDDEDExtensionScheduled

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
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
  v5 = [(AWDDEDExtensionScheduled *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  extension = self->_extension;
  if (extension)
  {
    [v3 setObject:extension forKey:@"extension"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_delay];
    [v3 setObject:v6 forKey:@"delay"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  if (self->_extension)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    delay = self->_delay;
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 32) |= 2u;
  }

  if (self->_extension)
  {
    v5 = v4;
    [v4 setExtension:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[1] = self->_delay;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_extension copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_delay;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  extension = self->_extension;
  if (extension | *(v4 + 3))
  {
    if (![(NSString *)extension isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 32) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_delay != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[4] & 2) != 0)
  {
    self->_timestamp = v4[2];
    *&self->_has |= 2u;
  }

  if (v4[3])
  {
    v5 = v4;
    [(AWDDEDExtensionScheduled *)self setExtension:?];
    v4 = v5;
  }

  if (v4[4])
  {
    self->_delay = v4[1];
    *&self->_has |= 1u;
  }
}

@end