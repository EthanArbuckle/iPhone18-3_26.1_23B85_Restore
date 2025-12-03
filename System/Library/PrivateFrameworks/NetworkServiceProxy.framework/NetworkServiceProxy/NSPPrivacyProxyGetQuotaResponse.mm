@interface NSPPrivacyProxyGetQuotaResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGetQuotaResponseType:(id)type;
- (int)getQuotaResponseType;
- (unint64_t)hash;
- (void)clearOneofValuesForGetQuotaResponseType;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setGenericError:(id)error;
- (void)setSuccess:(id)success;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyGetQuotaResponse

- (void)setSuccess:(id)success
{
  successCopy = success;
  [(NSPPrivacyProxyGetQuotaResponse *)self clearOneofValuesForGetQuotaResponseType];
  *&self->_has |= 1u;
  self->_getQuotaResponseType = 1;
  success = self->_success;
  self->_success = successCopy;
}

- (void)setGenericError:(id)error
{
  errorCopy = error;
  [(NSPPrivacyProxyGetQuotaResponse *)self clearOneofValuesForGetQuotaResponseType];
  *&self->_has |= 1u;
  self->_getQuotaResponseType = 2;
  genericError = self->_genericError;
  self->_genericError = errorCopy;
}

- (int)getQuotaResponseType
{
  if (*&self->_has)
  {
    return self->_getQuotaResponseType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsGetQuotaResponseType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"success"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"generic_error"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForGetQuotaResponseType
{
  *&self->_has &= ~1u;
  self->_getQuotaResponseType = 0;
  success = self->_success;
  self->_success = 0;

  genericError = self->_genericError;
  self->_genericError = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyGetQuotaResponse;
  v4 = [(NSPPrivacyProxyGetQuotaResponse *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyGetQuotaResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  success = self->_success;
  if (success)
  {
    dictionaryRepresentation = [(NSPPrivacyProxySuccessResponse *)success dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"success"];
  }

  genericError = self->_genericError;
  if (genericError)
  {
    dictionaryRepresentation2 = [(NSPPrivacyProxyErrorResponse *)genericError dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"generic_error"];
  }

  if (*&self->_has)
  {
    getQuotaResponseType = self->_getQuotaResponseType;
    if (getQuotaResponseType >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_getQuotaResponseType];
    }

    else
    {
      v9 = off_1E7A30D98[getQuotaResponseType];
    }

    [dictionary setObject:v9 forKey:@"GetQuotaResponseType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_success)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_genericError)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_getQuotaResponseType;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_success)
  {
    [toCopy setSuccess:?];
    toCopy = v5;
  }

  if (self->_genericError)
  {
    [v5 setGenericError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_getQuotaResponseType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSPPrivacyProxySuccessResponse *)self->_success copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSPPrivacyProxyErrorResponse *)self->_genericError copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_getQuotaResponseType != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  success = self->_success;
  if (success | *(equalCopy + 3) && ![(NSPPrivacyProxySuccessResponse *)success isEqual:?])
  {
    goto LABEL_11;
  }

  genericError = self->_genericError;
  if (genericError | *(equalCopy + 1))
  {
    v8 = [(NSPPrivacyProxyErrorResponse *)genericError isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_getQuotaResponseType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSPPrivacyProxySuccessResponse *)self->_success hash]^ v3;
  return v4 ^ [(NSPPrivacyProxyErrorResponse *)self->_genericError hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[8])
  {
    self->_getQuotaResponseType = fromCopy[4];
    *&self->_has |= 1u;
  }

  success = self->_success;
  v7 = *(v5 + 3);
  v10 = v5;
  if (success)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(NSPPrivacyProxySuccessResponse *)success mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(NSPPrivacyProxyGetQuotaResponse *)self setSuccess:?];
  }

  v5 = v10;
LABEL_9:
  genericError = self->_genericError;
  v9 = *(v5 + 1);
  if (genericError)
  {
    if (v9)
    {
      [(NSPPrivacyProxyErrorResponse *)genericError mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(NSPPrivacyProxyGetQuotaResponse *)self setGenericError:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end