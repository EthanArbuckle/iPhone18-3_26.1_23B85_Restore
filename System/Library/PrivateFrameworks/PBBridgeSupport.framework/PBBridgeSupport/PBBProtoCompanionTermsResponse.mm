@interface PBBProtoCompanionTermsResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTermsAccepted:(BOOL)accepted;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoCompanionTermsResponse

- (void)setHasTermsAccepted:(BOOL)accepted
{
  if (accepted)
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
  v8.super_class = PBBProtoCompanionTermsResponse;
  v4 = [(PBBProtoCompanionTermsResponse *)&v8 description];
  dictionaryRepresentation = [(PBBProtoCompanionTermsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_termsAccepted];
    [dictionary setObject:v4 forKey:@"termsAccepted"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [dictionary setObject:userAgent forKey:@"userAgent"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isExistingAccountTerms];
    [dictionary setObject:v6 forKey:@"isExistingAccountTerms"];
  }

  responseData = self->_responseData;
  if (responseData)
  {
    [dictionary setObject:responseData forKey:@"responseData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    termsAccepted = self->_termsAccepted;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_userAgent)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    isExistingAccountTerms = self->_isExistingAccountTerms;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_responseData)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[25] = self->_termsAccepted;
    toCopy[28] |= 2u;
  }

  v5 = toCopy;
  if (self->_userAgent)
  {
    [toCopy setUserAgent:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_isExistingAccountTerms;
    toCopy[28] |= 1u;
  }

  if (self->_responseData)
  {
    [v5 setResponseData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 25) = self->_termsAccepted;
    *(v5 + 28) |= 2u;
  }

  v7 = [(NSString *)self->_userAgent copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if (*&self->_has)
  {
    *(v6 + 24) = self->_isExistingAccountTerms;
    *(v6 + 28) |= 1u;
  }

  v9 = [(NSString *)self->_responseData copyWithZone:zone];
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_23;
    }

    v11 = *(equalCopy + 25);
    if (self->_termsAccepted)
    {
      if ((*(equalCopy + 25) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(equalCopy + 25))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_23;
  }

  userAgent = self->_userAgent;
  if (userAgent | *(equalCopy + 2))
  {
    if (![(NSString *)userAgent isEqual:?])
    {
      goto LABEL_23;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 28);
  if ((has & 1) == 0)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(equalCopy + 24);
  if (self->_isExistingAccountTerms)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_23;
  }

LABEL_9:
  responseData = self->_responseData;
  if (responseData | *(equalCopy + 1))
  {
    v10 = [(NSString *)responseData isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_termsAccepted;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_userAgent hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isExistingAccountTerms;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_responseData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[28] & 2) != 0)
  {
    self->_termsAccepted = fromCopy[25];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PBBProtoCompanionTermsResponse *)self setUserAgent:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_isExistingAccountTerms = fromCopy[24];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(PBBProtoCompanionTermsResponse *)self setResponseData:?];
    fromCopy = v5;
  }
}

@end