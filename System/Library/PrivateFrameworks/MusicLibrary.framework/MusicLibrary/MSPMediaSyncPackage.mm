@interface MSPMediaSyncPackage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLastPackage:(BOOL)package;
- (void)writeTo:(id)to;
@end

@implementation MSPMediaSyncPackage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 40);
  if (v6)
  {
    self->_type = *(fromCopy + 8);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 40);
  }

  if ((v6 & 2) != 0)
  {
    self->_lastPackage = *(fromCopy + 36);
    *&self->_has |= 2u;
  }

  header = self->_header;
  v8 = v5[2];
  v13 = v5;
  if (header)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(MSPMediaSyncHeader *)header mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(MSPMediaSyncPackage *)self setHeader:?];
  }

  v5 = v13;
LABEL_11:
  syncOperation = self->_syncOperation;
  v10 = v5[3];
  if (syncOperation)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(MSPMediaSyncOperation *)syncOperation mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(MSPMediaSyncPackage *)self setSyncOperation:?];
  }

  v5 = v13;
LABEL_17:
  error = self->_error;
  v12 = v5[1];
  if (error)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    error = [(MSPMediaSyncError *)error mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    error = [(MSPMediaSyncPackage *)self setError:?];
  }

  v5 = v13;
LABEL_23:

  MEMORY[0x2821F96F8](error, v5);
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_lastPackage;
LABEL_6:
  v5 = v4 ^ v3 ^ [(MSPMediaSyncHeader *)self->_header hash];
  v6 = [(MSPMediaSyncOperation *)self->_syncOperation hash];
  return v5 ^ v6 ^ [(MSPMediaSyncError *)self->_error hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 40) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*(equalCopy + 40) & 2) == 0)
  {
    goto LABEL_16;
  }

  if (self->_lastPackage)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_16;
  }

LABEL_9:
  header = self->_header;
  if (header | *(equalCopy + 2) && ![(MSPMediaSyncHeader *)header isEqual:?])
  {
    goto LABEL_16;
  }

  syncOperation = self->_syncOperation;
  if (syncOperation | *(equalCopy + 3))
  {
    if (![(MSPMediaSyncOperation *)syncOperation isEqual:?])
    {
      goto LABEL_16;
    }
  }

  error = self->_error;
  if (error | *(equalCopy + 1))
  {
    v8 = [(MSPMediaSyncError *)error isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_type;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 36) = self->_lastPackage;
    *(v5 + 40) |= 2u;
  }

  v8 = [(MSPMediaSyncHeader *)self->_header copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(MSPMediaSyncOperation *)self->_syncOperation copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  v12 = [(MSPMediaSyncError *)self->_error copyWithZone:zone];
  v13 = v6[1];
  v6[1] = v12;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[8] = self->_type;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 36) = self->_lastPackage;
    *(toCopy + 40) |= 2u;
  }

  v6 = toCopy;
  if (self->_header)
  {
    [toCopy setHeader:?];
    toCopy = v6;
  }

  if (self->_syncOperation)
  {
    [v6 setSyncOperation:?];
    toCopy = v6;
  }

  if (self->_error)
  {
    [v6 setError:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_syncOperation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = self->_type - 1;
    if (v5 >= 4)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v6 = off_278763A40[v5];
    }

    [dictionary setObject:v6 forKey:@"type"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastPackage];
    [dictionary setObject:v7 forKey:@"lastPackage"];
  }

  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(MSPMediaSyncHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  syncOperation = self->_syncOperation;
  if (syncOperation)
  {
    dictionaryRepresentation2 = [(MSPMediaSyncOperation *)syncOperation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"syncOperation"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation3 = [(MSPMediaSyncError *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"error"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPMediaSyncPackage;
  v4 = [(MSPMediaSyncPackage *)&v8 description];
  dictionaryRepresentation = [(MSPMediaSyncPackage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasLastPackage:(BOOL)package
{
  if (package)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Header"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Error"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SyncOperation"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)typeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278763A40[string - 1];
  }

  return v4;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

@end