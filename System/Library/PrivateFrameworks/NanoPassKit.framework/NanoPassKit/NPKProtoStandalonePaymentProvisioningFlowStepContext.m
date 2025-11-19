@interface NPKProtoStandalonePaymentProvisioningFlowStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  stepIdentifier = self->_stepIdentifier;
  if (stepIdentifier)
  {
    [v3 setObject:stepIdentifier forKey:@"stepIdentifier"];
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
    v9 = [(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext *)welcomeStepContext dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"welcomeStepContext"];
  }

  chooseFlowStepContext = self->_chooseFlowStepContext;
  if (chooseFlowStepContext)
  {
    v11 = [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext *)chooseFlowStepContext dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"chooseFlowStepContext"];
  }

  chooseProductStepContext = self->_chooseProductStepContext;
  if (chooseProductStepContext)
  {
    v13 = [(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext *)chooseProductStepContext dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"chooseProductStepContext"];
  }

  chooseCredentialsStepContext = self->_chooseCredentialsStepContext;
  if (chooseCredentialsStepContext)
  {
    v15 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)chooseCredentialsStepContext dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"chooseCredentialsStepContext"];
  }

  digitalIssuanceAmountStepContext = self->_digitalIssuanceAmountStepContext;
  if (digitalIssuanceAmountStepContext)
  {
    v17 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)digitalIssuanceAmountStepContext dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"digitalIssuanceAmountStepContext"];
  }

  digitalIssuancePaymentStepContext = self->_digitalIssuancePaymentStepContext;
  if (digitalIssuancePaymentStepContext)
  {
    v19 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)digitalIssuancePaymentStepContext dictionaryRepresentation];
    [v4 setObject:v19 forKey:@"digitalIssuancePaymentStepContext"];
  }

  moreInformationStepContext = self->_moreInformationStepContext;
  if (moreInformationStepContext)
  {
    v21 = [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)moreInformationStepContext dictionaryRepresentation];
    [v4 setObject:v21 forKey:@"moreInformationStepContext"];
  }

  readerModeEntryStepContext = self->_readerModeEntryStepContext;
  if (readerModeEntryStepContext)
  {
    v23 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)readerModeEntryStepContext dictionaryRepresentation];
    [v4 setObject:v23 forKey:@"readerModeEntryStepContext"];
  }

  readerModeIngestionStepContext = self->_readerModeIngestionStepContext;
  if (readerModeIngestionStepContext)
  {
    v25 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)readerModeIngestionStepContext dictionaryRepresentation];
    [v4 setObject:v25 forKey:@"readerModeIngestionStepContext"];
  }

  manualEntryStepContext = self->_manualEntryStepContext;
  if (manualEntryStepContext)
  {
    v27 = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext dictionaryRepresentation];
    [v4 setObject:v27 forKey:@"manualEntryStepContext"];
  }

  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  if (secondaryManualEntryStepContext)
  {
    v29 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext dictionaryRepresentation];
    [v4 setObject:v29 forKey:@"secondaryManualEntryStepContext"];
  }

  localDeviceManualEntryStepContext = self->_localDeviceManualEntryStepContext;
  if (localDeviceManualEntryStepContext)
  {
    v31 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)localDeviceManualEntryStepContext dictionaryRepresentation];
    [v4 setObject:v31 forKey:@"localDeviceManualEntryStepContext"];
  }

  localDeviceManualEntryProgressStepContext = self->_localDeviceManualEntryProgressStepContext;
  if (localDeviceManualEntryProgressStepContext)
  {
    v33 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext *)localDeviceManualEntryProgressStepContext dictionaryRepresentation];
    [v4 setObject:v33 forKey:@"localDeviceManualEntryProgressStepContext"];
  }

  productDisambiguationStepContext = self->_productDisambiguationStepContext;
  if (productDisambiguationStepContext)
  {
    v35 = [(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext *)productDisambiguationStepContext dictionaryRepresentation];
    [v4 setObject:v35 forKey:@"productDisambiguationStepContext"];
  }

  passcodeUpgradeStepContext = self->_passcodeUpgradeStepContext;
  if (passcodeUpgradeStepContext)
  {
    v37 = [(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext *)passcodeUpgradeStepContext dictionaryRepresentation];
    [v4 setObject:v37 forKey:@"passcodeUpgradeStepContext"];
  }

  termsAndConditionsStepContext = self->_termsAndConditionsStepContext;
  if (termsAndConditionsStepContext)
  {
    v39 = [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)termsAndConditionsStepContext dictionaryRepresentation];
    [v4 setObject:v39 forKey:@"termsAndConditionsStepContext"];
  }

  provisioningProgressStepContext = self->_provisioningProgressStepContext;
  if (provisioningProgressStepContext)
  {
    v41 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)provisioningProgressStepContext dictionaryRepresentation];
    [v4 setObject:v41 forKey:@"provisioningProgressStepContext"];
  }

  provisioningResultStepContext = self->_provisioningResultStepContext;
  if (provisioningResultStepContext)
  {
    v43 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)provisioningResultStepContext dictionaryRepresentation];
    [v4 setObject:v43 forKey:@"provisioningResultStepContext"];
  }

  issuerVerificationChannelsStepContext = self->_issuerVerificationChannelsStepContext;
  if (issuerVerificationChannelsStepContext)
  {
    v45 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext *)issuerVerificationChannelsStepContext dictionaryRepresentation];
    [v4 setObject:v45 forKey:@"issuerVerificationChannelsStepContext"];
  }

  issuerVerificationFieldsStepContext = self->_issuerVerificationFieldsStepContext;
  if (issuerVerificationFieldsStepContext)
  {
    v47 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext *)issuerVerificationFieldsStepContext dictionaryRepresentation];
    [v4 setObject:v47 forKey:@"issuerVerificationFieldsStepContext"];
  }

  issuerVerificationCodeStepContext = self->_issuerVerificationCodeStepContext;
  if (issuerVerificationCodeStepContext)
  {
    v49 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext *)issuerVerificationCodeStepContext dictionaryRepresentation];
    [v4 setObject:v49 forKey:@"issuerVerificationCodeStepContext"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_stepIdentifier)
  {
    [NPKProtoStandalonePaymentProvisioningFlowStepContext writeTo:];
  }

  v7 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setStepIdentifier:self->_stepIdentifier];
  if (self->_backStepIdentifier)
  {
    [v5 setBackStepIdentifier:?];
  }

  v4 = v5;
  if (*&self->_has)
  {
    v5[192] = self->_allowsAddLater;
    v5[196] |= 1u;
  }

  if (self->_welcomeStepContext)
  {
    [v5 setWelcomeStepContext:?];
    v4 = v5;
  }

  if (self->_chooseFlowStepContext)
  {
    [v5 setChooseFlowStepContext:?];
    v4 = v5;
  }

  if (self->_chooseProductStepContext)
  {
    [v5 setChooseProductStepContext:?];
    v4 = v5;
  }

  if (self->_chooseCredentialsStepContext)
  {
    [v5 setChooseCredentialsStepContext:?];
    v4 = v5;
  }

  if (self->_digitalIssuanceAmountStepContext)
  {
    [v5 setDigitalIssuanceAmountStepContext:?];
    v4 = v5;
  }

  if (self->_digitalIssuancePaymentStepContext)
  {
    [v5 setDigitalIssuancePaymentStepContext:?];
    v4 = v5;
  }

  if (self->_moreInformationStepContext)
  {
    [v5 setMoreInformationStepContext:?];
    v4 = v5;
  }

  if (self->_readerModeEntryStepContext)
  {
    [v5 setReaderModeEntryStepContext:?];
    v4 = v5;
  }

  if (self->_readerModeIngestionStepContext)
  {
    [v5 setReaderModeIngestionStepContext:?];
    v4 = v5;
  }

  if (self->_manualEntryStepContext)
  {
    [v5 setManualEntryStepContext:?];
    v4 = v5;
  }

  if (self->_secondaryManualEntryStepContext)
  {
    [v5 setSecondaryManualEntryStepContext:?];
    v4 = v5;
  }

  if (self->_localDeviceManualEntryStepContext)
  {
    [v5 setLocalDeviceManualEntryStepContext:?];
    v4 = v5;
  }

  if (self->_localDeviceManualEntryProgressStepContext)
  {
    [v5 setLocalDeviceManualEntryProgressStepContext:?];
    v4 = v5;
  }

  if (self->_productDisambiguationStepContext)
  {
    [v5 setProductDisambiguationStepContext:?];
    v4 = v5;
  }

  if (self->_passcodeUpgradeStepContext)
  {
    [v5 setPasscodeUpgradeStepContext:?];
    v4 = v5;
  }

  if (self->_termsAndConditionsStepContext)
  {
    [v5 setTermsAndConditionsStepContext:?];
    v4 = v5;
  }

  if (self->_provisioningProgressStepContext)
  {
    [v5 setProvisioningProgressStepContext:?];
    v4 = v5;
  }

  if (self->_provisioningResultStepContext)
  {
    [v5 setProvisioningResultStepContext:?];
    v4 = v5;
  }

  if (self->_issuerVerificationChannelsStepContext)
  {
    [v5 setIssuerVerificationChannelsStepContext:?];
    v4 = v5;
  }

  if (self->_issuerVerificationFieldsStepContext)
  {
    [v5 setIssuerVerificationFieldsStepContext:?];
    v4 = v5;
  }

  if (self->_issuerVerificationCodeStepContext)
  {
    [v5 setIssuerVerificationCodeStepContext:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stepIdentifier copyWithZone:a3];
  v7 = *(v5 + 168);
  *(v5 + 168) = v6;

  v8 = [(NSString *)self->_backStepIdentifier copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 192) = self->_allowsAddLater;
    *(v5 + 196) |= 1u;
  }

  v10 = [(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext *)self->_welcomeStepContext copyWithZone:a3];
  v11 = *(v5 + 184);
  *(v5 + 184) = v10;

  v12 = [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext *)self->_chooseFlowStepContext copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext *)self->_chooseProductStepContext copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)self->_chooseCredentialsStepContext copyWithZone:a3];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  v18 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)self->_digitalIssuanceAmountStepContext copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  v20 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)self->_digitalIssuancePaymentStepContext copyWithZone:a3];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  v22 = [(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)self->_moreInformationStepContext copyWithZone:a3];
  v23 = *(v5 + 104);
  *(v5 + 104) = v22;

  v24 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)self->_readerModeEntryStepContext copyWithZone:a3];
  v25 = *(v5 + 144);
  *(v5 + 144) = v24;

  v26 = [(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)self->_readerModeIngestionStepContext copyWithZone:a3];
  v27 = *(v5 + 152);
  *(v5 + 152) = v26;

  v28 = [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)self->_manualEntryStepContext copyWithZone:a3];
  v29 = *(v5 + 96);
  *(v5 + 96) = v28;

  v30 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self->_secondaryManualEntryStepContext copyWithZone:a3];
  v31 = *(v5 + 160);
  *(v5 + 160) = v30;

  v32 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)self->_localDeviceManualEntryStepContext copyWithZone:a3];
  v33 = *(v5 + 88);
  *(v5 + 88) = v32;

  v34 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext *)self->_localDeviceManualEntryProgressStepContext copyWithZone:a3];
  v35 = *(v5 + 80);
  *(v5 + 80) = v34;

  v36 = [(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext *)self->_productDisambiguationStepContext copyWithZone:a3];
  v37 = *(v5 + 120);
  *(v5 + 120) = v36;

  v38 = [(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext *)self->_passcodeUpgradeStepContext copyWithZone:a3];
  v39 = *(v5 + 112);
  *(v5 + 112) = v38;

  v40 = [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)self->_termsAndConditionsStepContext copyWithZone:a3];
  v41 = *(v5 + 176);
  *(v5 + 176) = v40;

  v42 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)self->_provisioningProgressStepContext copyWithZone:a3];
  v43 = *(v5 + 128);
  *(v5 + 128) = v42;

  v44 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)self->_provisioningResultStepContext copyWithZone:a3];
  v45 = *(v5 + 136);
  *(v5 + 136) = v44;

  v46 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext *)self->_issuerVerificationChannelsStepContext copyWithZone:a3];
  v47 = *(v5 + 56);
  *(v5 + 56) = v46;

  v48 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext *)self->_issuerVerificationFieldsStepContext copyWithZone:a3];
  v49 = *(v5 + 72);
  *(v5 + 72) = v48;

  v50 = [(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext *)self->_issuerVerificationCodeStepContext copyWithZone:a3];
  v51 = *(v5 + 64);
  *(v5 + 64) = v50;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  stepIdentifier = self->_stepIdentifier;
  if (stepIdentifier | *(v4 + 21))
  {
    if (![(NSString *)stepIdentifier isEqual:?])
    {
      goto LABEL_51;
    }
  }

  backStepIdentifier = self->_backStepIdentifier;
  if (backStepIdentifier | *(v4 + 1))
  {
    if (![(NSString *)backStepIdentifier isEqual:?])
    {
      goto LABEL_51;
    }
  }

  v7 = *(v4 + 196);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(v4 + 196) & 1) == 0)
  {
    goto LABEL_51;
  }

  v7 = *(v4 + 192);
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

  if ((*(v4 + 192) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_8:
  welcomeStepContext = self->_welcomeStepContext;
  if (welcomeStepContext | *(v4 + 23) && ![(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext *)welcomeStepContext isEqual:?])
  {
    goto LABEL_51;
  }

  chooseFlowStepContext = self->_chooseFlowStepContext;
  if (chooseFlowStepContext | *(v4 + 3))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext *)chooseFlowStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  chooseProductStepContext = self->_chooseProductStepContext;
  if (chooseProductStepContext | *(v4 + 4))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext *)chooseProductStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  chooseCredentialsStepContext = self->_chooseCredentialsStepContext;
  if (chooseCredentialsStepContext | *(v4 + 2))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext *)chooseCredentialsStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  digitalIssuanceAmountStepContext = self->_digitalIssuanceAmountStepContext;
  if (digitalIssuanceAmountStepContext | *(v4 + 5))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)digitalIssuanceAmountStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  digitalIssuancePaymentStepContext = self->_digitalIssuancePaymentStepContext;
  if (digitalIssuancePaymentStepContext | *(v4 + 6))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)digitalIssuancePaymentStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  moreInformationStepContext = self->_moreInformationStepContext;
  if (moreInformationStepContext | *(v4 + 13))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext *)moreInformationStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  readerModeEntryStepContext = self->_readerModeEntryStepContext;
  if (readerModeEntryStepContext | *(v4 + 18))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext *)readerModeEntryStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  readerModeIngestionStepContext = self->_readerModeIngestionStepContext;
  if (readerModeIngestionStepContext | *(v4 + 19))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext *)readerModeIngestionStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  manualEntryStepContext = self->_manualEntryStepContext;
  if (manualEntryStepContext | *(v4 + 12))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)manualEntryStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  if (secondaryManualEntryStepContext | *(v4 + 20))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  localDeviceManualEntryStepContext = self->_localDeviceManualEntryStepContext;
  if (localDeviceManualEntryStepContext | *(v4 + 11))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)localDeviceManualEntryStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  localDeviceManualEntryProgressStepContext = self->_localDeviceManualEntryProgressStepContext;
  if (localDeviceManualEntryProgressStepContext | *(v4 + 10))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext *)localDeviceManualEntryProgressStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  productDisambiguationStepContext = self->_productDisambiguationStepContext;
  if (productDisambiguationStepContext | *(v4 + 15))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext *)productDisambiguationStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  passcodeUpgradeStepContext = self->_passcodeUpgradeStepContext;
  if (passcodeUpgradeStepContext | *(v4 + 14))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext *)passcodeUpgradeStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  termsAndConditionsStepContext = self->_termsAndConditionsStepContext;
  if (termsAndConditionsStepContext | *(v4 + 22))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)termsAndConditionsStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  provisioningProgressStepContext = self->_provisioningProgressStepContext;
  if (provisioningProgressStepContext | *(v4 + 16))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)provisioningProgressStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  provisioningResultStepContext = self->_provisioningResultStepContext;
  if (provisioningResultStepContext | *(v4 + 17))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext *)provisioningResultStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  issuerVerificationChannelsStepContext = self->_issuerVerificationChannelsStepContext;
  if (issuerVerificationChannelsStepContext | *(v4 + 7))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext *)issuerVerificationChannelsStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  issuerVerificationFieldsStepContext = self->_issuerVerificationFieldsStepContext;
  if (issuerVerificationFieldsStepContext | *(v4 + 9))
  {
    if (![(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext *)issuerVerificationFieldsStepContext isEqual:?])
    {
      goto LABEL_51;
    }
  }

  issuerVerificationCodeStepContext = self->_issuerVerificationCodeStepContext;
  if (issuerVerificationCodeStepContext | *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v47 = v4;
  if (*(v4 + 21))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setStepIdentifier:?];
    v4 = v47;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)self setBackStepIdentifier:?];
    v4 = v47;
  }

  if (v4[196])
  {
    self->_allowsAddLater = v4[192];
    *&self->_has |= 1u;
  }

  welcomeStepContext = self->_welcomeStepContext;
  v6 = *(v4 + 23);
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

  v4 = v47;
