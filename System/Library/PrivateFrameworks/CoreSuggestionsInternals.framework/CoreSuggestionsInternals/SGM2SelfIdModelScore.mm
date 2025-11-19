@interface SGM2SelfIdModelScore
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsModel:(id)a3;
- (int)StringAsSupervision:(id)a3;
- (int)model;
- (int)supervision;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasSupervision:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2SelfIdModelScore

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(SGM2SelfIdModelScore *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if (v5)
  {
    self->_model = *(v4 + 4);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 28) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_result = *(v4 + 24);
  *&self->_has |= 4u;
  if ((*(v4 + 28) & 2) != 0)
  {
LABEL_6:
    self->_supervision = *(v4 + 5);
    *&self->_has |= 2u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_model;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_result;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_supervision;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  key = self->_key;
  if (key | *(v4 + 1))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_model != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 28) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  if ((*(v4 + 28) & 4) == 0)
  {
    goto LABEL_16;
  }

  v8 = *(v4 + 24);
  if (self->_result)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_16;
  }

LABEL_11:
  v6 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_supervision != *(v4 + 5))
    {
      goto LABEL_16;
    }

    v6 = 1;
  }

LABEL_17:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_result;
    *(v5 + 28) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_model;
  *(v5 + 28) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 20) = self->_supervision;
    *(v5 + 28) |= 2u;
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
    *(v4 + 4) = self->_model;
    *(v4 + 28) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 24) = self->_result;
  *(v4 + 28) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(v4 + 5) = self->_supervision;
    *(v4 + 28) |= 2u;
  }

LABEL_7:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    model = self->_model;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  result = self->_result;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    supervision = self->_supervision;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_7:
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
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_result];
    [v4 setObject:v9 forKey:@"result"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    supervision = self->_supervision;
    if (supervision >= 5)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_supervision];
    }

    else
    {
      v11 = off_27894AC60[supervision];
    }

    [v4 setObject:v11 forKey:@"supervision"];

    goto LABEL_16;
  }

  model = self->_model;
  if (model >= 4)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_model];
  }

  else
  {
    v8 = off_27894AC40[model];
  }

  [v4 setObject:v8 forKey:@"model"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_16:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2SelfIdModelScore;
  v4 = [(SGM2SelfIdModelScore *)&v8 description];
  v5 = [(SGM2SelfIdModelScore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsSupervision:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMSelfIdSupervisionTypeNone"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMSelfIdSupervisionTypeContact"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMSelfIdSupervisionTypeAppleContact"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMSelfIdSupervisionTypePreviousModel"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGMSelfIdSupervisionTypeRegex"])
  {
    v4 = 4;
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)supervision
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_supervision;
  }

  else
  {
    return 0;
  }
}

- (void)setHasResult:(BOOL)a3
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

- (int)StringAsModel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGMSelfIdModelTypeRegex"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGMSelfIdModelTypeLogistic"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGMSelfIdModelTypeLinear"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGMSelfIdModelTypeCoreNLP"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)model
{
  if (*&self->_has)
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
    return @"SelfIdModelScore";
  }
}

@end