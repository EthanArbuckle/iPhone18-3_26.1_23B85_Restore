@interface NPKProtoStandalonePaymentApplication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)state;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentApplication

- (int)state
{
  if (*&self->_has)
  {
    return self->_state;
  }

  else
  {
    return 100;
  }
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"PaymentApplicationStateUnknown"])
  {
    v4 = 100;
  }

  else if ([stateCopy isEqualToString:@"Personalized"])
  {
    v4 = 110;
  }

  else if ([stateCopy isEqualToString:@"Personalizing"])
  {
    v4 = 120;
  }

  else if ([stateCopy isEqualToString:@"RequiresVerification"])
  {
    v4 = 130;
  }

  else if ([stateCopy isEqualToString:@"PersonalizedRequiresVerification"])
  {
    v4 = 140;
  }

  else if ([stateCopy isEqualToString:@"VerificationTerminated"])
  {
    v4 = 150;
  }

  else if ([stateCopy isEqualToString:@"SuspendedByIssuer"])
  {
    v4 = 160;
  }

  else if ([stateCopy isEqualToString:@"SuspendedLostMode"])
  {
    v4 = 170;
  }

  else if ([stateCopy isEqualToString:@"SuspendedPasscodeDisabled"])
  {
    v4 = 180;
  }

  else if ([stateCopy isEqualToString:@"SuspendedCustom"])
  {
    v4 = 190;
  }

  else if ([stateCopy isEqualToString:@"RemovedByIssuer"])
  {
    v4 = 200;
  }

  else if ([stateCopy isEqualToString:@"InTermination"])
  {
    v4 = 250;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentApplication;
  v4 = [(NPKProtoStandalonePaymentApplication *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentApplication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    state = self->_state;
    if (state > 159)
    {
      if (state > 189)
      {
        switch(state)
        {
          case 190:
            v5 = @"SuspendedCustom";
            goto LABEL_30;
          case 200:
            v5 = @"RemovedByIssuer";
            goto LABEL_30;
          case 250:
            v5 = @"InTermination";
            goto LABEL_30;
        }
      }

      else
      {
        switch(state)
        {
          case 160:
            v5 = @"SuspendedByIssuer";
            goto LABEL_30;
          case 170:
            v5 = @"SuspendedLostMode";
            goto LABEL_30;
          case 180:
            v5 = @"SuspendedPasscodeDisabled";
            goto LABEL_30;
        }
      }
    }

    else if (state > 129)
    {
      switch(state)
      {
        case 130:
          v5 = @"RequiresVerification";
          goto LABEL_30;
        case 140:
          v5 = @"PersonalizedRequiresVerification";
          goto LABEL_30;
        case 150:
          v5 = @"VerificationTerminated";
          goto LABEL_30;
      }
    }

    else
    {
      switch(state)
      {
        case 'd':
          v5 = @"PaymentApplicationStateUnknown";
          goto LABEL_30;
        case 'n':
          v5 = @"Personalized";
          goto LABEL_30;
        case 'x':
          v5 = @"Personalizing";
LABEL_30:
          [dictionary setObject:v5 forKey:@"state"];

          goto LABEL_31;
      }
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
    goto LABEL_30;
  }

LABEL_31:

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_state;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_state;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_state == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_state;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_state = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end