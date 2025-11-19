@interface PKProtobufPaymentMerchantSession
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSignedFields:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasExpiresAt:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentMerchantSession

- (void)setHasExpiresAt:(BOOL)a3
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

- (void)addSignedFields:(id)a3
{
  v4 = a3;
  signedFields = self->_signedFields;
  v8 = v4;
  if (!signedFields)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_signedFields;
    self->_signedFields = v6;

    v4 = v8;
    signedFields = self->_signedFields;
  }

  [(NSMutableArray *)signedFields addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentMerchantSession;
  v4 = [(PKProtobufPaymentMerchantSession *)&v8 description];
  v5 = [(PKProtobufPaymentMerchantSession *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier)
  {
    [v3 setObject:merchantIdentifier forKey:@"merchantIdentifier"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v4 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  nonce = self->_nonce;
  if (nonce)
  {
    [v4 setObject:nonce forKey:@"nonce"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_epochTimestamp];
    [v4 setObject:v8 forKey:@"epochTimestamp"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v4 setObject:domain forKey:@"domain"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  signature = self->_signature;
  if (signature)
  {
    [v4 setObject:signature forKey:@"signature"];
  }

  retryNonce = self->_retryNonce;
  if (retryNonce)
  {
    [v4 setObject:retryNonce forKey:@"retryNonce"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_expiresAt];
    [v4 setObject:v13 forKey:@"expiresAt"];
  }

  initiativeContext = self->_initiativeContext;
  if (initiativeContext)
  {
    [v4 setObject:initiativeContext forKey:@"initiativeContext"];
  }

  initiative = self->_initiative;
  if (initiative)
  {
    [v4 setObject:initiative forKey:@"initiative"];
  }

  signedFields = self->_signedFields;
  if (signedFields)
  {
    [v4 setObject:signedFields forKey:@"signedFields"];
  }

  ampEnrollmentPinning = self->_ampEnrollmentPinning;
  if (ampEnrollmentPinning)
  {
    [v4 setObject:ampEnrollmentPinning forKey:@"ampEnrollmentPinning"];
  }

  operationalAnalyticsIdentifier = self->_operationalAnalyticsIdentifier;
  if (operationalAnalyticsIdentifier)
  {
    [v4 setObject:operationalAnalyticsIdentifier forKey:@"operationalAnalyticsIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_merchantIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nonce)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_retryNonce)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_initiativeContext)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_initiative)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_signedFields;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_ampEnrollmentPinning)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_operationalAnalyticsIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_merchantIdentifier)
  {
    [v4 setMerchantIdentifier:?];
    v4 = v10;
  }

  if (self->_sessionIdentifier)
  {
    [v10 setSessionIdentifier:?];
    v4 = v10;
  }

  if (self->_nonce)
  {
    [v10 setNonce:?];
    v4 = v10;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_epochTimestamp;
    *(v4 + 120) |= 1u;
  }

  if (self->_domain)
  {
    [v10 setDomain:?];
    v4 = v10;
  }

  if (self->_displayName)
  {
    [v10 setDisplayName:?];
    v4 = v10;
  }

  if (self->_signature)
  {
    [v10 setSignature:?];
    v4 = v10;
  }

  if (self->_retryNonce)
  {
    [v10 setRetryNonce:?];
    v4 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_expiresAt;
    *(v4 + 120) |= 2u;
  }

  if (self->_initiativeContext)
  {
    [v10 setInitiativeContext:?];
  }

  if (self->_initiative)
  {
    [v10 setInitiative:?];
  }

  if ([(PKProtobufPaymentMerchantSession *)self signedFieldsCount])
  {
    [v10 clearSignedFields];
    v5 = [(PKProtobufPaymentMerchantSession *)self signedFieldsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PKProtobufPaymentMerchantSession *)self signedFieldsAtIndex:i];
        [v10 addSignedFields:v8];
      }
    }
  }

  if (self->_ampEnrollmentPinning)
  {
    [v10 setAmpEnrollmentPinning:?];
  }

  v9 = v10;
  if (self->_operationalAnalyticsIdentifier)
  {
    [v10 setOperationalAnalyticsIdentifier:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_merchantIdentifier copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  v9 = *(v5 + 96);
  *(v5 + 96) = v8;

  v10 = [(NSString *)self->_nonce copyWithZone:a3];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_epochTimestamp;
    *(v5 + 120) |= 1u;
  }

  v12 = [(NSString *)self->_domain copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_displayName copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSData *)self->_signature copyWithZone:a3];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  v18 = [(NSString *)self->_retryNonce copyWithZone:a3];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_expiresAt;
    *(v5 + 120) |= 2u;
  }

  v20 = [(NSString *)self->_initiativeContext copyWithZone:a3];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  v22 = [(NSString *)self->_initiative copyWithZone:a3];
  v23 = *(v5 + 48);
  *(v5 + 48) = v22;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = self->_signedFields;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v36;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v35 + 1) + 8 * i) copyWithZone:{a3, v35}];
        [v5 addSignedFields:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v26);
  }

  v30 = [(NSData *)self->_ampEnrollmentPinning copyWithZone:a3];
  v31 = *(v5 + 24);
  *(v5 + 24) = v30;

  v32 = [(NSString *)self->_operationalAnalyticsIdentifier copyWithZone:a3];
  v33 = *(v5 + 80);
  *(v5 + 80) = v32;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier | *(v4 + 8))
  {
    if (![(NSString *)merchantIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(v4 + 12))
  {
    if (![(NSString *)sessionIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  nonce = self->_nonce;
  if (nonce | *(v4 + 9))
  {
    if (![(NSString *)nonce isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 120) & 1) == 0 || self->_epochTimestamp != *(v4 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 120))
  {
LABEL_36:
    v17 = 0;
    goto LABEL_37;
  }

  domain = self->_domain;
  if (domain | *(v4 + 5) && ![(NSString *)domain isEqual:?])
  {
    goto LABEL_36;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 4))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_36;
    }
  }

  signature = self->_signature;
  if (signature | *(v4 + 13))
  {
    if (![(NSData *)signature isEqual:?])
    {
      goto LABEL_36;
    }
  }

  retryNonce = self->_retryNonce;
  if (retryNonce | *(v4 + 11))
  {
    if (![(NSString *)retryNonce isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 120) & 2) == 0 || self->_expiresAt != *(v4 + 2))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 120) & 2) != 0)
  {
    goto LABEL_36;
  }

  initiativeContext = self->_initiativeContext;
  if (initiativeContext | *(v4 + 7) && ![(NSString *)initiativeContext isEqual:?])
  {
    goto LABEL_36;
  }

  initiative = self->_initiative;
  if (initiative | *(v4 + 6))
  {
    if (![(NSString *)initiative isEqual:?])
    {
      goto LABEL_36;
    }
  }

  signedFields = self->_signedFields;
  if (signedFields | *(v4 + 14))
  {
    if (![(NSMutableArray *)signedFields isEqual:?])
    {
      goto LABEL_36;
    }
  }

  ampEnrollmentPinning = self->_ampEnrollmentPinning;
  if (ampEnrollmentPinning | *(v4 + 3))
  {
    if (![(NSData *)ampEnrollmentPinning isEqual:?])
    {
      goto LABEL_36;
    }
  }

  operationalAnalyticsIdentifier = self->_operationalAnalyticsIdentifier;
  if (operationalAnalyticsIdentifier | *(v4 + 10))
  {
    v17 = [(NSString *)operationalAnalyticsIdentifier isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_37:

  return v17;
}

- (unint64_t)hash
{
  v17 = [(NSString *)self->_merchantIdentifier hash];
  v3 = [(NSString *)self->_sessionIdentifier hash];
  v4 = [(NSString *)self->_nonce hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_epochTimestamp;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_domain hash];
  v7 = [(NSString *)self->_displayName hash];
  v8 = [(NSData *)self->_signature hash];
  v9 = [(NSString *)self->_retryNonce hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761u * self->_expiresAt;
  }

  else
  {
    v10 = 0;
  }

  v11 = v3 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  v12 = v9 ^ v10 ^ [(NSString *)self->_initiativeContext hash];
  v13 = v11 ^ v12 ^ [(NSString *)self->_initiative hash];
  v14 = [(NSMutableArray *)self->_signedFields hash];
  v15 = v14 ^ [(NSData *)self->_ampEnrollmentPinning hash];
  return v13 ^ v15 ^ [(NSString *)self->_operationalAnalyticsIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 8))
  {
    [(PKProtobufPaymentMerchantSession *)self setMerchantIdentifier:?];
  }

  if (*(v4 + 12))
  {
    [(PKProtobufPaymentMerchantSession *)self setSessionIdentifier:?];
  }

  if (*(v4 + 9))
  {
    [(PKProtobufPaymentMerchantSession *)self setNonce:?];
  }

  if (*(v4 + 120))
  {
    self->_epochTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(PKProtobufPaymentMerchantSession *)self setDomain:?];
  }

  if (*(v4 + 4))
  {
    [(PKProtobufPaymentMerchantSession *)self setDisplayName:?];
  }

  if (*(v4 + 13))
  {
    [(PKProtobufPaymentMerchantSession *)self setSignature:?];
  }

  if (*(v4 + 11))
  {
    [(PKProtobufPaymentMerchantSession *)self setRetryNonce:?];
  }

  if ((*(v4 + 120) & 2) != 0)
  {
    self->_expiresAt = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 7))
  {
    [(PKProtobufPaymentMerchantSession *)self setInitiativeContext:?];
  }

  if (*(v4 + 6))
  {
    [(PKProtobufPaymentMerchantSession *)self setInitiative:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 14);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKProtobufPaymentMerchantSession *)self addSignedFields:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 3))
  {
    [(PKProtobufPaymentMerchantSession *)self setAmpEnrollmentPinning:?];
  }

  if (*(v4 + 10))
  {
    [(PKProtobufPaymentMerchantSession *)self setOperationalAnalyticsIdentifier:?];
  }
}

@end