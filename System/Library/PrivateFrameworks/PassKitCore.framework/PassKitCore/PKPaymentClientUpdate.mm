@interface PKPaymentClientUpdate
+ (id)paymentUpdateResponseWithProtobuf:(id)protobuf;
- (PKPaymentClientUpdate)initWithCoder:(id)coder;
- (PKPaymentClientUpdate)initWithPaymentSummaryItems:(id)items shippingMethods:(id)methods multiTokenContexts:(id)contexts recurringPaymentRequest:(id)request automaticReloadPaymentRequest:(id)paymentRequest deferredPaymentRequest:(id)deferredPaymentRequest status:(int64_t)status selectedAID:(id)self0 selectedPaymentMethodType:(unint64_t)self1;
- (id)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentClientUpdate

+ (id)paymentUpdateResponseWithProtobuf:(id)protobuf
{
  v48 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  paymentSummaryItems = [protobufCopy paymentSummaryItems];
  v6 = [paymentSummaryItems countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(paymentSummaryItems);
        }

        v10 = [PKPaymentSummaryItem itemWithProtobuf:*(*(&v42 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [paymentSummaryItems countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v7);
  }

  if ([protobufCopy hasAvailableShippingMethods])
  {
    availableShippingMethods = [protobufCopy availableShippingMethods];
    v12 = [PKShippingMethods shippingMethodsWithProtobuf:availableShippingMethods];
LABEL_19:
    v21 = v12;

    goto LABEL_20;
  }

  shippingMethods = [protobufCopy shippingMethods];
  v14 = [shippingMethods count];

  if (v14)
  {
    availableShippingMethods = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    shippingMethods2 = [protobufCopy shippingMethods];
    v16 = [shippingMethods2 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(shippingMethods2);
          }

          v20 = [PKShippingMethod shippingMethodWithProtobuf:*(*(&v38 + 1) + 8 * j)];
          [availableShippingMethods addObject:v20];
        }

        v17 = [shippingMethods2 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v17);
    }

    v12 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:availableShippingMethods];
    goto LABEL_19;
  }

  v21 = 0;
LABEL_20:
  multiTokenContexts = [protobufCopy multiTokenContexts];
  v23 = [multiTokenContexts pk_arrayByApplyingBlock:&__block_literal_global_175];
  v24 = v23;
  v25 = MEMORY[0x1E695E0F0];
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  if ([protobufCopy hasRecurringPaymentRequest])
  {
    recurringPaymentRequest = [protobufCopy recurringPaymentRequest];
    v28 = [PKRecurringPaymentRequest recurringPaymentRequestWithProtobuf:recurringPaymentRequest];
  }

  else
  {
    v28 = 0;
  }

  if ([protobufCopy hasAutomaticReloadPaymentRequest])
  {
    automaticReloadPaymentRequest = [protobufCopy automaticReloadPaymentRequest];
    v30 = [PKAutomaticReloadPaymentRequest automaticReloadPaymentRequestWithProtobuf:automaticReloadPaymentRequest];
  }

  else
  {
    v30 = 0;
  }

  deferredPaymentRequest = [protobufCopy deferredPaymentRequest];

  if (deferredPaymentRequest)
  {
    deferredPaymentRequest2 = [protobufCopy deferredPaymentRequest];
    deferredPaymentRequest = [PKDeferredPaymentRequest deferredPaymentRequestWithProtobuf:deferredPaymentRequest2];
  }

  v33 = [PKPaymentClientUpdate alloc];
  status = [protobufCopy status];
  selectedAID = [protobufCopy selectedAID];
  v36 = -[PKPaymentClientUpdate initWithPaymentSummaryItems:shippingMethods:multiTokenContexts:recurringPaymentRequest:automaticReloadPaymentRequest:deferredPaymentRequest:status:selectedAID:selectedPaymentMethodType:](v33, "initWithPaymentSummaryItems:shippingMethods:multiTokenContexts:recurringPaymentRequest:automaticReloadPaymentRequest:deferredPaymentRequest:status:selectedAID:selectedPaymentMethodType:", v4, v21, v26, v28, v30, deferredPaymentRequest, status, selectedAID, [protobufCopy selectedPaymentType]);

  return v36;
}

