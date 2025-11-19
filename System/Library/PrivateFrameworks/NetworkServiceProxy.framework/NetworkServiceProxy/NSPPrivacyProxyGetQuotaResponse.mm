@interface NSPPrivacyProxyGetQuotaResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGetQuotaResponseType:(id)a3;
- (int)getQuotaResponseType;
- (unint64_t)hash;
- (void)clearOneofValuesForGetQuotaResponseType;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setGenericError:(id)a3;
- (void)setSuccess:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyGetQuotaResponse

- (void)setSuccess:(id)a3
{
  v4 = a3;
  [(NSPPrivacyProxyGetQuotaResponse *)self clearOneofValuesForGetQuotaResponseType];
  *&self->_has |= 1u;
  self->_getQuotaResponseType = 1;
  success = self->_success;
  self->_success = v4;
}

- (void)setGenericError:(id)a3
{
  v4 = a3;
  [(NSPPrivacyProxyGetQuotaResponse *)self clearOneofValuesForGetQuotaResponseType];
  *&self->_has |= 1u;
  self->_getQuotaResponseType = 2;
  genericError = self->_genericError;
  self->_genericError = v4;
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

- (int)StringAsGetQuotaResponseType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"success"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"generic_error"])
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
  v5 = [(NSPPrivacyProxyGetQuotaResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  success = self->_success;
  if (success)
  {
    v5 = [(NSPPrivacyProxySuccessResponse *)success dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"success"];
  }

  genericError = self->_genericError;
  if (genericError)
  {
    v7 = [(NSPPrivacyProxyErrorResponse *)genericError dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"generic_error"];
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

    [v3 setObject:v9 forKey:@"GetQuotaResponseType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_success)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_genericError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_getQuotaResponseType;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_success)
  {
    [v4 setSuccess:?];
    v4 = v5;
  }

  if (self->_genericError)
  {
    [v5 setGenericError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_getQuotaResponseType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSPPrivacyProxySuccessResponse *)self->_success copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSPPrivacyProxyErrorResponse *)self->_genericError copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_getQuotaResponseType != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  success = self->_success;
  if (success | *(v4 + 3) && ![(NSPPrivacyProxySuccessResponse *)success isEqual:?])
  {
    goto LABEL_11;
  }

  genericError = self->_genericError;
  if (genericError | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[8])
  {
    self->_getQuotaResponseType = v4[4];
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