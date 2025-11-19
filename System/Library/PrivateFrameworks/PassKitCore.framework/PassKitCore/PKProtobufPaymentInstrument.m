@interface PKProtobufPaymentInstrument
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAssociatedWebDomains:(id)a3;
- (void)addPaymentApplications:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAssociatedAccountFeatureIdentifier:(BOOL)a3;
- (void)setHasCobranded:(BOOL)a3;
- (void)setHasHasAssociatedPeerPaymentAccount:(BOOL)a3;
- (void)setHasPeerPaymentAccountBalance:(BOOL)a3;
- (void)setHasPeerPaymentAccountState:(BOOL)a3;
- (void)setHasSupportsAutomaticSelection:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentInstrument

- (void)addPaymentApplications:(id)a3
{
  v4 = a3;
  paymentApplications = self->_paymentApplications;
  v8 = v4;
  if (!paymentApplications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_paymentApplications;
    self->_paymentApplications = v6;

    v4 = v8;
    paymentApplications = self->_paymentApplications;
  }

  [(NSMutableArray *)paymentApplications addObject:v4];
}

- (void)addAssociatedWebDomains:(id)a3
{
  v4 = a3;
  associatedWebDomains = self->_associatedWebDomains;
  v8 = v4;
  if (!associatedWebDomains)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_associatedWebDomains;
    self->_associatedWebDomains = v6;

    v4 = v8;
    associatedWebDomains = self->_associatedWebDomains;
  }

  [(NSMutableArray *)associatedWebDomains addObject:v4];
}

- (void)setHasSupportsAutomaticSelection:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasHasAssociatedPeerPaymentAccount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPeerPaymentAccountBalance:(BOOL)a3
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

- (void)setHasPeerPaymentAccountState:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAssociatedAccountFeatureIdentifier:(BOOL)a3
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

