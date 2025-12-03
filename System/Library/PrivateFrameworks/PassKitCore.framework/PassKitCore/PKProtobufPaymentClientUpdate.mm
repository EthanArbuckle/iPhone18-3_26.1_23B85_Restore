@interface PKProtobufPaymentClientUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMultiTokenContexts:(id)contexts;
- (void)addPaymentSummaryItems:(id)items;
- (void)addShippingMethods:(id)methods;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPaymentClientUpdate

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addPaymentSummaryItems:(id)items
{
  itemsCopy = items;
  paymentSummaryItems = self->_paymentSummaryItems;
  v8 = itemsCopy;
  if (!paymentSummaryItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_paymentSummaryItems;
    self->_paymentSummaryItems = v6;

    itemsCopy = v8;
    paymentSummaryItems = self->_paymentSummaryItems;
  }

  [(NSMutableArray *)paymentSummaryItems addObject:itemsCopy];
}

- (void)addShippingMethods:(id)methods
{
  methodsCopy = methods;
  shippingMethods = self->_shippingMethods;
  v8 = methodsCopy;
  if (!shippingMethods)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_shippingMethods;
    self->_shippingMethods = v6;

    methodsCopy = v8;
    shippingMethods = self->_shippingMethods;
  }

  [(NSMutableArray *)shippingMethods addObject:methodsCopy];
}

