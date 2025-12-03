@interface DRSProtoDiagnosticRequestOutcomeBucket
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOutcome:(id)outcome;
- (int)StringAsRequestState:(id)state;
- (int)outcome;
- (int)requestState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOutcome:(BOOL)outcome;
- (void)setHasRequestState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoDiagnosticRequestOutcomeBucket

- (int)outcome
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_outcome;
  }

  else
  {
    return 1;
  }
}

- (void)setHasOutcome:(BOOL)outcome
{
  if (outcome)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsOutcome:(id)outcome
{
  outcomeCopy = outcome;
  if ([outcomeCopy isEqualToString:@"ERROR"])
  {
    v4 = 1;
  }

  else if ([outcomeCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 2;
  }

  else if ([outcomeCopy isEqualToString:@"REJECTED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)requestState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_requestState;
  }

  else
  {
    return 4096;
  }
}

- (void)setHasRequestState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsRequestState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"REJECTED_RESOURCE_HYSTERESIS"])
  {
    v4 = 4096;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_RESOURCE_CAP"])
  {
    v4 = 4097;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_RESOURCE_RANDOM_DOWNSAMPLING"])
  {
    v4 = 4098;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_SIGNATURE_HYSTERESIS"])
  {
    v4 = 4099;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_SIGNATURE_CAP"])
  {
    v4 = 4100;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_SIGNATURE_RANDOM_DOWNSAMPLING"])
  {
    v4 = 4101;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_TOTAL_CAP"])
  {
    v4 = 4102;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_DISABLED_SERVICE"])
  {
    v4 = 4103;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_REJECTED_BY_DS"])
  {
    v4 = 4353;
  }

  else if ([stateCopy isEqualToString:@"REJECTED_CUSTOMER_DISABLED"])
  {
    v4 = 4356;
  }

  else if ([stateCopy isEqualToString:@"ERROR_ON_RECEIPT_WORK_FAILURE"])
  {
    v4 = 4352;
  }

  else if ([stateCopy isEqualToString:@"ERROR_LOG_CULLED"])
  {
    v4 = 4354;
  }

  else if ([stateCopy isEqualToString:@"ERROR_UPLOAD_ATTEMPTS_FAILED"])
  {
    v4 = 4355;
  }

  else if ([stateCopy isEqualToString:@"ERROR_LOG_EXCEEDS_CAP"])
  {
    v4 = 4357;
  }

  else if ([stateCopy isEqualToString:@"ERROR_INVALID_TRANSITION"])
  {
    v4 = 4358;
  }

  else if ([stateCopy isEqualToString:@"ERROR_LOG_STATE_UPDATE_FAILURE"])
  {
    v4 = 4359;
  }

  else if ([stateCopy isEqualToString:@"SUCCESS_UPLOADED"])
  {
    v4 = 0x2000;
  }

  else
  {
    v4 = 4096;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoDiagnosticRequestOutcomeBucket;
  v4 = [(DRSProtoDiagnosticRequestOutcomeBucket *)&v8 description];
  dictionaryRepresentation = [(DRSProtoDiagnosticRequestOutcomeBucket *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = self->_outcome - 1;
    if (v7 >= 3)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_outcome];
    }

    else
    {
      v8 = off_27899F8B8[v7];
    }

    [dictionary setObject:v8 forKey:@"outcome"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  requestState = self->_requestState;
  if (requestState <= 4351)
  {
    if (requestState > 4099)
    {
      if (requestState <= 4101)
      {
        if (requestState == 4100)
        {
          v10 = @"REJECTED_SIGNATURE_CAP";
        }

        else
        {
          v10 = @"REJECTED_SIGNATURE_RANDOM_DOWNSAMPLING";
        }

        goto LABEL_49;
      }

      if (requestState == 4102)
      {
        v10 = @"REJECTED_TOTAL_CAP";
        goto LABEL_49;
      }

      if (requestState == 4103)
      {
        v10 = @"REJECTED_DISABLED_SERVICE";
        goto LABEL_49;
      }
    }

    else
    {
      if (requestState > 4097)
      {
        if (requestState == 4098)
        {
          v10 = @"REJECTED_RESOURCE_RANDOM_DOWNSAMPLING";
        }

        else
        {
          v10 = @"REJECTED_SIGNATURE_HYSTERESIS";
        }

        goto LABEL_49;
      }

      if (requestState == 4096)
      {
        v10 = @"REJECTED_RESOURCE_HYSTERESIS";
        goto LABEL_49;
      }

      if (requestState == 4097)
      {
        v10 = @"REJECTED_RESOURCE_CAP";
        goto LABEL_49;
      }
    }

LABEL_48:
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_requestState];
    goto LABEL_49;
  }

  if (requestState <= 4355)
  {
    if (requestState > 4353)
    {
      if (requestState == 4354)
      {
        v10 = @"ERROR_LOG_CULLED";
      }

      else
      {
        v10 = @"ERROR_UPLOAD_ATTEMPTS_FAILED";
      }
    }

    else if (requestState == 4352)
    {
      v10 = @"ERROR_ON_RECEIPT_WORK_FAILURE";
    }

    else
    {
      v10 = @"REJECTED_REJECTED_BY_DS";
    }
  }

  else
  {
    if (requestState > 4357)
    {
      switch(requestState)
      {
        case 0x1106:
          v10 = @"ERROR_INVALID_TRANSITION";
          goto LABEL_49;
        case 0x1107:
          v10 = @"ERROR_LOG_STATE_UPDATE_FAILURE";
          goto LABEL_49;
        case 0x2000:
          v10 = @"SUCCESS_UPLOADED";
          goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (requestState == 4356)
    {
      v10 = @"REJECTED_CUSTOMER_DISABLED";
    }

    else
    {
      v10 = @"ERROR_LOG_EXCEEDS_CAP";
    }
  }

LABEL_49:
  [dictionary setObject:v10 forKey:@"request_state"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_count];
    [dictionary setObject:v5 forKey:@"count"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    outcome = self->_outcome;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  requestState = self->_requestState;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_4:
    count = self->_count;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_outcome;
    *(toCopy + 24) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  toCopy[5] = self->_requestState;
  *(toCopy + 24) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(toCopy + 1) = self->_count;
    *(toCopy + 24) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_outcome;
    *(result + 24) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(result + 5) = self->_requestState;
  *(result + 24) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = self->_count;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_outcome != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_requestState != *(equalCopy + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_count != *(equalCopy + 1))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_outcome;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_requestState;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_count;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) != 0)
  {
    self->_outcome = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_requestState = *(fromCopy + 5);
  *&self->_has |= 4u;
  if (*(fromCopy + 24))
  {
LABEL_4:
    self->_count = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end