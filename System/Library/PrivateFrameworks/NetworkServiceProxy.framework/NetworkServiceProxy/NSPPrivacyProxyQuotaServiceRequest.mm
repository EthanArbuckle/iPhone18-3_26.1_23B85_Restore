@interface NSPPrivacyProxyQuotaServiceRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestType:(id)type;
- (int)requestType;
- (unint64_t)hash;
- (void)clearOneofValuesForRequestType;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setRequest:(id)request;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyQuotaServiceRequest

- (void)setRequest:(id)request
{
  requestCopy = request;
  [(NSPPrivacyProxyQuotaServiceRequest *)self clearOneofValuesForRequestType];
  *&self->_has |= 1u;
  self->_requestType = 1;
  request = self->_request;
  self->_request = requestCopy;
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

- (int)StringAsRequestType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"request"];
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
  dictionaryRepresentation = [(NSPPrivacyProxyQuotaServiceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  baa = self->_baa;
  if (baa)
  {
    dictionaryRepresentation = [(NSPPrivacyProxyBAAValidation *)baa dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"baa"];
  }

  request = self->_request;
  if (request)
  {
    dictionaryRepresentation2 = [(NSPPrivacyProxyGetQuotaRequest *)request dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"request"];
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

    [dictionary setObject:v9 forKey:@"RequestType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_baa)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_request)
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
    toCopy[6] = self->_requestType;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_baa)
  {
    [toCopy setBaa:?];
    toCopy = v5;
  }

  if (self->_request)
  {
    [v5 setRequest:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_requestType;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSPPrivacyProxyBAAValidation *)self->_baa copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSPPrivacyProxyGetQuotaRequest *)self->_request copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_requestType != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  baa = self->_baa;
  if (baa | *(equalCopy + 1) && ![(NSPPrivacyProxyBAAValidation *)baa isEqual:?])
  {
    goto LABEL_11;
  }

  request = self->_request;
  if (request | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[7])
  {
    self->_requestType = fromCopy[6];
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