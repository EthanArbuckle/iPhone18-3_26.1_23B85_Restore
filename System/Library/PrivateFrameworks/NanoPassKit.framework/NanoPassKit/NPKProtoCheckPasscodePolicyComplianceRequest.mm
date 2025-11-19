@interface NPKProtoCheckPasscodePolicyComplianceRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)enforcedPolicy;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasApplyBackgroundEnforcementIfNecessary:(BOOL)a3;
- (void)setHasApplyRestrictions:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCheckPasscodePolicyComplianceRequest

- (int)enforcedPolicy
{
  if (*&self->_has)
  {
    return self->_enforcedPolicy;
  }

  else
  {
    return 0;
  }
}

- (void)setHasApplyRestrictions:(BOOL)a3
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

- (void)setHasApplyBackgroundEnforcementIfNecessary:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCheckPasscodePolicyComplianceRequest;
  v4 = [(NPKProtoCheckPasscodePolicyComplianceRequest *)&v8 description];
  v5 = [(NPKProtoCheckPasscodePolicyComplianceRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    if (self->_enforcedPolicy)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_enforcedPolicy];
    }

    else
    {
      v5 = @"China";
    }

    [v3 setObject:v5 forKey:@"enforcedPolicy"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_applyRestrictions];
    [v3 setObject:v6 forKey:@"applyRestrictions"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_applyBackgroundEnforcementIfNecessary];
    [v3 setObject:v7 forKey:@"applyBackgroundEnforcementIfNecessary"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    enforcedPolicy = self->_enforcedPolicy;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  applyRestrictions = self->_applyRestrictions;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    applyBackgroundEnforcementIfNecessary = self->_applyBackgroundEnforcementIfNecessary;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_enforcedPolicy;
    *(v4 + 16) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 13) = self->_applyRestrictions;
  *(v4 + 16) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v4 + 12) = self->_applyBackgroundEnforcementIfNecessary;
    *(v4 + 16) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_enforcedPolicy;
    *(result + 16) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 13) = self->_applyRestrictions;
  *(result + 16) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 12) = self->_applyBackgroundEnforcementIfNecessary;
  *(result + 16) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_enforcedPolicy != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 16) & 4) == 0)
    {
      goto LABEL_15;
    }

    v7 = *(v4 + 13);
    if (self->_applyRestrictions)
    {
      if ((*(v4 + 13) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(v4 + 13))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 16) & 4) != 0)
  {
    goto LABEL_15;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) != 0)
    {
      if (self->_applyBackgroundEnforcementIfNecessary)
      {
        if (*(v4 + 12))
        {
          goto LABEL_23;
        }
      }

      else if (!*(v4 + 12))
      {
LABEL_23:
        v5 = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v5 = 0;
  }

LABEL_16:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_enforcedPolicy;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_applyRestrictions;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_applyBackgroundEnforcementIfNecessary;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_enforcedPolicy = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 16) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_applyRestrictions = *(v4 + 13);
  *&self->_has |= 4u;
  if ((*(v4 + 16) & 2) != 0)
  {
LABEL_4:
    self->_applyBackgroundEnforcementIfNecessary = *(v4 + 12);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end