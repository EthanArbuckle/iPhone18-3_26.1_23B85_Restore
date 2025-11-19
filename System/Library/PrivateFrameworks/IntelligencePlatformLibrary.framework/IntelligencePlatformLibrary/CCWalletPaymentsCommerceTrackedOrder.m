@interface CCWalletPaymentsCommerceTrackedOrder
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrder)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrder)initWithOrderNumber:(id)a3 orderDate:(id)a4 merchant:(id)a5 shippingFulfillments:(id)a6 customer:(id)a7 payment:(id)a8 orderUpdateDate:(id)a9 trackedOrderIdentifier:(id)a10 error:(id *)a11;
- (CCWalletPaymentsCommerceTrackedOrderCustomer)customer;
- (CCWalletPaymentsCommerceTrackedOrderMerchant)merchant;
- (CCWalletPaymentsCommerceTrackedOrderPayment)payment;
- (NSArray)shippingFulfillments;
- (NSDate)orderUpdateDate;
- (NSString)orderDate;
- (NSString)orderNumber;
- (NSString)trackedOrderIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceTrackedOrder

- (CCWalletPaymentsCommerceTrackedOrder)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v57[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"orderNumber"];
    v10 = [v6 objectForKeyedSubscript:@"orderDate"];
    v11 = [v6 objectForKeyedSubscript:@"merchant"];
    if (v11)
    {
      v57[0] = 0;
      v12 = [[CCWalletPaymentsCommerceTrackedOrderMerchant alloc] initWithJSONDictionary:v11 error:v57];
      v13 = v57[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();

        v36 = 0;
        goto LABEL_44;
      }

      v11 = v12;
    }

    v15 = [v6 objectForKeyedSubscript:@"shippingFulfillments"];
    if (!v15)
    {
      v14 = 0;
      v47 = v8;
      goto LABEL_24;
    }

    v16 = v15;
    objc_opt_class();
    v56 = v8;
    v17 = CCValidateIsInstanceOfExpectedClass();
    v18 = v8;

    if (v17)
    {
      v47 = v18;
      v48 = v10;
      v43 = a4;
      v45 = v9;
      v14 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v53;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v53 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v52 + 1) + 8 * i);
            v25 = [CCWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc];
            v51 = 0;
            v26 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)v25 initWithJSONDictionary:v24 error:&v51];
            v27 = v51;
            if (v26)
            {
              v28 = v27 == 0;
            }

            else
            {
              v28 = 0;
            }

            if (!v28)
            {
              v35 = v27;
              CCSetError();

              v36 = 0;
              v14 = v19;
              v9 = v45;
              v8 = v47;
              goto LABEL_43;
            }

            [v14 addObject:v26];
          }

          v21 = [v19 countByEnumeratingWithState:&v52 objects:v58 count:16];
        }

        while (v21);
      }

      v9 = v45;
      a4 = v43;
LABEL_24:
      v48 = v10;
      v29 = [v6 objectForKeyedSubscript:@"customer"];
      if (v29)
      {
        v50 = 0;
        v30 = [[CCWalletPaymentsCommerceTrackedOrderCustomer alloc] initWithJSONDictionary:v29 error:&v50];
        v31 = v50;
        v32 = v31;
        if (!v30 || v31)
        {
          CCSetError();
          goto LABEL_40;
        }

        v29 = v30;
      }

      v32 = [v6 objectForKeyedSubscript:@"payment"];
      if (!v32)
      {
        v46 = v9;
        goto LABEL_35;
      }

      v49 = 0;
      v33 = [[CCWalletPaymentsCommerceTrackedOrderPayment alloc] initWithJSONDictionary:v32 error:&v49];
      v34 = v49;
      v30 = v34;
      if (v33 && !v34)
      {
        v46 = v9;

        v32 = v33;
LABEL_35:
        v30 = [v6 objectForKeyedSubscript:@"orderUpdateDate"];
        if (!v30)
        {
LABEL_38:
          v9 = v46;
          v40 = [v6 objectForKeyedSubscript:@"trackedOrderIdentifier"];
          v36 = [[CCWalletPaymentsCommerceTrackedOrder alloc] initWithOrderNumber:v46 orderDate:v48 merchant:v11 shippingFulfillments:v14 customer:v29 payment:v32 orderUpdateDate:v30 trackedOrderIdentifier:v40 error:a4];

          goto LABEL_42;
        }

        objc_opt_class();
        v37 = CCValidateIsInstanceOfExpectedClass();
        v44 = v47;

        if (v37)
        {
          v38 = objc_alloc(MEMORY[0x1E695DF00]);
          [(CCWalletPaymentsCommerceTrackedOrderCustomer *)v30 doubleValue];
          v39 = [v38 initWithTimeIntervalSinceReferenceDate:?];

          v47 = v44;
          v30 = v39;
          goto LABEL_38;
        }

        CCSetError();
        v36 = 0;
        v47 = v44;
        v9 = v46;
LABEL_42:

        v8 = v47;
LABEL_43:
        v10 = v48;
        goto LABEL_44;
      }

      CCSetError();

