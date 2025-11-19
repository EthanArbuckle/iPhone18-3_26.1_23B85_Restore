@interface SGMIMetricsSubmodelStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNbExtremelyDiscriminantTokensForIgnorability:(BOOL)a3;
- (void)setHasNbExtremelyDiscriminantTokensForSaliency:(BOOL)a3;
- (void)setHasNbHighlyDiscriminantTokensForIgnorability:(BOOL)a3;
- (void)setHasNbHighlyDiscriminantTokensForSaliency:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGMIMetricsSubmodelStats

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if (v5)
  {
    self->_ageOfTheSubmodelInDays = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 28) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_nbHighlyDiscriminantTokensForSaliency = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_nbHighlyDiscriminantTokensForIgnorability = *(v4 + 5);
  *&self->_has |= 8u;
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

LABEL_13:
  self->_nbExtremelyDiscriminantTokensForSaliency = *(v4 + 4);
  *&self->_has |= 4u;
  if ((*(v4 + 28) & 2) != 0)
  {
LABEL_6:
    self->_nbExtremelyDiscriminantTokensForIgnorability = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_ageOfTheSubmodelInDays;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_nbHighlyDiscriminantTokensForSaliency;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_nbHighlyDiscriminantTokensForIgnorability;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_nbExtremelyDiscriminantTokensForSaliency;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_nbExtremelyDiscriminantTokensForIgnorability;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_ageOfTheSubmodelInDays != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 28) & 0x10) == 0 || self->_nbHighlyDiscriminantTokensForSaliency != *(v4 + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 0x10) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 28) & 8) == 0 || self->_nbHighlyDiscriminantTokensForIgnorability != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_nbExtremelyDiscriminantTokensForSaliency != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_nbExtremelyDiscriminantTokensForIgnorability != *(v4 + 3))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_ageOfTheSubmodelInDays;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_nbHighlyDiscriminantTokensForSaliency;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 5) = self->_nbHighlyDiscriminantTokensForIgnorability;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 4) = self->_nbExtremelyDiscriminantTokensForSaliency;
  *(result + 28) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 3) = self->_nbExtremelyDiscriminantTokensForIgnorability;
  *(result + 28) |= 2u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_ageOfTheSubmodelInDays;
    *(v4 + 28) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_nbHighlyDiscriminantTokensForSaliency;
  *(v4 + 28) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4[5] = self->_nbHighlyDiscriminantTokensForIgnorability;
  *(v4 + 28) |= 8u;
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

LABEL_13:
  v4[4] = self->_nbExtremelyDiscriminantTokensForSaliency;
  *(v4 + 28) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v4[3] = self->_nbExtremelyDiscriminantTokensForIgnorability;
    *(v4 + 28) |= 2u;
  }

LABEL_7:
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (has)
  {
    ageOfTheSubmodelInDays = self->_ageOfTheSubmodelInDays;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  nbHighlyDiscriminantTokensForSaliency = self->_nbHighlyDiscriminantTokensForSaliency;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  nbHighlyDiscriminantTokensForIgnorability = self->_nbHighlyDiscriminantTokensForIgnorability;
  PBDataWriterWriteUint32Field();
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

LABEL_13:
  nbExtremelyDiscriminantTokensForSaliency = self->_nbExtremelyDiscriminantTokensForSaliency;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    nbExtremelyDiscriminantTokensForIgnorability = self->_nbExtremelyDiscriminantTokensForIgnorability;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ageOfTheSubmodelInDays];
    [v3 setObject:v7 forKey:@"ageOfTheSubmodelInDays"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_nbHighlyDiscriminantTokensForSaliency];
  [v3 setObject:v8 forKey:@"nbHighlyDiscriminantTokensForSaliency"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_nbHighlyDiscriminantTokensForIgnorability];
  [v3 setObject:v9 forKey:@"nbHighlyDiscriminantTokensForIgnorability"];

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

LABEL_13:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_nbExtremelyDiscriminantTokensForSaliency];
  [v3 setObject:v10 forKey:@"nbExtremelyDiscriminantTokensForSaliency"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_nbExtremelyDiscriminantTokensForIgnorability];
    [v3 setObject:v5 forKey:@"nbExtremelyDiscriminantTokensForIgnorability"];
  }

LABEL_7:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsSubmodelStats;
  v4 = [(SGMIMetricsSubmodelStats *)&v8 description];
  v5 = [(SGMIMetricsSubmodelStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasNbExtremelyDiscriminantTokensForIgnorability:(BOOL)a3
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

- (void)setHasNbExtremelyDiscriminantTokensForSaliency:(BOOL)a3
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

- (void)setHasNbHighlyDiscriminantTokensForIgnorability:(BOOL)a3
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

- (void)setHasNbHighlyDiscriminantTokensForSaliency:(BOOL)a3
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

@end