LABEL_13:
  chooseFlowStepContext = self->_chooseFlowStepContext;
  v8 = *(v4 + 3);
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

  v4 = v47;
LABEL_19:
  chooseProductStepContext = self->_chooseProductStepContext;
  v10 = *(v4 + 4);
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

  v4 = v47;
LABEL_25:
  chooseCredentialsStepContext = self->_chooseCredentialsStepContext;
  v12 = *(v4 + 2);
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

  v4 = v47;
LABEL_31:
  digitalIssuanceAmountStepContext = self->_digitalIssuanceAmountStepContext;
  v14 = *(v4 + 5);
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

  v4 = v47;
LABEL_37:
  digitalIssuancePaymentStepContext = self->_digitalIssuancePaymentStepContext;
  v16 = *(v4 + 6);
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

  v4 = v47;
LABEL_43:
  moreInformationStepContext = self->_moreInformationStepContext;
  v18 = *(v4 + 13);
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

  v4 = v47;
LABEL_49:
  readerModeEntryStepContext = self->_readerModeEntryStepContext;
  v20 = *(v4 + 18);
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

  v4 = v47;
LABEL_55:
  readerModeIngestionStepContext = self->_readerModeIngestionStepContext;
  v22 = *(v4 + 19);
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

  v4 = v47;
