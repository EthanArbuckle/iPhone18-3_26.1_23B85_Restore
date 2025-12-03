@interface BMPBIntentEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIntentHandlingStatus:(id)status;
- (int)StringAsIntentType:(id)type;
- (int)StringAsInteractionDirection:(id)direction;
- (int)intentHandlingStatus;
- (int)intentType;
- (int)interactionDirection;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDonatedBySiri:(BOOL)siri;
- (void)setHasIntentHandlingStatus:(BOOL)status;
- (void)setHasIntentType:(BOOL)type;
- (void)setHasInteractionDirection:(BOOL)direction;
- (void)writeTo:(id)to;
@end

@implementation BMPBIntentEvent

- (int)intentType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_intentType;
  }

  else
  {
    return 0;
  }
}

- (int)intentHandlingStatus
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_intentHandlingStatus;
  }

  else
  {
    return 0;
  }
}

- (int)interactionDirection
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_interactionDirection;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIntentType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsIntentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"System"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Custom"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Generic"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIntentHandlingStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsIntentHandlingStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Unspecified"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"Ready"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"InProgress"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"Success"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"Failure"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"DeferredToApplication"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"UserConfirmationRequired"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDonatedBySiri:(BOOL)siri
{
  if (siri)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasInteractionDirection:(BOOL)direction
{
  if (direction)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsInteractionDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([directionCopy isEqualToString:@"Incoming"])
  {
    v4 = 1;
  }

  else if ([directionCopy isEqualToString:@"Outgoing"])
  {
    v4 = 2;
  }

  else if ([directionCopy isEqualToString:@"Bidirectional"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBIntentEvent;
  v4 = [(BMPBIntentEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBIntentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [dictionary setObject:v4 forKey:@"absoluteTimestamp"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [dictionary setObject:bundleID forKey:@"bundleID"];
  }

  sourceId = self->_sourceId;
  if (sourceId)
  {
    [dictionary setObject:sourceId forKey:@"sourceId"];
  }

  intentClass = self->_intentClass;
  if (intentClass)
  {
    [dictionary setObject:intentClass forKey:@"intentClass"];
  }

  intentVerb = self->_intentVerb;
  if (intentVerb)
  {
    [dictionary setObject:intentVerb forKey:@"intentVerb"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    intentType = self->_intentType;
    if (intentType >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_intentType];
    }

    else
    {
      v11 = *(&off_1E6E536D8 + intentType);
    }

    [dictionary setObject:v11 forKey:@"intentType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    intentHandlingStatus = self->_intentHandlingStatus;
    if (intentHandlingStatus >= 7)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_intentHandlingStatus];
    }

    else
    {
      v13 = *(&off_1E6E536F8 + intentHandlingStatus);
    }

    [dictionary setObject:v13 forKey:@"intentHandlingStatus"];
  }

  interaction = self->_interaction;
  if (interaction)
  {
    [dictionary setObject:interaction forKey:@"interaction"];
  }

  itemID = self->_itemID;
  if (itemID)
  {
    [dictionary setObject:itemID forKey:@"itemID"];
  }

  v16 = self->_has;
  if ((v16 & 0x10) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_donatedBySiri];
    [dictionary setObject:v17 forKey:@"donatedBySiri"];

    v16 = self->_has;
  }

  if ((v16 & 8) != 0)
  {
    interactionDirection = self->_interactionDirection;
    if (interactionDirection >= 4)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_interactionDirection];
    }

    else
    {
      v19 = *(&off_1E6E53730 + interactionDirection);
    }

    [dictionary setObject:v19 forKey:@"interactionDirection"];
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [dictionary setObject:groupIdentifier forKey:@"groupIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v12;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_sourceId)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_intentClass)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_intentVerb)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    intentType = self->_intentType;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    intentHandlingStatus = self->_intentHandlingStatus;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

  if (self->_interaction)
  {
    PBDataWriterWriteDataField();
    toCopy = v12;
  }

  if (self->_itemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    donatedBySiri = self->_donatedBySiri;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
    v9 = self->_has;
  }

  if ((v9 & 8) != 0)
  {
    interactionDirection = self->_interactionDirection;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_absoluteTimestamp;
    *(toCopy + 92) |= 1u;
  }

  v7 = toCopy;
  if (self->_bundleID)
  {
    [toCopy setBundleID:?];
    toCopy = v7;
  }

  if (self->_sourceId)
  {
    [v7 setSourceId:?];
    toCopy = v7;
  }

  if (self->_intentClass)
  {
    [v7 setIntentClass:?];
    toCopy = v7;
  }

  if (self->_intentVerb)
  {
    [v7 setIntentVerb:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 11) = self->_intentType;
    *(toCopy + 92) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_intentHandlingStatus;
    *(toCopy + 92) |= 2u;
  }

  if (self->_interaction)
  {
    [v7 setInteraction:?];
    toCopy = v7;
  }

  if (self->_itemID)
  {
    [v7 setItemID:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 88) = self->_donatedBySiri;
    *(toCopy + 92) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 8) != 0)
  {
    *(toCopy + 16) = self->_interactionDirection;
    *(toCopy + 92) |= 8u;
  }

  if (self->_groupIdentifier)
  {
    [v7 setGroupIdentifier:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 92) |= 1u;
  }

  v7 = [(NSString *)self->_bundleID copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_sourceId copyWithZone:zone];
  v10 = *(v6 + 80);
  *(v6 + 80) = v9;

  v11 = [(NSString *)self->_intentClass copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(NSString *)self->_intentVerb copyWithZone:zone];
  v14 = *(v6 + 48);
  *(v6 + 48) = v13;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 44) = self->_intentType;
    *(v6 + 92) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 40) = self->_intentHandlingStatus;
    *(v6 + 92) |= 2u;
  }

  v16 = [(NSData *)self->_interaction copyWithZone:zone];
  v17 = *(v6 + 56);
  *(v6 + 56) = v16;

  v18 = [(NSString *)self->_itemID copyWithZone:zone];
  v19 = *(v6 + 72);
  *(v6 + 72) = v18;

  v20 = self->_has;
  if ((v20 & 0x10) != 0)
  {
    *(v6 + 88) = self->_donatedBySiri;
    *(v6 + 92) |= 0x10u;
    v20 = self->_has;
  }

  if ((v20 & 8) != 0)
  {
    *(v6 + 64) = self->_interactionDirection;
    *(v6 + 92) |= 8u;
  }

  v21 = [(NSString *)self->_groupIdentifier copyWithZone:zone];
  v22 = *(v6 + 24);
  *(v6 + 24) = v21;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  v5 = *(equalCopy + 92);
  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_43;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 2) && ![(NSString *)bundleID isEqual:?])
  {
    goto LABEL_43;
  }

  sourceId = self->_sourceId;
  if (sourceId | *(equalCopy + 10))
  {
    if (![(NSString *)sourceId isEqual:?])
    {
      goto LABEL_43;
    }
  }

  intentClass = self->_intentClass;
  if (intentClass | *(equalCopy + 4))
  {
    if (![(NSString *)intentClass isEqual:?])
    {
      goto LABEL_43;
    }
  }

  intentVerb = self->_intentVerb;
  if (intentVerb | *(equalCopy + 6))
  {
    if (![(NSString *)intentVerb isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v10 = *(equalCopy + 92);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 92) & 4) == 0 || self->_intentType != *(equalCopy + 11))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 92) & 4) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_intentHandlingStatus != *(equalCopy + 10))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
    goto LABEL_43;
  }

  interaction = self->_interaction;
  if (interaction | *(equalCopy + 7) && ![(NSData *)interaction isEqual:?])
  {
    goto LABEL_43;
  }

  itemID = self->_itemID;
  if (itemID | *(equalCopy + 9))
  {
    if (![(NSString *)itemID isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v13 = *(equalCopy + 92);
  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equalCopy + 92) & 0x10) == 0)
    {
      goto LABEL_31;
    }