LABEL_40:
      v36 = 0;
      goto LABEL_42;
    }

    CCSetError();
    v36 = 0;
    v8 = v18;
    v14 = v16;
LABEL_44:

    goto LABEL_45;
  }

  CCSetError();
  v36 = 0;
LABEL_45:

  v41 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)jsonDictionary
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_orderNumber)
  {
    v4 = [(CCWalletPaymentsCommerceTrackedOrder *)self orderNumber];
    [v3 setObject:v4 forKeyedSubscript:@"orderNumber"];
  }

  if (self->_orderDate)
  {
    v5 = [(CCWalletPaymentsCommerceTrackedOrder *)self orderDate];
    [v3 setObject:v5 forKeyedSubscript:@"orderDate"];
  }

  if (self->_merchant)
  {
    v6 = [(CCWalletPaymentsCommerceTrackedOrder *)self merchant];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"merchant"];
  }

  if (self->_shippingFulfillments)
  {
    v8 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(CCWalletPaymentsCommerceTrackedOrder *)self shippingFulfillments];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v24 + 1) + 8 * i) jsonDictionary];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"shippingFulfillments"];
  }

  if (self->_customer)
  {
    v15 = [(CCWalletPaymentsCommerceTrackedOrder *)self customer];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"customer"];
  }

  if (self->_payment)
  {
    v17 = [(CCWalletPaymentsCommerceTrackedOrder *)self payment];
    v18 = [v17 jsonDictionary];
    [v3 setObject:v18 forKeyedSubscript:@"payment"];
  }

  if (self->_hasRaw_orderUpdateDate)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_orderUpdateDate];
    [v3 setObject:v19 forKeyedSubscript:@"orderUpdateDate"];
  }

  if (self->_trackedOrderIdentifier)
  {
    v20 = [(CCWalletPaymentsCommerceTrackedOrder *)self trackedOrderIdentifier];
    [v3 setObject:v20 forKeyedSubscript:@"trackedOrderIdentifier"];
  }

  v21 = [v3 copy];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v16 = v5;
  if (self->_orderNumber)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_orderNumber];
    v16[2](v16, v7);
  }

  if (self->_orderDate)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_orderDate];
    v16[2](v16, v8);
  }

  if (self->_merchant)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_merchant];
    v16[2](v16, v9);
  }

  if (self->_shippingFulfillments)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_shippingFulfillments];
    v16[2](v16, v10);
  }

  if (self->_customer)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_customer];
    v16[2](v16, v11);
  }

  if (self->_payment)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_payment];
    v16[2](v16, v12);
  }

  if (self->_hasRaw_orderUpdateDate)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 doubleValue:self->_raw_orderUpdateDate];
    v16[2](v16, v13);
  }

  v14 = v16;
  if (self->_trackedOrderIdentifier)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_trackedOrderIdentifier];
    v16[2](v16, v15);

    v14 = v16;
  }
}

- (NSString)trackedOrderIdentifier
{
  v2 = [(NSString *)self->_trackedOrderIdentifier copy];

  return v2;
}

- (NSDate)orderUpdateDate
{
  if (self->_hasRaw_orderUpdateDate)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_orderUpdateDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CCWalletPaymentsCommerceTrackedOrderPayment)payment
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderPayment *)self->_payment copy];

  return v2;
}

- (CCWalletPaymentsCommerceTrackedOrderCustomer)customer
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderCustomer *)self->_customer copy];

  return v2;
}

