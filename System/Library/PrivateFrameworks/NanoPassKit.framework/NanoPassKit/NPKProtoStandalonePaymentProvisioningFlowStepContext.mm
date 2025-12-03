@interface NPKProtoStandalonePaymentProvisioningFlowStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  stepIdentifier = self->_stepIdentifier;
  if (stepIdentifier)
  {
    [dictionary setObject:stepIdentifier forKey:@"stepIdentifier"];
  }

  backStepIdentifier = self->_backStepIdentifier;
  if (backStepIdentifier)
  {
    [v4 setObject:backStepIdentifier forKey:@"backStepIdentifier"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsAddLater];
    [v4 setObject:v7 forKey:@"allowsAddLater"];
  }

  welcomeStepContext = self->_welcomeStepContext;
  if (welcomeStepContext)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext *)welcomeStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"welcomeStepContext"];
  }

  chooseFlowStepContext = self->_chooseFlowStepContext;
  if (chooseFlowStepContext)
  {
    dictionaryRepresentation2 = [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext *)chooseFlowStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"chooseFlowStepContext"];
  }

  chooseProductStepContext = self->_chooseProductStepContext;
  if (chooseProductStepContext)
  {
    dictionaryRepresentation3 = [(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext *)chooseProductStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"chooseProductStepContext"];
  }

  chooseCredentialsStepContext = self->_chooseCredentialsStepContext;
  if (chooseCredentialsStepContext)
  {
    dictionaryRepresentation4 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)chooseCredentialsStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"chooseCredentialsStepContext"];
  }

  digitalIssuanceAmountStepContext = self->_digitalIssuanceAmountStepContext;
  if (digitalIssuanceAmountStepContext)
  {
    dictionaryRepresentation5 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)digitalIssuanceAmountStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"digitalIssuanceAmountStepContext"];
  }

  digitalIssuancePaymentStepContext = self->_digitalIssuancePaymentStepContext;
  if (digitalIssuancePaymentStepContext)
  {
    dictionaryRepresentation6 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)digitalIssuancePaymentStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation6 forKey:@"digitalIssuancePaymentStepContext"];
  }

  moreInformationStepContext = self->_moreInformationStepContext;
  if (moreInformationStepContext)
  {
    dictionaryRepresentation7 = [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)moreInformationStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation7 forKey:@"moreInformationStepContext"];
  }

  readerModeEntryStepContext = self->_readerModeEntryStepContext;
  if (readerModeEntryStepContext)
  {
    dictionaryRepresentation8 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)readerModeEntryStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation8 forKey:@"readerModeEntryStepContext"];
  }

  readerModeIngestionStepContext = self->_readerModeIngestionStepContext;
  if (readerModeIngestionStepContext)
  {
    dictionaryRepresentation9 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)readerModeIngestionStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation9 forKey:@"readerModeIngestionStepContext"];
  }

  manualEntryStepContext = self->_manualEntryStepContext;
  if (manualEntryStepContext)
  {
    dictionaryRepresentation10 = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation10 forKey:@"manualEntryStepContext"];
  }

  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  if (secondaryManualEntryStepContext)
  {
    dictionaryRepresentation11 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation11 forKey:@"secondaryManualEntryStepContext"];
  }

  localDeviceManualEntryStepContext = self->_localDeviceManualEntryStepContext;
  if (localDeviceManualEntryStepContext)
  {
    dictionaryRepresentation12 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)localDeviceManualEntryStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation12 forKey:@"localDeviceManualEntryStepContext"];
  }

  localDeviceManualEntryProgressStepContext = self->_localDeviceManualEntryProgressStepContext;
  if (localDeviceManualEntryProgressStepContext)
  {
    dictionaryRepresentation13 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext *)localDeviceManualEntryProgressStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation13 forKey:@"localDeviceManualEntryProgressStepContext"];
  }

  productDisambiguationStepContext = self->_productDisambiguationStepContext;
  if (productDisambiguationStepContext)
  {
    dictionaryRepresentation14 = [(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext *)productDisambiguationStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation14 forKey:@"productDisambiguationStepContext"];
  }

  passcodeUpgradeStepContext = self->_passcodeUpgradeStepContext;
  if (passcodeUpgradeStepContext)
  {
    dictionaryRepresentation15 = [(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext *)passcodeUpgradeStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation15 forKey:@"passcodeUpgradeStepContext"];
  }

  termsAndConditionsStepContext = self->_termsAndConditionsStepContext;
  if (termsAndConditionsStepContext)
  {
    dictionaryRepresentation16 = [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)termsAndConditionsStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation16 forKey:@"termsAndConditionsStepContext"];
  }

  provisioningProgressStepContext = self->_provisioningProgressStepContext;
  if (provisioningProgressStepContext)
  {
    dictionaryRepresentation17 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)provisioningProgressStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation17 forKey:@"provisioningProgressStepContext"];
  }

  provisioningResultStepContext = self->_provisioningResultStepContext;
  if (provisioningResultStepContext)
  {
    dictionaryRepresentation18 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)provisioningResultStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation18 forKey:@"provisioningResultStepContext"];
  }

  issuerVerificationChannelsStepContext = self->_issuerVerificationChannelsStepContext;
  if (issuerVerificationChannelsStepContext)
  {
    dictionaryRepresentation19 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext *)issuerVerificationChannelsStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation19 forKey:@"issuerVerificationChannelsStepContext"];
  }

  issuerVerificationFieldsStepContext = self->_issuerVerificationFieldsStepContext;
  if (issuerVerificationFieldsStepContext)
  {
    dictionaryRepresentation20 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext *)issuerVerificationFieldsStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation20 forKey:@"issuerVerificationFieldsStepContext"];
  }

  issuerVerificationCodeStepContext = self->_issuerVerificationCodeStepContext;
  if (issuerVerificationCodeStepContext)
  {
    dictionaryRepresentation21 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext *)issuerVerificationCodeStepContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation21 forKey:@"issuerVerificationCodeStepContext"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_stepIdentifier)
  {
    [NPKProtoStandalonePaymentProvisioningFlowStepContext writeTo:];
  }

  v7 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_backStepIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    allowsAddLater = self->_allowsAddLater;
    PBDataWriterWriteBOOLField();
  }

  v6 = v7;
  if (self->_welcomeStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_chooseFlowStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_chooseProductStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_chooseCredentialsStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_digitalIssuanceAmountStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_digitalIssuancePaymentStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_moreInformationStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_readerModeEntryStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_readerModeIngestionStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_manualEntryStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_secondaryManualEntryStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_localDeviceManualEntryStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_localDeviceManualEntryProgressStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_productDisambiguationStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_passcodeUpgradeStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_termsAndConditionsStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_provisioningProgressStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_provisioningResultStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_issuerVerificationChannelsStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_issuerVerificationFieldsStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }

  if (self->_issuerVerificationCodeStepContext)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setStepIdentifier:self->_stepIdentifier];
  if (self->_backStepIdentifier)
  {
    [toCopy setBackStepIdentifier:?];
  }

  v4 = toCopy;
  if (*&self->_has)
  {
    toCopy[192] = self->_allowsAddLater;
    toCopy[196] |= 1u;
  }

  if (self->_welcomeStepContext)
  {
    [toCopy setWelcomeStepContext:?];
    v4 = toCopy;
  }

  if (self->_chooseFlowStepContext)
  {
    [toCopy setChooseFlowStepContext:?];
    v4 = toCopy;
  }

  if (self->_chooseProductStepContext)
  {
    [toCopy setChooseProductStepContext:?];
    v4 = toCopy;
  }

  if (self->_chooseCredentialsStepContext)
  {
    [toCopy setChooseCredentialsStepContext:?];
    v4 = toCopy;
  }

  if (self->_digitalIssuanceAmountStepContext)
  {
    [toCopy setDigitalIssuanceAmountStepContext:?];
    v4 = toCopy;
  }

  if (self->_digitalIssuancePaymentStepContext)
  {
    [toCopy setDigitalIssuancePaymentStepContext:?];
    v4 = toCopy;
  }

  if (self->_moreInformationStepContext)
  {
    [toCopy setMoreInformationStepContext:?];
    v4 = toCopy;
  }

  if (self->_readerModeEntryStepContext)
  {
    [toCopy setReaderModeEntryStepContext:?];
    v4 = toCopy;
  }

  if (self->_readerModeIngestionStepContext)
  {
    [toCopy setReaderModeIngestionStepContext:?];
    v4 = toCopy;
  }

  if (self->_manualEntryStepContext)
  {
    [toCopy setManualEntryStepContext:?];
    v4 = toCopy;
  }

  if (self->_secondaryManualEntryStepContext)
  {
    [toCopy setSecondaryManualEntryStepContext:?];
    v4 = toCopy;
  }

  if (self->_localDeviceManualEntryStepContext)
  {
    [toCopy setLocalDeviceManualEntryStepContext:?];
    v4 = toCopy;
  }

  if (self->_localDeviceManualEntryProgressStepContext)
  {
    [toCopy setLocalDeviceManualEntryProgressStepContext:?];
    v4 = toCopy;
  }

  if (self->_productDisambiguationStepContext)
  {
    [toCopy setProductDisambiguationStepContext:?];
    v4 = toCopy;
  }

  if (self->_passcodeUpgradeStepContext)
  {
    [toCopy setPasscodeUpgradeStepContext:?];
    v4 = toCopy;
  }

  if (self->_termsAndConditionsStepContext)
  {
    [toCopy setTermsAndConditionsStepContext:?];
    v4 = toCopy;
  }

  if (self->_provisioningProgressStepContext)
  {
    [toCopy setProvisioningProgressStepContext:?];
    v4 = toCopy;
  }

  if (self->_provisioningResultStepContext)
  {
    [toCopy setProvisioningResultStepContext:?];
    v4 = toCopy;
  }

  if (self->_issuerVerificationChannelsStepContext)
  {
    [toCopy setIssuerVerificationChannelsStepContext:?];
    v4 = toCopy;
  }

  if (self->_issuerVerificationFieldsStepContext)
  {
    [toCopy setIssuerVerificationFieldsStepContext:?];
    v4 = toCopy;
  }

  if (self->_issuerVerificationCodeStepContext)
  {
    [toCopy setIssuerVerificationCodeStepContext:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_stepIdentifier copyWithZone:zone];
  v7 = *(v5 + 168);
  *(v5 + 168) = v6;

  v8 = [(NSString *)self->_backStepIdentifier copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 192) = self->_allowsAddLater;
    *(v5 + 196) |= 1u;
  }

  v10 = [(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext *)self->_welcomeStepContext copyWithZone:zone];
  v11 = *(v5 + 184);
  *(v5 + 184) = v10;

  v12 = [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext *)self->_chooseFlowStepContext copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext *)self->_chooseProductStepContext copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self->_chooseCredentialsStepContext copyWithZone:zone];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  v18 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)self->_digitalIssuanceAmountStepContext copyWithZone:zone];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  v20 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)self->_digitalIssuancePaymentStepContext copyWithZone:zone];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  v22 = [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self->_moreInformationStepContext copyWithZone:zone];
  v23 = *(v5 + 104);
  *(v5 + 104) = v22;

  v24 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self->_readerModeEntryStepContext copyWithZone:zone];
  v25 = *(v5 + 144);
  *(v5 + 144) = v24;

  v26 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)self->_readerModeIngestionStepContext copyWithZone:zone];
  v27 = *(v5 + 152);
  *(v5 + 152) = v26;

  v28 = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)self->_manualEntryStepContext copyWithZone:zone];
  v29 = *(v5 + 96);
  *(v5 + 96) = v28;

  v30 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self->_secondaryManualEntryStepContext copyWithZone:zone];
  v31 = *(v5 + 160);
  *(v5 + 160) = v30;

  v32 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)self->_localDeviceManualEntryStepContext copyWithZone:zone];
  v33 = *(v5 + 88);
  *(v5 + 88) = v32;

  v34 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext *)self->_localDeviceManualEntryProgressStepContext copyWithZone:zone];
  v35 = *(v5 + 80);
  *(v5 + 80) = v34;

  v36 = [(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext *)self->_productDisambiguationStepContext copyWithZone:zone];
  v37 = *(v5 + 120);
  *(v5 + 120) = v36;

  v38 = [(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext *)self->_passcodeUpgradeStepContext copyWithZone:zone];
  v39 = *(v5 + 112);
  *(v5 + 112) = v38;

  v40 = [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)self->_termsAndConditionsStepContext copyWithZone:zone];
  v41 = *(v5 + 176);
  *(v5 + 176) = v40;

  v42 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)self->_provisioningProgressStepContext copyWithZone:zone];
  v43 = *(v5 + 128);
  *(v5 + 128) = v42;

  v44 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)self->_provisioningResultStepContext copyWithZone:zone];
  v45 = *(v5 + 136);
  *(v5 + 136) = v44;

  v46 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext *)self->_issuerVerificationChannelsStepContext copyWithZone:zone];
  v47 = *(v5 + 56);
  *(v5 + 56) = v46;

  v48 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext *)self->_issuerVerificationFieldsStepContext copyWithZone:zone];
  v49 = *(v5 + 72);
  *(v5 + 72) = v48;

  v50 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext *)self->_issuerVerificationCodeStepContext copyWithZone:zone];
  v51 = *(v5 + 64);
  *(v5 + 64) = v50;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  stepIdentifier = self->_stepIdentifier;
  if (stepIdentifier | *(equalCopy + 21))
  {
    if (![(NSString *)stepIdentifier isEqual:?])
    {
      goto LABEL_51;
    }
  }

  backStepIdentifier = self->_backStepIdentifier;
  if (backStepIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)backStepIdentifier isEqual:?])
    {
      goto LABEL_51;
    }
  }

  v7 = *(equalCopy + 196);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(equalCopy + 196) & 1) == 0)
  {
    goto LABEL_51;
  }

  v7 = *(equalCopy + 192);
  if (!self->_allowsAddLater)
  {
LABEL_7:
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_51:
    v29 = 0;
    goto LABEL_52;
  }

  if ((*(equalCopy + 192) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_8:
  welcomeStepContext = self->_welcomeStepContext;
  if (welcomeStepContext | *(equalCopy + 23) && ![(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext *)welcomeStepContext isEqual:?])
  {
    goto LABEL_51;
  }

  chooseFlowStepContext = self->_chooseFlowStepContext;
  if (chooseFlowStepContext | *(equalCopy + 3))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext *)chooseFlowStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  chooseProductStepContext = self->_chooseProductStepContext;
  if (chooseProductStepContext | *(equalCopy + 4))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext *)chooseProductStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  chooseCredentialsStepContext = self->_chooseCredentialsStepContext;
  if (chooseCredentialsStepContext | *(equalCopy + 2))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)chooseCredentialsStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  digitalIssuanceAmountStepContext = self->_digitalIssuanceAmountStepContext;
  if (digitalIssuanceAmountStepContext | *(equalCopy + 5))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)digitalIssuanceAmountStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  digitalIssuancePaymentStepContext = self->_digitalIssuancePaymentStepContext;
  if (digitalIssuancePaymentStepContext | *(equalCopy + 6))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)digitalIssuancePaymentStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  moreInformationStepContext = self->_moreInformationStepContext;
  if (moreInformationStepContext | *(equalCopy + 13))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)moreInformationStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  readerModeEntryStepContext = self->_readerModeEntryStepContext;
  if (readerModeEntryStepContext | *(equalCopy + 18))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)readerModeEntryStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  readerModeIngestionStepContext = self->_readerModeIngestionStepContext;
  if (readerModeIngestionStepContext | *(equalCopy + 19))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)readerModeIngestionStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  manualEntryStepContext = self->_manualEntryStepContext;
  if (manualEntryStepContext | *(equalCopy + 12))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  if (secondaryManualEntryStepContext | *(equalCopy + 20))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  localDeviceManualEntryStepContext = self->_localDeviceManualEntryStepContext;
  if (localDeviceManualEntryStepContext | *(equalCopy + 11))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)localDeviceManualEntryStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  localDeviceManualEntryProgressStepContext = self->_localDeviceManualEntryProgressStepContext;
  if (localDeviceManualEntryProgressStepContext | *(equalCopy + 10))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext *)localDeviceManualEntryProgressStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  productDisambiguationStepContext = self->_productDisambiguationStepContext;
  if (productDisambiguationStepContext | *(equalCopy + 15))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext *)productDisambiguationStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  passcodeUpgradeStepContext = self->_passcodeUpgradeStepContext;
  if (passcodeUpgradeStepContext | *(equalCopy + 14))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext *)passcodeUpgradeStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  termsAndConditionsStepContext = self->_termsAndConditionsStepContext;
  if (termsAndConditionsStepContext | *(equalCopy + 22))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)termsAndConditionsStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  provisioningProgressStepContext = self->_provisioningProgressStepContext;
  if (provisioningProgressStepContext | *(equalCopy + 16))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)provisioningProgressStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  provisioningResultStepContext = self->_provisioningResultStepContext;
  if (provisioningResultStepContext | *(equalCopy + 17))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)provisioningResultStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  issuerVerificationChannelsStepContext = self->_issuerVerificationChannelsStepContext;
  if (issuerVerificationChannelsStepContext | *(equalCopy + 7))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext *)issuerVerificationChannelsStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  issuerVerificationFieldsStepContext = self->_issuerVerificationFieldsStepContext;
  if (issuerVerificationFieldsStepContext | *(equalCopy + 9))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext *)issuerVerificationFieldsStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  issuerVerificationCodeStepContext = self->_issuerVerificationCodeStepContext;
  if (issuerVerificationCodeStepContext | *(equalCopy + 8))
  {
    v29 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext *)issuerVerificationCodeStepContext isEqual:?];
  }

  else
  {
    v29 = 1;
  }