- (void)addMultiTokenContexts:(id)contexts
{
  contextsCopy = contexts;
  multiTokenContexts = self->_multiTokenContexts;
  v8 = contextsCopy;
  if (!multiTokenContexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_multiTokenContexts;
    self->_multiTokenContexts = v6;

    contextsCopy = v8;
    multiTokenContexts = self->_multiTokenContexts;
  }

  [(NSMutableArray *)multiTokenContexts addObject:contextsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentClientUpdate;
  v4 = [(PKProtobufPaymentClientUpdate *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPaymentClientUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v54 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
  if (remotePaymentRequestIdentifier)
  {
    [dictionary setObject:remotePaymentRequestIdentifier forKey:@"remotePaymentRequestIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_status];
    [v4 setObject:v6 forKey:@"status"];
  }

  if ([(NSMutableArray *)self->_paymentSummaryItems count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_paymentSummaryItems, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = self->_paymentSummaryItems;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"paymentSummaryItems"];
  }

  if ([(NSMutableArray *)self->_shippingMethods count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_shippingMethods, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = self->_shippingMethods;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"shippingMethods"];
  }

  selectedAID = self->_selectedAID;
  if (selectedAID)
  {
    [v4 setObject:selectedAID forKey:@"selectedAID"];
  }

  availableShippingMethods = self->_availableShippingMethods;
  if (availableShippingMethods)
  {
    dictionaryRepresentation3 = [(PKProtobufShippingMethods *)availableShippingMethods dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"availableShippingMethods"];
  }

  if (*&self->_has)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_selectedPaymentType];
    [v4 setObject:v24 forKey:@"selectedPaymentType"];
  }

  if ([(NSMutableArray *)self->_multiTokenContexts count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_multiTokenContexts, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = self->_multiTokenContexts;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation4 = [*(*(&v39 + 1) + 8 * k) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation4];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v28);
    }

    [v4 setObject:v25 forKey:@"multiTokenContexts"];
  }

  recurringPaymentRequest = self->_recurringPaymentRequest;
  if (recurringPaymentRequest)
  {
    dictionaryRepresentation5 = [(PKProtobufRecurringPaymentRequest *)recurringPaymentRequest dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"recurringPaymentRequest"];
  }

  automaticReloadPaymentRequest = self->_automaticReloadPaymentRequest;
  if (automaticReloadPaymentRequest)
  {
    dictionaryRepresentation6 = [(PKProtobufAutomaticReloadPaymentRequest *)automaticReloadPaymentRequest dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation6 forKey:@"automaticReloadPaymentRequest"];
  }

  deferredPaymentRequest = self->_deferredPaymentRequest;
  if (deferredPaymentRequest)
  {
    dictionaryRepresentation7 = [(PKProtobufDeferredPaymentRequest *)deferredPaymentRequest dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation7 forKey:@"deferredPaymentRequest"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_remotePaymentRequestIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_paymentSummaryItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_shippingMethods;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  if (self->_selectedAID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_availableShippingMethods)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_multiTokenContexts;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }

  if (self->_recurringPaymentRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_automaticReloadPaymentRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_deferredPaymentRequest)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_remotePaymentRequestIdentifier)
  {
    [toCopy setRemotePaymentRequestIdentifier:?];
    toCopy = v18;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 22) = self->_status;
    *(toCopy + 92) |= 2u;
  }

  if ([(PKProtobufPaymentClientUpdate *)self paymentSummaryItemsCount])
  {
    [v18 clearPaymentSummaryItems];
    paymentSummaryItemsCount = [(PKProtobufPaymentClientUpdate *)self paymentSummaryItemsCount];
    if (paymentSummaryItemsCount)
    {
      v6 = paymentSummaryItemsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PKProtobufPaymentClientUpdate *)self paymentSummaryItemsAtIndex:i];
        [v18 addPaymentSummaryItems:v8];
      }
    }
  }

  if ([(PKProtobufPaymentClientUpdate *)self shippingMethodsCount])
  {
    [v18 clearShippingMethods];
    shippingMethodsCount = [(PKProtobufPaymentClientUpdate *)self shippingMethodsCount];
    if (shippingMethodsCount)
    {
      v10 = shippingMethodsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(PKProtobufPaymentClientUpdate *)self shippingMethodsAtIndex:j];
        [v18 addShippingMethods:v12];
      }
    }
  }

  if (self->_selectedAID)
  {
    [v18 setSelectedAID:?];
  }

  if (self->_availableShippingMethods)
  {
    [v18 setAvailableShippingMethods:?];
  }

  if (*&self->_has)
  {
    *(v18 + 18) = self->_selectedPaymentType;
    *(v18 + 92) |= 1u;
  }

  if ([(PKProtobufPaymentClientUpdate *)self multiTokenContextsCount])
  {
    [v18 clearMultiTokenContexts];
    multiTokenContextsCount = [(PKProtobufPaymentClientUpdate *)self multiTokenContextsCount];
    if (multiTokenContextsCount)
    {
      v14 = multiTokenContextsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(PKProtobufPaymentClientUpdate *)self multiTokenContextsAtIndex:k];
        [v18 addMultiTokenContexts:v16];
      }
    }
  }

  if (self->_recurringPaymentRequest)
  {
    [v18 setRecurringPaymentRequest:?];
  }

  v17 = v18;
  if (self->_automaticReloadPaymentRequest)
  {
    [v18 setAutomaticReloadPaymentRequest:?];
    v17 = v18;
  }

  if (self->_deferredPaymentRequest)
  {
    [v18 setDeferredPaymentRequest:?];
    v17 = v18;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_remotePaymentRequestIdentifier copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 88) = self->_status;
    *(v5 + 92) |= 2u;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = self->_paymentSummaryItems;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v45 + 1) + 8 * i) copyWithZone:zone];
        [v5 addPaymentSummaryItems:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v10);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = self->_shippingMethods;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v41 + 1) + 8 * j) copyWithZone:zone];
        [v5 addShippingMethods:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v16);
  }

  v20 = [(NSString *)self->_selectedAID copyWithZone:zone];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  v22 = [(PKProtobufShippingMethods *)self->_availableShippingMethods copyWithZone:zone];
  v23 = *(v5 + 16);
  *(v5 + 16) = v22;

  if (*&self->_has)
  {
    *(v5 + 72) = self->_selectedPaymentType;
    *(v5 + 92) |= 1u;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = self->_multiTokenContexts;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v37 + 1) + 8 * k) copyWithZone:{zone, v37}];
        [v5 addMultiTokenContexts:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v26);
  }

  v30 = [(PKProtobufRecurringPaymentRequest *)self->_recurringPaymentRequest copyWithZone:zone];
  v31 = *(v5 + 48);
  *(v5 + 48) = v30;

  v32 = [(PKProtobufAutomaticReloadPaymentRequest *)self->_automaticReloadPaymentRequest copyWithZone:zone];
  v33 = *(v5 + 8);
  *(v5 + 8) = v32;

  v34 = [(PKProtobufDeferredPaymentRequest *)self->_deferredPaymentRequest copyWithZone:zone];
  v35 = *(v5 + 24);
  *(v5 + 24) = v34;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
  if (remotePaymentRequestIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)remotePaymentRequestIdentifier isEqual:?])
    {
      goto LABEL_30;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_status != *(equalCopy + 22))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
