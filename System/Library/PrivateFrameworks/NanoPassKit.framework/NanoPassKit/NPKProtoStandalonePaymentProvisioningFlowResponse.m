@interface NPKProtoStandalonePaymentProvisioningFlowResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFromStep:(id)a3;
- (int)StringAsToStep:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowResponse

- (int)StringAsFromStep:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Initialized"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"Preconditions"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"Welcome"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"ChooseFlow"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"ChooseProduct"])
  {
    v4 = 135;
  }

  else if ([v3 isEqualToString:@"ChooseTransitProduct"])
  {
    v4 = 137;
  }

  else if ([v3 isEqualToString:@"ChooseEMoneyProduct"])
  {
    v4 = 138;
  }

  else if ([v3 isEqualToString:@"ChooseCredentials"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"ChooseTransitProductType"])
  {
    v4 = 144;
  }

  else if ([v3 isEqualToString:@"ChooseServiceProviderProducts"])
  {
    v4 = 145;
  }

  else if ([v3 isEqualToString:@"DigitalIssuanceAmount"])
  {
    v4 = 150;
  }

  else if ([v3 isEqualToString:@"DigitalIssuancePayment"])
  {
    v4 = 155;
  }

  else if ([v3 isEqualToString:@"MoreInformation"])
  {
    v4 = 157;
  }

  else if ([v3 isEqualToString:@"ReaderModeEntry"])
  {
    v4 = 160;
  }

  else if ([v3 isEqualToString:@"ReaderModeIngestion"])
  {
    v4 = 165;
  }

  else if ([v3 isEqualToString:@"ManualEntry"])
  {
    v4 = 180;
  }

  else if ([v3 isEqualToString:@"SecondaryManualEntry"])
  {
    v4 = 190;
  }

  else if ([v3 isEqualToString:@"LocalDeviceManualEntry"])
  {
    v4 = 192;
  }

  else if ([v3 isEqualToString:@"LocalDeviceManualEntryProgress"])
  {
    v4 = 193;
  }

  else if ([v3 isEqualToString:@"ProductDisambiguation"])
  {
    v4 = 195;
  }

  else if ([v3 isEqualToString:@"PasscodeUpgrade"])
  {
    v4 = 197;
  }

  else if ([v3 isEqualToString:@"TermsAndConditions"])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:@"ProvisioningProgress"])
  {
    v4 = 210;
  }

  else if ([v3 isEqualToString:@"ProvisioningResult"])
  {
    v4 = 220;
  }

  else if ([v3 isEqualToString:@"IssuerVerificationChannels"])
  {
    v4 = 230;
  }

  else if ([v3 isEqualToString:@"IssuerVerificationFields"])
  {
    v4 = 240;
  }

  else if ([v3 isEqualToString:@"IssuerVerificationCode"])
  {
    v4 = 250;
  }

  else if ([v3 isEqualToString:@"AppleBalanceAccountDetails"])
  {
    v4 = 260;
  }

  else if ([v3 isEqualToString:@"GetIssuerApplicationAddRequest"])
  {
    v4 = 300;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (int)StringAsToStep:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Initialized"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"Preconditions"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"Welcome"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"ChooseFlow"])
  {
    v4 = 130;
  }

  else if ([v3 isEqualToString:@"ChooseProduct"])
  {
    v4 = 135;
  }

  else if ([v3 isEqualToString:@"ChooseTransitProduct"])
  {
    v4 = 137;
  }

  else if ([v3 isEqualToString:@"ChooseEMoneyProduct"])
  {
    v4 = 138;
  }

  else if ([v3 isEqualToString:@"ChooseCredentials"])
  {
    v4 = 140;
  }

  else if ([v3 isEqualToString:@"ChooseTransitProductType"])
  {
    v4 = 144;
  }

  else if ([v3 isEqualToString:@"ChooseServiceProviderProducts"])
  {
    v4 = 145;
  }

  else if ([v3 isEqualToString:@"DigitalIssuanceAmount"])
  {
    v4 = 150;
  }

  else if ([v3 isEqualToString:@"DigitalIssuancePayment"])
  {
    v4 = 155;
  }

  else if ([v3 isEqualToString:@"MoreInformation"])
  {
    v4 = 157;
  }

  else if ([v3 isEqualToString:@"ReaderModeEntry"])
  {
    v4 = 160;
  }

  else if ([v3 isEqualToString:@"ReaderModeIngestion"])
  {
    v4 = 165;
  }

  else if ([v3 isEqualToString:@"ManualEntry"])
  {
    v4 = 180;
  }

  else if ([v3 isEqualToString:@"SecondaryManualEntry"])
  {
    v4 = 190;
  }

  else if ([v3 isEqualToString:@"LocalDeviceManualEntry"])
  {
    v4 = 192;
  }

  else if ([v3 isEqualToString:@"LocalDeviceManualEntryProgress"])
  {
    v4 = 193;
  }

  else if ([v3 isEqualToString:@"ProductDisambiguation"])
  {
    v4 = 195;
  }

  else if ([v3 isEqualToString:@"PasscodeUpgrade"])
  {
    v4 = 197;
  }

  else if ([v3 isEqualToString:@"TermsAndConditions"])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:@"ProvisioningProgress"])
  {
    v4 = 210;
  }

  else if ([v3 isEqualToString:@"ProvisioningResult"])
  {
    v4 = 220;
  }

  else if ([v3 isEqualToString:@"IssuerVerificationChannels"])
  {
    v4 = 230;
  }

  else if ([v3 isEqualToString:@"IssuerVerificationFields"])
  {
    v4 = 240;
  }

  else if ([v3 isEqualToString:@"IssuerVerificationCode"])
  {
    v4 = 250;
  }

  else if ([v3 isEqualToString:@"AppleBalanceAccountDetails"])
  {
    v4 = 260;
  }

  else if ([v3 isEqualToString:@"GetIssuerApplicationAddRequest"])
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
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  responseHeader = self->_responseHeader;
  if (responseHeader)
  {
    v5 = [(NPKProtoStandaloneResponseHeader *)responseHeader dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"responseHeader"];
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
  [v3 setObject:v7 forKey:@"fromStep"];

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
  [v3 setObject:v9 forKey:@"toStep"];

  context = self->_context;
  if (context)
  {
    v11 = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)context dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"context"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[4] = self->_fromStep;
  v4[8] = self->_toStep;
  v5 = v4;
  if (self->_context)
  {
    [v4 setContext:?];
    v4 = v5;
  }

  [v4 setResponseHeader:self->_responseHeader];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_fromStep;
  *(v5 + 32) = self->_toStep;
  v6 = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self->_context copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_fromStep == *(v4 + 4) && self->_toStep == *(v4 + 8) && ((context = self->_context, !(context | v4[1])) || -[NPKProtoStandalonePaymentProvisioningFlowStepContext isEqual:](context, "isEqual:")))
  {
    responseHeader = self->_responseHeader;
    if (responseHeader | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_fromStep = v4[4];
  self->_toStep = v4[8];
  context = self->_context;
  v6 = *(v4 + 1);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  responseHeader = self->_responseHeader;
  v8 = *(v4 + 3);
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

  v4 = v9;
LABEL_13:
}

@end