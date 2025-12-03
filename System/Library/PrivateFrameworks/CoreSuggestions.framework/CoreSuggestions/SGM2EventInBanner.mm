@interface SGM2EventInBanner
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)app;
- (int)StringAsCategory:(id)category;
- (int)StringAsExtracted:(id)extracted;
- (int)StringAsState:(id)state;
- (int)app;
- (int)category;
- (int)extracted;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCategory:(BOOL)category;
- (void)setHasExtracted:(BOOL)extracted;
- (void)setHasState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation SGM2EventInBanner

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(SGM2EventInBanner *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_app = fromCopy[2];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((fromCopy[9] & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_category = fromCopy[3];
  *&self->_has |= 2u;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  self->_extracted = fromCopy[4];
  *&self->_has |= 4u;
  if ((fromCopy[9] & 8) != 0)
  {
LABEL_7:
    self->_state = fromCopy[8];
    *&self->_has |= 8u;
  }

LABEL_8:
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
      v5 = 2654435761 * self->_category;
      if ((*&self->_has & 4) != 0)
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
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_extracted;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_state;
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
  if (key | *(equalCopy + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_app != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_category != *(equalCopy + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_extracted != *(equalCopy + 4))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(equalCopy + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_state != *(equalCopy + 8))
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
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_app;
    *(v5 + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 16) = self->_extracted;
      *(v5 + 36) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_category;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_state;
    *(v5 + 36) |= 8u;
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
    *(toCopy + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
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

  *(toCopy + 3) = self->_category;
  *(toCopy + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(toCopy + 4) = self->_extracted;
  *(toCopy + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 8) = self->_state;
    *(toCopy + 36) |= 8u;
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
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
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

  category = self->_category;
  PBDataWriterWriteInt32Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  extracted = self->_extracted;
  PBDataWriterWriteInt32Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    state = self->_state;
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
  if (has)
  {
    app = self->_app;
    if (app >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_app];
    }

    else
    {
      v8 = off_1E7EFC570[app];
    }

    [v4 setObject:v8 forKey:@"app"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_16:
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

      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  category = self->_category;
  if (category >= 0xC)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_category];
  }

  else
  {
    v10 = off_1E7EFC588[category];
  }

  [v4 setObject:v10 forKey:@"category"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_22:
    state = self->_state;
    if (state >= 3)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_state];
    }

    else
    {
      v14 = off_1E7EFC5E8[state];
    }

    [v4 setObject:v14 forKey:@"state"];
  }

LABEL_26:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2EventInBanner;
  v4 = [(SGM2EventInBanner *)&v8 description];
  dictionaryRepresentation = [(SGM2EventInBanner *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"SGMEventStateUpdate"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"SGMEventStateCancel"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"SGMEventStateNew"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)state
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
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
    return @"EventInBanner";
  }
}

@end