LABEL_43:
    v16 = 0;
    goto LABEL_44;
  }

  if ((*(equalCopy + 92) & 0x10) == 0)
  {
    goto LABEL_43;
  }

  v14 = *(equalCopy + 88);
  if (self->_donatedBySiri)
  {
    if ((*(equalCopy + 88) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_43;
  }

LABEL_31:
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 92) & 8) == 0 || self->_interactionDirection != *(equalCopy + 16))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 92) & 8) != 0)
  {
    goto LABEL_43;
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier | *(equalCopy + 3))
  {
    v16 = [(NSString *)groupIdentifier isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_44:

  return v16;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v19 = [(NSString *)self->_bundleID hash];
  v9 = [(NSString *)self->_sourceId hash];
  v10 = [(NSString *)self->_intentClass hash];
  v11 = [(NSString *)self->_intentVerb hash];
  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_intentType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_11:
      v13 = 2654435761 * self->_intentHandlingStatus;
      goto LABEL_14;
    }
  }

  v13 = 0;
LABEL_14:
  v14 = [(NSData *)self->_interaction hash];
  v15 = [(NSString *)self->_itemID hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_donatedBySiri;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    v17 = 0;
    return v19 ^ v5 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSString *)self->_groupIdentifier hash];
  }

  v16 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v17 = 2654435761 * self->_interactionDirection;
  return v19 ^ v5 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSString *)self->_groupIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 92))
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BMPBIntentEvent *)self setBundleID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 10))
  {
    [(BMPBIntentEvent *)self setSourceId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBIntentEvent *)self setIntentClass:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 6))
  {
    [(BMPBIntentEvent *)self setIntentVerb:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 92);
  if ((v5 & 4) != 0)
  {
    self->_intentType = *(fromCopy + 11);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 92);
  }

  if ((v5 & 2) != 0)
  {
    self->_intentHandlingStatus = *(fromCopy + 10);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 7))
  {
    [(BMPBIntentEvent *)self setInteraction:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 9))
  {
    [(BMPBIntentEvent *)self setItemID:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 92);
  if ((v6 & 0x10) != 0)
  {
    self->_donatedBySiri = *(fromCopy + 88);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 92);
  }

  if ((v6 & 8) != 0)
  {
    self->_interactionDirection = *(fromCopy + 16);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBIntentEvent *)self setGroupIdentifier:?];
    fromCopy = v7;
  }
}

@end