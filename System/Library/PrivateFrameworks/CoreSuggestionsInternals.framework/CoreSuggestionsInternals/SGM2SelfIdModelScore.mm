@interface SGM2SelfIdModelScore
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsModel:(id)model;
- (int)StringAsSupervision:(id)supervision;
- (int)model;
- (int)supervision;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasResult:(BOOL)result;
- (void)setHasSupervision:(BOOL)supervision;
- (void)writeTo:(id)to;
@end

@implementation SGM2SelfIdModelScore

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(SGM2SelfIdModelScore *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_model = *(fromCopy + 4);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
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

  else if ((*(fromCopy + 28) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_result = *(fromCopy + 24);
  *&self->_has |= 4u;
  if ((*(fromCopy + 28) & 2) != 0)
  {
LABEL_6:
    self->_supervision = *(fromCopy + 5);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  key = self->_key;
  if (key | *(equalCopy + 1))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_model != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  if ((*(equalCopy + 28) & 4) == 0)
  {
    goto LABEL_16;
  }

  v8 = *(equalCopy + 24);
  if (self->_result)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_16;
  }

LABEL_11:
  v6 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_supervision != *(equalCopy + 5))
    {
      goto LABEL_16;
    }

    v6 = 1;
  }

LABEL_17:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
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
    *(toCopy + 4) = self->_model;
    *(toCopy + 28) |= 1u;
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

  *(toCopy + 24) = self->_result;
  *(toCopy + 28) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 5) = self->_supervision;
    *(toCopy + 28) |= 2u;
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
    model = self->_model;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    supervision = self->_supervision;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_7:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
  dictionaryRepresentation = [(SGM2SelfIdModelScore *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsSupervision:(id)supervision
{
  supervisionCopy = supervision;
  if ([supervisionCopy isEqualToString:@"SGMSelfIdSupervisionTypeNone"])
  {
    v4 = 0;
  }

  else if ([supervisionCopy isEqualToString:@"SGMSelfIdSupervisionTypeContact"])
  {
    v4 = 1;
  }

  else if ([supervisionCopy isEqualToString:@"SGMSelfIdSupervisionTypeAppleContact"])
  {
    v4 = 2;
  }

  else if ([supervisionCopy isEqualToString:@"SGMSelfIdSupervisionTypePreviousModel"])
  {
    v4 = 3;
  }

  else if ([supervisionCopy isEqualToString:@"SGMSelfIdSupervisionTypeRegex"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSupervision:(BOOL)supervision
{
  if (supervision)
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

- (void)setHasResult:(BOOL)result
{
  if (result)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsModel:(id)model
{
  modelCopy = model;
  if ([modelCopy isEqualToString:@"SGMSelfIdModelTypeRegex"])
  {
    v4 = 0;
  }

  else if ([modelCopy isEqualToString:@"SGMSelfIdModelTypeLogistic"])
  {
    v4 = 1;
  }

  else if ([modelCopy isEqualToString:@"SGMSelfIdModelTypeLinear"])
  {
    v4 = 2;
  }

  else if ([modelCopy isEqualToString:@"SGMSelfIdModelTypeCoreNLP"])
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