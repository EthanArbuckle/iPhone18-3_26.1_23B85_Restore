@interface NSPPrivacyProxyQuotaServiceRequest
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
- (void)setRequest:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyQuotaServiceRequest

- (void)setRequest:(id)a3
{
  v4 = a3;
  [(NSPPrivacyProxyQuotaServiceRequest *)self clearOneofValuesForRequestType];
  *&self->_has |= 1u;
  self->_requestType = 1;
  request = self->_request;
  self->_request = v4;
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
    v4 = [v3 isEqualToString:@"request"];
  }

  return v4;
}

- (void)clearOneofValuesForRequestType
{
  *&self->_has &= ~1u;
  self->_requestType = 0;
  request = self->_request;
  self->_request = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyQuotaServiceRequest;
  v4 = [(NSPPrivacyProxyQuotaServiceRequest *)&v8 description];
  v5 = [(NSPPrivacyProxyQuotaServiceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  baa = self->_baa;
  if (baa)
  {
    v5 = [(NSPPrivacyProxyBAAValidation *)baa dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"baa"];
  }

  request = self->_request;
  if (request)
  {
    v7 = [(NSPPrivacyProxyGetQuotaRequest *)request dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"request"];
  }

  if (*&self->_has)
  {
    requestType = self->_requestType;
    if (requestType)
    {
      if (requestType == 1)
      {
        v9 = @"request";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requestType];
      }
    }

    else
    {
      v9 = @"PBUNSET";
    }

    [v3 setObject:v9 forKey:@"RequestType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_baa)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_request)
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
    v4[6] = self->_requestType;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_baa)
  {
    [v4 setBaa:?];
    v4 = v5;
  }

  if (self->_request)
  {
    [v5 setRequest:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_requestType;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSPPrivacyProxyBAAValidation *)self->_baa copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSPPrivacyProxyGetQuotaRequest *)self->_request copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_requestType != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  baa = self->_baa;
  if (baa | *(v4 + 1) && ![(NSPPrivacyProxyBAAValidation *)baa isEqual:?])
  {
    goto LABEL_11;
  }

  request = self->_request;
  if (request | *(v4 + 2))
  {
    v8 = [(NSPPrivacyProxyGetQuotaRequest *)request isEqual:?];
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
    v3 = 2654435761 * self->_requestType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSPPrivacyProxyBAAValidation *)self->_baa hash]^ v3;
  return v4 ^ [(NSPPrivacyProxyGetQuotaRequest *)self->_request hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_requestType = v4[6];
    *&self->_has |= 1u;
  }

  baa = self->_baa;
  v7 = *(v5 + 1);
  v10 = v5;
  if (baa)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(NSPPrivacyProxyBAAValidation *)baa mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(NSPPrivacyProxyQuotaServiceRequest *)self setBaa:?];
  }

  v5 = v10;
LABEL_9:
  request = self->_request;
  v9 = *(v5 + 2);
  if (request)
  {
    if (v9)
    {
      [(NSPPrivacyProxyGetQuotaRequest *)request mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(NSPPrivacyProxyQuotaServiceRequest *)self setRequest:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end