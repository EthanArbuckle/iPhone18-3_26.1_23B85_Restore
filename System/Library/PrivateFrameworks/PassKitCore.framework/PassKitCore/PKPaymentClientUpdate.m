@interface PKPaymentClientUpdate
+ (id)paymentUpdateResponseWithProtobuf:(id)a3;
- (PKPaymentClientUpdate)initWithCoder:(id)a3;
- (PKPaymentClientUpdate)initWithPaymentSummaryItems:(id)a3 shippingMethods:(id)a4 multiTokenContexts:(id)a5 recurringPaymentRequest:(id)a6 automaticReloadPaymentRequest:(id)a7 deferredPaymentRequest:(id)a8 status:(int64_t)a9 selectedAID:(id)a10 selectedPaymentMethodType:(unint64_t)a11;
- (id)protobuf;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentClientUpdate

+ (id)paymentUpdateResponseWithProtobuf:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [v3 paymentSummaryItems];
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [PKPaymentSummaryItem itemWithProtobuf:*(*(&v42 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v7);
  }

  if ([v3 hasAvailableShippingMethods])
  {
    v11 = [v3 availableShippingMethods];
    v12 = [PKShippingMethods shippingMethodsWithProtobuf:v11];
LABEL_19:
    v21 = v12;

    goto LABEL_20;
  }

  v13 = [v3 shippingMethods];
  v14 = [v13 count];

  if (v14)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = [v3 shippingMethods];
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = [PKShippingMethod shippingMethodWithProtobuf:*(*(&v38 + 1) + 8 * j)];
          [v11 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v17);
    }

    v12 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v11];
    goto LABEL_19;
  }

  v21 = 0;
LABEL_20:
  v22 = [v3 multiTokenContexts];
  v23 = [v22 pk_arrayByApplyingBlock:&__block_literal_global_175];
  v24 = v23;
  v25 = MEMORY[0x1E695E0F0];
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  if ([v3 hasRecurringPaymentRequest])
  {
    v27 = [v3 recurringPaymentRequest];
    v28 = [PKRecurringPaymentRequest recurringPaymentRequestWithProtobuf:v27];
  }

  else
  {
    v28 = 0;
  }

  if ([v3 hasAutomaticReloadPaymentRequest])
  {
    v29 = [v3 automaticReloadPaymentRequest];
    v30 = [PKAutomaticReloadPaymentRequest automaticReloadPaymentRequestWithProtobuf:v29];
  }

  else
  {
    v30 = 0;
  }

  v31 = [v3 deferredPaymentRequest];

  if (v31)
  {
    v32 = [v3 deferredPaymentRequest];
    v31 = [PKDeferredPaymentRequest deferredPaymentRequestWithProtobuf:v32];
  }

  v33 = [PKPaymentClientUpdate alloc];
  v34 = [v3 status];
  v35 = [v3 selectedAID];
  v36 = -[PKPaymentClientUpdate initWithPaymentSummaryItems:shippingMethods:multiTokenContexts:recurringPaymentRequest:automaticReloadPaymentRequest:deferredPaymentRequest:status:selectedAID:selectedPaymentMethodType:](v33, "initWithPaymentSummaryItems:shippingMethods:multiTokenContexts:recurringPaymentRequest:automaticReloadPaymentRequest:deferredPaymentRequest:status:selectedAID:selectedPaymentMethodType:", v4, v21, v26, v28, v30, v31, v34, v35, [v3 selectedPaymentType]);

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
  v4 = [(PKPaymentClientUpdate *)self multiTokenContexts];
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v39 + 1) + 8 * i) protobuf];
        [(PKProtobufPaymentClientUpdate *)v3 addMultiTokenContexts:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v6);
  }

  v10 = [(PKPaymentClientUpdate *)self recurringPaymentRequest];
  v11 = [v10 protobuf];
  [(PKProtobufPaymentClientUpdate *)v3 setRecurringPaymentRequest:v11];

  v12 = [(PKPaymentClientUpdate *)self automaticReloadPaymentRequest];
  v13 = [v12 protobuf];
  [(PKProtobufPaymentClientUpdate *)v3 setAutomaticReloadPaymentRequest:v13];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [(PKPaymentClientUpdate *)self paymentSummaryItems];
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v35 + 1) + 8 * j) summaryItemProtobuf];
        [(PKProtobufPaymentClientUpdate *)v3 addPaymentSummaryItems:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v16);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [(PKPaymentClientUpdate *)self shippingMethods];
  v21 = [v20 legacyShippingMethods];

  v22 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v31 + 1) + 8 * k) shippingMethodProtobuf];
        [(PKProtobufPaymentClientUpdate *)v3 addShippingMethods:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v23);
  }

  v27 = [(PKPaymentClientUpdate *)self shippingMethods];
  v28 = [v27 protobuf];
  [(PKProtobufPaymentClientUpdate *)v3 setAvailableShippingMethods:v28];

  [(PKProtobufPaymentClientUpdate *)v3 setStatus:[(PKPaymentClientUpdate *)self status]];
  v29 = [(PKPaymentClientUpdate *)self selectedAID];
  [(PKProtobufPaymentClientUpdate *)v3 setSelectedAID:v29];

  [(PKProtobufPaymentClientUpdate *)v3 setSelectedPaymentType:[(PKPaymentClientUpdate *)self selectedPaymentMethodType]];

  return v3;
}

