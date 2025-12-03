@interface SGM2EventBannerRejected
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)app;
- (int)StringAsCategory:(id)category;
- (int)StringAsExtracted:(id)extracted;
- (int)app;
- (int)category;
- (int)extracted;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCategory:(BOOL)category;
- (void)setHasExtracted:(BOOL)extracted;
- (void)writeTo:(id)to;
@end

@implementation SGM2EventBannerRejected

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(SGM2EventBannerRejected *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_app = fromCopy[2];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((fromCopy[8] & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_category = fromCopy[3];
  *&self->_has |= 2u;
  if ((fromCopy[8] & 4) != 0)
  {
LABEL_6:
    self->_extracted = fromCopy[4];
    *&self->_has |= 4u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_app;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_category;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_extracted;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  key = self->_key;
  if (key | *(equalCopy + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_app != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_category != *(equalCopy + 3))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 32) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_extracted != *(equalCopy + 4))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 12) = self->_category;
    *(v5 + 32) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_app;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_extracted;
    *(v5 + 32) |= 4u;
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
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 3) = self->_category;
  *(toCopy + 32) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 4) = self->_extracted;
    *(toCopy + 32) |= 4u;
  }

LABEL_7:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  category = self->_category;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    extracted = self->_extracted;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_7:
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
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    category = self->_category;
    if (category >= 0xC)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_category];
    }

    else
    {
      v10 = off_1E7EFAE88[category];
    }

    [v4 setObject:v10 forKey:@"category"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  app = self->_app;
  if (app >= 3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_app];
  }

  else
  {
    v8 = off_1E7EFAE70[app];
  }

  [v4 setObject:v8 forKey:@"app"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_15:
    extracted = self->_extracted;
    if (extracted)
    {
      if (extracted == 1)
      {
        v12 = @"SGMEventExtractionTypeTemplate";
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_extracted];
      }
    }

    else
    {
      v12 = @"SGMEventExtractionTypeICal";
    }

    [v4 setObject:v12 forKey:@"extracted"];
  }

LABEL_21:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2EventBannerRejected;
  v4 = [(SGM2EventBannerRejected *)&v8 description];
  dictionaryRepresentation = [(SGM2EventBannerRejected *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsExtracted:(id)extracted
{
  extractedCopy = extracted;
  if ([extractedCopy isEqualToString:@"SGMEventExtractionTypeICal"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [extractedCopy isEqualToString:@"SGMEventExtractionTypeTemplate"];
  }

  return v4;
}

- (void)setHasExtracted:(BOOL)extracted
{
  if (extracted)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)extracted
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_extracted;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"SGMEventCategoryFlight"])
  {
    v4 = 0;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryBus"])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryTrain"])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryHotel"])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryCar"])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryTicket"])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryMovie"])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryFood"])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategorySocial"])
  {
    v4 = 8;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryOther"])
  {
    v4 = 9;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryBoat"])
  {
    v4 = 10;
  }

  else if ([categoryCopy isEqualToString:@"SGMEventCategoryAppointment"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCategory:(BOOL)category
{
  if (category)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)category
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_category;
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
    return @"EventBannerRejected";
  }
}

@end