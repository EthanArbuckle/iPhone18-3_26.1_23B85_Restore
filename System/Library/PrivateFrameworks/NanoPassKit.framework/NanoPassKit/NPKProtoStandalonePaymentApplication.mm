@interface NPKProtoStandalonePaymentApplication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)a3;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PaymentApplicationStateUnknown"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"Personalized"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"Personalizing"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"RequiresVerification"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"PersonalizedRequiresVerification"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"VerificationTerminated"])
  {
    v4 = 150;
  }

  else if ([v3 isEqualToString:@"SuspendedByIssuer"])
  {
    v4 = 160;
  }

  else if ([v3 isEqualToString:@"SuspendedLostMode"])
  {
    v4 = 170;
  }

  else if ([v3 isEqualToString:@"SuspendedPasscodeDisabled"])
  {
    v4 = 180;
  }

  else if ([v3 isEqualToString:@"SuspendedCustom"])
  {
    v4 = 190;
  }

  else if ([v3 isEqualToString:@"RemovedByIssuer"])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:@"InTermination"])
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
  v5 = [(NPKProtoStandalonePaymentApplication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
          [v3 setObject:v5 forKey:@"state"];

          goto LABEL_31;
      }
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
    goto LABEL_30;
  }

LABEL_31:

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_state;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_state;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_state == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_state = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end