@interface SGM2EventBannerConfirmed
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)app;
- (int)StringAsCategory:(id)category;
- (int)StringAsDateAdj:(id)adj;
- (int)StringAsDuraAdj:(id)adj;
- (int)StringAsExtracted:(id)extracted;
- (int)StringAsState:(id)state;
- (int)StringAsTitleAdj:(id)adj;
- (int)app;
- (int)category;
- (int)dateAdj;
- (int)duraAdj;
- (int)extracted;
- (int)state;
- (int)titleAdj;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCategory:(BOOL)category;
- (void)setHasDateAdj:(BOOL)adj;
- (void)setHasDuraAdj:(BOOL)adj;
- (void)setHasExtracted:(BOOL)extracted;
- (void)setHasState:(BOOL)state;
- (void)setHasTitleAdj:(BOOL)adj;
- (void)writeTo:(id)to;
@end

@implementation SGM2EventBannerConfirmed

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(SGM2EventBannerConfirmed *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_app = fromCopy[2];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((fromCopy[12] & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_category = fromCopy[3];
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_extracted = fromCopy[6];
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_state = fromCopy[10];
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_titleAdj = fromCopy[11];
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  self->_dateAdj = fromCopy[4];
  *&self->_has |= 4u;
  if ((fromCopy[12] & 8) != 0)
  {
LABEL_10:
    self->_duraAdj = fromCopy[5];
    *&self->_has |= 8u;
  }

LABEL_11:
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
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
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
    v6 = 2654435761 * self->_extracted;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_state;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_titleAdj;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_13:
  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = 2654435761 * self->_dateAdj;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v10 = 2654435761 * self->_duraAdj;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  key = self->_key;
  if (key | *(equalCopy + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_38;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_app != *(equalCopy + 2))
    {
      goto LABEL_38;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_38:
    v6 = 0;
    goto LABEL_39;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_category != *(equalCopy + 3))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 48) & 0x10) == 0 || self->_extracted != *(equalCopy + 6))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 48) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 48) & 0x20) == 0 || self->_state != *(equalCopy + 10))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 48) & 0x20) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 48) & 0x40) == 0 || self->_titleAdj != *(equalCopy + 11))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 48) & 0x40) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_dateAdj != *(equalCopy + 4))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_38;
  }

  v6 = (*(equalCopy + 48) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_duraAdj != *(equalCopy + 5))
    {
      goto LABEL_38;
    }

    v6 = 1;
  }

LABEL_39:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_app;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_category;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v5 + 24) = self->_extracted;
  *(v5 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 40) = self->_state;
  *(v5 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    *(v5 + 16) = self->_dateAdj;
    *(v5 + 48) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_8;
  }

LABEL_14:
  *(v5 + 44) = self->_titleAdj;
  *(v5 + 48) |= 0x40u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
LABEL_8:
    *(v5 + 20) = self->_duraAdj;
    *(v5 + 48) |= 8u;
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
    *(toCopy + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 3) = self->_category;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 6) = self->_extracted;
  *(toCopy + 48) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(toCopy + 10) = self->_state;
  *(toCopy + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 11) = self->_titleAdj;
  *(toCopy + 48) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(toCopy + 4) = self->_dateAdj;
  *(toCopy + 48) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(toCopy + 5) = self->_duraAdj;
    *(toCopy + 48) |= 8u;
  }

LABEL_11:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v13 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v13;
  }

  has = self->_has;
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    toCopy = v13;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  category = self->_category;
  PBDataWriterWriteInt32Field();
  toCopy = v13;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  extracted = self->_extracted;
  PBDataWriterWriteInt32Field();
  toCopy = v13;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  state = self->_state;
  PBDataWriterWriteInt32Field();
  toCopy = v13;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  titleAdj = self->_titleAdj;
  PBDataWriterWriteInt32Field();
  toCopy = v13;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  dateAdj = self->_dateAdj;
  PBDataWriterWriteInt32Field();
  toCopy = v13;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    duraAdj = self->_duraAdj;
    PBDataWriterWriteInt32Field();
    toCopy = v13;
  }

LABEL_11:
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
      v8 = off_1E7EFC708[app];
    }

    [v4 setObject:v8 forKey:@"app"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
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
    v10 = off_1E7EFC720[category];
  }

  [v4 setObject:v10 forKey:@"category"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_19:
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

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_25:
  state = self->_state;
  if (state >= 3)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v14 = off_1E7EFC780[state];
  }

  [v4 setObject:v14 forKey:@"state"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_33:
    dateAdj = self->_dateAdj;
    if (dateAdj >= 0xA)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_dateAdj];
    }

    else
    {
      v18 = off_1E7EFC7C0[dateAdj];
    }

    [v4 setObject:v18 forKey:@"dateAdj"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_29:
  titleAdj = self->_titleAdj;
  if (titleAdj >= 5)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_titleAdj];
  }

  else
  {
    v16 = off_1E7EFC798[titleAdj];
  }

  [v4 setObject:v16 forKey:@"titleAdj"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_33;
  }

LABEL_9:
  if ((has & 8) != 0)
  {
LABEL_37:
    duraAdj = self->_duraAdj;
    if (duraAdj >= 6)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_duraAdj];
    }

    else
    {
      v20 = off_1E7EFC810[duraAdj];
    }

    [v4 setObject:v20 forKey:@"duraAdj"];
  }

LABEL_41:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGM2EventBannerConfirmed;
  v4 = [(SGM2EventBannerConfirmed *)&v8 description];
  dictionaryRepresentation = [(SGM2EventBannerConfirmed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsDuraAdj:(id)adj
{
  adjCopy = adj;
  if ([adjCopy isEqualToString:@"SGMEventDurationAdjNA"])
  {
    v4 = 0;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdjLessThan30Min"])
  {
    v4 = 2;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdj30To60Min"])
  {
    v4 = 3;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdj1To2Hours"])
  {
    v4 = 4;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDurationAdjMoreThan2Hours"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuraAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)duraAdj
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_duraAdj;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDateAdj:(id)adj
{
  adjCopy = adj;
  if ([adjCopy isEqualToString:@"SGMEventDateAdjNA"])
  {
    v4 = 0;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjChangedDay"])
  {
    v4 = 2;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjSubTime2hPlus"])
  {
    v4 = 3;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjSubTime2h"])
  {
    v4 = 4;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjSubTime1h"])
  {
    v4 = 5;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjAddTime1h"])
  {
    v4 = 6;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjAddTime2h"])
  {
    v4 = 7;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjAddTime2hPlus"])
  {
    v4 = 8;
  }

  else if ([adjCopy isEqualToString:@"SGMEventDateAdjChangedDayAndTime"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDateAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)dateAdj
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_dateAdj;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsTitleAdj:(id)adj
{
  adjCopy = adj;
  if ([adjCopy isEqualToString:@"SGMEventStringAdjNA"])
  {
    v4 = 0;
  }

  else if ([adjCopy isEqualToString:@"SGMEventStringAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([adjCopy isEqualToString:@"SGMEventStringAdjPrefixAdded"])
  {
    v4 = 2;
  }

  else if ([adjCopy isEqualToString:@"SGMEventStringAdjSuffixAdded"])
  {
    v4 = 3;
  }

  else if ([adjCopy isEqualToString:@"SGMEventStringAdjReplaced"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTitleAdj:(BOOL)adj
{
  if (adj)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)titleAdj
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_titleAdj;
  }

  else
  {
    return 0;
  }
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
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)state
{
  if ((*&self->_has & 0x20) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)extracted
{
  if ((*&self->_has & 0x10) != 0)
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
    return @"EventBannerConfirmed";
  }
}

@end