- (void)setHasCobranded:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentInstrument;
  v4 = [(PKProtobufPaymentInstrument *)&v8 description];
  v5 = [(PKProtobufPaymentInstrument *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKey:@"displayName"];
  }

  passID = self->_passID;
  if (passID)
  {
    [v4 setObject:passID forKey:@"passID"];
  }

  if ([(NSMutableArray *)self->_paymentApplications count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_paymentApplications, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = self->_paymentApplications;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"paymentApplications"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ingestedDate];
    [v4 setObject:v14 forKey:@"ingestedDate"];
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix)
  {
    [v4 setObject:primaryAccountNumberSuffix forKey:@"primaryAccountNumberSuffix"];
  }

  manifestHash = self->_manifestHash;
  if (manifestHash)
  {
    [v4 setObject:manifestHash forKey:@"manifestHash"];
  }

  primaryAccountIdentifier = self->_primaryAccountIdentifier;
  if (primaryAccountIdentifier)
  {
    [v4 setObject:primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  }

  associatedWebDomains = self->_associatedWebDomains;
  if (associatedWebDomains)
  {
    [v4 setObject:associatedWebDomains forKey:@"associatedWebDomains"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAutomaticSelection];
    [v4 setObject:v19 forKey:@"supportsAutomaticSelection"];
  }

  issuerCountryCode = self->_issuerCountryCode;
  if (issuerCountryCode)
  {
    [v4 setObject:issuerCountryCode forKey:@"issuerCountryCode"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAssociatedPeerPaymentAccount];
    [v4 setObject:v21 forKey:@"hasAssociatedPeerPaymentAccount"];
  }

  peerPaymentAccountCurrency = self->_peerPaymentAccountCurrency;
  if (peerPaymentAccountCurrency)
  {
    [v4 setObject:peerPaymentAccountCurrency forKey:@"peerPaymentAccountCurrency"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_peerPaymentAccountBalance];
    [v4 setObject:v24 forKey:@"peerPaymentAccountBalance"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_peerPaymentAccountState];
    [v4 setObject:v25 forKey:@"peerPaymentAccountState"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [v4 setObject:organizationName forKey:@"organizationName"];
  }

  customPrecisionPeerPaymentAccountBalance = self->_customPrecisionPeerPaymentAccountBalance;
  if (customPrecisionPeerPaymentAccountBalance)
  {
    v28 = [(PKProtobufCustomPrecisionAmount *)customPrecisionPeerPaymentAccountBalance dictionaryRepresentation];
    [v4 setObject:v28 forKey:@"customPrecisionPeerPaymentAccountBalance"];
  }

  decimalAccountBalance = self->_decimalAccountBalance;
  if (decimalAccountBalance)
  {
    v30 = [(PKProtobufNSDecimalNumber *)decimalAccountBalance dictionaryRepresentation];
    [v4 setObject:v30 forKey:@"decimal_account_balance"];
  }

  v31 = self->_has;
  if ((v31 & 4) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_associatedAccountFeatureIdentifier];
    [v4 setObject:v32 forKey:@"associatedAccountFeatureIdentifier"];

    v31 = self->_has;
  }

  if ((v31 & 0x10) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_cobranded];
    [v4 setObject:v33 forKey:@"cobranded"];
  }

  cobrandName = self->_cobrandName;
  if (cobrandName)
  {
    [v4 setObject:cobrandName forKey:@"cobrandName"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_passID)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_paymentApplications;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_primaryAccountNumberSuffix)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_manifestHash)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_primaryAccountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_associatedWebDomains;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_issuerCountryCode)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_peerPaymentAccountCurrency)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteSint64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_organizationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_customPrecisionPeerPaymentAccountBalance)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_decimalAccountBalance)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = self->_has;
  if ((v16 & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v16 = self->_has;
  }

  if ((v16 & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_cobrandName)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v15 = a3;
  if (self->_displayName)
  {
    [v15 setDisplayName:?];
  }

  if (self->_passID)
  {
    [v15 setPassID:?];
  }

  if ([(PKProtobufPaymentInstrument *)self paymentApplicationsCount])
  {
    [v15 clearPaymentApplications];
    v4 = [(PKProtobufPaymentInstrument *)self paymentApplicationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PKProtobufPaymentInstrument *)self paymentApplicationsAtIndex:i];
        [v15 addPaymentApplications:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v15 + 1) = *&self->_ingestedDate;
    *(v15 + 148) |= 1u;
  }

  if (self->_primaryAccountNumberSuffix)
  {
    [v15 setPrimaryAccountNumberSuffix:?];
  }

  if (self->_manifestHash)
  {
    [v15 setManifestHash:?];
  }

  if (self->_primaryAccountIdentifier)
  {
    [v15 setPrimaryAccountIdentifier:?];
  }

  if ([(PKProtobufPaymentInstrument *)self associatedWebDomainsCount])
  {
    [v15 clearAssociatedWebDomains];
    v8 = [(PKProtobufPaymentInstrument *)self associatedWebDomainsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PKProtobufPaymentInstrument *)self associatedWebDomainsAtIndex:j];
        [v15 addAssociatedWebDomains:v11];
      }
    }
  }

  v12 = v15;
  if ((*&self->_has & 0x40) != 0)
  {
    *(v15 + 146) = self->_supportsAutomaticSelection;
    *(v15 + 148) |= 0x40u;
  }

  if (self->_issuerCountryCode)
  {
    [v15 setIssuerCountryCode:?];
    v12 = v15;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v12[145] = self->_hasAssociatedPeerPaymentAccount;
    v12[148] |= 0x20u;
  }

  if (self->_peerPaymentAccountCurrency)
  {
    [v15 setPeerPaymentAccountCurrency:?];
    v12 = v15;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v12 + 2) = self->_peerPaymentAccountBalance;
    v12[148] |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v12 + 30) = self->_peerPaymentAccountState;
    v12[148] |= 8u;
  }

  if (self->_organizationName)
  {
    [v15 setOrganizationName:?];
    v12 = v15;
  }

  if (self->_customPrecisionPeerPaymentAccountBalance)
  {
    [v15 setCustomPrecisionPeerPaymentAccountBalance:?];
    v12 = v15;
  }

  if (self->_decimalAccountBalance)
  {
    [v15 setDecimalAccountBalance:?];
    v12 = v15;
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    *(v12 + 6) = self->_associatedAccountFeatureIdentifier;
    v12[148] |= 4u;
    v14 = self->_has;
  }

  if ((v14 & 0x10) != 0)
  {
    v12[144] = self->_cobranded;
    v12[148] |= 0x10u;
  }

  if (self->_cobrandName)
  {
    [v15 setCobrandName:?];
    v12 = v15;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_displayName copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_passID copyWithZone:a3];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = self->_paymentApplications;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v47 + 1) + 8 * i) copyWithZone:a3];
        [v5 addPaymentApplications:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_ingestedDate;
    *(v5 + 148) |= 1u;
  }

  v16 = [(NSString *)self->_primaryAccountNumberSuffix copyWithZone:a3];
  v17 = *(v5 + 136);
  *(v5 + 136) = v16;

  v18 = [(NSData *)self->_manifestHash copyWithZone:a3];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSString *)self->_primaryAccountIdentifier copyWithZone:a3];
  v21 = *(v5 + 128);
  *(v5 + 128) = v20;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = self->_associatedWebDomains;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v43 + 1) + 8 * j) copyWithZone:{a3, v43}];
        [v5 addAssociatedWebDomains:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v24);
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 146) = self->_supportsAutomaticSelection;
    *(v5 + 148) |= 0x40u;
  }

  v28 = [(NSString *)self->_issuerCountryCode copyWithZone:a3, v43];
  v29 = *(v5 + 72);
  *(v5 + 72) = v28;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 145) = self->_hasAssociatedPeerPaymentAccount;
    *(v5 + 148) |= 0x20u;
  }

  v30 = [(NSString *)self->_peerPaymentAccountCurrency copyWithZone:a3];
  v31 = *(v5 + 112);
  *(v5 + 112) = v30;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_peerPaymentAccountBalance;
    *(v5 + 148) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 120) = self->_peerPaymentAccountState;
    *(v5 + 148) |= 8u;
  }

  v33 = [(NSString *)self->_organizationName copyWithZone:a3];
  v34 = *(v5 + 88);
  *(v5 + 88) = v33;

  v35 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionPeerPaymentAccountBalance copyWithZone:a3];
  v36 = *(v5 + 48);
  *(v5 + 48) = v35;

  v37 = [(PKProtobufNSDecimalNumber *)self->_decimalAccountBalance copyWithZone:a3];
  v38 = *(v5 + 56);
  *(v5 + 56) = v37;

  v39 = self->_has;
  if ((v39 & 4) != 0)
  {
    *(v5 + 24) = self->_associatedAccountFeatureIdentifier;
    *(v5 + 148) |= 4u;
    v39 = self->_has;
  }

  if ((v39 & 0x10) != 0)
  {
    *(v5 + 144) = self->_cobranded;
    *(v5 + 148) |= 0x10u;
  }

  v40 = [(NSString *)self->_cobrandName copyWithZone:a3];
  v41 = *(v5 + 40);
  *(v5 + 40) = v40;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_69;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 8))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_69;
    }
  }

  passID = self->_passID;
  if (passID | *(v4 + 12))
  {
    if (![(NSString *)passID isEqual:?])
    {
      goto LABEL_69;
    }
  }

  paymentApplications = self->_paymentApplications;
  if (paymentApplications | *(v4 + 13))
  {
    if (![(NSMutableArray *)paymentApplications isEqual:?])
    {
      goto LABEL_69;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 148) & 1) == 0 || self->_ingestedDate != *(v4 + 1))
    {
      goto LABEL_69;
    }
  }

  else if (*(v4 + 148))
  {
    goto LABEL_69;
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix | *(v4 + 17) && ![(NSString *)primaryAccountNumberSuffix isEqual:?])
  {
    goto LABEL_69;
  }

  manifestHash = self->_manifestHash;
  if (manifestHash | *(v4 + 10))
  {
    if (![(NSData *)manifestHash isEqual:?])
    {
      goto LABEL_69;
    }
  }

  primaryAccountIdentifier = self->_primaryAccountIdentifier;
  if (primaryAccountIdentifier | *(v4 + 16))
  {
    if (![(NSString *)primaryAccountIdentifier isEqual:?])
    {
      goto LABEL_69;
    }
  }

  associatedWebDomains = self->_associatedWebDomains;
  if (associatedWebDomains | *(v4 + 4))
  {
    if (![(NSMutableArray *)associatedWebDomains isEqual:?])
    {
      goto LABEL_69;
    }
  }

  has = self->_has;
  v13 = *(v4 + 148);
  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 148) & 0x40) == 0)
    {
      goto LABEL_69;
    }

    if (self->_supportsAutomaticSelection)
    {
      if ((*(v4 + 146) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 146))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 148) & 0x40) != 0)
  {
    goto LABEL_69;
  }

  issuerCountryCode = self->_issuerCountryCode;
  if (issuerCountryCode | *(v4 + 9))
  {
    if (![(NSString *)issuerCountryCode isEqual:?])
    {
      goto LABEL_69;
    }

    has = self->_has;
    v13 = *(v4 + 148);
  }

  if ((has & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_69;
    }

    if (self->_hasAssociatedPeerPaymentAccount)
    {
      if ((*(v4 + 145) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (*(v4 + 145))
    {
      goto LABEL_69;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_69;
  }

  peerPaymentAccountCurrency = self->_peerPaymentAccountCurrency;
  if (peerPaymentAccountCurrency | *(v4 + 14))
  {
    if (![(NSString *)peerPaymentAccountCurrency isEqual:?])
    {
      goto LABEL_69;
    }

    has = self->_has;
    v13 = *(v4 + 148);
  }

  if ((has & 2) != 0)
  {
    if ((v13 & 2) == 0 || self->_peerPaymentAccountBalance != *(v4 + 2))
    {
      goto LABEL_69;
    }
  }

  else if ((v13 & 2) != 0)
  {
    goto LABEL_69;
  }

  if ((has & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_peerPaymentAccountState != *(v4 + 30))
    {
      goto LABEL_69;
    }
  }

  else if ((v13 & 8) != 0)
  {
    goto LABEL_69;
  }

  organizationName = self->_organizationName;
  if (organizationName | *(v4 + 11) && ![(NSString *)organizationName isEqual:?])
  {
    goto LABEL_69;
  }

  customPrecisionPeerPaymentAccountBalance = self->_customPrecisionPeerPaymentAccountBalance;
  if (customPrecisionPeerPaymentAccountBalance | *(v4 + 6))
  {
    if (![(PKProtobufCustomPrecisionAmount *)customPrecisionPeerPaymentAccountBalance isEqual:?])
    {
      goto LABEL_69;
    }
  }

  decimalAccountBalance = self->_decimalAccountBalance;
  if (decimalAccountBalance | *(v4 + 7))
  {
    if (![(PKProtobufNSDecimalNumber *)decimalAccountBalance isEqual:?])
    {
      goto LABEL_69;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 148) & 4) == 0 || self->_associatedAccountFeatureIdentifier != *(v4 + 6))
    {
      goto LABEL_69;
    }
  }

  else if ((*(v4 + 148) & 4) != 0)
  {
    goto LABEL_69;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(v4 + 148) & 0x10) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    v20 = 0;
    goto LABEL_70;
  }

  if ((*(v4 + 148) & 0x10) == 0)
  {
    goto LABEL_69;
  }

  if (self->_cobranded)
  {
    if ((*(v4 + 144) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (*(v4 + 144))
  {
    goto LABEL_69;
  }

LABEL_66:
  cobrandName = self->_cobrandName;
  if (cobrandName | *(v4 + 5))
  {
    v20 = [(NSString *)cobrandName isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_70:

  return v20;
}

- (unint64_t)hash
{
  v28 = [(NSString *)self->_displayName hash];
  v27 = [(NSString *)self->_passID hash];
  v26 = [(NSMutableArray *)self->_paymentApplications hash];
  if (*&self->_has)
  {
    ingestedDate = self->_ingestedDate;
    if (ingestedDate < 0.0)
    {
      ingestedDate = -ingestedDate;
    }

    *v3.i64 = floor(ingestedDate + 0.5);
    v7 = (ingestedDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v25 = v5;
  v24 = [(NSString *)self->_primaryAccountNumberSuffix hash];
  v23 = [(NSData *)self->_manifestHash hash];
  v22 = [(NSString *)self->_primaryAccountIdentifier hash];
  v21 = [(NSMutableArray *)self->_associatedWebDomains hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v20 = 2654435761 * self->_supportsAutomaticSelection;
  }

  else
  {
    v20 = 0;
  }

  v9 = [(NSString *)self->_issuerCountryCode hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v10 = 2654435761 * self->_hasAssociatedPeerPaymentAccount;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSString *)self->_peerPaymentAccountCurrency hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_peerPaymentAccountBalance;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_17:
      v13 = 2654435761 * self->_peerPaymentAccountState;
      goto LABEL_20;
    }
  }

  v13 = 0;
LABEL_20:
  v14 = [(NSString *)self->_organizationName hash];
  v15 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionPeerPaymentAccountBalance hash];
  v16 = [(PKProtobufNSDecimalNumber *)self->_decimalAccountBalance hash];
  if ((*&self->_has & 4) != 0)
  {
    v17 = 2654435761 * self->_associatedAccountFeatureIdentifier;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v18 = 0;
    return v27 ^ v28 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ [(NSString *)self->_cobrandName hash];
  }

  v17 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v18 = 2654435761 * self->_cobranded;
  return v27 ^ v28 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ [(NSString *)self->_cobrandName hash];
}

- (void)mergeFrom:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 8))
  {
    [(PKProtobufPaymentInstrument *)self setDisplayName:?];
  }

  if (*(v4 + 12))
  {
    [(PKProtobufPaymentInstrument *)self setPassID:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(v4 + 13);
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKProtobufPaymentInstrument *)self addPaymentApplications:*(*(&v25 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  if (*(v4 + 148))
  {
    self->_ingestedDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 17))
  {
    [(PKProtobufPaymentInstrument *)self setPrimaryAccountNumberSuffix:?];
  }

  if (*(v4 + 10))
  {
    [(PKProtobufPaymentInstrument *)self setManifestHash:?];
  }

  if (*(v4 + 16))
  {
    [(PKProtobufPaymentInstrument *)self setPrimaryAccountIdentifier:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = *(v4 + 4);
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PKProtobufPaymentInstrument *)self addAssociatedWebDomains:*(*(&v21 + 1) + 8 * j), v21];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v12);
  }

  if ((*(v4 + 148) & 0x40) != 0)
  {
    self->_supportsAutomaticSelection = *(v4 + 146);
    *&self->_has |= 0x40u;
  }

  if (*(v4 + 9))
  {
    [(PKProtobufPaymentInstrument *)self setIssuerCountryCode:?];
  }

  if ((*(v4 + 148) & 0x20) != 0)
  {
    self->_hasAssociatedPeerPaymentAccount = *(v4 + 145);
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 14))
  {
    [(PKProtobufPaymentInstrument *)self setPeerPaymentAccountCurrency:?];
  }

  v15 = *(v4 + 148);
  if ((v15 & 2) != 0)
  {
    self->_peerPaymentAccountBalance = *(v4 + 2);
    *&self->_has |= 2u;
    v15 = *(v4 + 148);
  }

  if ((v15 & 8) != 0)
  {
    self->_peerPaymentAccountState = *(v4 + 30);
    *&self->_has |= 8u;
  }

  if (*(v4 + 11))
  {
    [(PKProtobufPaymentInstrument *)self setOrganizationName:?];
  }

  customPrecisionPeerPaymentAccountBalance = self->_customPrecisionPeerPaymentAccountBalance;
  v17 = *(v4 + 6);
  if (customPrecisionPeerPaymentAccountBalance)
  {
    if (v17)
    {
      [(PKProtobufCustomPrecisionAmount *)customPrecisionPeerPaymentAccountBalance mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(PKProtobufPaymentInstrument *)self setCustomPrecisionPeerPaymentAccountBalance:?];
  }

  decimalAccountBalance = self->_decimalAccountBalance;
  v19 = *(v4 + 7);
  if (decimalAccountBalance)
  {
    if (v19)
    {
      [(PKProtobufNSDecimalNumber *)decimalAccountBalance mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(PKProtobufPaymentInstrument *)self setDecimalAccountBalance:?];
  }

  v20 = *(v4 + 148);
  if ((v20 & 4) != 0)
  {
    self->_associatedAccountFeatureIdentifier = *(v4 + 6);
    *&self->_has |= 4u;
    v20 = *(v4 + 148);
  }

  if ((v20 & 0x10) != 0)
  {
    self->_cobranded = *(v4 + 144);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 5))
  {
    [(PKProtobufPaymentInstrument *)self setCobrandName:?];
  }
}

@end