LABEL_52:

  return v29;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stepIdentifier hash];
  v4 = [(NSString *)self->_backStepIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_allowsAddLater;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext *)self->_welcomeStepContext hash];
  v7 = [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext *)self->_chooseFlowStepContext hash];
  v8 = v7 ^ [(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext *)self->_chooseProductStepContext hash];
  v9 = v6 ^ v8 ^ [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self->_chooseCredentialsStepContext hash];
  v10 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)self->_digitalIssuanceAmountStepContext hash];
  v11 = v10 ^ [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)self->_digitalIssuancePaymentStepContext hash];
  v12 = v11 ^ [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self->_moreInformationStepContext hash];
  v13 = v9 ^ v12 ^ [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self->_readerModeEntryStepContext hash];
  v14 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)self->_readerModeIngestionStepContext hash];
  v15 = v14 ^ [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)self->_manualEntryStepContext hash];
  v16 = v15 ^ [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self->_secondaryManualEntryStepContext hash];
  v17 = v16 ^ [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)self->_localDeviceManualEntryStepContext hash];
  v18 = v13 ^ v17 ^ [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext *)self->_localDeviceManualEntryProgressStepContext hash];
  v19 = [(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext *)self->_productDisambiguationStepContext hash];
  v20 = v19 ^ [(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext *)self->_passcodeUpgradeStepContext hash];
  v21 = v20 ^ [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)self->_termsAndConditionsStepContext hash];
  v22 = v21 ^ [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)self->_provisioningProgressStepContext hash];
  v23 = v22 ^ [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)self->_provisioningResultStepContext hash];
  v24 = v18 ^ v23 ^ [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext *)self->_issuerVerificationChannelsStepContext hash];
  v25 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext *)self->_issuerVerificationFieldsStepContext hash];
  return v24 ^ v25 ^ [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext *)self->_issuerVerificationCodeStepContext hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v47 = fromCopy;
  if (*(fromCopy + 21))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setStepIdentifier:?];
    fromCopy = v47;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setBackStepIdentifier:?];
    fromCopy = v47;
  }

  if (fromCopy[196])
  {
    self->_allowsAddLater = fromCopy[192];
    *&self->_has |= 1u;
  }

  welcomeStepContext = self->_welcomeStepContext;
  v6 = *(fromCopy + 23);
  if (welcomeStepContext)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext *)welcomeStepContext mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setWelcomeStepContext:?];
  }

  fromCopy = v47;
