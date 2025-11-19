@interface MSPMediaSyncPackage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)a3;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLastPackage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPMediaSyncPackage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 40);
  if (v6)
  {
    self->_type = *(v4 + 8);
    *&self->_has |= 1u;
    v6 = *(v4 + 40);
  }

  if ((v6 & 2) != 0)
  {
    self->_lastPackage = *(v4 + 36);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 40) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_16;
  }

  if (self->_lastPackage)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_16;
  }

LABEL_9:
  header = self->_header;
  if (header | *(v4 + 2) && ![(MSPMediaSyncHeader *)header isEqual:?])
  {
    goto LABEL_16;
  }

  syncOperation = self->_syncOperation;
  if (syncOperation | *(v4 + 3))
  {
    if (![(MSPMediaSyncOperation *)syncOperation isEqual:?])
    {
      goto LABEL_16;
    }
  }

  error = self->_error;
  if (error | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(MSPMediaSyncHeader *)self->_header copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(MSPMediaSyncOperation *)self->_syncOperation copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  v12 = [(MSPMediaSyncError *)self->_error copyWithZone:a3];
  v13 = v6[1];
  v6[1] = v12;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[8] = self->_type;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 36) = self->_lastPackage;
    *(v4 + 40) |= 2u;
  }

  v6 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v6;
  }

  if (self->_syncOperation)
  {
    [v6 setSyncOperation:?];
    v4 = v6;
  }

  if (self->_error)
  {
    [v6 setError:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_syncOperation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v6 forKey:@"type"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastPackage];
    [v3 setObject:v7 forKey:@"lastPackage"];
  }

  header = self->_header;
  if (header)
  {
    v9 = [(MSPMediaSyncHeader *)header dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"header"];
  }

  syncOperation = self->_syncOperation;
  if (syncOperation)
  {
    v11 = [(MSPMediaSyncOperation *)syncOperation dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"syncOperation"];
  }

  error = self->_error;
  if (error)
  {
    v13 = [(MSPMediaSyncError *)error dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"error"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPMediaSyncPackage;
  v4 = [(MSPMediaSyncPackage *)&v8 description];
  v5 = [(MSPMediaSyncPackage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasLastPackage:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Header"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Error"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SyncOperation"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)typeAsString:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_278763A40[a3 - 1];
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