LABEL_61:
  manualEntryStepContext = self->_manualEntryStepContext;
  v24 = *(v4 + 12);
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

  v4 = v47;
LABEL_67:
  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  v26 = *(v4 + 20);
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

  v4 = v47;
LABEL_73:
  localDeviceManualEntryStepContext = self->_localDeviceManualEntryStepContext;
  v28 = *(v4 + 11);
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

  v4 = v47;
LABEL_79:
  localDeviceManualEntryProgressStepContext = self->_localDeviceManualEntryProgressStepContext;
  v30 = *(v4 + 10);
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

  v4 = v47;
LABEL_85:
  productDisambiguationStepContext = self->_productDisambiguationStepContext;
  v32 = *(v4 + 15);
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

  v4 = v47;
LABEL_91:
  passcodeUpgradeStepContext = self->_passcodeUpgradeStepContext;
  v34 = *(v4 + 14);
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

  v4 = v47;
LABEL_97:
  termsAndConditionsStepContext = self->_termsAndConditionsStepContext;
  v36 = *(v4 + 22);
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

  v4 = v47;
LABEL_103:
  provisioningProgressStepContext = self->_provisioningProgressStepContext;
  v38 = *(v4 + 16);
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

  v4 = v47;
LABEL_109:
  provisioningResultStepContext = self->_provisioningResultStepContext;
  v40 = *(v4 + 17);
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

  v4 = v47;
LABEL_115:
  issuerVerificationChannelsStepContext = self->_issuerVerificationChannelsStepContext;
  v42 = *(v4 + 7);
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

  v4 = v47;
LABEL_121:
  issuerVerificationFieldsStepContext = self->_issuerVerificationFieldsStepContext;
  v44 = *(v4 + 9);
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

  v4 = v47;
LABEL_127:
  issuerVerificationCodeStepContext = self->_issuerVerificationCodeStepContext;
  v46 = *(v4 + 8);
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

  v4 = v47;
LABEL_133:
}

@end