LABEL_13:
  chooseFlowStepContext = self->_chooseFlowStepContext;
  v8 = *(fromCopy + 3);
  if (chooseFlowStepContext)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext *)chooseFlowStepContext mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setChooseFlowStepContext:?];
  }

  fromCopy = v47;
LABEL_19:
  chooseProductStepContext = self->_chooseProductStepContext;
  v10 = *(fromCopy + 4);
  if (chooseProductStepContext)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext *)chooseProductStepContext mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setChooseProductStepContext:?];
  }

  fromCopy = v47;
LABEL_25:
  chooseCredentialsStepContext = self->_chooseCredentialsStepContext;
  v12 = *(fromCopy + 2);
  if (chooseCredentialsStepContext)
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)chooseCredentialsStepContext mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setChooseCredentialsStepContext:?];
  }

  fromCopy = v47;
LABEL_31:
  digitalIssuanceAmountStepContext = self->_digitalIssuanceAmountStepContext;
  v14 = *(fromCopy + 5);
  if (digitalIssuanceAmountStepContext)
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)digitalIssuanceAmountStepContext mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setDigitalIssuanceAmountStepContext:?];
  }

  fromCopy = v47;
LABEL_37:
  digitalIssuancePaymentStepContext = self->_digitalIssuancePaymentStepContext;
  v16 = *(fromCopy + 6);
  if (digitalIssuancePaymentStepContext)
  {
    if (!v16)
    {
      goto LABEL_43;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)digitalIssuancePaymentStepContext mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_43;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setDigitalIssuancePaymentStepContext:?];
  }

  fromCopy = v47;
