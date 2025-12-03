@interface NPKProtoStandalonePaymentProvisioningFlowResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFromStep:(id)step;
- (int)StringAsToStep:(id)step;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowResponse

- (int)StringAsFromStep:(id)step
{
  stepCopy = step;
  if ([stepCopy isEqualToString:@"Initialized"])
  {
    v4 = 100;
  }

  else if ([stepCopy isEqualToString:@"Preconditions"])
  {
    v4 = 110;
  }

  else if ([stepCopy isEqualToString:@"Welcome"])
  {
    v4 = 120;
  }

  else if ([stepCopy isEqualToString:@"ChooseFlow"])
  {
    v4 = 130;
  }

  else if ([stepCopy isEqualToString:@"ChooseProduct"])
  {
    v4 = 135;
  }

  else if ([stepCopy isEqualToString:@"ChooseTransitProduct"])
  {
    v4 = 137;
  }

  else if ([stepCopy isEqualToString:@"ChooseEMoneyProduct"])
  {
    v4 = 138;
  }

  else if ([stepCopy isEqualToString:@"ChooseCredentials"])
  {
    v4 = 140;
  }

  else if ([stepCopy isEqualToString:@"ChooseTransitProductType"])
  {
    v4 = 144;
  }

  else if ([stepCopy isEqualToString:@"ChooseServiceProviderProducts"])
  {
    v4 = 145;
  }

  else if ([stepCopy isEqualToString:@"DigitalIssuanceAmount"])
  {
    v4 = 150;
  }

  else if ([stepCopy isEqualToString:@"DigitalIssuancePayment"])
  {
    v4 = 155;
  }

  else if ([stepCopy isEqualToString:@"MoreInformation"])
  {
    v4 = 157;
  }

  else if ([stepCopy isEqualToString:@"ReaderModeEntry"])
  {
    v4 = 160;
  }

  else if ([stepCopy isEqualToString:@"ReaderModeIngestion"])
  {
    v4 = 165;
  }

  else if ([stepCopy isEqualToString:@"ManualEntry"])
  {
    v4 = 180;
  }

  else if ([stepCopy isEqualToString:@"SecondaryManualEntry"])
  {
    v4 = 190;
  }

  else if ([stepCopy isEqualToString:@"LocalDeviceManualEntry"])
  {
    v4 = 192;
  }

  else if ([stepCopy isEqualToString:@"LocalDeviceManualEntryProgress"])
  {
    v4 = 193;
  }

  else if ([stepCopy isEqualToString:@"ProductDisambiguation"])
  {
    v4 = 195;
  }

  else if ([stepCopy isEqualToString:@"PasscodeUpgrade"])
  {
    v4 = 197;
  }

  else if ([stepCopy isEqualToString:@"TermsAndConditions"])
  {
    v4 = 200;
  }

  else if ([stepCopy isEqualToString:@"ProvisioningProgress"])
  {
    v4 = 210;
  }

  else if ([stepCopy isEqualToString:@"ProvisioningResult"])
  {
    v4 = 220;
  }

  else if ([stepCopy isEqualToString:@"IssuerVerificationChannels"])
  {
    v4 = 230;
  }

  else if ([stepCopy isEqualToString:@"IssuerVerificationFields"])
  {
    v4 = 240;
  }

  else if ([stepCopy isEqualToString:@"IssuerVerificationCode"])
  {
    v4 = 250;
  }

  else if ([stepCopy isEqualToString:@"AppleBalanceAccountDetails"])
  {
    v4 = 260;
  }

  else if ([stepCopy isEqualToString:@"GetIssuerApplicationAddRequest"])
  {
    v4 = 300;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (int)StringAsToStep:(id)step
{
  stepCopy = step;
  if ([stepCopy isEqualToString:@"Initialized"])
  {
    v4 = 100;
  }

  else if ([stepCopy isEqualToString:@"Preconditions"])
  {
    v4 = 110;
  }

  else if ([stepCopy isEqualToString:@"Welcome"])
  {
    v4 = 120;
  }

  else if ([stepCopy isEqualToString:@"ChooseFlow"])
  {
    v4 = 130;
  }

  else if ([stepCopy isEqualToString:@"ChooseProduct"])
  {
    v4 = 135;
  }

  else if ([stepCopy isEqualToString:@"ChooseTransitProduct"])
  {
    v4 = 137;
  }

  else if ([stepCopy isEqualToString:@"ChooseEMoneyProduct"])
  {
    v4 = 138;
  }

  else if ([stepCopy isEqualToString:@"ChooseCredentials"])
  {
    v4 = 140;
  }

  else if ([stepCopy isEqualToString:@"ChooseTransitProductType"])
  {
    v4 = 144;
  }

  else if ([stepCopy isEqualToString:@"ChooseServiceProviderProducts"])
  {
    v4 = 145;
  }

  else if ([stepCopy isEqualToString:@"DigitalIssuanceAmount"])
  {
    v4 = 150;
  }

  else if ([stepCopy isEqualToString:@"DigitalIssuancePayment"])
  {
    v4 = 155;
  }

  else if ([stepCopy isEqualToString:@"MoreInformation"])
  {
    v4 = 157;
  }

  else if ([stepCopy isEqualToString:@"ReaderModeEntry"])
  {
    v4 = 160;
  }

  else if ([stepCopy isEqualToString:@"ReaderModeIngestion"])
  {
    v4 = 165;
  }

  else if ([stepCopy isEqualToString:@"ManualEntry"])
  {
    v4 = 180;
  }

  else if ([stepCopy isEqualToString:@"SecondaryManualEntry"])
  {
    v4 = 190;
  }

  else if ([stepCopy isEqualToString:@"LocalDeviceManualEntry"])
  {
    v4 = 192;
  }

  else if ([stepCopy isEqualToString:@"LocalDeviceManualEntryProgress"])
  {
    v4 = 193;
  }

  else if ([stepCopy isEqualToString:@"ProductDisambiguation"])
  {
    v4 = 195;
  }

  else if ([stepCopy isEqualToString:@"PasscodeUpgrade"])
  {
    v4 = 197;
  }

  else if ([stepCopy isEqualToString:@"TermsAndConditions"])
  {
    v4 = 200;
  }

  else if ([stepCopy isEqualToString:@"ProvisioningProgress"])
  {
    v4 = 210;
  }

  else if ([stepCopy isEqualToString:@"ProvisioningResult"])
  {
    v4 = 220;
  }

  else if ([stepCopy isEqualToString:@"IssuerVerificationChannels"])
  {
    v4 = 230;
  }

  else if ([stepCopy isEqualToString:@"IssuerVerificationFields"])
  {
    v4 = 240;
  }

  else if ([stepCopy isEqualToString:@"IssuerVerificationCode"])
  {
    v4 = 250;
  }

  else if ([stepCopy isEqualToString:@"AppleBalanceAccountDetails"])
  {
    v4 = 260;
  }

  else if ([stepCopy isEqualToString:@"GetIssuerApplicationAddRequest"])
  {
    v4 = 300;
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
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowResponse;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  responseHeader = self->_responseHeader;
  if (responseHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneResponseHeader *)responseHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"responseHeader"];
  }

  fromStep = self->_fromStep;
  if (fromStep <= 164)
  {
    if (fromStep > 139)
    {
      if (fromStep <= 149)
      {
        switch(fromStep)
        {
          case 140:
            v7 = @"ChooseCredentials";
            goto LABEL_74;
          case 144:
            v7 = @"ChooseTransitProductType";
            goto LABEL_74;
          case 145:
            v7 = @"ChooseServiceProviderProducts";
            goto LABEL_74;
        }
      }

      else if (fromStep > 156)
      {
        if (fromStep == 157)
        {
          v7 = @"MoreInformation";
          goto LABEL_74;
        }

        if (fromStep == 160)
        {
          v7 = @"ReaderModeEntry";
          goto LABEL_74;
        }
      }

      else
      {
        if (fromStep == 150)
        {
          v7 = @"DigitalIssuanceAmount";
          goto LABEL_74;
        }

        if (fromStep == 155)
        {
          v7 = @"DigitalIssuancePayment";
          goto LABEL_74;
        }
      }
    }

    else if (fromStep <= 129)
    {
      switch(fromStep)
      {
        case 'd':
          v7 = @"Initialized";
          goto LABEL_74;
        case 'n':
          v7 = @"Preconditions";
          goto LABEL_74;
        case 'x':
          v7 = @"Welcome";
          goto LABEL_74;
      }
    }

    else if (fromStep > 136)
    {
      if (fromStep == 137)
      {
        v7 = @"ChooseTransitProduct";
        goto LABEL_74;
      }

      if (fromStep == 138)
      {
        v7 = @"ChooseEMoneyProduct";
        goto LABEL_74;
      }
    }

    else
    {
      if (fromStep == 130)
      {
        v7 = @"ChooseFlow";
        goto LABEL_74;
      }

      if (fromStep == 135)
      {
        v7 = @"ChooseProduct";
        goto LABEL_74;
      }
    }
  }

  else if (fromStep <= 199)
  {
    if (fromStep <= 191)
    {
      switch(fromStep)
      {
        case 165:
          v7 = @"ReaderModeIngestion";
          goto LABEL_74;
        case 180:
          v7 = @"ManualEntry";
          goto LABEL_74;
        case 190:
          v7 = @"SecondaryManualEntry";
          goto LABEL_74;
      }
    }

    else if (fromStep > 194)
    {
      if (fromStep == 195)
      {
        v7 = @"ProductDisambiguation";
        goto LABEL_74;
      }

      if (fromStep == 197)
      {
        v7 = @"PasscodeUpgrade";
        goto LABEL_74;
      }
    }

    else
    {
      if (fromStep == 192)
      {
        v7 = @"LocalDeviceManualEntry";
        goto LABEL_74;
      }

      if (fromStep == 193)
      {
        v7 = @"LocalDeviceManualEntryProgress";
        goto LABEL_74;
      }
    }
  }

  else if (fromStep > 239)
  {
    if (fromStep > 259)
    {
      if (fromStep == 260)
      {
        v7 = @"AppleBalanceAccountDetails";
        goto LABEL_74;
      }

      if (fromStep == 300)
      {
        v7 = @"GetIssuerApplicationAddRequest";
        goto LABEL_74;
      }
    }

    else
    {
      if (fromStep == 240)
      {
        v7 = @"IssuerVerificationFields";
        goto LABEL_74;
      }

      if (fromStep == 250)
      {
        v7 = @"IssuerVerificationCode";
        goto LABEL_74;
      }
    }
  }

  else if (fromStep > 219)
  {
    if (fromStep == 220)
    {
      v7 = @"ProvisioningResult";
      goto LABEL_74;
    }

    if (fromStep == 230)
    {
      v7 = @"IssuerVerificationChannels";
      goto LABEL_74;
    }
  }

  else
  {
    if (fromStep == 200)
    {
      v7 = @"TermsAndConditions";
      goto LABEL_74;
    }

    if (fromStep == 210)
    {
      v7 = @"ProvisioningProgress";
      goto LABEL_74;
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fromStep];
LABEL_74:
  [dictionary setObject:v7 forKey:@"fromStep"];

  toStep = self->_toStep;
  if (toStep <= 164)
  {
    if (toStep > 139)
    {
      if (toStep <= 149)
      {
        switch(toStep)
        {
          case 140:
            v9 = @"ChooseCredentials";
            goto LABEL_145;
          case 144:
            v9 = @"ChooseTransitProductType";
            goto LABEL_145;
          case 145:
            v9 = @"ChooseServiceProviderProducts";
            goto LABEL_145;
        }
      }

      else if (toStep > 156)
      {
        if (toStep == 157)
        {
          v9 = @"MoreInformation";
          goto LABEL_145;
        }

        if (toStep == 160)
        {
          v9 = @"ReaderModeEntry";
          goto LABEL_145;
        }
      }

      else
      {
        if (toStep == 150)
        {
          v9 = @"DigitalIssuanceAmount";
          goto LABEL_145;
        }

        if (toStep == 155)
        {
          v9 = @"DigitalIssuancePayment";
          goto LABEL_145;
        }
      }
    }

    else if (toStep <= 129)
    {
      switch(toStep)
      {
        case 'd':
          v9 = @"Initialized";
          goto LABEL_145;
        case 'n':
          v9 = @"Preconditions";
          goto LABEL_145;
        case 'x':
          v9 = @"Welcome";
          goto LABEL_145;
      }
    }

    else if (toStep > 136)
    {
      if (toStep == 137)
      {
        v9 = @"ChooseTransitProduct";
        goto LABEL_145;
      }

      if (toStep == 138)
      {
        v9 = @"ChooseEMoneyProduct";
        goto LABEL_145;
      }
    }

    else
    {
      if (toStep == 130)
      {
        v9 = @"ChooseFlow";
        goto LABEL_145;
      }

      if (toStep == 135)
      {
        v9 = @"ChooseProduct";
        goto LABEL_145;
      }
    }
  }

  else if (toStep <= 199)
  {
    if (toStep <= 191)
    {
      switch(toStep)
      {
        case 165:
          v9 = @"ReaderModeIngestion";
          goto LABEL_145;
        case 180:
          v9 = @"ManualEntry";
          goto LABEL_145;
        case 190:
          v9 = @"SecondaryManualEntry";
          goto LABEL_145;
      }
    }

    else if (toStep > 194)
    {
      if (toStep == 195)
      {
        v9 = @"ProductDisambiguation";
        goto LABEL_145;
      }

      if (toStep == 197)
      {
        v9 = @"PasscodeUpgrade";
        goto LABEL_145;
      }
    }

    else
    {
      if (toStep == 192)
      {
        v9 = @"LocalDeviceManualEntry";
        goto LABEL_145;
      }

      if (toStep == 193)
      {
        v9 = @"LocalDeviceManualEntryProgress";
        goto LABEL_145;
      }
    }
  }

  else if (toStep > 239)
  {
    if (toStep > 259)
    {
      if (toStep == 260)
      {
        v9 = @"AppleBalanceAccountDetails";
        goto LABEL_145;
      }

      if (toStep == 300)
      {
        v9 = @"GetIssuerApplicationAddRequest";
        goto LABEL_145;
      }
    }

    else
    {
      if (toStep == 240)
      {
        v9 = @"IssuerVerificationFields";
        goto LABEL_145;
      }

      if (toStep == 250)
      {
        v9 = @"IssuerVerificationCode";
        goto LABEL_145;
      }
    }
  }

  else if (toStep > 219)
  {
    if (toStep == 220)
    {
      v9 = @"ProvisioningResult";
      goto LABEL_145;
    }

    if (toStep == 230)
    {
      v9 = @"IssuerVerificationChannels";
      goto LABEL_145;
    }
  }

  else
  {
    if (toStep == 200)
    {
      v9 = @"TermsAndConditions";
      goto LABEL_145;
    }

    if (toStep == 210)
    {
      v9 = @"ProvisioningProgress";
      goto LABEL_145;
    }
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_toStep];
LABEL_145:
  [dictionary setObject:v9 forKey:@"toStep"];

  context = self->_context;
  if (context)
  {
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)context dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"context"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  fromStep = self->_fromStep;
  PBDataWriterWriteInt32Field();
  toStep = self->_toStep;
  PBDataWriterWriteInt32Field();
  if (self->_context)
  {
    PBDataWriterWriteSubmessage();
  }

  if (!self->_responseHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowResponse writeTo:];
  }

  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_fromStep;
  toCopy[8] = self->_toStep;
  v5 = toCopy;
  if (self->_context)
  {
    [toCopy setContext:?];
    toCopy = v5;
  }

  [toCopy setResponseHeader:self->_responseHeader];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_fromStep;
  *(v5 + 32) = self->_toStep;
  v6 = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self->_context copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_fromStep == *(equalCopy + 4) && self->_toStep == *(equalCopy + 8) && ((context = self->_context, !(context | equalCopy[1])) || -[NPKProtoStandalonePaymentProvisioningFlowStepContext isEqual:](context, "isEqual:")))
  {
    responseHeader = self->_responseHeader;
    if (responseHeader | equalCopy[3])
    {
      v7 = [(NPKProtoStandaloneResponseHeader *)responseHeader isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_toStep) ^ (2654435761 * self->_fromStep);
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self->_context hash];
  return v3 ^ v4 ^ [(NPKProtoStandaloneResponseHeader *)self->_responseHeader hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_fromStep = fromCopy[4];
  self->_toStep = fromCopy[8];
  context = self->_context;
  v6 = *(fromCopy + 1);
  v9 = fromCopy;
  if (context)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)context mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowResponse *)self setContext:?];
  }

  fromCopy = v9;
LABEL_7:
  responseHeader = self->_responseHeader;
  v8 = *(fromCopy + 3);
  if (responseHeader)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandaloneResponseHeader *)responseHeader mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowResponse *)self setResponseHeader:?];
  }

  fromCopy = v9;
LABEL_13:
}

@end