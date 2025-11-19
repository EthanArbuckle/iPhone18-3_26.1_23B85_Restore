@interface MSPMediaSyncHeader
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)syncTypeAsString:(int)a3;
- (int)StringAsSyncType:(id)a3;
- (int)syncType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTotalPackages:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPMediaSyncHeader

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_totalPackages = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
  }

  if (v5)
  {
    self->_syncType = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_totalPackages;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_syncType;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_totalPackages != *(v4 + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_syncType != *(v4 + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_totalPackages;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_syncType;
    *(result + 16) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_totalPackages;
    *(v4 + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_syncType;
    *(v4 + 16) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_totalPackages];
    [v3 setObject:v5 forKey:@"totalPackages"];

    has = self->_has;
  }

  if (has)
  {
    syncType = self->_syncType;
    if (syncType == 1)
    {
      v7 = @"Reset";
    }

    else if (syncType == 2)
    {
      v7 = @"Delta";
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_syncType];
    }

    [v3 setObject:v7 forKey:@"syncType"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPMediaSyncHeader;
  v4 = [(MSPMediaSyncHeader *)&v8 description];
  v5 = [(MSPMediaSyncHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsSyncType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"Reset"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Delta"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)syncTypeAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"Reset";
  }

  else if (a3 == 2)
  {
    v4 = @"Delta";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)syncType
{
  if (*&self->_has)
  {
    return self->_syncType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasTotalPackages:(BOOL)a3
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

@end