LABEL_43:
  moreInformationStepContext = self->_moreInformationStepContext;
  v18 = *(fromCopy + 13);
  if (moreInformationStepContext)
  {
    if (!v18)
    {
      goto LABEL_49;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)moreInformationStepContext mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_49;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setMoreInformationStepContext:?];
  }

  fromCopy = v47;
LABEL_49:
  readerModeEntryStepContext = self->_readerModeEntryStepContext;
  v20 = *(fromCopy + 18);
  if (readerModeEntryStepContext)
  {
    if (!v20)
    {
      goto LABEL_55;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)readerModeEntryStepContext mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_55;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setReaderModeEntryStepContext:?];
  }

  fromCopy = v47;
LABEL_55:
  readerModeIngestionStepContext = self->_readerModeIngestionStepContext;
  v22 = *(fromCopy + 19);
  if (readerModeIngestionStepContext)
  {
    if (!v22)
    {
      goto LABEL_61;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)readerModeIngestionStepContext mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_61;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setReaderModeIngestionStepContext:?];
  }

  fromCopy = v47;
LABEL_61:
  manualEntryStepContext = self->_manualEntryStepContext;
  v24 = *(fromCopy + 12);
  if (manualEntryStepContext)
  {
    if (!v24)
    {
      goto LABEL_67;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext mergeFrom:?];
  }

  else
  {
    if (!v24)
    {
      goto LABEL_67;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setManualEntryStepContext:?];
  }

  fromCopy = v47;
