@interface PKProtobufPaymentDeviceResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)nearbyAsString:(int)a3;
- (int)StringAsNearby:(id)a3;
- (int)nearby;
- (unint64_t)hash;
- (void)addPaymentInstruments:(id)a3;
- (void)addSupportedSetupFeatures:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeviceDisabled:(BOOL)a3;
- (void)setHasLocked:(BOOL)a3;
- (void)setHasNearby:(BOOL)a3;
- (void)setHasProtocolVersion:(BOOL)a3;
- (void)setHasSupportsFaceID:(BOOL)a3;
- (void)setHasUserDisabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentDeviceResponse

- (void)setHasLocked:(BOOL)a3
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

- (void)addPaymentInstruments:(id)a3
{
  v4 = a3;
  paymentInstruments = self->_paymentInstruments;
  v8 = v4;
  if (!paymentInstruments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_paymentInstruments;
    self->_paymentInstruments = v6;

    v4 = v8;
    paymentInstruments = self->_paymentInstruments;
  }

  [(NSMutableArray *)paymentInstruments addObject:v4];
}

- (void)setHasUserDisabled:(BOOL)a3
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

- (void)setHasDeviceDisabled:(BOOL)a3
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

- (int)nearby
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_nearby;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNearby:(BOOL)a3
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

- (id)nearbyAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79CFB80[a3];
  }

  return v4;
}

- (int)StringAsNearby:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NEARBY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DISTANT"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProtocolVersion:(BOOL)a3
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

- (void)setHasSupportsFaceID:(BOOL)a3
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

- (void)addSupportedSetupFeatures:(id)a3
{
  v4 = a3;
  supportedSetupFeatures = self->_supportedSetupFeatures;
  v8 = v4;
  if (!supportedSetupFeatures)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_supportedSetupFeatures;
    self->_supportedSetupFeatures = v6;

    v4 = v8;
    supportedSetupFeatures = self->_supportedSetupFeatures;
  }

  [(NSMutableArray *)supportedSetupFeatures addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentDeviceResponse;
  v4 = [(PKProtobufPaymentDeviceResponse *)&v8 description];
  v5 = [(PKProtobufPaymentDeviceResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_locked];
    [v3 setObject:v4 forKey:@"locked"];
  }

  if ([(NSMutableArray *)self->_paymentInstruments count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_paymentInstruments, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = self->_paymentInstruments;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"paymentInstruments"];
  }

  has = self->_has;
  if (has)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_defaultPaymentInstrumentIndex];
    [v3 setObject:v22 forKey:@"defaultPaymentInstrumentIndex"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_14:
      if ((has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_14;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_userDisabled];
  [v3 setObject:v23 forKey:@"userDisabled"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_deviceDisabled];
  [v3 setObject:v24 forKey:@"deviceDisabled"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_16:
    if ((has & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_34:
  nearby = self->_nearby;
  if (nearby >= 3)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_nearby];
  }

  else
  {
    v26 = off_1E79CFB80[nearby];
  }

  [v3 setObject:v26 forKey:@"nearby"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_17:
    if ((has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_38:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_protocolVersion];
  [v3 setObject:v27 forKey:@"protocolVersion"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_18:
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsFaceID];
    [v3 setObject:v13 forKey:@"supportsFaceID"];
  }

LABEL_19:
  if ([(NSMutableArray *)self->_supportedSetupFeatures count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_supportedSetupFeatures, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = self->_supportedSetupFeatures;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v28 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"supportedSetupFeatures"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_paymentInstruments;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_12;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_16:
    PBDataWriterWriteBOOLField();
  }

LABEL_17:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_supportedSetupFeatures;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x10) != 0)
  {
    v4[41] = self->_locked;
    v4[44] |= 0x10u;
  }

  v14 = v4;
  if ([(PKProtobufPaymentDeviceResponse *)self paymentInstrumentsCount])
  {
    [v14 clearPaymentInstruments];
    v5 = [(PKProtobufPaymentDeviceResponse *)self paymentInstrumentsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PKProtobufPaymentDeviceResponse *)self paymentInstrumentsAtIndex:i];
        [v14 addPaymentInstruments:v8];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v14 + 2) = self->_defaultPaymentInstrumentIndex;
    *(v14 + 44) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  *(v14 + 43) = self->_userDisabled;
  *(v14 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v14 + 40) = self->_deviceDisabled;
  *(v14 + 44) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    *(v14 + 6) = self->_protocolVersion;
    *(v14 + 44) |= 4u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  *(v14 + 3) = self->_nearby;
  *(v14 + 44) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((has & 0x20) != 0)
  {
LABEL_13:
    *(v14 + 42) = self->_supportsFaceID;
    *(v14 + 44) |= 0x20u;
  }

LABEL_14:
  if ([(PKProtobufPaymentDeviceResponse *)self supportedSetupFeaturesCount])
  {
    [v14 clearSupportedSetupFeatures];
    v10 = [(PKProtobufPaymentDeviceResponse *)self supportedSetupFeaturesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PKProtobufPaymentDeviceResponse *)self supportedSetupFeaturesAtIndex:j];
        [v14 addSupportedSetupFeatures:v13];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 41) = self->_locked;
    *(v5 + 44) |= 0x10u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_paymentInstruments;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v25 + 1) + 8 * i) copyWithZone:a3];
        [v6 addPaymentInstruments:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_defaultPaymentInstrumentIndex;
    *(v6 + 44) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 43) = self->_userDisabled;
  *(v6 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 40) = self->_deviceDisabled;
  *(v6 + 44) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 12) = self->_nearby;
  *(v6 + 44) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  *(v6 + 24) = self->_protocolVersion;
  *(v6 + 44) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_16:
    *(v6 + 42) = self->_supportsFaceID;
    *(v6 + 44) |= 0x20u;
  }

