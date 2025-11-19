@interface NPKProtoStandaloneInitializationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandaloneInitializationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneInitializationRequest;
  v4 = [(NPKProtoStandaloneInitializationRequest *)&v8 description];
  v5 = [(NPKProtoStandaloneInitializationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    v5 = [(NPKProtoStandaloneRequestHeader *)requestHeader dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"requestHeader"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_useSimulatedFlowController];
    [v3 setObject:v6 forKey:@"useSimulatedFlowController"];
  }

  userLanguageCode = self->_userLanguageCode;
  if (userLanguageCode)
  {
    [v3 setObject:userLanguageCode forKey:@"userLanguageCode"];
  }

  passImageSize = self->_passImageSize;
  if (passImageSize)
  {
    v9 = [(NPKProtoStandaloneImageSize *)passImageSize dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"passImageSize"];
  }

  passThumbnailImageSize = self->_passThumbnailImageSize;
  if (passThumbnailImageSize)
  {
    v11 = [(NPKProtoStandaloneImageSize *)passThumbnailImageSize dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"passThumbnailImageSize"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_requestHeader)
  {
    [NPKProtoStandaloneInitializationRequest writeTo:];
  }

  v7 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setRequestHeader:self->_requestHeader];
  v4 = v5;
  if (*&self->_has)
  {
    v5[40] = self->_useSimulatedFlowController;
    v5[44] |= 1u;
  }

  if (self->_userLanguageCode)
  {
    [v5 setUserLanguageCode:?];
    v4 = v5;
  }

  if (self->_passImageSize)
  {
    [v5 setPassImageSize:?];
    v4 = v5;
  }

  if (self->_passThumbnailImageSize)
  {
    [v5 setPassThumbnailImageSize:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_useSimulatedFlowController;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_userLanguageCode copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NPKProtoStandaloneImageSize *)self->_passImageSize copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NPKProtoStandaloneImageSize *)self->_passThumbnailImageSize copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  requestHeader = self->_requestHeader;
  if (requestHeader | *(v4 + 3))
  {
    if (![(NPKProtoStandaloneRequestHeader *)requestHeader isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v4 + 40);
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

  if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  userLanguageCode = self->_userLanguageCode;
  if (userLanguageCode | *(v4 + 4) && ![(NSString *)userLanguageCode isEqual:?])
  {
    goto LABEL_13;
  }

  passImageSize = self->_passImageSize;
  if (passImageSize | *(v4 + 1))
  {
    if (![(NPKProtoStandaloneImageSize *)passImageSize isEqual:?])
    {
      goto LABEL_13;
    }
  }

  passThumbnailImageSize = self->_passThumbnailImageSize;
  if (passThumbnailImageSize | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  requestHeader = self->_requestHeader;
  v6 = *(v4 + 3);
  v11 = v4;
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

  v4 = v11;
LABEL_7:
  if (*(v4 + 44))
  {
    self->_useSimulatedFlowController = *(v4 + 40);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(NPKProtoStandaloneInitializationRequest *)self setUserLanguageCode:?];
    v4 = v11;
  }

  passImageSize = self->_passImageSize;
  v8 = *(v4 + 1);
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

  v4 = v11;
LABEL_17:
  passThumbnailImageSize = self->_passThumbnailImageSize;
  v10 = *(v4 + 2);
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

  v4 = v11;
LABEL_23:
}

@end