LABEL_67:
  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  v26 = *(fromCopy + 20);
  if (secondaryManualEntryStepContext)
  {
    if (!v26)
    {
      goto LABEL_73;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext mergeFrom:?];
  }

  else
  {
    if (!v26)
    {
      goto LABEL_73;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setSecondaryManualEntryStepContext:?];
  }

  fromCopy = v47;
LABEL_73:
  localDeviceManualEntryStepContext = self->_localDeviceManualEntryStepContext;
  v28 = *(fromCopy + 11);
  if (localDeviceManualEntryStepContext)
  {
    if (!v28)
    {
      goto LABEL_79;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)localDeviceManualEntryStepContext mergeFrom:?];
  }

  else
  {
    if (!v28)
    {
      goto LABEL_79;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setLocalDeviceManualEntryStepContext:?];
  }

  fromCopy = v47;
LABEL_79:
  localDeviceManualEntryProgressStepContext = self->_localDeviceManualEntryProgressStepContext;
  v30 = *(fromCopy + 10);
  if (localDeviceManualEntryProgressStepContext)
  {
    if (!v30)
    {
      goto LABEL_85;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext *)localDeviceManualEntryProgressStepContext mergeFrom:?];
  }

  else
  {
    if (!v30)
    {
      goto LABEL_85;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setLocalDeviceManualEntryProgressStepContext:?];
  }

  fromCopy = v47;
