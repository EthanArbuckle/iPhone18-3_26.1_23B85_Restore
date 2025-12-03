@interface AWDDEDExtensionCompleted
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsError:(id)error;
- (int)error;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasError:(BOOL)error;
- (void)setHasNumbytes:(BOOL)numbytes;
- (void)setHasNumfiles:(BOOL)numfiles;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDDEDExtensionCompleted

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumfiles:(BOOL)numfiles
{
  if (numfiles)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumbytes:(BOOL)numbytes
{
  if (numbytes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)error
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_error;
  }

  else
  {
    return 0;
  }
}

- (void)setHasError:(BOOL)error
{
  if (error)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsError:(id)error
{
  errorCopy = error;
  if ([errorCopy isEqualToString:@"DEDCollectErrorNone"])
  {
    v4 = 0;
  }

  else if ([errorCopy isEqualToString:@"DEDCollectErrorNoSpace"])
  {
    v4 = 1;
  }

  else if ([errorCopy isEqualToString:@"DEDCollectErrorNoExtension"])
  {
    v4 = 2;
  }

  else if ([errorCopy isEqualToString:@"DEDCollectErrorNoFiles"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDDEDExtensionCompleted;
  v4 = [(AWDDEDExtensionCompleted *)&v8 description];
  dictionaryRepresentation = [(AWDDEDExtensionCompleted *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 8) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  extension = self->_extension;
  if (extension)
  {
    [dictionary setObject:extension forKey:@"extension"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numfiles];
    [dictionary setObject:v9 forKey:@"numfiles"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numbytes];
  [dictionary setObject:v10 forKey:@"numbytes"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  error = self->_error;
  if (error >= 4)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_error];
  }

  else
  {
    v12 = off_278F66DA8[error];
  }

  [dictionary setObject:v12 forKey:@"error"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_duration];
  [dictionary setObject:v7 forKey:@"duration"];

LABEL_10:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_extension)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    numfiles = self->_numfiles;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  numbytes = self->_numbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  error = self->_error;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_9:
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    toCopy[4] = self->_timestamp;
    *(toCopy + 56) |= 8u;
  }

  if (self->_extension)
  {
    v6 = toCopy;
    [toCopy setExtension:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[3] = self->_numfiles;
    *(toCopy + 56) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  toCopy[2] = self->_numbytes;
  *(toCopy + 56) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  *(toCopy + 10) = self->_error;
  *(toCopy + 56) |= 0x10u;
  if (*&self->_has)
  {
LABEL_9:
    toCopy[1] = self->_duration;
    *(toCopy + 56) |= 1u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 56) |= 8u;
  }

  v7 = [(NSString *)self->_extension copyWithZone:zone];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 24) = self->_numfiles;
    *(v6 + 56) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 40) = self->_error;
      *(v6 + 56) |= 0x10u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_numbytes;
  *(v6 + 56) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (has)
  {
LABEL_7:
    *(v6 + 8) = self->_duration;
    *(v6 + 56) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = *(equalCopy + 56);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_timestamp != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_29;
  }

  extension = self->_extension;
  if (extension | *(equalCopy + 6))
  {
    if (![(NSString *)extension isEqual:?])
    {
LABEL_29:
      v8 = 0;
      goto LABEL_30;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_numfiles != *(equalCopy + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_numbytes != *(equalCopy + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_error != *(equalCopy + 10))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 56) & 0x10) != 0)
  {
    goto LABEL_29;
  }

  v8 = (*(equalCopy + 56) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_duration != *(equalCopy + 1))
    {
      goto LABEL_29;
    }

    v8 = 1;
  }

LABEL_30:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_extension hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761u * self->_numfiles;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_numbytes;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if (*&self->_has)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_error;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761u * self->_duration;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 56) & 8) != 0)
  {
    self->_timestamp = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 6))
  {
    v6 = fromCopy;
    [(AWDDEDExtensionCompleted *)self setExtension:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 4) != 0)
  {
    self->_numfiles = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 56);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 56) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_numbytes = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  self->_error = *(fromCopy + 10);
  *&self->_has |= 0x10u;
  if (*(fromCopy + 56))
  {
LABEL_9:
    self->_duration = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_10:
}

@end