@interface SGM2ContactDetailRejected
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsExtracted:(id)extracted;
- (int)StringAsType:(id)type;
- (int)StringAsUiType:(id)type;
- (int)extracted;
- (int)type;
- (int)uiType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExtractionModelVersion:(BOOL)version;
- (void)setHasType:(BOOL)type;
- (void)setHasUiType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation SGM2ContactDetailRejected

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SGM2ContactDetailRejected *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if ((v5 & 4) != 0)
  {
    self->_type = *(fromCopy + 6);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 32);
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

  else if ((*(fromCopy + 32) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_extracted = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 32);
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
  self->_extractionModelVersion = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 32) & 8) != 0)
  {
LABEL_7:
    self->_uiType = *(fromCopy + 7);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_extracted != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_extractionModelVersion != *(equalCopy + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(equalCopy + 32) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0 || self->_uiType != *(equalCopy + 7))
    {
      goto LABEL_23;
    }

    v6 = 1;
  }

LABEL_24:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_key)
  {
    v6 = toCopy;
    [toCopy setKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 6) = self->_type;
    *(toCopy + 32) |= 4u;
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

  *(toCopy + 2) = self->_extracted;
  *(toCopy + 32) |= 1u;
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
  *(toCopy + 3) = self->_extractionModelVersion;
  *(toCopy + 32) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 7) = self->_uiType;
    *(toCopy + 32) |= 8u;
  }

LABEL_8:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
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
  toCopy = v10;
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
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    uiType = self->_uiType;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
  }

LABEL_8:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
      v8 = off_1E7EFCD08[type];
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
        v13 = off_1E7EFCD58[uiType];
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
    v10 = off_1E7EFCD30[extracted];
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
  v8.super_class = SGM2ContactDetailRejected;
  v4 = [(SGM2ContactDetailRejected *)&v8 description];
  dictionaryRepresentation = [(SGM2ContactDetailRejected *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsUiType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Banner"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"DontSuggestButton"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Other"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Notification"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUiType:(BOOL)type
{
  if (type)
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

- (void)setHasExtractionModelVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsExtracted:(id)extracted
{
  extractedCopy = extracted;
  if ([extractedCopy isEqualToString:@"SGMDetailExtractionTypeSig"])
  {
    v4 = 0;
  }

  else if ([extractedCopy isEqualToString:@"SGMDetailExtractionTypePhrase"])
  {
    v4 = 1;
  }

  else if ([extractedCopy isEqualToString:@"SGMDetailExtractionTypeSigPhrase"])
  {
    v4 = 2;
  }

  else if ([extractedCopy isEqualToString:@"SGMDetailExtractionTypeInteraction"])
  {
    v4 = 3;
  }

  else if ([extractedCopy isEqualToString:@"SGMDetailExtractionTypeOther"])
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

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SGMContactDetailTypeEmail"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SGMContactDetailTypePhone"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SGMContactDetailTypeAddress"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SGMContactDetailTypeOther"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SGMContactDetailTypeBirthday"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
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
    return @"ContactDetailRejected";
  }
}

@end