@interface SGM2HarvestCost
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDocumentSource:(id)a3;
- (int)StringAsHarvestSource:(id)a3;
- (int)documentSource;
- (int)harvestSource;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHarvestSource:(BOOL)a3;
- (void)setHasHarvestedOnBattery:(BOOL)a3;
- (void)setHasHighPriority:(BOOL)a3;
- (void)setHasReceivedOnBattery:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2HarvestCost

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_documentSource = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 20) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_highPriority = *(v4 + 17);
  *&self->_has |= 8u;
  v5 = *(v4 + 20);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_receivedOnBattery = *(v4 + 18);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 20);
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
  self->_harvestedOnBattery = *(v4 + 16);
  *&self->_has |= 4u;
  if ((*(v4 + 20) & 2) != 0)
  {
LABEL_6:
    self->_harvestSource = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_7:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_documentSource;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_highPriority;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_receivedOnBattery;
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
  v5 = 2654435761 * self->_harvestedOnBattery;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_harvestSource;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_documentSource != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 20) & 8) == 0)
    {
      goto LABEL_34;
    }

    v6 = *(v4 + 17);
    if (self->_highPriority)
    {
      if ((*(v4 + 17) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(v4 + 17))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 20) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 20) & 0x10) == 0)
    {
      goto LABEL_34;
    }

    v7 = *(v4 + 18);
    if (self->_receivedOnBattery)
    {
      if ((*(v4 + 18) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(v4 + 18))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 20) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 20) & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_34:
    v5 = 0;
    goto LABEL_35;
  }

  if ((*(v4 + 20) & 4) == 0)
  {
    goto LABEL_34;
  }

  v8 = *(v4 + 16);
  if (self->_harvestedOnBattery)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_34;
  }

LABEL_13:
  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_harvestSource != *(v4 + 3))
    {
      goto LABEL_34;
    }

    v5 = 1;
  }

LABEL_35:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_documentSource;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 17) = self->_highPriority;
  *(result + 20) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 18) = self->_receivedOnBattery;
  *(result + 20) |= 0x10u;
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
  *(result + 16) = self->_harvestedOnBattery;
  *(result + 20) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 3) = self->_harvestSource;
  *(result + 20) |= 2u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_documentSource;
    *(v4 + 20) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 17) = self->_highPriority;
  *(v4 + 20) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v4 + 18) = self->_receivedOnBattery;
  *(v4 + 20) |= 0x10u;
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
  *(v4 + 16) = self->_harvestedOnBattery;
  *(v4 + 20) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v4[3] = self->_harvestSource;
    *(v4 + 20) |= 2u;
  }

LABEL_7:
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (has)
  {
    documentSource = self->_documentSource;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  highPriority = self->_highPriority;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  receivedOnBattery = self->_receivedOnBattery;
  PBDataWriterWriteBOOLField();
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
  harvestedOnBattery = self->_harvestedOnBattery;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    harvestSource = self->_harvestSource;
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    documentSource = self->_documentSource;
    if (documentSource >= 8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_documentSource];
    }

    else
    {
      v6 = off_27894BEA0[documentSource];
    }

    [v3 setObject:v6 forKey:@"documentSource"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_highPriority];
    [v3 setObject:v7 forKey:@"highPriority"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_8:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_harvestedOnBattery];
      [v3 setObject:v9 forKey:@"harvestedOnBattery"];

      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_18;
      }

LABEL_14:
      harvestSource = self->_harvestSource;
      if (harvestSource >= 9)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_harvestSource];
      }

      else
      {
        v11 = off_27894BEE0[harvestSource];
      }

      [v3 setObject:v11 forKey:@"harvestSource"];

      goto LABEL_18;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_receivedOnBattery];
  [v3 setObject:v8 forKey:@"receivedOnBattery"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((has & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_18:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGM2HarvestCost;
  v4 = [(SGM2HarvestCost *)&v8 description];
  v5 = [(SGM2HarvestCost *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsHarvestSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SGM2HarvestSourceInMemory"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SGM2HarvestSourceRealtime"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SGM2HarvestSourceRealtimeNoBudget"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SGM2HarvestSourceOnDiskOverflow"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SGM2HarvestSourceOnDiskNoBudget"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SGM2HarvestSourceOnDiskTimeout"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SGM2HarvestSourceOnDiskClosed"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SGM2HarvestSourceOnDiskLegacy"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SGM2HarvestSourceProactiveHarvesting"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasHarvestSource:(BOOL)a3
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

- (int)harvestSource
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_harvestSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHarvestedOnBattery:(BOOL)a3
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

- (void)setHasReceivedOnBattery:(BOOL)a3
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

- (void)setHasHighPriority:(BOOL)a3
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

- (int)StringAsDocumentSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"otherFirstParty"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"otherThirdParty"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Safari"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"News"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Mail"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Messages"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Notes"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Reminders"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)documentSource
{
  if (*&self->_has)
  {
    return self->_documentSource;
  }

  else
  {
    return 0;
  }
}

@end