LABEL_85:
  productDisambiguationStepContext = self->_productDisambiguationStepContext;
  v32 = *(fromCopy + 15);
  if (productDisambiguationStepContext)
  {
    if (!v32)
    {
      goto LABEL_91;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext *)productDisambiguationStepContext mergeFrom:?];
  }

  else
  {
    if (!v32)
    {
      goto LABEL_91;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setProductDisambiguationStepContext:?];
  }

  fromCopy = v47;
LABEL_91:
  passcodeUpgradeStepContext = self->_passcodeUpgradeStepContext;
  v34 = *(fromCopy + 14);
  if (passcodeUpgradeStepContext)
  {
    if (!v34)
    {
      goto LABEL_97;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext *)passcodeUpgradeStepContext mergeFrom:?];
  }

  else
  {
    if (!v34)
    {
      goto LABEL_97;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setPasscodeUpgradeStepContext:?];
  }

  fromCopy = v47;
LABEL_97:
  termsAndConditionsStepContext = self->_termsAndConditionsStepContext;
  v36 = *(fromCopy + 22);
  if (termsAndConditionsStepContext)
  {
    if (!v36)
    {
      goto LABEL_103;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)termsAndConditionsStepContext mergeFrom:?];
  }

  else
  {
    if (!v36)
    {
      goto LABEL_103;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setTermsAndConditionsStepContext:?];
  }

  fromCopy = v47;
