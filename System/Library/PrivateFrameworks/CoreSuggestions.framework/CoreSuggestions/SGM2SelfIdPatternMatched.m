@interface SGM2SelfIdPatternMatched
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNameClass:(id)a3;
- (int)StringAsPatternType:(id)a3;
- (int)nameClass;
- (int)patternType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNameClass:(BOOL)a3;
- (void)setHasNameTokens:(BOOL)a3;
- (void)setHasPatternType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2SelfIdPatternMatched

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 1))
  {
    [(SGM2SelfIdPatternMatched *)self setKey:?];
    v4 = v6;
  }

  if ((*(v4 + 44) & 8) != 0)
  {
    self->_patternType = *(v4 + 10);
    *&self->_has |= 8u;
  }

  if (*(v4 + 4))
  {
    [(SGM2SelfIdPatternMatched *)self setPatternHash:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    self->_nameTokens = *(v4 + 6);
    *&self->_has |= 4u;
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_nameClass = *(v4 + 5);
  *&self->_has |= 2u;
  if (*(v4 + 44))
  {
LABEL_10:
    self->_messageIndex = *(v4 + 4);
    *&self->_has |= 1u;
  }

LABEL_11:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_patternType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_patternHash hash];
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v6 = 2654435761 * self->_nameTokens;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_nameClass;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = 2654435761 * self->_messageIndex;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  key = self->_key;
  if (key | *(v4 + 1))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_26;
    }
  }

  has = self->_has;
  v7 = *(v4 + 44);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_patternType != *(v4 + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_26;
  }

  patternHash = self->_patternHash;
  if (patternHash | *(v4 + 4))
  {
    if (![(NSString *)patternHash isEqual:?])
    {
LABEL_26:
      v9 = 0;
      goto LABEL_27;
    }

    has = self->_has;
    v7 = *(v4 + 44);
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_nameTokens != *(v4 + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_nameClass != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_26;
  }

  v9 = (v7 & 1) == 0;
  if (has)
  {
    if ((v7 & 1) == 0 || self->_messageIndex != *(v4 + 4))
    {
      goto LABEL_26;
    }

    v9 = 1;
  }

LABEL_27:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 40) = self->_patternType;
    *(v5 + 44) |= 8u;
  }

  v8 = [(NSString *)self->_patternHash copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v5 + 20) = self->_nameClass;
    *(v5 + 44) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *(v5 + 24) = self->_nameTokens;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    *(v5 + 16) = self->_messageIndex;
    *(v5 + 44) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 10) = self->_patternType;
    *(v4 + 44) |= 8u;
  }

  if (self->_patternHash)
  {
    [v6 setPatternHash:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 6) = self->_nameTokens;
    *(v4 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 5) = self->_nameClass;
  *(v4 + 44) |= 2u;
  if (*&self->_has)
  {
LABEL_10:
    *(v4 + 4) = self->_messageIndex;
    *(v4 + 44) |= 1u;
  }

LABEL_11:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    patternType = self->_patternType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

  if (self->_patternHash)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    nameTokens = self->_nameTokens;
    PBDataWriterWriteUint32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  nameClass = self->_nameClass;
  PBDataWriterWriteInt32Field();
  v4 = v10;
  if (*&self->_has)
  {
LABEL_10:
    messageIndex = self->_messageIndex;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

LABEL_11:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  if ((*&self->_has & 8) != 0)
  {
    patternType = self->_patternType;
    if (patternType)
    {
      if (patternType == 1)
      {
        v7 = @"SGMSIPatternTypeSelfIdRequest";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_patternType];
      }
    }

    else
    {
      v7 = @"SGMSIPatternTypeSelfId";
    }

    [v4 setObject:v7 forKey:@"patternType"];
  }

  patternHash = self->_patternHash;
  if (patternHash)
  {
    [v4 setObject:patternHash forKey:@"patternHash"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nameTokens];
    [v4 setObject:v12 forKey:@"nameTokens"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_14:
      if ((has & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

  nameClass = self->_nameClass;
  if (nameClass >= 3)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_nameClass];
  }

  else
  {
    v14 = off_1E7EFABA8[nameClass];
  }

  [v4 setObject:v14 forKey:@"nameClass"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_messageIndex];
  [v4 setObject:v10 forKey:@"messageIndex"];

LABEL_16:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2SelfIdPatternMatched;
  v4 = [(SGM2SelfIdPatternMatched *)&v8 description];
  v5 = [(SGM2SelfIdPatternMatched *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsNameClass:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMSINameClassificationName"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMSINameClassificationNotName"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMSINameClassificationMaybeName"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNameClass:(BOOL)a3
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

- (int)nameClass
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_nameClass;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNameTokens:(BOOL)a3
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

- (int)StringAsPatternType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMSIPatternTypeSelfId"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SGMSIPatternTypeSelfIdRequest"];
  }

  return v4;
}

- (void)setHasPatternType:(BOOL)a3
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

- (int)patternType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_patternType;
  }

  else
  {
    return 0;
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"SelfIdPatternMatched";
  }
}

@end