LABEL_17:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_supportedSetupFeatures;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * j) copyWithZone:{a3, v21}];
        [v6 addSupportedSetupFeatures:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0)
    {
      goto LABEL_49;
    }

    if (self->_locked)
    {
      if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(v4 + 41))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 44) & 0x10) != 0)
  {
    goto LABEL_49;
  }

  paymentInstruments = self->_paymentInstruments;
  if (paymentInstruments | *(v4 + 2))
  {
    if (![(NSMutableArray *)paymentInstruments isEqual:?])
    {
      goto LABEL_49;
    }

    has = self->_has;
    v6 = *(v4 + 44);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_defaultPaymentInstrumentIndex != *(v4 + 2))
    {
      goto LABEL_49;
    }
  }

  else if (v6)
  {
    goto LABEL_49;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    if (self->_userDisabled)
    {
      if ((*(v4 + 43) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(v4 + 43))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_49;
    }

    if (self->_deviceDisabled)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_nearby != *(v4 + 3))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_protocolVersion != *(v4 + 6))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x20) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    v9 = 0;
    goto LABEL_50;
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_49;
  }

  if (self->_supportsFaceID)
  {
    if ((*(v4 + 42) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 42))
  {
    goto LABEL_49;
  }

LABEL_46:
  supportedSetupFeatures = self->_supportedSetupFeatures;
  if (supportedSetupFeatures | *(v4 + 4))
  {
    v9 = [(NSMutableArray *)supportedSetupFeatures isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_50:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_locked;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_paymentInstruments hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_defaultPaymentInstrumentIndex;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_userDisabled;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_deviceDisabled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v8 = 2654435761 * self->_nearby;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v9 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSMutableArray *)self->_supportedSetupFeatures hash];
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v9 = 2654435761 * self->_protocolVersion;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v10 = 2654435761 * self->_supportsFaceID;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSMutableArray *)self->_supportedSetupFeatures hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 44) & 0x10) != 0)
  {
    self->_locked = *(v4 + 41);
    *&self->_has |= 0x10u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PKProtobufPaymentDeviceResponse *)self addPaymentInstruments:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 44);
  if (v11)
  {
    self->_defaultPaymentInstrumentIndex = *(v5 + 2);
    *&self->_has |= 1u;
    v11 = *(v5 + 44);
    if ((v11 & 0x40) == 0)
    {
LABEL_12:
      if ((v11 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v5 + 44) & 0x40) == 0)
  {
    goto LABEL_12;
  }

  self->_userDisabled = *(v5 + 43);
  *&self->_has |= 0x40u;
  v11 = *(v5 + 44);
  if ((v11 & 8) == 0)
  {
LABEL_13:
    if ((v11 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_deviceDisabled = *(v5 + 40);
  *&self->_has |= 8u;
  v11 = *(v5 + 44);
  if ((v11 & 2) == 0)
  {
LABEL_14:
    if ((v11 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_nearby = *(v5 + 3);
  *&self->_has |= 2u;
  v11 = *(v5 + 44);
  if ((v11 & 4) == 0)
  {
LABEL_15:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  self->_protocolVersion = *(v5 + 6);
  *&self->_has |= 4u;
  if ((*(v5 + 44) & 0x20) != 0)
  {
LABEL_16:
    self->_supportsFaceID = *(v5 + 42);
    *&self->_has |= 0x20u;
  }

LABEL_17:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(v5 + 4);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PKProtobufPaymentDeviceResponse *)self addSupportedSetupFeatures:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

@end