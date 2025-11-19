@interface NPKProtoRemotePassActionEnvelope
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCardType:(id)a3;
- (int)StringAsMessageType:(id)a3;
- (int)cardType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemotePassActionEnvelope

- (int)StringAsMessageType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"EnterValue"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SelectItem"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)cardType
{
  if (*&self->_has)
  {
    return self->_cardType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCardType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Transit"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EMoney"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassActionEnvelope;
  v4 = [(NPKProtoRemotePassActionEnvelope *)&v8 description];
  v5 = [(NPKProtoRemotePassActionEnvelope *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  messageType = self->_messageType;
  if (messageType >= 3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_messageType];
  }

  else
  {
    v6 = off_279949420[messageType];
  }

  [v3 setObject:v6 forKey:@"messageType"];

  messageProtoData = self->_messageProtoData;
  if (messageProtoData)
  {
    [v3 setObject:messageProtoData forKey:@"messageProtoData"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isResponse];
  [v3 setObject:v8 forKey:@"isResponse"];

  caption = self->_caption;
  if (caption)
  {
    [v3 setObject:caption forKey:@"caption"];
  }

  passLocalizedDescription = self->_passLocalizedDescription;
  if (passLocalizedDescription)
  {
    [v3 setObject:passLocalizedDescription forKey:@"passLocalizedDescription"];
  }

  summaryText = self->_summaryText;
  if (summaryText)
  {
    [v3 setObject:summaryText forKey:@"summaryText"];
  }

  passOrganizationName = self->_passOrganizationName;
  if (passOrganizationName)
  {
    [v3 setObject:passOrganizationName forKey:@"passOrganizationName"];
  }

  if (*&self->_has)
  {
    cardType = self->_cardType;
    if (cardType >= 3)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_cardType];
    }

    else
    {
      v14 = off_279949438[cardType];
    }

    [v3 setObject:v14 forKey:@"cardType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  version = self->_version;
  PBDataWriterWriteUint32Field();
  messageType = self->_messageType;
  PBDataWriterWriteInt32Field();
  if (!self->_messageProtoData)
  {
    [NPKProtoRemotePassActionEnvelope writeTo:];
  }

  PBDataWriterWriteDataField();
  isResponse = self->_isResponse;
  PBDataWriterWriteBOOLField();
  if (self->_caption)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_passLocalizedDescription)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v9;
  if (self->_summaryText)
  {
    PBDataWriterWriteStringField();
    v7 = v9;
  }

  if (self->_passOrganizationName)
  {
    PBDataWriterWriteStringField();
    v7 = v9;
  }

  if (*&self->_has)
  {
    cardType = self->_cardType;
    PBDataWriterWriteInt32Field();
    v7 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  v5[16] = self->_version;
  v5[8] = self->_messageType;
  [v5 setMessageProtoData:self->_messageProtoData];
  v4 = v5;
  *(v5 + 68) = self->_isResponse;
  if (self->_caption)
  {
    [v5 setCaption:?];
    v4 = v5;
  }

  if (self->_passLocalizedDescription)
  {
    [v5 setPassLocalizedDescription:?];
    v4 = v5;
  }

  if (self->_summaryText)
  {
    [v5 setSummaryText:?];
    v4 = v5;
  }

  if (self->_passOrganizationName)
  {
    [v5 setPassOrganizationName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[4] = self->_cardType;
    *(v4 + 72) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 64) = self->_version;
  *(v5 + 32) = self->_messageType;
  v6 = [(NSData *)self->_messageProtoData copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 68) = self->_isResponse;
  v8 = [(NSString *)self->_caption copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_passLocalizedDescription copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_summaryText copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_passOrganizationName copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_cardType;
    *(v5 + 72) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  if (self->_version != *(v4 + 16))
  {
    goto LABEL_22;
  }

  if (self->_messageType != *(v4 + 8))
  {
    goto LABEL_22;
  }

  messageProtoData = self->_messageProtoData;
  if (messageProtoData | *(v4 + 3))
  {
    if (![(NSData *)messageProtoData isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(v4 + 68);
  if (self->_isResponse)
  {
    if ((*(v4 + 68) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 68))
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  caption = self->_caption;
  if (caption | *(v4 + 1) && ![(NSString *)caption isEqual:?])
  {
    goto LABEL_22;
  }

  passLocalizedDescription = self->_passLocalizedDescription;
  if (passLocalizedDescription | *(v4 + 5))
  {
    if (![(NSString *)passLocalizedDescription isEqual:?])
    {
      goto LABEL_22;
    }
  }

  summaryText = self->_summaryText;
  if (summaryText | *(v4 + 7))
  {
    if (![(NSString *)summaryText isEqual:?])
    {
      goto LABEL_22;
    }
  }

  passOrganizationName = self->_passOrganizationName;
  if (passOrganizationName | *(v4 + 6))
  {
    if (![(NSString *)passOrganizationName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v11 = (*(v4 + 72) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_cardType != *(v4 + 4))
    {
      goto LABEL_22;
    }

    v11 = 1;
  }

LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  version = self->_version;
  messageType = self->_messageType;
  v5 = [(NSData *)self->_messageProtoData hash];
  isResponse = self->_isResponse;
  v7 = [(NSString *)self->_caption hash];
  v8 = [(NSString *)self->_passLocalizedDescription hash];
  v9 = [(NSString *)self->_summaryText hash];
  v10 = [(NSString *)self->_passOrganizationName hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_cardType;
  }

  else
  {
    v11 = 0;
  }

  return (2654435761 * messageType) ^ (2654435761 * version) ^ v5 ^ (2654435761 * isResponse) ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = *(v4 + 16);
  self->_messageType = *(v4 + 8);
  v5 = v4;
  if (*(v4 + 3))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setMessageProtoData:?];
    v4 = v5;
  }

  self->_isResponse = *(v4 + 68);
  if (*(v4 + 1))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setCaption:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setPassLocalizedDescription:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setSummaryText:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setPassOrganizationName:?];
    v4 = v5;
  }

  if (*(v4 + 72))
  {
    self->_cardType = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end