- (id)protobuf
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PKProtobufPaymentClientUpdate);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  multiTokenContexts = [(PKPaymentClientUpdate *)self multiTokenContexts];
  v5 = [multiTokenContexts countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(multiTokenContexts);
        }

        protobuf = [*(*(&v39 + 1) + 8 * i) protobuf];
        [(PKProtobufPaymentClientUpdate *)v3 addMultiTokenContexts:protobuf];
      }

      v6 = [multiTokenContexts countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v6);
  }

  recurringPaymentRequest = [(PKPaymentClientUpdate *)self recurringPaymentRequest];
  protobuf2 = [recurringPaymentRequest protobuf];
  [(PKProtobufPaymentClientUpdate *)v3 setRecurringPaymentRequest:protobuf2];

  automaticReloadPaymentRequest = [(PKPaymentClientUpdate *)self automaticReloadPaymentRequest];
  protobuf3 = [automaticReloadPaymentRequest protobuf];
  [(PKProtobufPaymentClientUpdate *)v3 setAutomaticReloadPaymentRequest:protobuf3];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  paymentSummaryItems = [(PKPaymentClientUpdate *)self paymentSummaryItems];
  v15 = [paymentSummaryItems countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(paymentSummaryItems);
        }

        summaryItemProtobuf = [*(*(&v35 + 1) + 8 * j) summaryItemProtobuf];
        [(PKProtobufPaymentClientUpdate *)v3 addPaymentSummaryItems:summaryItemProtobuf];
      }

      v16 = [paymentSummaryItems countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v16);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  shippingMethods = [(PKPaymentClientUpdate *)self shippingMethods];
  legacyShippingMethods = [shippingMethods legacyShippingMethods];

  v22 = [legacyShippingMethods countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(legacyShippingMethods);
        }

        shippingMethodProtobuf = [*(*(&v31 + 1) + 8 * k) shippingMethodProtobuf];
        [(PKProtobufPaymentClientUpdate *)v3 addShippingMethods:shippingMethodProtobuf];
      }

      v23 = [legacyShippingMethods countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v23);
  }

  shippingMethods2 = [(PKPaymentClientUpdate *)self shippingMethods];
  protobuf4 = [shippingMethods2 protobuf];
  [(PKProtobufPaymentClientUpdate *)v3 setAvailableShippingMethods:protobuf4];

  [(PKProtobufPaymentClientUpdate *)v3 setStatus:[(PKPaymentClientUpdate *)self status]];
  selectedAID = [(PKPaymentClientUpdate *)self selectedAID];
  [(PKProtobufPaymentClientUpdate *)v3 setSelectedAID:selectedAID];

  [(PKProtobufPaymentClientUpdate *)v3 setSelectedPaymentType:[(PKPaymentClientUpdate *)self selectedPaymentMethodType]];

  return v3;
}