- (NSArray)shippingFulfillments
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_shippingFulfillments copyItems:1];

  return v2;
}

- (CCWalletPaymentsCommerceTrackedOrderMerchant)merchant
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderMerchant *)self->_merchant copy];

  return v2;
}

- (NSString)orderDate
{
  v2 = [(NSString *)self->_orderDate copy];

  return v2;
}

- (NSString)orderNumber
{
  v2 = [(NSString *)self->_orderNumber copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v53 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v53];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_59;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          v22 = *v10;
          if (*&v5[v22])
          {
            goto LABEL_58;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *v10;
      v23 = *&v5[v22];
      if (v23)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v23)
      {
        goto LABEL_58;
      }

LABEL_21:
      v24 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v24 > 7)
        {
          if (v24 == 8)
          {
            v37 = *v6;
            v38 = *&v5[v37];
            if (v38 <= 0xFFFFFFFFFFFFFFF7 && v38 + 8 <= *&v5[*v7])
            {
              v39 = *(*&v5[*v11] + v38);
              *&v5[v37] = v38 + 8;
            }

            else
            {
              *&v5[v22] = 1;
              v39 = 0.0;
            }

            v8 = 0;
            self->_raw_orderUpdateDate = v39;
            self->_hasRaw_orderUpdateDate = 1;
LABEL_48:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_59;
          }

          if (v24 == 9)
          {
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 80;
            goto LABEL_42;
          }

          goto LABEL_53;
        }

        if (v24 == 5)
        {
          v34 = [CCWalletPaymentsCommerceTrackedOrderCustomer alloc];
          v28 = CCPBReaderReadDataNoCopy();
          v55 = 0;
          v29 = [(CCItemMessage *)v34 initWithData:v28 error:&v55];
          v8 = v55;
          v30 = 64;
        }

        else
        {
          if (v24 != 6)
          {
            goto LABEL_53;
          }

          v27 = [CCWalletPaymentsCommerceTrackedOrderPayment alloc];
          v28 = CCPBReaderReadDataNoCopy();
          v54 = 0;
          v29 = [(CCItemMessage *)v27 initWithData:v28 error:&v54];
          v8 = v54;
          v30 = 72;
        }
      }

      else
      {
        if (v24 <= 2)
        {
          if (v24 == 1)
          {
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 32;
            goto LABEL_42;
          }

          if (v24 == 2)
          {
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 40;
LABEL_42:
            v33 = *(&self->super.super.isa + v26);
            *(&self->super.super.isa + v26) = v25;

LABEL_43:
            v8 = 0;
            goto LABEL_48;
          }

          goto LABEL_53;
        }

        if (v24 != 3)
        {
          if (v24 == 4)
          {
            v28 = CCPBReaderReadDataNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            v31 = [CCWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc];
            v56 = 0;
            v32 = [(CCItemMessage *)v31 initWithData:v28 error:&v56];
            v8 = v56;
            if (!v8 && v32)
            {
              [v9 addObject:v32];
            }

            goto LABEL_47;
          }

LABEL_53:
          if (CCPBReaderSkipValueWithTag())
          {
            goto LABEL_43;
          }

          v40 = objc_opt_class();
          v28 = NSStringFromClass(v40);
          v41 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
          goto LABEL_47;
        }

        v35 = [CCWalletPaymentsCommerceTrackedOrderMerchant alloc];
        v28 = CCPBReaderReadDataNoCopy();
        v57 = 0;
        v29 = [(CCItemMessage *)v35 initWithData:v28 error:&v57];
        v8 = v57;
        v30 = 48;
      }

      break;
    }

    v36 = *(&self->super.super.isa + v30);
    *(&self->super.super.isa + v30) = v29;

LABEL_47:
    goto LABEL_48;
  }

  v9 = 0;
LABEL_58:
  v8 = 0;
LABEL_59:
  v42 = [v9 copy];
  shippingFulfillments = self->_shippingFulfillments;
  self->_shippingFulfillments = v42;

  if (v8)
  {
    CCSetError();
    v44 = 0;
    v45 = v53;
  }

  else
  {
    v46 = MEMORY[0x1E6993AA8];
    v45 = v53;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = *&v5[*v46];
      v50 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }
  }

  return v44;
}

