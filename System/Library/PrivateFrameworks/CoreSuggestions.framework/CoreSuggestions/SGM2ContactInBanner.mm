@interface SGM2ContactInBanner
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)app;
- (int)StringAsExtracted:(id)extracted;
- (int)StringAsType:(id)type;
- (int)app;
- (int)extracted;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExtracted:(BOOL)extracted;
- (void)setHasExtractionModelVersion:(BOOL)version;
- (void)setHasSelfId:(BOOL)id;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation SGM2ContactInBanner

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(SGM2ContactInBanner *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_app = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 40) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_extracted = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_selfId = *(fromCopy + 36);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  self->_extractionModelVersion = *(fromCopy + 4);
  *&self->_has |= 4u;
  if ((*(fromCopy + 40) & 8) != 0)
  {
LABEL_8:
    self->_type = *(fromCopy + 8);
    *&self->_has |= 8u;
  }

LABEL_9:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_app;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_extracted;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
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
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_selfId;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_extractionModelVersion;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761 * self->_type;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  key = self->_key;
  if (key | *(equalCopy + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_30;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_app != *(equalCopy + 2))
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_extracted != *(equalCopy + 3))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_30:
    v7 = 0;
    goto LABEL_31;
  }

  if ((*(equalCopy + 40) & 0x10) == 0)
  {
    goto LABEL_30;
  }

  v6 = *(equalCopy + 36);
  if (self->_selfId)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_30;
  }

LABEL_16:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_extractionModelVersion != *(equalCopy + 4))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_30;
  }

  v7 = (*(equalCopy + 40) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_30;
    }

    v7 = 1;
  }

LABEL_31:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_app;
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_extracted;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 16) = self->_extractionModelVersion;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 36) = self->_selfId;
  *(v5 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v5 + 32) = self->_type;
    *(v5 + 40) |= 8u;
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
  if (has)
  {
    *(toCopy + 2) = self->_app;
    *(toCopy + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 3) = self->_extracted;
  *(toCopy + 40) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 36) = self->_selfId;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(toCopy + 4) = self->_extractionModelVersion;
  *(toCopy + 40) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(toCopy + 8) = self->_type;
    *(toCopy + 40) |= 8u;
  }

LABEL_9:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  has = self->_has;
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  extracted = self->_extracted;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  selfId = self->_selfId;
  PBDataWriterWriteBOOLField();
  toCopy = v11;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  extractionModelVersion = self->_extractionModelVersion;
  PBDataWriterWriteUint32Field();
  toCopy = v11;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }

LABEL_9:
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
  if (has)
  {
    app = self->_app;
    if (app >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_app];
    }

    else
    {
      v8 = off_1E7EFC508[app];
    }

    [v4 setObject:v8 forKey:@"app"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    extracted = self->_extracted;
    if (extracted >= 4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_extracted];
    }

    else
    {
      v10 = off_1E7EFC520[extracted];
    }

    [v4 setObject:v10 forKey:@"extracted"];

    has = self->_has;
  }

  if ((has & 0x10) == 0)
  {
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_extractionModelVersion];
    [v4 setObject:v12 forKey:@"extractionModelVersion"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_19:
    type = self->_type;
    if (type >= 5)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v14 = off_1E7EFC540[type];
    }

    [v4 setObject:v14 forKey:@"type"];

    goto LABEL_23;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_selfId];
  [v4 setObject:v11 forKey:@"selfId"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((has & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_23:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2ContactInBanner;
  v4 = [(SGM2ContactInBanner *)&v8 description];
  dictionaryRepresentation = [(SGM2ContactInBanner *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)type
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_type;
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSelfId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsExtracted:(id)extracted
{
  extractedCopy = extracted;
  if ([extractedCopy isEqualToString:@"SGMBannerExtractionTypeSig"])
  {
    v4 = 0;
  }

  else if ([extractedCopy isEqualToString:@"SGMBannerExtractionTypePhrase"])
  {
    v4 = 1;
  }

  else if ([extractedCopy isEqualToString:@"SGMBannerExtractionTypeSigPhrase"])
  {
    v4 = 2;
  }

  else if ([extractedCopy isEqualToString:@"SGMBannerExtractionTypeOther"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasExtracted:(BOOL)extracted
{
  if (extracted)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)extracted
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_extracted;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsApp:(id)app
{
  appCopy = app;
  if ([appCopy isEqualToString:@"SGMBannerDisplayAppMail"])
  {
    v4 = 0;
  }

  else if ([appCopy isEqualToString:@"SGMBannerDisplayAppMessages"])
  {
    v4 = 1;
  }

  else if ([appCopy isEqualToString:@"SGMBannerDisplayAppOther"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)app
{
  if (*&self->_has)
  {
    return self->_app;
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
    return @"ContactInBanner";
  }
}

@end