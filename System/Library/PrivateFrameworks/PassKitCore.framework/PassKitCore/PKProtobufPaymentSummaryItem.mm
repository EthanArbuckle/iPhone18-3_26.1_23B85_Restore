@interface PKProtobufPaymentSummaryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentSummaryItem

- (void)setHasType:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentSummaryItem;
  v4 = [(PKProtobufPaymentSummaryItem *)&v8 description];
  v5 = [(PKProtobufPaymentSummaryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
    [v3 setObject:v4 forKey:@"amount"];
  }

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  recurringPaymentSummaryItem = self->_recurringPaymentSummaryItem;
  if (recurringPaymentSummaryItem)
  {
    v8 = [(PKProtobufRecurringPaymentSummaryItem *)recurringPaymentSummaryItem dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"recurringPaymentSummaryItem"];
  }

  deferredPaymentSummaryItem = self->_deferredPaymentSummaryItem;
  if (deferredPaymentSummaryItem)
  {
    v10 = [(PKProtobufDeferredPaymentSummaryItem *)deferredPaymentSummaryItem dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"deferredPaymentSummaryItem"];
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount)
  {
    v12 = [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"custom_precision_amount"];
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount)
  {
    v14 = [(PKProtobufNSDecimalNumber *)decimalAmount dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"decimal_amount"];
  }

  shippingMethodSummaryItem = self->_shippingMethodSummaryItem;
  if (shippingMethodSummaryItem)
  {
    v16 = [(PKProtobufShippingMethod *)shippingMethodSummaryItem dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"shippingMethodSummaryItem"];
  }

  automaticReloadPaymentSummaryItem = self->_automaticReloadPaymentSummaryItem;
  if (automaticReloadPaymentSummaryItem)
  {
    v18 = [(PKProtobufAutomaticReloadPaymentSummaryItem *)automaticReloadPaymentSummaryItem dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"automaticReloadPaymentSummaryItem"];
  }

  disbursementSummaryItem = self->_disbursementSummaryItem;
  if (disbursementSummaryItem)
  {
    v20 = [(PKProtobufDisbursementSummaryItem *)disbursementSummaryItem dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"disbursementSummaryItem"];
  }

  instantFundsOutFeeSummaryItem = self->_instantFundsOutFeeSummaryItem;
  if (instantFundsOutFeeSummaryItem)
  {
    v22 = [(PKProtobufInstantFundsOutFeeSummaryItem *)instantFundsOutFeeSummaryItem dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"instantFundsOutFeeSummaryItem"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteSint64Field();
    v4 = v5;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }

  if (self->_recurringPaymentSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_deferredPaymentSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_customPrecisionAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_shippingMethodSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_automaticReloadPaymentSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_decimalAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_disbursementSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_instantFundsOutFeeSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_amount;
    *(v4 + 92) |= 1u;
  }

  v5 = v4;
  if (self->_label)
  {
    [v4 setLabel:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 22) = self->_type;
    *(v4 + 92) |= 2u;
  }

  if (self->_recurringPaymentSummaryItem)
  {
    [v5 setRecurringPaymentSummaryItem:?];
    v4 = v5;
  }

  if (self->_deferredPaymentSummaryItem)
  {
    [v5 setDeferredPaymentSummaryItem:?];
    v4 = v5;
  }

  if (self->_customPrecisionAmount)
  {
    [v5 setCustomPrecisionAmount:?];
    v4 = v5;
  }

  if (self->_shippingMethodSummaryItem)
  {
    [v5 setShippingMethodSummaryItem:?];
    v4 = v5;
  }

  if (self->_automaticReloadPaymentSummaryItem)
  {
    [v5 setAutomaticReloadPaymentSummaryItem:?];
    v4 = v5;
  }

  if (self->_decimalAmount)
  {
    [v5 setDecimalAmount:?];
    v4 = v5;
  }

  if (self->_disbursementSummaryItem)
  {
    [v5 setDisbursementSummaryItem:?];
    v4 = v5;
  }

  if (self->_instantFundsOutFeeSummaryItem)
  {
    [v5 setInstantFundsOutFeeSummaryItem:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_amount;
    *(v5 + 92) |= 1u;
  }

  v7 = [(NSString *)self->_label copyWithZone:a3];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 88) = self->_type;
    *(v6 + 92) |= 2u;
  }

  v9 = [(PKProtobufRecurringPaymentSummaryItem *)self->_recurringPaymentSummaryItem copyWithZone:a3];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  v11 = [(PKProtobufDeferredPaymentSummaryItem *)self->_deferredPaymentSummaryItem copyWithZone:a3];
  v12 = *(v6 + 40);
  *(v6 + 40) = v11;

  v13 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount copyWithZone:a3];
  v14 = *(v6 + 24);
  *(v6 + 24) = v13;

  v15 = [(PKProtobufShippingMethod *)self->_shippingMethodSummaryItem copyWithZone:a3];
  v16 = *(v6 + 80);
  *(v6 + 80) = v15;

  v17 = [(PKProtobufAutomaticReloadPaymentSummaryItem *)self->_automaticReloadPaymentSummaryItem copyWithZone:a3];
  v18 = *(v6 + 16);
  *(v6 + 16) = v17;

  v19 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount copyWithZone:a3];
  v20 = *(v6 + 32);
  *(v6 + 32) = v19;

  v21 = [(PKProtobufDisbursementSummaryItem *)self->_disbursementSummaryItem copyWithZone:a3];
  v22 = *(v6 + 48);
  *(v6 + 48) = v21;

  v23 = [(PKProtobufInstantFundsOutFeeSummaryItem *)self->_instantFundsOutFeeSummaryItem copyWithZone:a3];
  v24 = *(v6 + 56);
  *(v6 + 56) = v23;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  has = self->_has;
  v6 = *(v4 + 92);
  if (has)
  {
    if ((*(v4 + 92) & 1) == 0 || self->_amount != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 92))
  {
    goto LABEL_31;
  }

  label = self->_label;
  if (label | *(v4 + 8))
  {
    if (![(NSString *)label isEqual:?])
    {
LABEL_31:
      v16 = 0;
      goto LABEL_32;
    }

    has = self->_has;
    v6 = *(v4 + 92);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_type != *(v4 + 22))
    {
      goto LABEL_31;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_31;
  }

  recurringPaymentSummaryItem = self->_recurringPaymentSummaryItem;
  if (recurringPaymentSummaryItem | *(v4 + 9) && ![(PKProtobufRecurringPaymentSummaryItem *)recurringPaymentSummaryItem isEqual:?])
  {
    goto LABEL_31;
  }

  deferredPaymentSummaryItem = self->_deferredPaymentSummaryItem;
  if (deferredPaymentSummaryItem | *(v4 + 5))
  {
    if (![(PKProtobufDeferredPaymentSummaryItem *)deferredPaymentSummaryItem isEqual:?])
    {
      goto LABEL_31;
    }
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount | *(v4 + 3))
  {
    if (![(PKProtobufCustomPrecisionAmount *)customPrecisionAmount isEqual:?])
    {
      goto LABEL_31;
    }
  }

  shippingMethodSummaryItem = self->_shippingMethodSummaryItem;
  if (shippingMethodSummaryItem | *(v4 + 10))
  {
    if (![(PKProtobufShippingMethod *)shippingMethodSummaryItem isEqual:?])
    {
      goto LABEL_31;
    }
  }

  automaticReloadPaymentSummaryItem = self->_automaticReloadPaymentSummaryItem;
  if (automaticReloadPaymentSummaryItem | *(v4 + 2))
  {
    if (![(PKProtobufAutomaticReloadPaymentSummaryItem *)automaticReloadPaymentSummaryItem isEqual:?])
    {
      goto LABEL_31;
    }
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount | *(v4 + 4))
  {
    if (![(PKProtobufNSDecimalNumber *)decimalAmount isEqual:?])
    {
      goto LABEL_31;
    }
  }

  disbursementSummaryItem = self->_disbursementSummaryItem;
  if (disbursementSummaryItem | *(v4 + 6))
  {
    if (![(PKProtobufDisbursementSummaryItem *)disbursementSummaryItem isEqual:?])
    {
      goto LABEL_31;
    }
  }

  instantFundsOutFeeSummaryItem = self->_instantFundsOutFeeSummaryItem;
  if (instantFundsOutFeeSummaryItem | *(v4 + 7))
  {
    v16 = [(PKProtobufInstantFundsOutFeeSummaryItem *)instantFundsOutFeeSummaryItem isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_32:

  return v16;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_amount;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_label hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5;
  v7 = [(PKProtobufRecurringPaymentSummaryItem *)self->_recurringPaymentSummaryItem hash];
  v8 = v6 ^ v7 ^ [(PKProtobufDeferredPaymentSummaryItem *)self->_deferredPaymentSummaryItem hash];
  v9 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount hash];
  v10 = v9 ^ [(PKProtobufShippingMethod *)self->_shippingMethodSummaryItem hash];
  v11 = v8 ^ v10 ^ [(PKProtobufAutomaticReloadPaymentSummaryItem *)self->_automaticReloadPaymentSummaryItem hash];
  v12 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount hash];
  v13 = v12 ^ [(PKProtobufDisbursementSummaryItem *)self->_disbursementSummaryItem hash];
  return v11 ^ v13 ^ [(PKProtobufInstantFundsOutFeeSummaryItem *)self->_instantFundsOutFeeSummaryItem hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 92))
  {
    self->_amount = v4[1];
    *&self->_has |= 1u;
  }

  v22 = v4;
  if (v4[8])
  {
    [(PKProtobufPaymentSummaryItem *)self setLabel:?];
    v5 = v22;
  }

  if ((v5[23] & 2) != 0)
  {
    self->_type = v5[22];
    *&self->_has |= 2u;
  }

  recurringPaymentSummaryItem = self->_recurringPaymentSummaryItem;
  v7 = *(v5 + 9);
  if (recurringPaymentSummaryItem)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(PKProtobufRecurringPaymentSummaryItem *)recurringPaymentSummaryItem mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(PKProtobufPaymentSummaryItem *)self setRecurringPaymentSummaryItem:?];
  }

  v5 = v22;