- (PKPaymentClientUpdate)initWithPaymentSummaryItems:(id)a3 shippingMethods:(id)a4 multiTokenContexts:(id)a5 recurringPaymentRequest:(id)a6 automaticReloadPaymentRequest:(id)a7 deferredPaymentRequest:(id)a8 status:(int64_t)a9 selectedAID:(id)a10 selectedPaymentMethodType:(unint64_t)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v40 = a8;
  v22 = a10;
  v41.receiver = self;
  v41.super_class = PKPaymentClientUpdate;
  v23 = [(PKPaymentClientUpdate *)&v41 init];
  if (v23)
  {
    v24 = [v17 copy];
    paymentSummaryItems = v23->_paymentSummaryItems;
    v23->_paymentSummaryItems = v24;

    v26 = [v18 copy];
    shippingMethods = v23->_shippingMethods;
    v23->_shippingMethods = v26;

    v28 = [v19 copy];
    obj = a8;
    v29 = v19;
    v30 = v21;
    v31 = v18;
    v32 = v20;
    v33 = v17;
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

    v17 = v33;
    v20 = v32;
    v18 = v31;
    v21 = v30;
    v19 = v29;
    objc_storeStrong(&v23->_recurringPaymentRequest, a6);
    objc_storeStrong(&v23->_automaticReloadPaymentRequest, a7);
    objc_storeStrong(&v23->_deferredPaymentRequest, obj);
    v23->_status = a9;
    v36 = [v22 copy];
    selectedAID = v23->_selectedAID;
    v23->_selectedAID = v36;

    v23->_selectedPaymentMethodType = a11;
  }

  return v23;
}

- (PKPaymentClientUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PKPaymentClientUpdate;
  v5 = [(PKPaymentClientUpdate *)&v34 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"paymentSummaryItems"];
    paymentSummaryItems = v5->_paymentSummaryItems;
    v5->_paymentSummaryItems = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"multiTokenContexts"];
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

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recurringPaymentRequest"];
    recurringPaymentRequest = v5->_recurringPaymentRequest;
    v5->_recurringPaymentRequest = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"automaticReloadPaymentRequest"];
    automaticReloadPaymentRequest = v5->_automaticReloadPaymentRequest;
    v5->_automaticReloadPaymentRequest = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deferredPaymentRequest"];
    deferredPaymentRequest = v5->_deferredPaymentRequest;
    v5->_deferredPaymentRequest = v21;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedAID"];
    selectedAID = v5->_selectedAID;
    v5->_selectedAID = v23;

    v5->_selectedPaymentMethodType = [v4 decodeIntegerForKey:@"selectedPaymentMethodType"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableShippingMethods"];
    shippingMethods = v5->_shippingMethods;
    v5->_shippingMethods = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"shippingMethods"];

    if (!v5->_shippingMethods && v30)
    {
      v31 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v30];
      v32 = v5->_shippingMethods;
      v5->_shippingMethods = v31;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  paymentSummaryItems = self->_paymentSummaryItems;
  v6 = a3;
  [v6 encodeObject:paymentSummaryItems forKey:@"paymentSummaryItems"];
  [v6 encodeObject:self->_multiTokenContexts forKey:@"multiTokenContexts"];
  [v6 encodeObject:self->_recurringPaymentRequest forKey:@"recurringPaymentRequest"];
  [v6 encodeObject:self->_automaticReloadPaymentRequest forKey:@"automaticReloadPaymentRequest"];
  [v6 encodeObject:self->_deferredPaymentRequest forKey:@"deferredPaymentRequest"];
  [v6 encodeInteger:self->_status forKey:@"status"];
  [v6 encodeObject:self->_selectedAID forKey:@"selectedAID"];
  [v6 encodeInteger:self->_selectedPaymentMethodType forKey:@"selectedPaymentMethodType"];
  v5 = [(PKShippingMethods *)self->_shippingMethods legacyShippingMethods];
  [v6 encodeObject:v5 forKey:@"shippingMethods"];

  [v6 encodeObject:self->_shippingMethods forKey:@"availableShippingMethods"];
}

@end