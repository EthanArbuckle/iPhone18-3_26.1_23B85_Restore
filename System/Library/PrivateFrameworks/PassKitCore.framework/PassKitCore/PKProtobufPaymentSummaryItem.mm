@interface PKProtobufPaymentSummaryItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPaymentSummaryItem

- (void)setHasType:(BOOL)type
{
  if (type)
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
  dictionaryRepresentation = [(PKProtobufPaymentSummaryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
    [dictionary setObject:v4 forKey:@"amount"];
  }

  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_type];
    [dictionary setObject:v6 forKey:@"type"];
  }

  recurringPaymentSummaryItem = self->_recurringPaymentSummaryItem;
  if (recurringPaymentSummaryItem)
  {
    dictionaryRepresentation = [(PKProtobufRecurringPaymentSummaryItem *)recurringPaymentSummaryItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"recurringPaymentSummaryItem"];
  }

  deferredPaymentSummaryItem = self->_deferredPaymentSummaryItem;
  if (deferredPaymentSummaryItem)
  {
    dictionaryRepresentation2 = [(PKProtobufDeferredPaymentSummaryItem *)deferredPaymentSummaryItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"deferredPaymentSummaryItem"];
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount)
  {
    dictionaryRepresentation3 = [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"custom_precision_amount"];
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount)
  {
    dictionaryRepresentation4 = [(PKProtobufNSDecimalNumber *)decimalAmount dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"decimal_amount"];
  }

  shippingMethodSummaryItem = self->_shippingMethodSummaryItem;
  if (shippingMethodSummaryItem)
  {
    dictionaryRepresentation5 = [(PKProtobufShippingMethod *)shippingMethodSummaryItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"shippingMethodSummaryItem"];
  }

  automaticReloadPaymentSummaryItem = self->_automaticReloadPaymentSummaryItem;
  if (automaticReloadPaymentSummaryItem)
  {
    dictionaryRepresentation6 = [(PKProtobufAutomaticReloadPaymentSummaryItem *)automaticReloadPaymentSummaryItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"automaticReloadPaymentSummaryItem"];
  }

  disbursementSummaryItem = self->_disbursementSummaryItem;
  if (disbursementSummaryItem)
  {
    dictionaryRepresentation7 = [(PKProtobufDisbursementSummaryItem *)disbursementSummaryItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"disbursementSummaryItem"];
  }

  instantFundsOutFeeSummaryItem = self->_instantFundsOutFeeSummaryItem;
  if (instantFundsOutFeeSummaryItem)
  {
    dictionaryRepresentation8 = [(PKProtobufInstantFundsOutFeeSummaryItem *)instantFundsOutFeeSummaryItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"instantFundsOutFeeSummaryItem"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteSint64Field();
    toCopy = v5;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_recurringPaymentSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_deferredPaymentSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_customPrecisionAmount)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_shippingMethodSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_automaticReloadPaymentSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_decimalAmount)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_disbursementSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_instantFundsOutFeeSummaryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_amount;
    *(toCopy + 92) |= 1u;
  }

  v5 = toCopy;
  if (self->_label)
  {
    [toCopy setLabel:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 22) = self->_type;
    *(toCopy + 92) |= 2u;
  }

  if (self->_recurringPaymentSummaryItem)
  {
    [v5 setRecurringPaymentSummaryItem:?];
    toCopy = v5;
  }

  if (self->_deferredPaymentSummaryItem)
  {
    [v5 setDeferredPaymentSummaryItem:?];
    toCopy = v5;
  }

  if (self->_customPrecisionAmount)
  {
    [v5 setCustomPrecisionAmount:?];
    toCopy = v5;
  }

  if (self->_shippingMethodSummaryItem)
  {
    [v5 setShippingMethodSummaryItem:?];
    toCopy = v5;
  }

  if (self->_automaticReloadPaymentSummaryItem)
  {
    [v5 setAutomaticReloadPaymentSummaryItem:?];
    toCopy = v5;
  }

  if (self->_decimalAmount)
  {
    [v5 setDecimalAmount:?];
    toCopy = v5;
  }

  if (self->_disbursementSummaryItem)
  {
    [v5 setDisbursementSummaryItem:?];
    toCopy = v5;
  }

  if (self->_instantFundsOutFeeSummaryItem)
  {
    [v5 setInstantFundsOutFeeSummaryItem:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_amount;
    *(v5 + 92) |= 1u;
  }

  v7 = [(NSString *)self->_label copyWithZone:zone];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 88) = self->_type;
    *(v6 + 92) |= 2u;
  }

  v9 = [(PKProtobufRecurringPaymentSummaryItem *)self->_recurringPaymentSummaryItem copyWithZone:zone];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  v11 = [(PKProtobufDeferredPaymentSummaryItem *)self->_deferredPaymentSummaryItem copyWithZone:zone];
  v12 = *(v6 + 40);
  *(v6 + 40) = v11;

  v13 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount copyWithZone:zone];
  v14 = *(v6 + 24);
  *(v6 + 24) = v13;

  v15 = [(PKProtobufShippingMethod *)self->_shippingMethodSummaryItem copyWithZone:zone];
  v16 = *(v6 + 80);
  *(v6 + 80) = v15;

  v17 = [(PKProtobufAutomaticReloadPaymentSummaryItem *)self->_automaticReloadPaymentSummaryItem copyWithZone:zone];
  v18 = *(v6 + 16);
  *(v6 + 16) = v17;

  v19 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount copyWithZone:zone];
  v20 = *(v6 + 32);
  *(v6 + 32) = v19;

  v21 = [(PKProtobufDisbursementSummaryItem *)self->_disbursementSummaryItem copyWithZone:zone];
  v22 = *(v6 + 48);
  *(v6 + 48) = v21;

  v23 = [(PKProtobufInstantFundsOutFeeSummaryItem *)self->_instantFundsOutFeeSummaryItem copyWithZone:zone];
  v24 = *(v6 + 56);
  *(v6 + 56) = v23;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  has = self->_has;
  v6 = *(equalCopy + 92);
  if (has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_amount != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_31;
  }

  label = self->_label;
  if (label | *(equalCopy + 8))
  {
    if (![(NSString *)label isEqual:?])
    {
LABEL_31:
      v16 = 0;
      goto LABEL_32;
    }

    has = self->_has;
    v6 = *(equalCopy + 92);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_type != *(equalCopy + 22))
    {
      goto LABEL_31;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_31;
  }

  recurringPaymentSummaryItem = self->_recurringPaymentSummaryItem;
  if (recurringPaymentSummaryItem | *(equalCopy + 9) && ![(PKProtobufRecurringPaymentSummaryItem *)recurringPaymentSummaryItem isEqual:?])
  {
    goto LABEL_31;
  }

  deferredPaymentSummaryItem = self->_deferredPaymentSummaryItem;
  if (deferredPaymentSummaryItem | *(equalCopy + 5))
  {
    if (![(PKProtobufDeferredPaymentSummaryItem *)deferredPaymentSummaryItem isEqual:?])
    {
      goto LABEL_31;
    }
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount | *(equalCopy + 3))
  {
    if (![(PKProtobufCustomPrecisionAmount *)customPrecisionAmount isEqual:?])
    {
      goto LABEL_31;
    }
  }

  shippingMethodSummaryItem = self->_shippingMethodSummaryItem;
  if (shippingMethodSummaryItem | *(equalCopy + 10))
  {
    if (![(PKProtobufShippingMethod *)shippingMethodSummaryItem isEqual:?])
    {
      goto LABEL_31;
    }
  }

  automaticReloadPaymentSummaryItem = self->_automaticReloadPaymentSummaryItem;
  if (automaticReloadPaymentSummaryItem | *(equalCopy + 2))
  {
    if (![(PKProtobufAutomaticReloadPaymentSummaryItem *)automaticReloadPaymentSummaryItem isEqual:?])
    {
      goto LABEL_31;
    }
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount | *(equalCopy + 4))
  {
    if (![(PKProtobufNSDecimalNumber *)decimalAmount isEqual:?])
    {
      goto LABEL_31;
    }
  }

  disbursementSummaryItem = self->_disbursementSummaryItem;
  if (disbursementSummaryItem | *(equalCopy + 6))
  {
    if (![(PKProtobufDisbursementSummaryItem *)disbursementSummaryItem isEqual:?])
    {
      goto LABEL_31;
    }
  }

  instantFundsOutFeeSummaryItem = self->_instantFundsOutFeeSummaryItem;
  if (instantFundsOutFeeSummaryItem | *(equalCopy + 7))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 92))
  {
    self->_amount = fromCopy[1];
    *&self->_has |= 1u;
  }

  v22 = fromCopy;
  if (fromCopy[8])
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