LABEL_13:
  deferredPaymentSummaryItem = self->_deferredPaymentSummaryItem;
  v9 = *(v5 + 5);
  if (deferredPaymentSummaryItem)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(PKProtobufDeferredPaymentSummaryItem *)deferredPaymentSummaryItem mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(PKProtobufPaymentSummaryItem *)self setDeferredPaymentSummaryItem:?];
  }

  v5 = v22;
LABEL_19:
  customPrecisionAmount = self->_customPrecisionAmount;
  v11 = *(v5 + 3);
  if (customPrecisionAmount)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    [(PKProtobufPaymentSummaryItem *)self setCustomPrecisionAmount:?];
  }

  v5 = v22;
LABEL_25:
  shippingMethodSummaryItem = self->_shippingMethodSummaryItem;
  v13 = *(v5 + 10);
  if (shippingMethodSummaryItem)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    [(PKProtobufShippingMethod *)shippingMethodSummaryItem mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    [(PKProtobufPaymentSummaryItem *)self setShippingMethodSummaryItem:?];
  }

  v5 = v22;
LABEL_31:
  automaticReloadPaymentSummaryItem = self->_automaticReloadPaymentSummaryItem;
  v15 = *(v5 + 2);
  if (automaticReloadPaymentSummaryItem)
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    [(PKProtobufAutomaticReloadPaymentSummaryItem *)automaticReloadPaymentSummaryItem mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    [(PKProtobufPaymentSummaryItem *)self setAutomaticReloadPaymentSummaryItem:?];
  }

  v5 = v22;
