@interface BMPBIntentEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIntentHandlingStatus:(id)a3;
- (int)StringAsIntentType:(id)a3;
- (int)StringAsInteractionDirection:(id)a3;
- (int)intentHandlingStatus;
- (int)intentType;
- (int)interactionDirection;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDonatedBySiri:(BOOL)a3;
- (void)setHasIntentHandlingStatus:(BOOL)a3;
- (void)setHasIntentType:(BOOL)a3;
- (void)setHasInteractionDirection:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasIntentType:(BOOL)a3
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

- (int)StringAsIntentType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"System"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Custom"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Generic"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIntentHandlingStatus:(BOOL)a3
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

- (int)StringAsIntentHandlingStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unspecified"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Ready"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"InProgress"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Success"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Failure"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DeferredToApplication"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UserConfirmationRequired"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDonatedBySiri:(BOOL)a3
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

- (void)setHasInteractionDirection:(BOOL)a3
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

- (int)StringAsInteractionDirection:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Incoming"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Outgoing"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Bidirectional"])
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
  v5 = [(BMPBIntentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v4 forKey:@"absoluteTimestamp"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  sourceId = self->_sourceId;
  if (sourceId)
  {
    [v3 setObject:sourceId forKey:@"sourceId"];
  }

  intentClass = self->_intentClass;
  if (intentClass)
  {
    [v3 setObject:intentClass forKey:@"intentClass"];
  }

  intentVerb = self->_intentVerb;
  if (intentVerb)
  {
    [v3 setObject:intentVerb forKey:@"intentVerb"];
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

    [v3 setObject:v11 forKey:@"intentType"];

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

    [v3 setObject:v13 forKey:@"intentHandlingStatus"];
  }

  interaction = self->_interaction;
  if (interaction)
  {
    [v3 setObject:interaction forKey:@"interaction"];
  }

  itemID = self->_itemID;
  if (itemID)
  {
    [v3 setObject:itemID forKey:@"itemID"];
  }

  v16 = self->_has;
  if ((v16 & 0x10) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_donatedBySiri];
    [v3 setObject:v17 forKey:@"donatedBySiri"];

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

    [v3 setObject:v19 forKey:@"interactionDirection"];
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [v3 setObject:groupIdentifier forKey:@"groupIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v12;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_sourceId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_intentClass)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_intentVerb)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    intentType = self->_intentType;
    PBDataWriterWriteInt32Field();
    v4 = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    intentHandlingStatus = self->_intentHandlingStatus;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_interaction)
  {
    PBDataWriterWriteDataField();
    v4 = v12;
  }

  if (self->_itemID)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    donatedBySiri = self->_donatedBySiri;
    PBDataWriterWriteBOOLField();
    v4 = v12;
    v9 = self->_has;
  }

  if ((v9 & 8) != 0)
  {
    interactionDirection = self->_interactionDirection;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 92) |= 1u;
  }

  v7 = v4;
  if (self->_bundleID)
  {
    [v4 setBundleID:?];
    v4 = v7;
  }

  if (self->_sourceId)
  {
    [v7 setSourceId:?];
    v4 = v7;
  }

  if (self->_intentClass)
  {
    [v7 setIntentClass:?];
    v4 = v7;
  }

  if (self->_intentVerb)
  {
    [v7 setIntentVerb:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 11) = self->_intentType;
    *(v4 + 92) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 10) = self->_intentHandlingStatus;
    *(v4 + 92) |= 2u;
  }

  if (self->_interaction)
  {
    [v7 setInteraction:?];
    v4 = v7;
  }

  if (self->_itemID)
  {
    [v7 setItemID:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(v4 + 88) = self->_donatedBySiri;
    *(v4 + 92) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 8) != 0)
  {
    *(v4 + 16) = self->_interactionDirection;
    *(v4 + 92) |= 8u;
  }

  if (self->_groupIdentifier)
  {
    [v7 setGroupIdentifier:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 92) |= 1u;
  }

  v7 = [(NSString *)self->_bundleID copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_sourceId copyWithZone:a3];
  v10 = *(v6 + 80);
  *(v6 + 80) = v9;

  v11 = [(NSString *)self->_intentClass copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(NSString *)self->_intentVerb copyWithZone:a3];
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

  v16 = [(NSData *)self->_interaction copyWithZone:a3];
  v17 = *(v6 + 56);
  *(v6 + 56) = v16;

  v18 = [(NSString *)self->_itemID copyWithZone:a3];
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

  v21 = [(NSString *)self->_groupIdentifier copyWithZone:a3];
  v22 = *(v6 + 24);
  *(v6 + 24) = v21;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  v5 = *(v4 + 92);
  if (*&self->_has)
  {
    if ((*(v4 + 92) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 92))
  {
    goto LABEL_43;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 2) && ![(NSString *)bundleID isEqual:?])
  {
    goto LABEL_43;
  }

  sourceId = self->_sourceId;
  if (sourceId | *(v4 + 10))
  {
    if (![(NSString *)sourceId isEqual:?])
    {
      goto LABEL_43;
    }
  }

  intentClass = self->_intentClass;
  if (intentClass | *(v4 + 4))
  {
    if (![(NSString *)intentClass isEqual:?])
    {
      goto LABEL_43;
    }
  }

  intentVerb = self->_intentVerb;
  if (intentVerb | *(v4 + 6))
  {
    if (![(NSString *)intentVerb isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v10 = *(v4 + 92);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 92) & 4) == 0 || self->_intentType != *(v4 + 11))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 92) & 4) != 0)
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 92) & 2) == 0 || self->_intentHandlingStatus != *(v4 + 10))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 92) & 2) != 0)
  {
    goto LABEL_43;
  }

  interaction = self->_interaction;
  if (interaction | *(v4 + 7) && ![(NSData *)interaction isEqual:?])
  {
    goto LABEL_43;
  }

  itemID = self->_itemID;
  if (itemID | *(v4 + 9))
  {
    if (![(NSString *)itemID isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v13 = *(v4 + 92);
  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(v4 + 92) & 0x10) == 0)
    {
      goto LABEL_31;
    }

LABEL_43:
    v16 = 0;
    goto LABEL_44;
  }

  if ((*(v4 + 92) & 0x10) == 0)
  {
    goto LABEL_43;
  }

  v14 = *(v4 + 88);
  if (self->_donatedBySiri)
  {
    if ((*(v4 + 88) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_43;
  }

LABEL_31:
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 92) & 8) == 0 || self->_interactionDirection != *(v4 + 16))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 92) & 8) != 0)
  {
    goto LABEL_43;
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 92))
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v7 = v4;
  if (*(v4 + 2))
  {
    [(BMPBIntentEvent *)self setBundleID:?];
    v4 = v7;
  }

  if (*(v4 + 10))
  {
    [(BMPBIntentEvent *)self setSourceId:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(BMPBIntentEvent *)self setIntentClass:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(BMPBIntentEvent *)self setIntentVerb:?];
    v4 = v7;
  }

  v5 = *(v4 + 92);
  if ((v5 & 4) != 0)
  {
    self->_intentType = *(v4 + 11);
    *&self->_has |= 4u;
    v5 = *(v4 + 92);
  }

  if ((v5 & 2) != 0)
  {
    self->_intentHandlingStatus = *(v4 + 10);
    *&self->_has |= 2u;
  }

  if (*(v4 + 7))
  {
    [(BMPBIntentEvent *)self setInteraction:?];
    v4 = v7;
  }

  if (*(v4 + 9))
  {
    [(BMPBIntentEvent *)self setItemID:?];
    v4 = v7;
  }

  v6 = *(v4 + 92);
  if ((v6 & 0x10) != 0)
  {
    self->_donatedBySiri = *(v4 + 88);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 92);
  }

  if ((v6 & 8) != 0)
  {
    self->_interactionDirection = *(v4 + 16);
    *&self->_has |= 8u;
  }

  if (*(v4 + 3))
  {
    [(BMPBIntentEvent *)self setGroupIdentifier:?];
    v4 = v7;
  }
}

@end