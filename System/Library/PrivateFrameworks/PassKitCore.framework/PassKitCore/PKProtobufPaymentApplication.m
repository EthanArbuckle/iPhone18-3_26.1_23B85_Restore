@interface PKProtobufPaymentApplication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAuxiliary:(BOOL)a3;
- (void)setHasAuxiliaryPaymentType:(BOOL)a3;
- (void)setHasInAppPINRequired:(BOOL)a3;
- (void)setHasInAppPriority:(BOOL)a3;
- (void)setHasPaymentNetworkIdentifier:(BOOL)a3;
- (void)setHasPaymentType:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasSupportsContactlessPayment:(BOOL)a3;
- (void)setHasSupportsInAppPayment:(BOOL)a3;
- (void)setHasSupportsInstantFundsIn:(BOOL)a3;
- (void)setHasSupportsMerchantTokens:(BOOL)a3;
- (void)setHasSupportsMultiTokensV2:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentApplication

- (void)setHasState:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSupportsContactlessPayment:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSupportsInAppPayment:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasPaymentNetworkIdentifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasInAppPINRequired:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasPaymentType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasAuxiliary:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasInAppPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasAuxiliaryPaymentType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasSupportsMerchantTokens:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSupportsMultiTokensV2:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasSupportsInstantFundsIn:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentApplication;
  v4 = [(PKProtobufPaymentApplication *)&v8 description];
  v5 = [(PKProtobufPaymentApplication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  dpanIdentifier = self->_dpanIdentifier;
  if (dpanIdentifier)
  {
    [v3 setObject:dpanIdentifier forKey:@"dpanIdentifier"];
  }

  dpanSuffix = self->_dpanSuffix;
  if (dpanSuffix)
  {
    [v4 setObject:dpanSuffix forKey:@"dpanSuffix"];
  }

  sanitizedDpan = self->_sanitizedDpan;
  if (sanitizedDpan)
  {
    [v4 setObject:sanitizedDpan forKey:@"sanitizedDpan"];
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier)
  {
    [v4 setObject:applicationIdentifier forKey:@"applicationIdentifier"];
  }

  secureElementIdenfitier = self->_secureElementIdenfitier;
  if (secureElementIdenfitier)
  {
    [v4 setObject:secureElementIdenfitier forKey:@"secureElementIdenfitier"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_state];
    [v4 setObject:v10 forKey:@"state"];
  }

  suspendedReason = self->_suspendedReason;
  if (suspendedReason)
  {
    [v4 setObject:suspendedReason forKey:@"suspendedReason"];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsContactlessPayment];
    [v4 setObject:v30 forKey:@"supportsContactlessPayment"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInAppPayment];
  [v4 setObject:v31 forKey:@"supportsInAppPayment"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_paymentNetworkIdentifier];
  [v4 setObject:v32 forKey:@"paymentNetworkIdentifier"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_inAppPINRequired];
  [v4 setObject:v33 forKey:@"inAppPINRequired"];

  if (*&self->_has)
  {
LABEL_20:
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_inAppPINRequiredAmount];
    [v4 setObject:v13 forKey:@"inAppPINRequiredAmount"];
  }

LABEL_21:
  inAppPINRequiredCurrency = self->_inAppPINRequiredCurrency;
  if (inAppPINRequiredCurrency)
  {
    [v4 setObject:inAppPINRequiredCurrency forKey:@"inAppPINRequiredCurrency"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_paymentType];
    [v4 setObject:v15 forKey:@"paymentType"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  v17 = self->_has;
  if ((v17 & 0x40) != 0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_auxiliary];
    [v4 setObject:v34 forKey:@"auxiliary"];

    v17 = self->_has;
    if ((v17 & 2) == 0)
    {
LABEL_29:
      if ((v17 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_29;
  }

  v35 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_inAppPriority];
  [v4 setObject:v35 forKey:@"inAppPriority"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_30:
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_auxiliaryPaymentType];
    [v4 setObject:v18 forKey:@"auxiliaryPaymentType"];
  }

LABEL_31:
  apanIdentifier = self->_apanIdentifier;
  if (apanIdentifier)
  {
    [v4 setObject:apanIdentifier forKey:@"apanIdentifier"];
  }

  apanSuffix = self->_apanSuffix;
  if (apanSuffix)
  {
    [v4 setObject:apanSuffix forKey:@"apanSuffix"];
  }

  if ((*&self->_has & 0x800) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMerchantTokens];
    [v4 setObject:v21 forKey:@"supportsMerchantTokens"];
  }

  customPrecisionInAppPINRequiredAmount = self->_customPrecisionInAppPINRequiredAmount;
  if (customPrecisionInAppPINRequiredAmount)
  {
    v23 = [(PKProtobufCustomPrecisionAmount *)customPrecisionInAppPINRequiredAmount dictionaryRepresentation];
    [v4 setObject:v23 forKey:@"customPrecisionInAppPINRequiredAmount"];
  }

  balanceInAppPINRequiredAmount = self->_balanceInAppPINRequiredAmount;
  if (balanceInAppPINRequiredAmount)
  {
    v25 = [(PKProtobufNSDecimalNumber *)balanceInAppPINRequiredAmount dictionaryRepresentation];
    [v4 setObject:v25 forKey:@"balanceInAppPINRequiredAmount"];
  }

  v26 = self->_has;
  if ((v26 & 0x1000) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMultiTokensV2];
    [v4 setObject:v27 forKey:@"supportsMultiTokensV2"];

    v26 = self->_has;
  }

  if ((v26 & 0x400) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInstantFundsIn];
    [v4 setObject:v28 forKey:@"supportsInstantFundsIn"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_dpanIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_dpanSuffix)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_sanitizedDpan)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_applicationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_secureElementIdenfitier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_suspendedReason)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_17;
  }

  PBDataWriterWriteBOOLField();
  v4 = v7;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  PBDataWriterWriteBOOLField();
  v4 = v7;
  if (*&self->_has)
  {
LABEL_20:
    PBDataWriterWriteSint64Field();
    v4 = v7;
  }

