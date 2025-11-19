@interface AWDDEDExtensionCompleted
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsError:(id)a3;
- (int)error;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasError:(BOOL)a3;
- (void)setHasNumbytes:(BOOL)a3;
- (void)setHasNumfiles:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDDEDExtensionCompleted

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumfiles:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumbytes:(BOOL)a3
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

- (void)setHasError:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsError:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DEDCollectErrorNone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DEDCollectErrorNoSpace"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DEDCollectErrorNoExtension"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DEDCollectErrorNoFiles"])
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
  v5 = [(AWDDEDExtensionCompleted *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 8) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  extension = self->_extension;
  if (extension)
  {
    [v3 setObject:extension forKey:@"extension"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numfiles];
    [v3 setObject:v9 forKey:@"numfiles"];

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
  [v3 setObject:v10 forKey:@"numbytes"];

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

  [v3 setObject:v12 forKey:@"error"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_duration];
  [v3 setObject:v7 forKey:@"duration"];

LABEL_10:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 8) != 0)
  {
    v4[4] = self->_timestamp;
    *(v4 + 56) |= 8u;
  }

  if (self->_extension)
  {
    v6 = v4;
    [v4 setExtension:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = self->_numfiles;
    *(v4 + 56) |= 4u;
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

  v4[2] = self->_numbytes;
  *(v4 + 56) |= 2u;
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
  *(v4 + 10) = self->_error;
  *(v4 + 56) |= 0x10u;
  if (*&self->_has)
  {
LABEL_9:
    v4[1] = self->_duration;
    *(v4 + 56) |= 1u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 56) |= 8u;
  }

  v7 = [(NSString *)self->_extension copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = *(v4 + 56);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_timestamp != *(v4 + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_29;
  }

  extension = self->_extension;
  if (extension | *(v4 + 6))
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
    if ((*(v4 + 56) & 4) == 0 || self->_numfiles != *(v4 + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_numbytes != *(v4 + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 56) & 0x10) == 0 || self->_error != *(v4 + 10))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 56) & 0x10) != 0)
  {
    goto LABEL_29;
  }

  v8 = (*(v4 + 56) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_duration != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 56) & 8) != 0)
  {
    self->_timestamp = *(v4 + 4);
    *&self->_has |= 8u;
  }

  if (*(v4 + 6))
  {
    v6 = v4;
    [(AWDDEDExtensionCompleted *)self setExtension:?];
    v4 = v6;
  }

  v5 = *(v4 + 56);
  if ((v5 & 4) != 0)
  {
    self->_numfiles = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 56);
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

  else if ((*(v4 + 56) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_numbytes = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 56);
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
  self->_error = *(v4 + 10);
  *&self->_has |= 0x10u;
  if (*(v4 + 56))
  {
LABEL_9:
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_10:
}

@end