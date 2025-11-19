@interface SGM2ContactDetailConfirmed
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsExtracted:(id)a3;
- (int)StringAsType:(id)a3;
- (int)StringAsUiType:(id)a3;
- (int)extracted;
- (int)type;
- (int)uiType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasExtractionModelVersion:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasUiType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2ContactDetailConfirmed

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(SGM2ContactDetailConfirmed *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 4) != 0)
  {
    self->_type = *(v4 + 6);
    *&self->_has |= 4u;
    v5 = *(v4 + 32);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_extracted = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  self->_extractionModelVersion = *(v4 + 3);
  *&self->_has |= 2u;
  if ((*(v4 + 32) & 8) != 0)
  {
LABEL_7:
    self->_uiType = *(v4 + 7);
    *&self->_has |= 8u;
  }

LABEL_8:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_type;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761 * self->_extracted;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_extractionModelVersion;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_uiType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_extracted != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_extractionModelVersion != *(v4 + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(v4 + 32) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_uiType != *(v4 + 7))
    {
      goto LABEL_23;
    }

    v6 = 1;
  }

LABEL_24:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 32) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 12) = self->_extractionModelVersion;
      *(v5 + 32) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_extracted;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 28) = self->_uiType;
    *(v5 + 32) |= 8u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_key)
  {
    v6 = v4;
    [v4 setKey:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 6) = self->_type;
    *(v4 + 32) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 2) = self->_extracted;
  *(v4 + 32) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(v4 + 3) = self->_extractionModelVersion;
  *(v4 + 32) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v4 + 7) = self->_uiType;
    *(v4 + 32) |= 8u;
  }

LABEL_8:
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

  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  extracted = self->_extracted;
  PBDataWriterWriteInt32Field();
  v4 = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  extractionModelVersion = self->_extractionModelVersion;
  PBDataWriterWriteUint32Field();
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    uiType = self->_uiType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

LABEL_8:
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

  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v8 = off_1E7EFC3A8[type];
    }

    [v4 setObject:v8 forKey:@"type"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_16:
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_extractionModelVersion];
      [v4 setObject:v11 forKey:@"extractionModelVersion"];

      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_21;
      }

LABEL_17:
      uiType = self->_uiType;
      if (uiType >= 4)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_uiType];
      }

      else
      {
        v13 = off_1E7EFC3F8[uiType];
      }

      [v4 setObject:v13 forKey:@"uiType"];

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  extracted = self->_extracted;
  if (extracted >= 5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_extracted];
  }

  else
  {
    v10 = off_1E7EFC3D0[extracted];
  }

  [v4 setObject:v10 forKey:@"extracted"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_21:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2ContactDetailConfirmed;
  v4 = [(SGM2ContactDetailConfirmed *)&v8 description];
  v5 = [(SGM2ContactDetailConfirmed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsUiType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Banner"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DontSuggestButton"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Other"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Notification"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUiType:(BOOL)a3
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

- (int)uiType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_uiType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasExtractionModelVersion:(BOOL)a3
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

- (int)StringAsExtracted:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMDetailExtractionTypeSig"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMDetailExtractionTypePhrase"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMDetailExtractionTypeSigPhrase"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMDetailExtractionTypeInteraction"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMDetailExtractionTypeOther"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)extracted
{
  if (*&self->_has)
  {
    return self->_extracted;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMContactDetailTypeEmail"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypePhone"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeAddress"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeOther"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMContactDetailTypeBirthday"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
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

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
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
    return @"ContactDetailConfirmed";
  }
}

@end