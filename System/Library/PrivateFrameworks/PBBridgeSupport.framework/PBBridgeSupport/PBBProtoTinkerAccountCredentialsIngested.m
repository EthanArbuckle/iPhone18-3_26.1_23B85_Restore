@interface PBBProtoTinkerAccountCredentialsIngested
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoTinkerAccountCredentialsIngested

- (void)setHasSuccess:(BOOL)a3
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
  v8.super_class = PBBProtoTinkerAccountCredentialsIngested;
  v4 = [(PBBProtoTinkerAccountCredentialsIngested *)&v8 description];
  v5 = [(PBBProtoTinkerAccountCredentialsIngested *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v3 setObject:v4 forKey:@"success"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v3 setObject:errorDescription forKey:@"errorDescription"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cdpStatus];
    [v3 setObject:v6 forKey:@"cdpStatus"];
  }

  detailedError = self->_detailedError;
  if (detailedError)
  {
    [v3 setObject:detailedError forKey:@"detailedError"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    cdpStatus = self->_cdpStatus;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_detailedError)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[32] = self->_success;
    v4[36] |= 2u;
  }

  v5 = v4;
  if (self->_errorDescription)
  {
    [v4 setErrorDescription:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_cdpStatus;
    v4[36] |= 1u;
  }

  if (self->_detailedError)
  {
    [v5 setDetailedError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_success;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_cdpStatus;
    *(v6 + 36) |= 1u;
  }

  v9 = [(NSData *)self->_detailedError copyWithZone:a3];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_19;
    }

    v9 = *(v4 + 32);
    if (self->_success)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  errorDescription = self->_errorDescription;
  if (!(errorDescription | *(v4 + 3)))
  {
    goto LABEL_7;
  }

  if (![(NSString *)errorDescription isEqual:?])
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  has = self->_has;
LABEL_7:
  v8 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_cdpStatus != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_19;
  }

  detailedError = self->_detailedError;
  if (detailedError | *(v4 + 2))
  {
    v11 = [(NSData *)detailedError isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_success;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_errorDescription hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_cdpStatus;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSData *)self->_detailedError hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 36) & 2) != 0)
  {
    self->_success = *(v4 + 32);
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(PBBProtoTinkerAccountCredentialsIngested *)self setErrorDescription:?];
    v4 = v5;
  }

  if (*(v4 + 36))
  {
    self->_cdpStatus = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(PBBProtoTinkerAccountCredentialsIngested *)self setDetailedError:?];
    v4 = v5;
  }
}

@end