@interface MXProcessingError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorSource:(id)a3;
- (int)errorSource;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasErrorSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXProcessingError

- (int)errorSource
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_errorSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasErrorSource:(BOOL)a3
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

- (int)StringAsErrorSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"QSS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MODALITY_X"])
  {
    v4 = 2;
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
  v8.super_class = MXProcessingError;
  v4 = [(MXProcessingError *)&v8 description];
  v5 = [(MXProcessingError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_code];
    [v3 setObject:v4 forKey:@"code"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v3 setObject:errorDescription forKey:@"error_description"];
  }

  if ((*&self->_has & 2) != 0)
  {
    errorSource = self->_errorSource;
    if (errorSource >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_errorSource];
    }

    else
    {
      v7 = off_27991B978[errorSource];
    }

    [v3 setObject:v7 forKey:@"error_source"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    [v3 setObject:requestId forKey:@"request_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    errorSource = self->_errorSource;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_code;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_errorDescription)
  {
    [v4 setErrorDescription:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[6] = self->_errorSource;
    *(v4 + 40) |= 2u;
  }

  if (self->_requestId)
  {
    [v5 setRequestId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_errorSource;
    *(v6 + 40) |= 2u;
  }

  v9 = [(NSString *)self->_requestId copyWithZone:a3];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_code != *(v4 + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_17;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 2))
  {
    if (![(NSString *)errorDescription isEqual:?])
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  v8 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_errorSource != *(v4 + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_17;
  }

  requestId = self->_requestId;
  if (requestId | *(v4 + 4))
  {
    v10 = [(NSString *)requestId isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_code;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_errorDescription hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_errorSource;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_requestId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[10])
  {
    self->_code = v4[2];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(MXProcessingError *)self setErrorDescription:?];
    v4 = v5;
  }

  if ((v4[10] & 2) != 0)
  {
    self->_errorSource = v4[6];
    *&self->_has |= 2u;
  }

  if (*(v4 + 4))
  {
    [(MXProcessingError *)self setRequestId:?];
    v4 = v5;
  }
}

@end