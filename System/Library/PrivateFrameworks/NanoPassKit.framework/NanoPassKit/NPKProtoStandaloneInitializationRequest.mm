@interface NPKProtoStandaloneInitializationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandaloneInitializationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneInitializationRequest;
  v4 = [(NPKProtoStandaloneInitializationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandaloneInitializationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneRequestHeader *)requestHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"requestHeader"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_useSimulatedFlowController];
    [dictionary setObject:v6 forKey:@"useSimulatedFlowController"];
  }

  userLanguageCode = self->_userLanguageCode;
  if (userLanguageCode)
  {
    [dictionary setObject:userLanguageCode forKey:@"userLanguageCode"];
  }

  passImageSize = self->_passImageSize;
  if (passImageSize)
  {
    dictionaryRepresentation2 = [(NPKProtoStandaloneImageSize *)passImageSize dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"passImageSize"];
  }

  passThumbnailImageSize = self->_passThumbnailImageSize;
  if (passThumbnailImageSize)
  {
    dictionaryRepresentation3 = [(NPKProtoStandaloneImageSize *)passThumbnailImageSize dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"passThumbnailImageSize"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestHeader)
  {
    [NPKProtoStandaloneInitializationRequest writeTo:];
  }

  v7 = toCopy;
  PBDataWriterWriteSubmessage();
  if (*&self->_has)
  {
    useSimulatedFlowController = self->_useSimulatedFlowController;
    PBDataWriterWriteBOOLField();
  }

  if (self->_userLanguageCode)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (self->_passImageSize)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_passThumbnailImageSize)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestHeader:self->_requestHeader];
  v4 = toCopy;
  if (*&self->_has)
  {
    toCopy[40] = self->_useSimulatedFlowController;
    toCopy[44] |= 1u;
  }

  if (self->_userLanguageCode)
  {
    [toCopy setUserLanguageCode:?];
    v4 = toCopy;
  }

  if (self->_passImageSize)
  {
    [toCopy setPassImageSize:?];
    v4 = toCopy;
  }

  if (self->_passThumbnailImageSize)
  {
    [toCopy setPassThumbnailImageSize:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_useSimulatedFlowController;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_userLanguageCode copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NPKProtoStandaloneImageSize *)self->_passImageSize copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NPKProtoStandaloneImageSize *)self->_passThumbnailImageSize copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  requestHeader = self->_requestHeader;
  if (requestHeader | *(equalCopy + 3))
  {
    if (![(NPKProtoStandaloneRequestHeader *)requestHeader isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(equalCopy + 40);
  if (!self->_useSimulatedFlowController)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if ((*(equalCopy + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  userLanguageCode = self->_userLanguageCode;
  if (userLanguageCode | *(equalCopy + 4) && ![(NSString *)userLanguageCode isEqual:?])
  {
    goto LABEL_13;
  }

  passImageSize = self->_passImageSize;
  if (passImageSize | *(equalCopy + 1))
  {
    if (![(NPKProtoStandaloneImageSize *)passImageSize isEqual:?])
    {
      goto LABEL_13;
    }
  }

  passThumbnailImageSize = self->_passThumbnailImageSize;
  if (passThumbnailImageSize | *(equalCopy + 2))
  {
    v10 = [(NPKProtoStandaloneImageSize *)passThumbnailImageSize isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_useSimulatedFlowController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_userLanguageCode hash];
  v7 = v5 ^ v6 ^ [(NPKProtoStandaloneImageSize *)self->_passImageSize hash];
  return v7 ^ [(NPKProtoStandaloneImageSize *)self->_passThumbnailImageSize hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  requestHeader = self->_requestHeader;
  v6 = *(fromCopy + 3);
  v11 = fromCopy;
  if (requestHeader)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandaloneRequestHeader *)requestHeader mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandaloneInitializationRequest *)self setRequestHeader:?];
  }

  fromCopy = v11;
LABEL_7:
  if (*(fromCopy + 44))
  {
    self->_useSimulatedFlowController = *(fromCopy + 40);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(NPKProtoStandaloneInitializationRequest *)self setUserLanguageCode:?];
    fromCopy = v11;
  }

  passImageSize = self->_passImageSize;
  v8 = *(fromCopy + 1);
  if (passImageSize)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(NPKProtoStandaloneImageSize *)passImageSize mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(NPKProtoStandaloneInitializationRequest *)self setPassImageSize:?];
  }

  fromCopy = v11;
LABEL_17:
  passThumbnailImageSize = self->_passThumbnailImageSize;
  v10 = *(fromCopy + 2);
  if (passThumbnailImageSize)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(NPKProtoStandaloneImageSize *)passThumbnailImageSize mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(NPKProtoStandaloneInitializationRequest *)self setPassThumbnailImageSize:?];
  }

  fromCopy = v11;
LABEL_23:
}

@end