@interface SGM2EventBannerConfirmed
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApp:(id)a3;
- (int)StringAsCategory:(id)a3;
- (int)StringAsDateAdj:(id)a3;
- (int)StringAsDuraAdj:(id)a3;
- (int)StringAsExtracted:(id)a3;
- (int)StringAsState:(id)a3;
- (int)StringAsTitleAdj:(id)a3;
- (int)app;
- (int)category;
- (int)dateAdj;
- (int)duraAdj;
- (int)extracted;
- (int)state;
- (int)titleAdj;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCategory:(BOOL)a3;
- (void)setHasDateAdj:(BOOL)a3;
- (void)setHasDuraAdj:(BOOL)a3;
- (void)setHasExtracted:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasTitleAdj:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2EventBannerConfirmed

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 4))
  {
    v6 = v4;
    [(SGM2EventBannerConfirmed *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 48);
  if (v5)
  {
    self->_app = v4[2];
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
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

  else if ((v4[12] & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_category = v4[3];
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
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
  self->_extracted = v4[6];
  *&self->_has |= 0x10u;
  v5 = *(v4 + 48);
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
  self->_state = v4[10];
  *&self->_has |= 0x20u;
  v5 = *(v4 + 48);
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
  self->_titleAdj = v4[11];
  *&self->_has |= 0x40u;
  v5 = *(v4 + 48);
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
  self->_dateAdj = v4[4];
  *&self->_has |= 4u;
  if ((v4[12] & 8) != 0)
  {
LABEL_10:
    self->_duraAdj = v4[5];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_38;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_app != *(v4 + 2))
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_38:
    v6 = 0;
    goto LABEL_39;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_category != *(v4 + 3))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_extracted != *(v4 + 6))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 48) & 0x20) == 0 || self->_state != *(v4 + 10))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 48) & 0x20) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 48) & 0x40) == 0 || self->_titleAdj != *(v4 + 11))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 48) & 0x40) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_dateAdj != *(v4 + 4))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_38;
  }

  v6 = (*(v4 + 48) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_duraAdj != *(v4 + 5))
    {
      goto LABEL_38;
    }

    v6 = 1;
  }

LABEL_39:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
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
  if (has)
  {
    *(v4 + 2) = self->_app;
    *(v4 + 48) |= 1u;
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

  *(v4 + 3) = self->_category;
  *(v4 + 48) |= 2u;
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
  *(v4 + 6) = self->_extracted;
  *(v4 + 48) |= 0x10u;
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
  *(v4 + 10) = self->_state;
  *(v4 + 48) |= 0x20u;
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
  *(v4 + 11) = self->_titleAdj;
  *(v4 + 48) |= 0x40u;
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
  *(v4 + 4) = self->_dateAdj;
  *(v4 + 48) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(v4 + 5) = self->_duraAdj;
    *(v4 + 48) |= 8u;
  }

LABEL_11:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  has = self->_has;
  if (has)
  {
    app = self->_app;
    PBDataWriterWriteInt32Field();
    v4 = v13;
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
  v4 = v13;
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
  v4 = v13;
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
  v4 = v13;
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
  v4 = v13;
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
  v4 = v13;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    duraAdj = self->_duraAdj;
    PBDataWriterWriteInt32Field();
    v4 = v13;
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
  v5 = [(SGM2EventBannerConfirmed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsDuraAdj:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMEventDurationAdjNA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMEventDurationAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMEventDurationAdjLessThan30Min"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMEventDurationAdj30To60Min"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMEventDurationAdj1To2Hours"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SGMEventDurationAdjMoreThan2Hours"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuraAdj:(BOOL)a3
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

- (int)StringAsDateAdj:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMEventDateAdjNA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjChangedDay"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjSubTime2hPlus"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjSubTime2h"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjSubTime1h"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjAddTime1h"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjAddTime2h"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjAddTime2hPlus"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SGMEventDateAdjChangedDayAndTime"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDateAdj:(BOOL)a3
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

- (int)StringAsTitleAdj:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMEventStringAdjNA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMEventStringAdjConfirmed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMEventStringAdjPrefixAdded"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMEventStringAdjSuffixAdded"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMEventStringAdjReplaced"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTitleAdj:(BOOL)a3
{
  if (a3)
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

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMEventStateUpdate"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMEventStateCancel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMEventStateNew"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasState:(BOOL)a3
{
  if (a3)
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

- (int)StringAsExtracted:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMEventExtractionTypeICal"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SGMEventExtractionTypeTemplate"];
  }

  return v4;
}

- (void)setHasExtracted:(BOOL)a3
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

- (int)StringAsCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMEventCategoryFlight"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryBus"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryTrain"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryHotel"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryCar"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryTicket"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryMovie"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryFood"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SGMEventCategorySocial"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryOther"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryBoat"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SGMEventCategoryAppointment"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCategory:(BOOL)a3
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

- (int)StringAsApp:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMBannerDisplayAppMail"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMBannerDisplayAppMessages"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMBannerDisplayAppOther"])
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