LABEL_37:
  decimalAmount = self->_decimalAmount;
  v17 = *(v5 + 4);
  if (decimalAmount)
  {
    if (!v17)
    {
      goto LABEL_43;
    }

    [(PKProtobufNSDecimalNumber *)decimalAmount mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_43;
    }

    [(PKProtobufPaymentSummaryItem *)self setDecimalAmount:?];
  }

  v5 = v22;
LABEL_43:
  disbursementSummaryItem = self->_disbursementSummaryItem;
  v19 = *(v5 + 6);
  if (disbursementSummaryItem)
  {
    if (!v19)
    {
      goto LABEL_49;
    }

    [(PKProtobufDisbursementSummaryItem *)disbursementSummaryItem mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_49;
    }

    [(PKProtobufPaymentSummaryItem *)self setDisbursementSummaryItem:?];
  }

  v5 = v22;
LABEL_49:
  instantFundsOutFeeSummaryItem = self->_instantFundsOutFeeSummaryItem;
  v21 = *(v5 + 7);
  if (instantFundsOutFeeSummaryItem)
  {
    if (!v21)
    {
      goto LABEL_55;
    }

    [(PKProtobufInstantFundsOutFeeSummaryItem *)instantFundsOutFeeSummaryItem mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_55;
    }

    [(PKProtobufPaymentSummaryItem *)self setInstantFundsOutFeeSummaryItem:?];
  }

  v5 = v22;
LABEL_55:
}

@end