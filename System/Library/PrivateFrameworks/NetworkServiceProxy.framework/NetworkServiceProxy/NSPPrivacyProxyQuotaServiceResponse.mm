@interface NSPPrivacyProxyQuotaServiceResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestType:(id)a3;
- (int)requestType;
- (unint64_t)hash;
- (void)clearOneofValuesForRequestType;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setResponse:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyQuotaServiceResponse

- (void)setResponse:(id)a3
{
  v4 = a3;
  [(NSPPrivacyProxyQuotaServiceResponse *)self clearOneofValuesForRequestType];
  *&self->_has |= 1u;
  self->_requestType = 1;
  response = self->_response;
  self->_response = v4;
}

- (int)requestType
{
  if (*&self->_has)
  {
    return self->_requestType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRequestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"response"];
  }

  return v4;
}

- (void)clearOneofValuesForRequestType
{
  *&self->_has &= ~1u;
  self->_requestType = 0;
  response = self->_response;
  self->_response = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyQuotaServiceResponse;
  v4 = [(NSPPrivacyProxyQuotaServiceResponse *)&v8 description];
  v5 = [(NSPPrivacyProxyQuotaServiceResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  response = self->_response;
  if (response)
  {
    v5 = [(NSPPrivacyProxyGetQuotaResponse *)response dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"response"];
  }

  if (*&self->_has)
  {
    requestType = self->_requestType;
    if (requestType)
    {
      if (requestType == 1)
      {
        v7 = @"response";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requestType];
      }
    }

    else
    {
      v7 = @"PBUNSET";
    }

    [v3 setObject:v7 forKey:@"RequestType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_requestType;
    *(v4 + 24) |= 1u;
  }

  if (self->_response)
  {
    v5 = v4;
    [v4 setResponse:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_requestType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSPPrivacyProxyGetQuotaResponse *)self->_response copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_requestType != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  response = self->_response;
  if (response | *(v4 + 2))
  {
    v7 = [(NSPPrivacyProxyGetQuotaResponse *)response isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_requestType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSPPrivacyProxyGetQuotaResponse *)self->_response hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    self->_requestType = v4[2];
    *&self->_has |= 1u;
  }

  response = self->_response;
  v7 = *(v5 + 2);
  if (response)
  {
    if (v7)
    {
      [(NSPPrivacyProxyGetQuotaResponse *)response mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(NSPPrivacyProxyQuotaServiceResponse *)self setResponse:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end