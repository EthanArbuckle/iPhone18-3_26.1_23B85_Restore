@interface NPKProtoSetExpressPassRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequestAuthorization:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSetExpressPassRequest

- (void)setHasRequestAuthorization:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSetExpressPassRequest;
  v4 = [(NPKProtoSetExpressPassRequest *)&v8 description];
  v5 = [(NPKProtoSetExpressPassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v3 setObject:uniqueID forKey:@"uniqueID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_cancelOutstandingRequests];
    [v4 setObject:v6 forKey:@"cancelOutstandingRequests"];
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier)
  {
    [v4 setObject:applicationIdentifier forKey:@"applicationIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_requestAuthorization];
    [v4 setObject:v8 forKey:@"requestAuthorization"];
  }

  expressPassInformation = self->_expressPassInformation;
  if (expressPassInformation)
  {
    [v4 setObject:expressPassInformation forKey:@"expressPassInformation"];
  }

  expressPassConfiguration = self->_expressPassConfiguration;
  if (expressPassConfiguration)
  {
    [v4 setObject:expressPassConfiguration forKey:@"expressPassConfiguration"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    cancelOutstandingRequests = self->_cancelOutstandingRequests;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_applicationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    requestAuthorization = self->_requestAuthorization;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_expressPassInformation)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_expressPassConfiguration)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueID)
  {
    [v4 setUniqueID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[40] = self->_cancelOutstandingRequests;
    v4[44] |= 1u;
  }

  if (self->_applicationIdentifier)
  {
    [v5 setApplicationIdentifier:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[41] = self->_requestAuthorization;
    v4[44] |= 2u;
  }

  if (self->_expressPassInformation)
  {
    [v5 setExpressPassInformation:?];
    v4 = v5;
  }

  if (self->_expressPassConfiguration)
  {
    [v5 setExpressPassConfiguration:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_cancelOutstandingRequests;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_applicationIdentifier copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 41) = self->_requestAuthorization;
    *(v5 + 44) |= 2u;
  }

  v10 = [(NSData *)self->_expressPassInformation copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSData *)self->_expressPassConfiguration copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  uniqueID = self->_uniqueID;
  if (uniqueID | *(v4 + 4))
  {
    if (![(NSString *)uniqueID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  has = self->_has;
  v7 = *(v4 + 44);
  if ((has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = *(v4 + 40);
  if (self->_cancelOutstandingRequests)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_5:
    if (v7)
    {
      goto LABEL_20;
    }
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier | *(v4 + 1))
  {
    if (![(NSString *)applicationIdentifier isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v9 = *(v4 + 44);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) != 0)
    {
      v14 = *(v4 + 41);
      if (self->_requestAuthorization)
      {
        if (*(v4 + 41))
        {
          goto LABEL_11;
        }
      }

      else if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  expressPassInformation = self->_expressPassInformation;
  if (expressPassInformation | *(v4 + 3) && ![(NSData *)expressPassInformation isEqual:?])
  {
    goto LABEL_20;
  }

  expressPassConfiguration = self->_expressPassConfiguration;
  if (expressPassConfiguration | *(v4 + 2))
  {
    v12 = [(NSData *)expressPassConfiguration isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_cancelOutstandingRequests;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_applicationIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_requestAuthorization;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSData *)self->_expressPassInformation hash];
  return v7 ^ v8 ^ [(NSData *)self->_expressPassConfiguration hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(NPKProtoSetExpressPassRequest *)self setUniqueID:?];
    v4 = v5;
  }

  if (v4[44])
  {
    self->_cancelOutstandingRequests = v4[40];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoSetExpressPassRequest *)self setApplicationIdentifier:?];
    v4 = v5;
  }

  if ((v4[44] & 2) != 0)
  {
    self->_requestAuthorization = v4[41];
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoSetExpressPassRequest *)self setExpressPassInformation:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoSetExpressPassRequest *)self setExpressPassConfiguration:?];
    v4 = v5;
  }
}

@end