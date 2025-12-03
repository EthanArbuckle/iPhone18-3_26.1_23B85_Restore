@interface BMPBUserFocusComputedModeEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsModeSemanticType:(id)type;
- (int)StringAsModeUpdateReason:(id)reason;
- (int)StringAsModeUpdateSource:(id)source;
- (int)modeSemanticType;
- (int)modeUpdateReason;
- (int)modeUpdateSource;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasModeUpdateReason:(BOOL)reason;
- (void)setHasModeUpdateSource:(BOOL)source;
- (void)setHasStarting:(BOOL)starting;
- (void)writeTo:(id)to;
@end

@implementation BMPBUserFocusComputedModeEvent

- (void)setHasStarting:(BOOL)starting
{
  if (starting)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)modeUpdateReason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_modeUpdateReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasModeUpdateReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsModeUpdateReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"UserAction"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"Scheduled"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"Automation"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)modeSemanticType
{
  if (*&self->_has)
  {
    return self->_modeSemanticType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsModeSemanticType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Custom"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Default"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Sleep"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Driving"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Exercise"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Work"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PersonalTime"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Reading"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Gaming"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Mindfulness"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)modeUpdateSource
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_modeUpdateSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasModeUpdateSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsModeUpdateSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"Local"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"Cloud"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"Paired"])
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
  v8.super_class = BMPBUserFocusComputedModeEvent;
  v4 = [(BMPBUserFocusComputedModeEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBUserFocusComputedModeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  mode = self->_mode;
  if (mode)
  {
    [dictionary setObject:mode forKey:@"mode"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
    [v4 setObject:v7 forKey:@"starting"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  modeUpdateReason = self->_modeUpdateReason;
  if (modeUpdateReason >= 4)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeUpdateReason];
  }

  else
  {
    v9 = off_1E6E54178[modeUpdateReason];
  }

  [v4 setObject:v9 forKey:@"modeUpdateReason"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_13:
  modeSemanticType = self->_modeSemanticType;
  if (modeSemanticType >= 0xA)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeSemanticType];
  }

  else
  {
    v11 = off_1E6E54198[modeSemanticType];
  }

  [v4 setObject:v11 forKey:@"modeSemanticType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_17:
    modeUpdateSource = self->_modeUpdateSource;
    if (modeUpdateSource >= 4)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeUpdateSource];
    }

    else
    {
      v13 = off_1E6E541E8[modeUpdateSource];
    }

    [v4 setObject:v13 forKey:@"modeUpdateSource"];
  }

LABEL_21:
  semanticModeIdentifier = self->_semanticModeIdentifier;
  if (semanticModeIdentifier)
  {
    [v4 setObject:semanticModeIdentifier forKey:@"semanticModeIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_mode)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  modeUpdateReason = self->_modeUpdateReason;
  PBDataWriterWriteInt32Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  modeSemanticType = self->_modeSemanticType;
  PBDataWriterWriteInt32Field();
  toCopy = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    modeUpdateSource = self->_modeUpdateSource;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
  }

LABEL_8:
  if (self->_semanticModeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_mode)
  {
    [toCopy setMode:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 40) = self->_starting;
    *(toCopy + 44) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 5) = self->_modeUpdateReason;
  *(toCopy + 44) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(toCopy + 4) = self->_modeSemanticType;
  *(toCopy + 44) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *(toCopy + 6) = self->_modeUpdateSource;
    *(toCopy + 44) |= 4u;
  }

LABEL_8:
  if (self->_semanticModeIdentifier)
  {
    [v6 setSemanticModeIdentifier:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_mode copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 40) = self->_starting;
    *(v5 + 44) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 16) = self->_modeSemanticType;
      *(v5 + 44) |= 1u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 20) = self->_modeUpdateReason;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 24) = self->_modeUpdateSource;
    *(v5 + 44) |= 4u;
  }

LABEL_6:
  v9 = [(NSString *)self->_semanticModeIdentifier copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  mode = self->_mode;
  if (mode | *(equalCopy + 1))
  {
    if (![(NSString *)mode isEqual:?])
    {
      goto LABEL_29;
    }
  }

  v6 = *(equalCopy + 44);
  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 44) & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  if ((*(equalCopy + 44) & 8) == 0)
  {
    goto LABEL_29;
  }

  v7 = *(equalCopy + 40);
  if (self->_starting)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_29;
  }

LABEL_6:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_modeUpdateReason != *(equalCopy + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_modeSemanticType != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_modeUpdateSource != *(equalCopy + 6))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_29;
  }

  semanticModeIdentifier = self->_semanticModeIdentifier;
  if (semanticModeIdentifier | *(equalCopy + 4))
  {
    v9 = [(NSString *)semanticModeIdentifier isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_30:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_mode hash];
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_starting;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_modeUpdateReason;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_semanticModeIdentifier hash];
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_modeSemanticType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_modeUpdateSource;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_semanticModeIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(BMPBUserFocusComputedModeEvent *)self setMode:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 44);
  if ((v5 & 8) != 0)
  {
    self->_starting = *(fromCopy + 40);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 44);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 44) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_modeUpdateReason = *(fromCopy + 5);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 44);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_modeSemanticType = *(fromCopy + 4);
  *&self->_has |= 1u;
  if ((*(fromCopy + 44) & 4) != 0)
  {
LABEL_7:
    self->_modeUpdateSource = *(fromCopy + 6);
    *&self->_has |= 4u;
  }

LABEL_8:
  if (*(fromCopy + 4))
  {
    [(BMPBUserFocusComputedModeEvent *)self setSemanticModeIdentifier:?];
    fromCopy = v6;
  }
}

@end