LABEL_30:
    v14 = 0;
    goto LABEL_31;
  }

  paymentSummaryItems = self->_paymentSummaryItems;
  if (paymentSummaryItems | *(equalCopy + 5) && ![(NSMutableArray *)paymentSummaryItems isEqual:?])
  {
    goto LABEL_30;
  }

  shippingMethods = self->_shippingMethods;
  if (shippingMethods | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)shippingMethods isEqual:?])
    {
      goto LABEL_30;
    }
  }

  selectedAID = self->_selectedAID;
  if (selectedAID | *(equalCopy + 8))
  {
    if (![(NSString *)selectedAID isEqual:?])
    {
      goto LABEL_30;
    }
  }

  availableShippingMethods = self->_availableShippingMethods;
  if (availableShippingMethods | *(equalCopy + 2))
  {
    if (![(PKProtobufShippingMethods *)availableShippingMethods isEqual:?])
    {
      goto LABEL_30;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_selectedPaymentType != *(equalCopy + 18))
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_30;
  }

  multiTokenContexts = self->_multiTokenContexts;
  if (multiTokenContexts | *(equalCopy + 4) && ![(NSMutableArray *)multiTokenContexts isEqual:?])
  {
    goto LABEL_30;
  }

  recurringPaymentRequest = self->_recurringPaymentRequest;
  if (recurringPaymentRequest | *(equalCopy + 6))
  {
    if (![(PKProtobufRecurringPaymentRequest *)recurringPaymentRequest isEqual:?])
    {
      goto LABEL_30;
    }
  }

  automaticReloadPaymentRequest = self->_automaticReloadPaymentRequest;
  if (automaticReloadPaymentRequest | *(equalCopy + 1))
  {
    if (![(PKProtobufAutomaticReloadPaymentRequest *)automaticReloadPaymentRequest isEqual:?])
    {
      goto LABEL_30;
    }
  }

  deferredPaymentRequest = self->_deferredPaymentRequest;
  if (deferredPaymentRequest | *(equalCopy + 3))
  {
    v14 = [(PKProtobufDeferredPaymentRequest *)deferredPaymentRequest isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_31:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_remotePaymentRequestIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_status;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_paymentSummaryItems hash];
  v6 = [(NSMutableArray *)self->_shippingMethods hash];
  v7 = [(NSString *)self->_selectedAID hash];
  v8 = [(PKProtobufShippingMethods *)self->_availableShippingMethods hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_selectedPaymentType;
  }

  else
  {
    v9 = 0;
  }

  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v11 = [(NSMutableArray *)self->_multiTokenContexts hash];
  v12 = v11 ^ [(PKProtobufRecurringPaymentRequest *)self->_recurringPaymentRequest hash];
  v13 = v12 ^ [(PKProtobufAutomaticReloadPaymentRequest *)self->_automaticReloadPaymentRequest hash];
  return v10 ^ v13 ^ [(PKProtobufDeferredPaymentRequest *)self->_deferredPaymentRequest hash];
}

- (void)mergeFrom:(id)from
{
  v43 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 7))
  {
    [(PKProtobufPaymentClientUpdate *)self setRemotePaymentRequestIdentifier:?];
  }

  if ((*(fromCopy + 92) & 2) != 0)
  {
    self->_status = *(fromCopy + 22);
    *&self->_has |= 2u;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKProtobufPaymentClientUpdate *)self addPaymentSummaryItems:*(*(&v36 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v7);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = *(fromCopy + 10);
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PKProtobufPaymentClientUpdate *)self addShippingMethods:*(*(&v32 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 8))
  {
    [(PKProtobufPaymentClientUpdate *)self setSelectedAID:?];
  }

  availableShippingMethods = self->_availableShippingMethods;
  v16 = *(fromCopy + 2);
  if (availableShippingMethods)
  {
    if (v16)
    {
      [(PKProtobufShippingMethods *)availableShippingMethods mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(PKProtobufPaymentClientUpdate *)self setAvailableShippingMethods:?];
  }

  if (*(fromCopy + 92))
  {
    self->_selectedPaymentType = *(fromCopy + 18);
    *&self->_has |= 1u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = *(fromCopy + 4);
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(PKProtobufPaymentClientUpdate *)self addMultiTokenContexts:*(*(&v28 + 1) + 8 * k), v28];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v19);
  }

  recurringPaymentRequest = self->_recurringPaymentRequest;
  v23 = *(fromCopy + 6);
  if (recurringPaymentRequest)
  {
    if (v23)
    {
      [(PKProtobufRecurringPaymentRequest *)recurringPaymentRequest mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(PKProtobufPaymentClientUpdate *)self setRecurringPaymentRequest:?];
  }

  automaticReloadPaymentRequest = self->_automaticReloadPaymentRequest;
  v25 = *(fromCopy + 1);
  if (automaticReloadPaymentRequest)
  {
    if (v25)
    {
      [(PKProtobufAutomaticReloadPaymentRequest *)automaticReloadPaymentRequest mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(PKProtobufPaymentClientUpdate *)self setAutomaticReloadPaymentRequest:?];
  }

  deferredPaymentRequest = self->_deferredPaymentRequest;
  v27 = *(fromCopy + 3);
  if (deferredPaymentRequest)
  {
    if (v27)
    {
      [(PKProtobufDeferredPaymentRequest *)deferredPaymentRequest mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(PKProtobufPaymentClientUpdate *)self setDeferredPaymentRequest:?];
  }
}

@end