- (CCWalletPaymentsCommerceTrackedOrder)initWithOrderNumber:(id)a3 orderDate:(id)a4 merchant:(id)a5 shippingFulfillments:(id)a6 customer:(id)a7 payment:(id)a8 orderUpdateDate:(id)a9 trackedOrderIdentifier:(id)a10 error:(id *)a11
{
  v66 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v55 = a5;
  v18 = a6;
  v19 = a7;
  v56 = a8;
  v20 = a9;
  v21 = a10;
  v22 = objc_opt_new();
  v54 = v19;
  if (v16)
  {
    objc_opt_class();
    v64 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v24 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      v28 = v18;
      CCSetError();
      v29 = 0;
      v30 = self;
      goto LABEL_37;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v24 = 0;
  }

  v25 = v56;
  v52 = v20;
  if (v17)
  {
    objc_opt_class();
    v63 = v24;
    v26 = CCValidateIsInstanceOfExpectedClass();
    v27 = v24;

    if (!v26)
    {
      goto LABEL_33;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v27 = v24;
  }

  if (!v55)
  {
    v24 = v27;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_18:
    objc_opt_class();
    v61 = v24;
    v35 = CCValidateArrayValues();
    v27 = v24;

    if (!v35)
    {
      goto LABEL_33;
    }

    v50 = v21;
    v51 = v18;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v36 = v18;
    v37 = [v36 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v58;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v58 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v57 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v38 = [v36 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v38);
    }

    v21 = v50;
    v18 = v51;
    v19 = v54;
    v25 = v56;
    if (v54)
    {
      goto LABEL_14;
    }

LABEL_27:
    v24 = v27;
    if (!v25)
    {
LABEL_16:
      v27 = v24;
LABEL_30:
      if (!v52)
      {
        v28 = v18;
        v24 = v27;
        goto LABEL_41;
      }

      v28 = v18;
      objc_opt_class();
      v44 = CCValidateIsInstanceOfExpectedClass();
      v24 = v27;

      if (v44)
      {
        [v52 timeIntervalSinceReferenceDate];
        CCPBDataWriterWriteDoubleField();
LABEL_41:
        v47 = self;
        v20 = v52;
        v25 = v56;
        if (!v21)
        {
LABEL_44:
          v49 = [v22 immutableData];
          v30 = [(CCItemMessage *)v47 initWithData:v49 error:a11];

          v29 = v30;
          goto LABEL_38;
        }

        objc_opt_class();
        v48 = CCValidateIsInstanceOfExpectedClass();
        v27 = v24;

        if (v48)
        {
          CCPBDataWriterWriteStringField();
          v24 = v27;
          v47 = self;
          v20 = v52;
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      CCSetError();
      v29 = 0;
      v30 = self;
      v20 = v52;
LABEL_37:
      v25 = v56;
      goto LABEL_38;
    }

    goto LABEL_28;
  }

  objc_opt_class();
  v62 = v27;
  v31 = CCValidateIsInstanceOfExpectedClass();
  v24 = v27;

  if (!v31)
  {
    v28 = v18;
    CCSetError();
    v29 = 0;
    v30 = self;
    v20 = v52;
    goto LABEL_37;
  }

  v32 = [v55 data];
  CCPBDataWriterWriteDataField();

  v25 = v56;
  if (v18)
  {
    goto LABEL_18;
  }

LABEL_13:
  v27 = v24;
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_14:
  objc_opt_class();
  v33 = CCValidateIsInstanceOfExpectedClass();
  v24 = v27;

  if (!v33)
  {
    v28 = v18;
    CCSetError();
    v29 = 0;
    goto LABEL_35;
  }

  v34 = [v19 data];
  CCPBDataWriterWriteDataField();

  if (!v25)
  {
    goto LABEL_16;
  }

LABEL_28:
  objc_opt_class();
  v42 = CCValidateIsInstanceOfExpectedClass();
  v27 = v24;

  if (v42)
  {
    v43 = [v25 data];
    CCPBDataWriterWriteDataField();

    goto LABEL_30;
  }

LABEL_33:
  v28 = v18;
LABEL_34:
  CCSetError();
  v29 = 0;
  v24 = v27;
LABEL_35:
  v30 = self;
  v20 = v52;
LABEL_38:

  v45 = *MEMORY[0x1E69E9840];
  return v29;
}

@end