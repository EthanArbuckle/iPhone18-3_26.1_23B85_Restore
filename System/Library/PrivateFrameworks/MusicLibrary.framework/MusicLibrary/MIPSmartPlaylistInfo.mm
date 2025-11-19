@interface MIPSmartPlaylistInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDynamic:(BOOL)a3;
- (void)setHasEnabledItemsOnly:(BOOL)a3;
- (void)setHasFiltered:(BOOL)a3;
- (void)setHasGenius:(BOOL)a3;
- (void)setHasLimitKind:(BOOL)a3;
- (void)setHasLimitOrder:(BOOL)a3;
- (void)setHasLimitValue:(BOOL)a3;
- (void)setHasLimited:(BOOL)a3;
- (void)setHasReverseLimitOrder:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPSmartPlaylistInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 0x10) != 0)
  {
    self->_dynamic = *(v4 + 32);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 20);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_filtered = *(v4 + 34);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 20);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_limited = *(v4 + 36);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 20);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_limitKind = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 20);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_evaluationOrder = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 20);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_limitOrder = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 20);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_limitValue = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 20);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  self->_enabledItemsOnly = *(v4 + 33);
  *&self->_has |= 0x20u;
  if ((*(v4 + 20) & 0x200) != 0)
  {
LABEL_10:
    self->_reverseLimitOrder = *(v4 + 37);
    *&self->_has |= 0x200u;
  }

LABEL_11:
  if (*(v4 + 3))
  {
    v6 = v4;
    [(MIPSmartPlaylistInfo *)self setSmartCriteria:?];
    v4 = v6;
  }

  if ((*(v4 + 20) & 0x80) != 0)
  {
    self->_genius = *(v4 + 35);
    *&self->_has |= 0x80u;
  }
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_dynamic;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v14 = 2654435761 * self->_filtered;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_limited;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_limitKind;
    if (has)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if (has)
  {
LABEL_6:
    v6 = 2654435761 * self->_evaluationOrder;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_limitOrder;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v8 = 2654435761 * self->_limitValue;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v9 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v9 = 2654435761 * self->_enabledItemsOnly;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v10 = 2654435761 * self->_reverseLimitOrder;
    goto LABEL_20;
  }

LABEL_19:
  v10 = 0;
LABEL_20:
  v11 = [(NSData *)self->_smartCriteria hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v12 = 2654435761 * self->_genius;
  }

  else
  {
    v12 = 0;
  }

  return v15 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  has = self->_has;
  v6 = *(v4 + 20);
  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_72;
    }

    if (self->_dynamic)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_72;
    }

    if (self->_filtered)
    {
      if ((*(v4 + 34) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*(v4 + 34))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 20) & 0x100) == 0)
    {
      goto LABEL_72;
    }

    if (self->_limited)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 20) & 0x100) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_limitKind != *(v4 + 3))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_72;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_evaluationOrder != *(v4 + 2))
    {
      goto LABEL_72;
    }
  }

  else if (v6)
  {
    goto LABEL_72;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_limitOrder != *(v4 + 4))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_limitValue != *(v4 + 5))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_72;
    }

    if (self->_enabledItemsOnly)
    {
      if ((*(v4 + 33) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*(v4 + 33))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 20) & 0x200) == 0)
    {
      goto LABEL_72;
    }

    if (self->_reverseLimitOrder)
    {
      if ((*(v4 + 37) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*(v4 + 37))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 20) & 0x200) != 0)
  {
    goto LABEL_72;
  }

  smartCriteria = self->_smartCriteria;
  if (smartCriteria | *(v4 + 3))
  {
    if (![(NSData *)smartCriteria isEqual:?])
    {
      goto LABEL_72;
    }

    has = self->_has;
    v6 = *(v4 + 20);
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) != 0)
    {
      if (self->_genius)
      {
        if (*(v4 + 35))
        {
          goto LABEL_74;
        }
      }

      else if (!*(v4 + 35))
      {
LABEL_74:
        v8 = 1;
        goto LABEL_73;
      }
    }

LABEL_72:
    v8 = 0;
    goto LABEL_73;
  }

  v8 = (v6 & 0x80) == 0;
LABEL_73:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 32) = self->_dynamic;
    *(v5 + 40) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 34) = self->_filtered;
  *(v5 + 40) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 36) = self->_limited;
  *(v5 + 40) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 12) = self->_limitKind;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 8) = self->_evaluationOrder;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 16) = self->_limitOrder;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 20) = self->_limitValue;
  *(v5 + 40) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  *(v5 + 33) = self->_enabledItemsOnly;
  *(v5 + 40) |= 0x20u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    *(v5 + 37) = self->_reverseLimitOrder;
    *(v5 + 40) |= 0x200u;
  }

LABEL_11:
  v8 = [(NSData *)self->_smartCriteria copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 35) = self->_genius;
    *(v6 + 40) |= 0x80u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[32] = self->_dynamic;
    *(v4 + 20) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v4[34] = self->_filtered;
  *(v4 + 20) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[36] = self->_limited;
  *(v4 + 20) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 3) = self->_limitKind;
  *(v4 + 20) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 2) = self->_evaluationOrder;
  *(v4 + 20) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 4) = self->_limitOrder;
  *(v4 + 20) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 5) = self->_limitValue;
  *(v4 + 20) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  v4[33] = self->_enabledItemsOnly;
  *(v4 + 20) |= 0x20u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v4[37] = self->_reverseLimitOrder;
    *(v4 + 20) |= 0x200u;
  }

LABEL_11:
  if (self->_smartCriteria)
  {
    v6 = v4;
    [v4 setSmartCriteria:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v4[35] = self->_genius;
    *(v4 + 20) |= 0x80u;
  }
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
  if (self->_smartCriteria)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_dynamic];
    [v3 setObject:v9 forKey:@"dynamic"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_filtered];
  [v3 setObject:v10 forKey:@"filtered"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_limited];
  [v3 setObject:v11 forKey:@"limited"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_limitKind];
  [v3 setObject:v12 forKey:@"limitKind"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_evaluationOrder];
  [v3 setObject:v13 forKey:@"evaluationOrder"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_limitOrder];
  [v3 setObject:v14 forKey:@"limitOrder"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_limitValue];
  [v3 setObject:v15 forKey:@"limitValue"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabledItemsOnly];
  [v3 setObject:v16 forKey:@"enabledItemsOnly"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_reverseLimitOrder];
    [v3 setObject:v5 forKey:@"reverseLimitOrder"];
  }

LABEL_11:
  smartCriteria = self->_smartCriteria;
  if (smartCriteria)
  {
    [v3 setObject:smartCriteria forKey:@"smartCriteria"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_genius];
    [v3 setObject:v7 forKey:@"genius"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPSmartPlaylistInfo;
  v4 = [(MIPSmartPlaylistInfo *)&v8 description];
  v5 = [(MIPSmartPlaylistInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasGenius:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasReverseLimitOrder:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasEnabledItemsOnly:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasLimitValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLimitOrder:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLimitKind:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLimited:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasFiltered:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasDynamic:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

@end