@interface MPSStateResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsIcplAction:(id)action;
- (int)StringAsMpsAction:(id)action;
- (int)icplAction;
- (int)mpsAction;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIcplAction:(BOOL)action;
- (void)setHasMpsAction:(BOOL)action;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation MPSStateResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_retryAfterSeconds = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_mpsAction = *(fromCopy + 7);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_icplAction = *(fromCopy + 6);
  *&self->_has |= 4u;
  if ((*(fromCopy + 32) & 2) != 0)
  {
LABEL_5:
    self->_version = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_6:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_retryAfterSeconds;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_mpsAction;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
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
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_icplAction;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_version;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_retryAfterSeconds != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0 || self->_mpsAction != *(equalCopy + 7))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 32) & 8) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_icplAction != *(equalCopy + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_version != *(equalCopy + 2))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_retryAfterSeconds;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_mpsAction;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 6) = self->_icplAction;
  *(result + 32) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 2) = self->_version;
  *(result + 32) |= 2u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_retryAfterSeconds;
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 7) = self->_mpsAction;
  *(toCopy + 32) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(toCopy + 6) = self->_icplAction;
  *(toCopy + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    toCopy[2] = self->_version;
    *(toCopy + 32) |= 2u;
  }

LABEL_6:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    retryAfterSeconds = self->_retryAfterSeconds;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  mpsAction = self->_mpsAction;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  icplAction = self->_icplAction;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    version = self->_version;
    PBDataWriterWriteInt64Field();
  }

LABEL_6:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_retryAfterSeconds];
    [dictionary setObject:v7 forKey:@"retryAfterSeconds"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  mpsAction = self->_mpsAction;
  if (mpsAction >= 3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mpsAction];
  }

  else
  {
    v9 = off_278E90718[mpsAction];
  }

  [dictionary setObject:v9 forKey:@"mpsAction"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  icplAction = self->_icplAction;
  if (icplAction >= 3)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_icplAction];
  }

  else
  {
    v11 = off_278E90730[icplAction];
  }

  [dictionary setObject:v11 forKey:@"icplAction"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
  [dictionary setObject:v5 forKey:@"version"];

LABEL_6:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MPSStateResponse;
  v4 = [(MPSStateResponse *)&v8 description];
  dictionaryRepresentation = [(MPSStateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsIcplAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"NoICPLAct"])
  {
    v4 = 0;
  }

  else if ([actionCopy isEqualToString:@"PromptToEnableICPL"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"AutomaticEnableICPL"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIcplAction:(BOOL)action
{
  if (action)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)icplAction
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_icplAction;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsMpsAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"NoMPSAct"])
  {
    v4 = 0;
  }

  else if ([actionCopy isEqualToString:@"PromptToDisableMPS"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"AutomaticDisableMPS"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMpsAction:(BOOL)action
{
  if (action)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)mpsAction
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_mpsAction;
  }

  else
  {
    return 0;
  }
}

@end