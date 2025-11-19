@interface MTRPluginPBMHeader
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)responseHeaderForRequestHeader;
- (id)shortDescription;
- (int)StringAsMessageDirection:(id)a3;
- (int)messageDirection;
- (int)protocol;
- (int)schema;
- (int)version;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMessageType:(BOOL)a3;
- (void)setHasProtocol:(BOOL)a3;
- (void)setHasSchema:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
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

- (void)setHasSchema:(BOOL)a3
{
  if (a3)
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

- (void)setHasProtocol:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMessageType:(BOOL)a3
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

- (int)StringAsMessageDirection:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Oneway"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Request"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Response"])
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
  v5 = [(MTRPluginPBMHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"version"];

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

  [v3 setObject:v6 forKey:@"schema"];

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

  [v3 setObject:v7 forKey:@"protocol"];

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
  [v3 setObject:v8 forKey:@"messageType"];

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

  [v3 setObject:v10 forKey:@"messageDirection"];

LABEL_24:
  messageID = self->_messageID;
  if (messageID)
  {
    v12 = [(MTRPluginPBMUUID *)messageID dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"messageID"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    v14 = [(MTRPluginPBMUUID *)sessionID dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"sessionID"];
  }

  homeID = self->_homeID;
  if (homeID)
  {
    v16 = [(MTRPluginPBMUUID *)homeID dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"homeID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v11 = v4;
  if ((has & 0x10) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    v4 = v11;
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
  v4 = v11;
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
  v4 = v11;
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
  v4 = v11;
  if (*&self->_has)
  {
LABEL_6:
    messageDirection = self->_messageDirection;
    PBDataWriterWriteInt32Field();
    v4 = v11;
  }

LABEL_7:
  if (self->_messageID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v11;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v11;
  }

  if (self->_homeID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[14] = self->_version;
    *(v4 + 60) |= 0x10u;
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

  v4[10] = self->_schema;
  *(v4 + 60) |= 8u;
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
  v4[9] = self->_protocol;
  *(v4 + 60) |= 4u;
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
  v4[8] = self->_messageType;
  *(v4 + 60) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    v4[4] = self->_messageDirection;
    *(v4 + 60) |= 1u;
  }

LABEL_7:
  v6 = v4;
  if (self->_messageID)
  {
    [v4 setMessageID:?];
    v4 = v6;
  }

  if (self->_sessionID)
  {
    [v6 setSessionID:?];
    v4 = v6;
  }

  if (self->_homeID)
  {
    [v6 setHomeID:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(MTRPluginPBMUUID *)self->_messageID copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [(MTRPluginPBMUUID *)self->_sessionID copyWithZone:a3];
  v11 = v6[6];
  v6[6] = v10;

  v12 = [(MTRPluginPBMUUID *)self->_homeID copyWithZone:a3];
  v13 = v6[1];
  v6[1] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = *(v4 + 60);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 60) & 0x10) == 0 || self->_version != *(v4 + 14))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 60) & 0x10) != 0)
  {
LABEL_33:
    v9 = 0;
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0 || self->_schema != *(v4 + 10))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_protocol != *(v4 + 9))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_messageType != *(v4 + 8))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_messageDirection != *(v4 + 4))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_33;
  }

  messageID = self->_messageID;
  if (messageID | *(v4 + 3) && ![(MTRPluginPBMUUID *)messageID isEqual:?])
  {
    goto LABEL_33;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 6))
  {
    if (![(MTRPluginPBMUUID *)sessionID isEqual:?])
    {
      goto LABEL_33;
    }
  }

  homeID = self->_homeID;
  if (homeID | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 60);
  if ((v6 & 0x10) != 0)
  {
    self->_version = *(v4 + 14);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 60);
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

  else if ((*(v4 + 60) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_schema = *(v4 + 10);
  *&self->_has |= 8u;
  v6 = *(v4 + 60);
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
  self->_protocol = *(v4 + 9);
  *&self->_has |= 4u;
  v6 = *(v4 + 60);
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
  self->_messageType = *(v4 + 8);
  *&self->_has |= 2u;
  if (*(v4 + 60))
  {
LABEL_6:
    self->_messageDirection = *(v4 + 4);
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
  v3 = [(MTRPluginPBMHeader *)self hasVersion];
  v4 = [(MTRPluginPBMHeader *)self hasSchema]+ v3;
  v5 = [(MTRPluginPBMHeader *)self hasProtocol];
  v6 = v4 + v5 + [(MTRPluginPBMHeader *)self hasMessageType];
  return v6 + [(MTRPluginPBMHeader *)self hasMessageDirection]== 5;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MTRPluginPBMHeader *)self messageID];
  v5 = [v4 uuid];
  v6 = [(MTRPluginPBMHeader *)self messageType];
  v7 = [MTRPluginPBMHeader messageTypeAsString:[(MTRPluginPBMHeader *)self messageType]];
  v8 = [(MTRPluginPBMHeader *)self sessionID];
  v9 = [v8 uuid];
  v10 = [(MTRPluginPBMHeader *)self homeID];
  v11 = [v10 uuid];
  v12 = [(MTRPluginPBMHeader *)self messageDirection];
  if ((v12 - 1) >= 3)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v12];
  }

  else
  {
    v13 = off_279894258[(v12 - 1)];
  }

  v14 = [v3 stringWithFormat:@"<MTRPluginPBMHeader: mid: %@, type: %u (%@), sid: %@, hid: %@, direction: %@>", v5, v6, v7, v9, v11, v13];

  return v14;
}

@end