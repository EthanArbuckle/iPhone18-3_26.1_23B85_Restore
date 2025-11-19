@interface SGM2FoundInMailModelScore
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContactDetail:(id)a3;
- (int)StringAsMode:(id)a3;
- (int)StringAsModel:(id)a3;
- (int)StringAsSupervision:(id)a3;
- (int)contactDetail;
- (int)mode;
- (int)model;
- (int)supervision;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCorrect:(BOOL)a3;
- (void)setHasMode:(BOOL)a3;
- (void)setHasModel:(BOOL)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasSupervision:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2FoundInMailModelScore

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(SGM2FoundInMailModelScore *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 4) != 0)
  {
    self->_model = *(v4 + 7);
    *&self->_has |= 4u;
    v5 = *(v4 + 40);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_contactDetail = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_result = *(v4 + 37);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_correct = *(v4 + 36);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  self->_mode = *(v4 + 6);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 8) != 0)
  {
LABEL_9:
    self->_supervision = *(v4 + 8);
    *&self->_has |= 8u;
  }

LABEL_10:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_model;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761 * self->_contactDetail;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
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
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_result;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_correct;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_mode;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = 2654435761 * self->_supervision;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_38;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_model != *(v4 + 7))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_contactDetail != *(v4 + 2))
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 40) & 0x20) == 0)
    {
      goto LABEL_38;
    }

    v6 = *(v4 + 37);
    if (self->_result)
    {
      if ((*(v4 + 37) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(v4 + 37))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 40) & 0x20) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(v4 + 40) & 0x10) == 0)
    {
      goto LABEL_18;
    }

LABEL_38:
    v8 = 0;
    goto LABEL_39;
  }

  if ((*(v4 + 40) & 0x10) == 0)
  {
    goto LABEL_38;
  }

  v7 = *(v4 + 36);
  if (self->_correct)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_38;
  }

LABEL_18:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_mode != *(v4 + 6))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_38;
  }

  v8 = (*(v4 + 40) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_supervision != *(v4 + 8))
    {
      goto LABEL_38;
    }

    v8 = 1;
  }

LABEL_39:

  return v8;
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
    *(v5 + 28) = self->_model;
    *(v5 + 40) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_contactDetail;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v5 + 37) = self->_result;
  *(v5 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 24) = self->_mode;
    *(v5 + 40) |= 2u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 36) = self->_correct;
  *(v5 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v5 + 32) = self->_supervision;
    *(v5 + 40) |= 8u;
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
    *(v4 + 7) = self->_model;
    *(v4 + 40) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 2) = self->_contactDetail;
  *(v4 + 40) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 37) = self->_result;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 36) = self->_correct;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(v4 + 6) = self->_mode;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(v4 + 8) = self->_supervision;
    *(v4 + 40) |= 8u;
  }

LABEL_10:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    model = self->_model;
    PBDataWriterWriteInt32Field();
    v4 = v12;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  contactDetail = self->_contactDetail;
  PBDataWriterWriteInt32Field();
  v4 = v12;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = self->_result;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  correct = self->_correct;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  mode = self->_mode;
  PBDataWriterWriteInt32Field();
  v4 = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    supervision = self->_supervision;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

LABEL_10:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    model = self->_model;
    if (model >= 4)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_model];
    }

    else
    {
      v8 = off_27894B020[model];
    }

    [v4 setObject:v8 forKey:@"model"];

    has = self->_has;
  }

  if (has)
  {
    contactDetail = self->_contactDetail;
    if (contactDetail >= 5)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_contactDetail];
    }

    else
    {
      v10 = off_27894B040[contactDetail];
    }

    [v4 setObject:v10 forKey:@"contactDetail"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_result];
    [v4 setObject:v11 forKey:@"result"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_15:
      if ((has & 2) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      mode = self->_mode;
      if (mode >= 3)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mode];
      }

      else
      {
        v14 = off_27894B068[mode];
      }

      [v4 setObject:v14 forKey:@"mode"];

      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_correct];
  [v4 setObject:v12 forKey:@"correct"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((has & 8) != 0)
  {
LABEL_24:
    supervision = self->_supervision;
    if (supervision >= 4)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_supervision];
    }

    else
    {
      v16 = off_27894B080[supervision];
    }

    [v4 setObject:v16 forKey:@"supervision"];
  }

LABEL_28:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2FoundInMailModelScore;
  v4 = [(SGM2FoundInMailModelScore *)&v8 description];
  v5 = [(SGM2FoundInMailModelScore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsSupervision:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMFoundInMailSupervisionTypeNone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMFoundInMailSupervisionTypeContact"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMFoundInMailSupervisionTypeAppleContact"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMFoundInMailSupervisionTypePreviousModel"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSupervision:(BOOL)a3
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

- (int)supervision
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_supervision;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGFoundInMailModelModeTraining"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGFoundInMailModelModeEvaluation"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGFoundInMailModelModePrediction"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMode:(BOOL)a3
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

- (int)mode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_mode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCorrect:(BOOL)a3
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

- (void)setHasResult:(BOOL)a3
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

- (int)StringAsContactDetail:(id)a3
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

- (int)contactDetail
{
  if (*&self->_has)
  {
    return self->_contactDetail;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsModel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMFoundInMailModelTypeRegex"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMFoundInMailModelTypeLogistic"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMFoundInMailModelTypeLinear"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMFoundInMailModelTypeNaiveBayes"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasModel:(BOOL)a3
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

- (int)model
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_model;
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
    return @"FoundInMailModelScore";
  }
}

@end