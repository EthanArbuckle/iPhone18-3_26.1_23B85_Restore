@interface PBBProtoTinkerAccountCredentialsIngested
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoTinkerAccountCredentialsIngested

- (void)setHasSuccess:(BOOL)success
{
  if (success)
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
  dictionaryRepresentation = [(PBBProtoTinkerAccountCredentialsIngested *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [dictionary setObject:v4 forKey:@"success"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [dictionary setObject:errorDescription forKey:@"errorDescription"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cdpStatus];
    [dictionary setObject:v6 forKey:@"cdpStatus"];
  }

  detailedError = self->_detailedError;
  if (detailedError)
  {
    [dictionary setObject:detailedError forKey:@"detailedError"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    cdpStatus = self->_cdpStatus;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_detailedError)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[32] = self->_success;
    toCopy[36] |= 2u;
  }

  v5 = toCopy;
  if (self->_errorDescription)
  {
    [toCopy setErrorDescription:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_cdpStatus;
    toCopy[36] |= 1u;
  }

  if (self->_detailedError)
  {
    [v5 setDetailedError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_success;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_cdpStatus;
    *(v6 + 36) |= 1u;
  }

  v9 = [(NSData *)self->_detailedError copyWithZone:zone];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_19;
    }

    v9 = *(equalCopy + 32);
    if (self->_success)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  errorDescription = self->_errorDescription;
  if (!(errorDescription | *(equalCopy + 3)))
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
  v8 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_cdpStatus != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_19;
  }

  detailedError = self->_detailedError;
  if (detailedError | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_success = *(fromCopy + 32);
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PBBProtoTinkerAccountCredentialsIngested *)self setErrorDescription:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 36))
  {
    self->_cdpStatus = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(PBBProtoTinkerAccountCredentialsIngested *)self setDetailedError:?];
    fromCopy = v5;
  }
}

@end