LABEL_21:
  if (self->_inAppPINRequiredCurrency)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_29:
      if ((v6 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_29;
  }

  PBDataWriterWriteSint64Field();
  v4 = v7;
  if ((*&self->_has & 4) != 0)
  {
LABEL_30:
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

LABEL_31:
  if (self->_apanIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_apanSuffix)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_customPrecisionInAppPINRequiredAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_balanceInAppPINRequiredAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_dpanIdentifier)
  {
    [v4 setDpanIdentifier:?];
    v4 = v7;
  }

  if (self->_dpanSuffix)
  {
    [v7 setDpanSuffix:?];
    v4 = v7;
  }

  if (self->_sanitizedDpan)
  {
    [v7 setSanitizedDpan:?];
    v4 = v7;
  }

  if (self->_applicationIdentifier)
  {
    [v7 setApplicationIdentifier:?];
    v4 = v7;
  }

  if (self->_secureElementIdenfitier)
  {
    [v7 setSecureElementIdenfitier:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 32) = self->_state;
    *(v4 + 76) |= 0x20u;
  }

  if (self->_suspendedReason)
  {
    [v7 setSuspendedReason:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v4 + 146) = self->_supportsContactlessPayment;
    *(v4 + 76) |= 0x100u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v4 + 147) = self->_supportsInAppPayment;
  *(v4 + 76) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 26) = self->_paymentNetworkIdentifier;
  *(v4 + 76) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_19:
    if ((has & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  *(v4 + 145) = self->_inAppPINRequired;
  *(v4 + 76) |= 0x80u;
  if (*&self->_has)
  {
LABEL_20:
    *(v4 + 1) = self->_inAppPINRequiredAmount;
    *(v4 + 76) |= 1u;
  }

LABEL_21:
  if (self->_inAppPINRequiredCurrency)
  {
    [v7 setInAppPINRequiredCurrency:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 27) = self->_paymentType;
    *(v4 + 76) |= 0x10u;
  }

  if (self->_displayName)
  {
    [v7 setDisplayName:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(v4 + 144) = self->_auxiliary;
    *(v4 + 76) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_29:
      if ((v6 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_29;
  }

  *(v4 + 2) = self->_inAppPriority;
  *(v4 + 76) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_30:
    *(v4 + 12) = self->_auxiliaryPaymentType;
    *(v4 + 76) |= 4u;
  }

LABEL_31:
  if (self->_apanIdentifier)
  {
    [v7 setApanIdentifier:?];
    v4 = v7;
  }

  if (self->_apanSuffix)
  {
    [v7 setApanSuffix:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    *(v4 + 149) = self->_supportsMerchantTokens;
    *(v4 + 76) |= 0x800u;
  }

  if (self->_customPrecisionInAppPINRequiredAmount)
  {
    [v7 setCustomPrecisionInAppPINRequiredAmount:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    *(v4 + 150) = self->_supportsMultiTokensV2;
    *(v4 + 76) |= 0x1000u;
  }

  if (self->_balanceInAppPINRequiredAmount)
  {
    [v7 setBalanceInAppPINRequiredAmount:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(v4 + 148) = self->_supportsInstantFundsIn;
    *(v4 + 76) |= 0x400u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_dpanIdentifier copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_dpanSuffix copyWithZone:a3];
  v9 = *(v5 + 88);
  *(v5 + 88) = v8;

  v10 = [(NSString *)self->_sanitizedDpan copyWithZone:a3];
  v11 = *(v5 + 112);
  *(v5 + 112) = v10;

  v12 = [(NSString *)self->_applicationIdentifier copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_secureElementIdenfitier copyWithZone:a3];
  v15 = *(v5 + 120);
  *(v5 + 120) = v14;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 128) = self->_state;
    *(v5 + 152) |= 0x20u;
  }

  v16 = [(NSString *)self->_suspendedReason copyWithZone:a3];
  v17 = *(v5 + 136);
  *(v5 + 136) = v16;

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 146) = self->_supportsContactlessPayment;
    *(v5 + 152) |= 0x100u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 147) = self->_supportsInAppPayment;
  *(v5 + 152) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 104) = self->_paymentNetworkIdentifier;
  *(v5 + 152) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_25:
  *(v5 + 145) = self->_inAppPINRequired;
  *(v5 + 152) |= 0x80u;
  if (*&self->_has)
  {
LABEL_8:
    *(v5 + 8) = self->_inAppPINRequiredAmount;
    *(v5 + 152) |= 1u;
  }

LABEL_9:
  v19 = [(NSString *)self->_inAppPINRequiredCurrency copyWithZone:a3];
  v20 = *(v5 + 96);
  *(v5 + 96) = v19;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 108) = self->_paymentType;
    *(v5 + 152) |= 0x10u;
  }

  v21 = [(NSString *)self->_displayName copyWithZone:a3];
  v22 = *(v5 + 72);
  *(v5 + 72) = v21;

  v23 = self->_has;
  if ((v23 & 0x40) != 0)
  {
    *(v5 + 144) = self->_auxiliary;
    *(v5 + 152) |= 0x40u;
    v23 = self->_has;
    if ((v23 & 2) == 0)
    {
LABEL_13:
      if ((v23 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_13;
  }

  *(v5 + 16) = self->_inAppPriority;
  *(v5 + 152) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    *(v5 + 48) = self->_auxiliaryPaymentType;
    *(v5 + 152) |= 4u;
  }

LABEL_15:
  v24 = [(NSString *)self->_apanIdentifier copyWithZone:a3];
  v25 = *(v5 + 24);
  *(v5 + 24) = v24;

  v26 = [(NSString *)self->_apanSuffix copyWithZone:a3];
  v27 = *(v5 + 32);
  *(v5 + 32) = v26;

  if ((*&self->_has & 0x800) != 0)
  {
    *(v5 + 149) = self->_supportsMerchantTokens;
    *(v5 + 152) |= 0x800u;
  }

  v28 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionInAppPINRequiredAmount copyWithZone:a3];
  v29 = *(v5 + 64);
  *(v5 + 64) = v28;

  if ((*&self->_has & 0x1000) != 0)
  {
    *(v5 + 150) = self->_supportsMultiTokensV2;
    *(v5 + 152) |= 0x1000u;
  }

  v30 = [(PKProtobufNSDecimalNumber *)self->_balanceInAppPINRequiredAmount copyWithZone:a3];
  v31 = *(v5 + 56);
  *(v5 + 56) = v30;

  if ((*&self->_has & 0x400) != 0)
  {
    *(v5 + 148) = self->_supportsInstantFundsIn;
    *(v5 + 152) |= 0x400u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_116;
  }

  dpanIdentifier = self->_dpanIdentifier;
  if (dpanIdentifier | *(v4 + 10))
  {
    if (![(NSString *)dpanIdentifier isEqual:?])
    {
      goto LABEL_116;
    }
  }

  dpanSuffix = self->_dpanSuffix;
  if (dpanSuffix | *(v4 + 11))
  {
    if (![(NSString *)dpanSuffix isEqual:?])
    {
      goto LABEL_116;
    }
  }

  sanitizedDpan = self->_sanitizedDpan;
  if (sanitizedDpan | *(v4 + 14))
  {
    if (![(NSString *)sanitizedDpan isEqual:?])
    {
      goto LABEL_116;
    }
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier | *(v4 + 5))
  {
    if (![(NSString *)applicationIdentifier isEqual:?])
    {
      goto LABEL_116;
    }
  }

  secureElementIdenfitier = self->_secureElementIdenfitier;
  if (secureElementIdenfitier | *(v4 + 15))
  {
    if (![(NSString *)secureElementIdenfitier isEqual:?])
    {
      goto LABEL_116;
    }
  }

  has = self->_has;
  v11 = *(v4 + 76);
  if ((has & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_state != *(v4 + 32))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_116;
  }

  suspendedReason = self->_suspendedReason;
  if (suspendedReason | *(v4 + 17))
  {
    if (![(NSString *)suspendedReason isEqual:?])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v11 = *(v4 + 76);
  }

  if ((has & 0x100) != 0)
  {
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_116;
    }

    if (self->_supportsContactlessPayment)
    {
      if ((*(v4 + 146) & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (*(v4 + 146))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 0x100) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 0x200) != 0)
  {
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_116;
    }

    if (self->_supportsInAppPayment)
    {
      if ((*(v4 + 147) & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (*(v4 + 147))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 0x200) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_paymentNetworkIdentifier != *(v4 + 26))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_116;
    }

    if (self->_inAppPINRequired)
    {
      if ((*(v4 + 145) & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (*(v4 + 145))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_116;
  }

  if (has)
  {
    if ((v11 & 1) == 0 || self->_inAppPINRequiredAmount != *(v4 + 1))
    {
      goto LABEL_116;
    }
  }

  else if (v11)
  {
    goto LABEL_116;
  }

  inAppPINRequiredCurrency = self->_inAppPINRequiredCurrency;
  if (inAppPINRequiredCurrency | *(v4 + 12))
  {
    if (![(NSString *)inAppPINRequiredCurrency isEqual:?])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v11 = *(v4 + 76);
  }

  if ((has & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_paymentType != *(v4 + 27))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_116;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 9))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_116;
    }

    has = self->_has;
    v11 = *(v4 + 76);
  }

  if ((has & 0x40) != 0)
  {
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_116;
    }

    if (self->_auxiliary)
    {
      if ((*(v4 + 144) & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (*(v4 + 144))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 0x40) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_inAppPriority != *(v4 + 2))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_116;
  }

  if ((has & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_auxiliaryPaymentType != *(v4 + 12))
    {
      goto LABEL_116;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_116;
  }

  apanIdentifier = self->_apanIdentifier;
  if (apanIdentifier | *(v4 + 3) && ![(NSString *)apanIdentifier isEqual:?])
  {
    goto LABEL_116;
  }

  apanSuffix = self->_apanSuffix;
  if (apanSuffix | *(v4 + 4))
  {
    if (![(NSString *)apanSuffix isEqual:?])
    {
      goto LABEL_116;
    }
  }

  v17 = self->_has;
  v18 = *(v4 + 76);
  if ((v17 & 0x800) != 0)
  {
    if ((*(v4 + 76) & 0x800) == 0)
    {
      goto LABEL_116;
    }

    if (self->_supportsMerchantTokens)
    {
      if ((*(v4 + 149) & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (*(v4 + 149))
    {
      goto LABEL_116;
    }
  }

  else if ((*(v4 + 76) & 0x800) != 0)
  {
    goto LABEL_116;
  }

  customPrecisionInAppPINRequiredAmount = self->_customPrecisionInAppPINRequiredAmount;
  if (customPrecisionInAppPINRequiredAmount | *(v4 + 8))
  {
    if (![(PKProtobufCustomPrecisionAmount *)customPrecisionInAppPINRequiredAmount isEqual:?])
    {
      goto LABEL_116;
    }

    v17 = self->_has;
    v18 = *(v4 + 76);
  }

  if ((v17 & 0x1000) != 0)
  {
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_116;
    }

    if (self->_supportsMultiTokensV2)
    {
      if ((*(v4 + 150) & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else if (*(v4 + 150))
    {
      goto LABEL_116;
    }
  }

  else if ((v18 & 0x1000) != 0)
  {
    goto LABEL_116;
  }

  balanceInAppPINRequiredAmount = self->_balanceInAppPINRequiredAmount;
  if (balanceInAppPINRequiredAmount | *(v4 + 7))
  {
    if (![(PKProtobufNSDecimalNumber *)balanceInAppPINRequiredAmount isEqual:?])
    {
      goto LABEL_116;
    }

    v17 = self->_has;
    v18 = *(v4 + 76);
  }

  if ((v17 & 0x400) != 0)
  {
    if ((v18 & 0x400) != 0)
    {
      if (self->_supportsInstantFundsIn)
      {
        if (*(v4 + 148))
        {
          goto LABEL_118;
        }
      }

      else if (!*(v4 + 148))
      {
LABEL_118:
        v21 = 1;
        goto LABEL_117;
      }
    }

LABEL_116:
    v21 = 0;
    goto LABEL_117;
  }

  v21 = (v18 & 0x400) == 0;
LABEL_117:

  return v21;
}

- (unint64_t)hash
{
  v31 = [(NSString *)self->_dpanIdentifier hash];
  v30 = [(NSString *)self->_dpanSuffix hash];
  v29 = [(NSString *)self->_sanitizedDpan hash];
  v28 = [(NSString *)self->_applicationIdentifier hash];
  v27 = [(NSString *)self->_secureElementIdenfitier hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v26 = 2654435761 * self->_state;
  }

  else
  {
    v26 = 0;
  }

  v25 = [(NSString *)self->_suspendedReason hash];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v24 = 2654435761 * self->_supportsContactlessPayment;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_6:
      v23 = 2654435761 * self->_supportsInAppPayment;
      if ((has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_6;
    }
  }

  v23 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v22 = 2654435761 * self->_paymentNetworkIdentifier;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v21 = 0;
    if (has)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  v22 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = 2654435761 * self->_inAppPINRequired;
  if (has)
  {
LABEL_9:
    v20 = 2654435761 * self->_inAppPINRequiredAmount;
    goto LABEL_15;
  }

LABEL_14:
  v20 = 0;
LABEL_15:
  v19 = [(NSString *)self->_inAppPINRequiredCurrency hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v18 = 2654435761 * self->_paymentType;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(NSString *)self->_displayName hash];
  v4 = self->_has;
  if ((v4 & 0x40) == 0)
  {
    v15 = 0;
    if ((v4 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v5 = 0;
    if ((v4 & 4) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v15 = 2654435761 * self->_auxiliary;
  if ((v4 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v5 = 2654435761 * self->_inAppPriority;
  if ((v4 & 4) != 0)
  {
LABEL_21:
    v6 = 2654435761 * self->_auxiliaryPaymentType;
    goto LABEL_25;
  }

LABEL_24:
  v6 = 0;
LABEL_25:
  v7 = [(NSString *)self->_apanIdentifier hash];
  v8 = [(NSString *)self->_apanSuffix hash];
  if ((*&self->_has & 0x800) != 0)
  {
    v9 = 2654435761 * self->_supportsMerchantTokens;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionInAppPINRequiredAmount hash];
  if ((*&self->_has & 0x1000) != 0)
  {
    v11 = 2654435761 * self->_supportsMultiTokensV2;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PKProtobufNSDecimalNumber *)self->_balanceInAppPINRequiredAmount hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v13 = 2654435761 * self->_supportsInstantFundsIn;
  }

  else
  {
    v13 = 0;
  }

  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (*(v4 + 10))
  {
    [(PKProtobufPaymentApplication *)self setDpanIdentifier:?];
    v4 = v11;
  }

  if (*(v4 + 11))
  {
    [(PKProtobufPaymentApplication *)self setDpanSuffix:?];
    v4 = v11;
  }

  if (*(v4 + 14))
  {
    [(PKProtobufPaymentApplication *)self setSanitizedDpan:?];
    v4 = v11;
  }

  if (*(v4 + 5))
  {
    [(PKProtobufPaymentApplication *)self setApplicationIdentifier:?];
    v4 = v11;
  }

  if (*(v4 + 15))
  {
    [(PKProtobufPaymentApplication *)self setSecureElementIdenfitier:?];
    v4 = v11;
  }

  if ((*(v4 + 76) & 0x20) != 0)
  {
    self->_state = *(v4 + 32);
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 17))
  {
    [(PKProtobufPaymentApplication *)self setSuspendedReason:?];
    v4 = v11;
  }

  v5 = *(v4 + 76);
  if ((v5 & 0x100) != 0)
  {
    self->_supportsContactlessPayment = *(v4 + 146);
    *&self->_has |= 0x100u;
    v5 = *(v4 + 76);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_42;
    }
  }

  else if ((*(v4 + 76) & 0x200) == 0)
  {
    goto LABEL_17;
  }

  self->_supportsInAppPayment = *(v4 + 147);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 76);
  if ((v5 & 8) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_paymentNetworkIdentifier = *(v4 + 26);
  *&self->_has |= 8u;
  v5 = *(v4 + 76);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_43:
  self->_inAppPINRequired = *(v4 + 145);
  *&self->_has |= 0x80u;
  if (*(v4 + 76))
  {
LABEL_20:
    self->_inAppPINRequiredAmount = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_21:
  if (*(v4 + 12))
  {
    [(PKProtobufPaymentApplication *)self setInAppPINRequiredCurrency:?];
    v4 = v11;
  }

  if ((*(v4 + 76) & 0x10) != 0)
  {
    self->_paymentType = *(v4 + 27);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 9))
  {
    [(PKProtobufPaymentApplication *)self setDisplayName:?];
    v4 = v11;
  }

  v6 = *(v4 + 76);
  if ((v6 & 0x40) != 0)
  {
    self->_auxiliary = *(v4 + 144);
    *&self->_has |= 0x40u;
    v6 = *(v4 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_29:
      if ((v6 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_29;
  }

  self->_inAppPriority = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 76) & 4) != 0)
  {
LABEL_30:
    self->_auxiliaryPaymentType = *(v4 + 12);
    *&self->_has |= 4u;
  }

LABEL_31:
  if (*(v4 + 3))
  {
    [(PKProtobufPaymentApplication *)self setApanIdentifier:?];
    v4 = v11;
  }

  if (*(v4 + 4))
  {
    [(PKProtobufPaymentApplication *)self setApanSuffix:?];
    v4 = v11;
  }

  if ((*(v4 + 76) & 0x800) != 0)
  {
    self->_supportsMerchantTokens = *(v4 + 149);
    *&self->_has |= 0x800u;
  }

  customPrecisionInAppPINRequiredAmount = self->_customPrecisionInAppPINRequiredAmount;
  v8 = *(v4 + 8);
  if (customPrecisionInAppPINRequiredAmount)
  {
    if (!v8)
    {
      goto LABEL_51;
    }

    [(PKProtobufCustomPrecisionAmount *)customPrecisionInAppPINRequiredAmount mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_51;
    }

    [(PKProtobufPaymentApplication *)self setCustomPrecisionInAppPINRequiredAmount:?];
  }

  v4 = v11;
LABEL_51:
  if ((*(v4 + 76) & 0x1000) != 0)
  {
    self->_supportsMultiTokensV2 = *(v4 + 150);
    *&self->_has |= 0x1000u;
  }

  balanceInAppPINRequiredAmount = self->_balanceInAppPINRequiredAmount;
  v10 = *(v4 + 7);
  if (balanceInAppPINRequiredAmount)
  {
    if (!v10)
    {
      goto LABEL_59;
    }

    [(PKProtobufNSDecimalNumber *)balanceInAppPINRequiredAmount mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_59;
    }

    [(PKProtobufPaymentApplication *)self setBalanceInAppPINRequiredAmount:?];
  }

  v4 = v11;
LABEL_59:
  if ((*(v4 + 76) & 0x400) != 0)
  {
    self->_supportsInstantFundsIn = *(v4 + 148);
    *&self->_has |= 0x400u;
  }
}

@end