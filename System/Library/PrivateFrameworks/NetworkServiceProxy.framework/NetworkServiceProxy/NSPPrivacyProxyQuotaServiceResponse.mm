@interface NSPPrivacyProxyQuotaServiceResponse
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
- (void)setResponse:(id)response;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyQuotaServiceResponse

- (void)setResponse:(id)response
{
  responseCopy = response;
  [(NSPPrivacyProxyQuotaServiceResponse *)self clearOneofValuesForRequestType];
  *&self->_has |= 1u;
  self->_requestType = 1;
  response = self->_response;
  self->_response = responseCopy;
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
    v4 = [typeCopy isEqualToString:@"response"];
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
  dictionaryRepresentation = [(NSPPrivacyProxyQuotaServiceResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  response = self->_response;
  if (response)
  {
    dictionaryRepresentation = [(NSPPrivacyProxyGetQuotaResponse *)response dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"response"];
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

    [dictionary setObject:v7 forKey:@"RequestType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_requestType;
    *(toCopy + 24) |= 1u;
  }

  if (self->_response)
  {
    v5 = toCopy;
    [toCopy setResponse:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_requestType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSPPrivacyProxyGetQuotaResponse *)self->_response copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_requestType != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  response = self->_response;
  if (response | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_requestType = fromCopy[2];
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