LABEL_103:
  provisioningProgressStepContext = self->_provisioningProgressStepContext;
  v38 = *(fromCopy + 16);
  if (provisioningProgressStepContext)
  {
    if (!v38)
    {
      goto LABEL_109;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)provisioningProgressStepContext mergeFrom:?];
  }

  else
  {
    if (!v38)
    {
      goto LABEL_109;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setProvisioningProgressStepContext:?];
  }

  fromCopy = v47;
LABEL_109:
  provisioningResultStepContext = self->_provisioningResultStepContext;
  v40 = *(fromCopy + 17);
  if (provisioningResultStepContext)
  {
    if (!v40)
    {
      goto LABEL_115;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)provisioningResultStepContext mergeFrom:?];
  }

  else
  {
    if (!v40)
    {
      goto LABEL_115;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setProvisioningResultStepContext:?];
  }

  fromCopy = v47;
LABEL_115:
  issuerVerificationChannelsStepContext = self->_issuerVerificationChannelsStepContext;
  v42 = *(fromCopy + 7);
  if (issuerVerificationChannelsStepContext)
  {
    if (!v42)
    {
      goto LABEL_121;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext *)issuerVerificationChannelsStepContext mergeFrom:?];
  }

  else
  {
    if (!v42)
    {
      goto LABEL_121;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setIssuerVerificationChannelsStepContext:?];
  }

  fromCopy = v47;
LABEL_121:
  issuerVerificationFieldsStepContext = self->_issuerVerificationFieldsStepContext;
  v44 = *(fromCopy + 9);
  if (issuerVerificationFieldsStepContext)
  {
    if (!v44)
    {
      goto LABEL_127;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext *)issuerVerificationFieldsStepContext mergeFrom:?];
  }

  else
  {
    if (!v44)
    {
      goto LABEL_127;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setIssuerVerificationFieldsStepContext:?];
  }

  fromCopy = v47;
LABEL_127:
  issuerVerificationCodeStepContext = self->_issuerVerificationCodeStepContext;
  v46 = *(fromCopy + 8);
  if (issuerVerificationCodeStepContext)
  {
    if (!v46)
    {
      goto LABEL_133;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext *)issuerVerificationCodeStepContext mergeFrom:?];
  }

  else
  {
    if (!v46)
    {
      goto LABEL_133;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setIssuerVerificationCodeStepContext:?];
  }

  fromCopy = v47;
LABEL_133:
}

@end