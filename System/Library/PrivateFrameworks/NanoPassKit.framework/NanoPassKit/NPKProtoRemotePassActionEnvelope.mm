@interface NPKProtoRemotePassActionEnvelope
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCardType:(id)type;
- (int)StringAsMessageType:(id)type;
- (int)cardType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemotePassActionEnvelope

- (int)StringAsMessageType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"EnterValue"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SelectItem"])
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

- (int)StringAsCardType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Transit"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"EMoney"])
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
  dictionaryRepresentation = [(NPKProtoRemotePassActionEnvelope *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  messageType = self->_messageType;
  if (messageType >= 3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_messageType];
  }

  else
  {
    v6 = off_279949420[messageType];
  }

  [dictionary setObject:v6 forKey:@"messageType"];

  messageProtoData = self->_messageProtoData;
  if (messageProtoData)
  {
    [dictionary setObject:messageProtoData forKey:@"messageProtoData"];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isResponse];
  [dictionary setObject:v8 forKey:@"isResponse"];

  caption = self->_caption;
  if (caption)
  {
    [dictionary setObject:caption forKey:@"caption"];
  }

  passLocalizedDescription = self->_passLocalizedDescription;
  if (passLocalizedDescription)
  {
    [dictionary setObject:passLocalizedDescription forKey:@"passLocalizedDescription"];
  }

  summaryText = self->_summaryText;
  if (summaryText)
  {
    [dictionary setObject:summaryText forKey:@"summaryText"];
  }

  passOrganizationName = self->_passOrganizationName;
  if (passOrganizationName)
  {
    [dictionary setObject:passOrganizationName forKey:@"passOrganizationName"];
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

    [dictionary setObject:v14 forKey:@"cardType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  v7 = toCopy;
  if (self->_summaryText)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }

  if (self->_passOrganizationName)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }

  if (*&self->_has)
  {
    cardType = self->_cardType;
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[16] = self->_version;
  toCopy[8] = self->_messageType;
  [toCopy setMessageProtoData:self->_messageProtoData];
  v4 = toCopy;
  *(toCopy + 68) = self->_isResponse;
  if (self->_caption)
  {
    [toCopy setCaption:?];
    v4 = toCopy;
  }

  if (self->_passLocalizedDescription)
  {
    [toCopy setPassLocalizedDescription:?];
    v4 = toCopy;
  }

  if (self->_summaryText)
  {
    [toCopy setSummaryText:?];
    v4 = toCopy;
  }

  if (self->_passOrganizationName)
  {
    [toCopy setPassOrganizationName:?];
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    v4[4] = self->_cardType;
    *(v4 + 72) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 64) = self->_version;
  *(v5 + 32) = self->_messageType;
  v6 = [(NSData *)self->_messageProtoData copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 68) = self->_isResponse;
  v8 = [(NSString *)self->_caption copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_passLocalizedDescription copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_summaryText copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_passOrganizationName copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_cardType;
    *(v5 + 72) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  if (self->_version != *(equalCopy + 16))
  {
    goto LABEL_22;
  }

  if (self->_messageType != *(equalCopy + 8))
  {
    goto LABEL_22;
  }

  messageProtoData = self->_messageProtoData;
  if (messageProtoData | *(equalCopy + 3))
  {
    if (![(NSData *)messageProtoData isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v6 = *(equalCopy + 68);
  if (self->_isResponse)
  {
    if ((*(equalCopy + 68) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 68))
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  caption = self->_caption;
  if (caption | *(equalCopy + 1) && ![(NSString *)caption isEqual:?])
  {
    goto LABEL_22;
  }

  passLocalizedDescription = self->_passLocalizedDescription;
  if (passLocalizedDescription | *(equalCopy + 5))
  {
    if (![(NSString *)passLocalizedDescription isEqual:?])
    {
      goto LABEL_22;
    }
  }

  summaryText = self->_summaryText;
  if (summaryText | *(equalCopy + 7))
  {
    if (![(NSString *)summaryText isEqual:?])
    {
      goto LABEL_22;
    }
  }

  passOrganizationName = self->_passOrganizationName;
  if (passOrganizationName | *(equalCopy + 6))
  {
    if (![(NSString *)passOrganizationName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v11 = (*(equalCopy + 72) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_cardType != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = *(fromCopy + 16);
  self->_messageType = *(fromCopy + 8);
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setMessageProtoData:?];
    fromCopy = v5;
  }

  self->_isResponse = *(fromCopy + 68);
  if (*(fromCopy + 1))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setCaption:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setPassLocalizedDescription:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setSummaryText:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(NPKProtoRemotePassActionEnvelope *)self setPassOrganizationName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 72))
  {
    self->_cardType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end