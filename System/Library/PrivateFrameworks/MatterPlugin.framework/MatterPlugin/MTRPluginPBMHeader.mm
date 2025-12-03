@interface MTRPluginPBMHeader
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)responseHeaderForRequestHeader;
- (id)shortDescription;
- (int)StringAsMessageDirection:(id)direction;
- (int)messageDirection;
- (int)protocol;
- (int)schema;
- (int)version;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMessageType:(BOOL)type;
- (void)setHasProtocol:(BOOL)protocol;
- (void)setHasSchema:(BOOL)schema;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMHeader

- (int)version
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_version;
  }

  else
  {
    return 1;
  }
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)schema
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_schema;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSchema:(BOOL)schema
{
  if (schema)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)protocol
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_protocol;
  }

  else
  {
    return 1;
  }
}

- (void)setHasProtocol:(BOOL)protocol
{
  if (protocol)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMessageType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)messageDirection
{
  if (*&self->_has)
  {
    return self->_messageDirection;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsMessageDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"Oneway"])
  {
    v4 = 1;
  }

  else if ([directionCopy isEqualToString:@"Request"])
  {
    v4 = 2;
  }

  else if ([directionCopy isEqualToString:@"Response"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMHeader;
  v4 = [(MTRPluginPBMHeader *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    if (self->_version == 1)
    {
      v5 = @"VERSION_V1";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_version];
    }

    [dictionary setObject:v5 forKey:@"version"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  if (self->_schema == 1)
  {
    v6 = @"SCHEMA_V1";
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_schema];
  }

  [dictionary setObject:v6 forKey:@"schema"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  if (self->_protocol == 1)
  {
    v7 = @"MATTER_V1";
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_protocol];
  }

  [dictionary setObject:v7 forKey:@"protocol"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_messageType];
  [dictionary setObject:v8 forKey:@"messageType"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v9 = self->_messageDirection - 1;
  if (v9 >= 3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_messageDirection];
  }

  else
  {
    v10 = off_279894218[v9];
  }

  [dictionary setObject:v10 forKey:@"messageDirection"];

LABEL_24:
  messageID = self->_messageID;
  if (messageID)
  {
    dictionaryRepresentation = [(MTRPluginPBMUUID *)messageID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"messageID"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    dictionaryRepresentation2 = [(MTRPluginPBMUUID *)sessionID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"sessionID"];
  }

  homeID = self->_homeID;
  if (homeID)
  {
    dictionaryRepresentation3 = [(MTRPluginPBMUUID *)homeID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"homeID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v11 = toCopy;
  if ((has & 0x10) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  schema = self->_schema;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  protocol = self->_protocol;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  messageType = self->_messageType;
  PBDataWriterWriteUint32Field();
  toCopy = v11;
  if (*&self->_has)
  {
LABEL_6:
    messageDirection = self->_messageDirection;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }

LABEL_7:
  if (self->_messageID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  if (self->_homeID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[14] = self->_version;
    *(toCopy + 60) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[10] = self->_schema;
  *(toCopy + 60) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[9] = self->_protocol;
  *(toCopy + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  toCopy[8] = self->_messageType;
  *(toCopy + 60) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    toCopy[4] = self->_messageDirection;
    *(toCopy + 60) |= 1u;
  }

LABEL_7:
  v6 = toCopy;
  if (self->_messageID)
  {
    [toCopy setMessageID:?];
    toCopy = v6;
  }

  if (self->_sessionID)
  {
    [v6 setSessionID:?];
    toCopy = v6;
  }

  if (self->_homeID)
  {
    [v6 setHomeID:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 56) = self->_version;
    *(v5 + 60) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_schema;
  *(v5 + 60) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 32) = self->_messageType;
    *(v5 + 60) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 36) = self->_protocol;
  *(v5 + 60) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    *(v5 + 16) = self->_messageDirection;
    *(v5 + 60) |= 1u;
  }

LABEL_7:
  v8 = [(MTRPluginPBMUUID *)self->_messageID copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [(MTRPluginPBMUUID *)self->_sessionID copyWithZone:zone];
  v11 = v6[6];
  v6[6] = v10;

  v12 = [(MTRPluginPBMUUID *)self->_homeID copyWithZone:zone];
  v13 = v6[1];
  v6[1] = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = *(equalCopy + 60);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 60) & 0x10) == 0 || self->_version != *(equalCopy + 14))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 60) & 0x10) != 0)
  {
LABEL_33:
    v9 = 0;
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_schema != *(equalCopy + 10))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_protocol != *(equalCopy + 9))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_messageType != *(equalCopy + 8))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_messageDirection != *(equalCopy + 4))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_33;
  }

  messageID = self->_messageID;
  if (messageID | *(equalCopy + 3) && ![(MTRPluginPBMUUID *)messageID isEqual:?])
  {
    goto LABEL_33;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 6))
  {
    if (![(MTRPluginPBMUUID *)sessionID isEqual:?])
    {
      goto LABEL_33;
    }
  }

  homeID = self->_homeID;
  if (homeID | *(equalCopy + 1))
  {
    v9 = [(MTRPluginPBMUUID *)homeID isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_34:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_version;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_schema;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_protocol;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = 2654435761 * self->_messageType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = 2654435761 * self->_messageDirection;
LABEL_12:
  v8 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(MTRPluginPBMUUID *)self->_messageID hash];
  v9 = [(MTRPluginPBMUUID *)self->_sessionID hash];
  return v8 ^ v9 ^ [(MTRPluginPBMUUID *)self->_homeID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 60);
  if ((v6 & 0x10) != 0)
  {
    self->_version = *(fromCopy + 14);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 60);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 60) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_schema = *(fromCopy + 10);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_protocol = *(fromCopy + 9);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 60);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_messageType = *(fromCopy + 8);
  *&self->_has |= 2u;
  if (*(fromCopy + 60))
  {
LABEL_6:
    self->_messageDirection = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_7:
  messageID = self->_messageID;
  v8 = v5[3];
  v13 = v5;
  if (messageID)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    [(MTRPluginPBMUUID *)messageID mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    [(MTRPluginPBMHeader *)self setMessageID:?];
  }

  v5 = v13;
LABEL_18:
  sessionID = self->_sessionID;
  v10 = v5[6];
  if (sessionID)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    [(MTRPluginPBMUUID *)sessionID mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    [(MTRPluginPBMHeader *)self setSessionID:?];
  }

  v5 = v13;
LABEL_24:
  homeID = self->_homeID;
  v12 = v5[1];
  if (homeID)
  {
    if (v12)
    {
      [(MTRPluginPBMUUID *)homeID mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(MTRPluginPBMHeader *)self setHomeID:?];
  }

  MEMORY[0x2821F96F8]();
}

- (id)responseHeaderForRequestHeader
{
  v2 = [(MTRPluginPBMHeader *)self copy];
  [v2 setMessageDirection:3];

  return v2;
}

- (BOOL)isValid
{
  hasVersion = [(MTRPluginPBMHeader *)self hasVersion];
  v4 = [(MTRPluginPBMHeader *)self hasSchema]+ hasVersion;
  hasProtocol = [(MTRPluginPBMHeader *)self hasProtocol];
  v6 = v4 + hasProtocol + [(MTRPluginPBMHeader *)self hasMessageType];
  return v6 + [(MTRPluginPBMHeader *)self hasMessageDirection]== 5;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  messageID = [(MTRPluginPBMHeader *)self messageID];
  uuid = [messageID uuid];
  messageType = [(MTRPluginPBMHeader *)self messageType];
  v7 = [MTRPluginPBMHeader messageTypeAsString:[(MTRPluginPBMHeader *)self messageType]];
  sessionID = [(MTRPluginPBMHeader *)self sessionID];
  uuid2 = [sessionID uuid];
  homeID = [(MTRPluginPBMHeader *)self homeID];
  uuid3 = [homeID uuid];
  messageDirection = [(MTRPluginPBMHeader *)self messageDirection];
  if ((messageDirection - 1) >= 3)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", messageDirection];
  }

  else
  {
    v13 = off_279894258[(messageDirection - 1)];
  }

  v14 = [v3 stringWithFormat:@"<MTRPluginPBMHeader: mid: %@, type: %u (%@), sid: %@, hid: %@, direction: %@>", uuid, messageType, v7, uuid2, uuid3, v13];

  return v14;
}

@end