- (PKPaymentClientUpdate)initWithPaymentSummaryItems:(id)items shippingMethods:(id)methods multiTokenContexts:(id)contexts recurringPaymentRequest:(id)request automaticReloadPaymentRequest:(id)paymentRequest deferredPaymentRequest:(id)deferredPaymentRequest status:(int64_t)status selectedAID:(id)self0 selectedPaymentMethodType:(unint64_t)self1
{
  itemsCopy = items;
  methodsCopy = methods;
  contextsCopy = contexts;
  requestCopy = request;
  paymentRequestCopy = paymentRequest;
  deferredPaymentRequestCopy = deferredPaymentRequest;
  dCopy = d;
  v41.receiver = self;
  v41.super_class = PKPaymentClientUpdate;
  v23 = [(PKPaymentClientUpdate *)&v41 init];
  if (v23)
  {
    v24 = [itemsCopy copy];
    paymentSummaryItems = v23->_paymentSummaryItems;
    v23->_paymentSummaryItems = v24;

    v26 = [methodsCopy copy];
    shippingMethods = v23->_shippingMethods;
    v23->_shippingMethods = v26;

    v28 = [contextsCopy copy];
    obj = deferredPaymentRequest;
    v29 = contextsCopy;
    v30 = paymentRequestCopy;
    v31 = methodsCopy;
    v32 = requestCopy;
    v33 = itemsCopy;
    v34 = v28;
    if (v28)
    {
      v35 = v28;
    }

    else
    {
      v35 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v23->_multiTokenContexts, v35);

    itemsCopy = v33;
    requestCopy = v32;
    methodsCopy = v31;
    paymentRequestCopy = v30;
    contextsCopy = v29;
    objc_storeStrong(&v23->_recurringPaymentRequest, request);
    objc_storeStrong(&v23->_automaticReloadPaymentRequest, paymentRequest);
    objc_storeStrong(&v23->_deferredPaymentRequest, obj);
    v23->_status = status;
    v36 = [dCopy copy];
    selectedAID = v23->_selectedAID;
    v23->_selectedAID = v36;

    v23->_selectedPaymentMethodType = type;
  }

  return v23;
}

- (PKPaymentClientUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = PKPaymentClientUpdate;
  v5 = [(PKPaymentClientUpdate *)&v34 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"paymentSummaryItems"];
    paymentSummaryItems = v5->_paymentSummaryItems;
    v5->_paymentSummaryItems = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"multiTokenContexts"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_multiTokenContexts, v16);

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recurringPaymentRequest"];
    recurringPaymentRequest = v5->_recurringPaymentRequest;
    v5->_recurringPaymentRequest = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automaticReloadPaymentRequest"];
    automaticReloadPaymentRequest = v5->_automaticReloadPaymentRequest;
    v5->_automaticReloadPaymentRequest = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deferredPaymentRequest"];
    deferredPaymentRequest = v5->_deferredPaymentRequest;
    v5->_deferredPaymentRequest = v21;

    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedAID"];
    selectedAID = v5->_selectedAID;
    v5->_selectedAID = v23;

    v5->_selectedPaymentMethodType = [coderCopy decodeIntegerForKey:@"selectedPaymentMethodType"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableShippingMethods"];
    shippingMethods = v5->_shippingMethods;
    v5->_shippingMethods = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"shippingMethods"];

    if (!v5->_shippingMethods && v30)
    {
      v31 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v30];
      v32 = v5->_shippingMethods;
      v5->_shippingMethods = v31;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  paymentSummaryItems = self->_paymentSummaryItems;
  coderCopy = coder;
  [coderCopy encodeObject:paymentSummaryItems forKey:@"paymentSummaryItems"];
  [coderCopy encodeObject:self->_multiTokenContexts forKey:@"multiTokenContexts"];
  [coderCopy encodeObject:self->_recurringPaymentRequest forKey:@"recurringPaymentRequest"];
  [coderCopy encodeObject:self->_automaticReloadPaymentRequest forKey:@"automaticReloadPaymentRequest"];
  [coderCopy encodeObject:self->_deferredPaymentRequest forKey:@"deferredPaymentRequest"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_selectedAID forKey:@"selectedAID"];
  [coderCopy encodeInteger:self->_selectedPaymentMethodType forKey:@"selectedPaymentMethodType"];
  legacyShippingMethods = [(PKShippingMethods *)self->_shippingMethods legacyShippingMethods];
  [coderCopy encodeObject:legacyShippingMethods forKey:@"shippingMethods"];

  [coderCopy encodeObject:self->_shippingMethods forKey:@"availableShippingMethods"];
}

@end