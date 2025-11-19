@interface CCWalletPaymentsCommerceOrderEmail
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceOrderEmail)initWithEmailMetadata:(id)a3 emailType:(unsigned int)a4 orderNumber:(id)a5 orderDate:(id)a6 merchant:(id)a7 customer:(id)a8 shippingRecipient:(id)a9 shippingInformation:(id)a10 paymentInformation:(id)a11 error:(id *)a12;
- (CCWalletPaymentsCommerceOrderEmail)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceOrderEmailCustomer)customer;
- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)emailMetadata;
- (CCWalletPaymentsCommerceOrderEmailMerchant)merchant;
- (CCWalletPaymentsCommerceOrderEmailPaymentInformation)paymentInformation;
- (CCWalletPaymentsCommerceOrderEmailShippingInformation)shippingInformation;
- (CCWalletPaymentsCommerceOrderEmailShippingRecipient)shippingRecipient;
- (NSString)orderDate;
- (NSString)orderNumber;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceOrderEmail

- (CCWalletPaymentsCommerceOrderEmail)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v40[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"emailMetadata"];
    if (v9)
    {
      v40[0] = 0;
      v10 = [[CCWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initWithJSONDictionary:v9 error:v40];
      v11 = v40[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v14 = 0;
LABEL_42:

        goto LABEL_43;
      }

      v9 = v10;
    }

    v13 = [v6 objectForKeyedSubscript:@"emailType"];
    v12 = v13;
    if (v13)
    {
      v32 = [v13 unsignedIntegerValue];
    }

    else
    {
      v32 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"orderNumber"];
    v15 = [v6 objectForKeyedSubscript:@"orderDate"];
    v16 = [v6 objectForKeyedSubscript:@"merchant"];
    if (v16)
    {
      v39 = 0;
      v34 = v16;
      v17 = [[CCWalletPaymentsCommerceOrderEmailMerchant alloc] initWithJSONDictionary:v16 error:&v39];
      v18 = v39;
      v19 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v14 = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      v17 = 0;
    }

    v34 = v17;
    v19 = [v6 objectForKeyedSubscript:@"customer"];
    v33 = v15;
    if (v19)
    {
      v38 = 0;
      v20 = [[CCWalletPaymentsCommerceOrderEmailCustomer alloc] initWithJSONDictionary:v19 error:&v38];
      v21 = v38;
      v17 = v21;
      if (!v20 || v21)
      {
        CCSetError();
        v14 = 0;
LABEL_40:

        v15 = v33;
        goto LABEL_41;
      }

      v19 = v20;
    }

    v17 = [v6 objectForKeyedSubscript:@"shippingRecipient"];
    v31 = v10;
    if (v17)
    {
      v37 = 0;
      v22 = [[CCWalletPaymentsCommerceOrderEmailShippingRecipient alloc] initWithJSONDictionary:v17 error:&v37];
      v23 = v37;
      v20 = v23;
      if (!v22 || v23)
      {
        CCSetError();
        v14 = 0;
        goto LABEL_39;
      }

      v17 = v22;
    }

    v20 = [v6 objectForKeyedSubscript:@"shippingInformation"];
    v30 = self;
    if (v20)
    {
      v36 = 0;
      v24 = [[CCWalletPaymentsCommerceOrderEmailShippingInformation alloc] initWithJSONDictionary:v20 error:&v36];
      v25 = v36;
      v22 = v25;
      if (!v24 || v25)
      {
        CCSetError();
        goto LABEL_38;
      }

      v20 = v24;
      self = v30;
    }

    v22 = [v6 objectForKeyedSubscript:@"paymentInformation"];
    if (!v22)
    {
LABEL_32:
      v14 = [[CCWalletPaymentsCommerceOrderEmail alloc] initWithEmailMetadata:v9 emailType:v32 orderNumber:v31 orderDate:v33 merchant:v34 customer:v19 shippingRecipient:v17 shippingInformation:v20 paymentInformation:v22 error:a4];
LABEL_39:

      v10 = v31;
      goto LABEL_40;
    }

    v35 = 0;
    v26 = [[CCWalletPaymentsCommerceOrderEmailPaymentInformation alloc] initWithJSONDictionary:v22 error:&v35];
    v27 = v35;
    v29 = v26;
    if (v26 && !v27)
    {

      v22 = v26;
      self = v30;
      goto LABEL_32;
    }

    v24 = v27;
    CCSetError();

LABEL_38:
    v14 = 0;
    self = v30;
    goto LABEL_39;
  }

  CCSetError();
  v14 = 0;
LABEL_43:

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_emailMetadata)
  {
    v4 = [(CCWalletPaymentsCommerceOrderEmail *)self emailMetadata];
    v5 = [v4 jsonDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"emailMetadata"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletPaymentsCommerceOrderEmail emailType](self, "emailType")}];
  [v3 setObject:v6 forKeyedSubscript:@"emailType"];

  if (self->_orderNumber)
  {
    v7 = [(CCWalletPaymentsCommerceOrderEmail *)self orderNumber];
    [v3 setObject:v7 forKeyedSubscript:@"orderNumber"];
  }

  if (self->_orderDate)
  {
    v8 = [(CCWalletPaymentsCommerceOrderEmail *)self orderDate];
    [v3 setObject:v8 forKeyedSubscript:@"orderDate"];
  }

  if (self->_merchant)
  {
    v9 = [(CCWalletPaymentsCommerceOrderEmail *)self merchant];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"merchant"];
  }

  if (self->_customer)
  {
    v11 = [(CCWalletPaymentsCommerceOrderEmail *)self customer];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"customer"];
  }

  if (self->_shippingRecipient)
  {
    v13 = [(CCWalletPaymentsCommerceOrderEmail *)self shippingRecipient];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"shippingRecipient"];
  }

  if (self->_shippingInformation)
  {
    v15 = [(CCWalletPaymentsCommerceOrderEmail *)self shippingInformation];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"shippingInformation"];
  }

  if (self->_paymentInformation)
  {
    v17 = [(CCWalletPaymentsCommerceOrderEmail *)self paymentInformation];
    v18 = [v17 jsonDictionary];
    [v3 setObject:v18 forKeyedSubscript:@"paymentInformation"];
  }

  v19 = [v3 copy];

  return v19;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v17 = a3;
  if (self->_emailMetadata)
  {
    v5 = objc_alloc(MEMORY[0x1E69939F0]);
    v6 = *MEMORY[0x1E69939A8];
    v7 = [v5 initWithFieldType:v6 subMessageValue:self->_emailMetadata];
    v17[2](v17, v7);
  }

  else
  {
    v6 = *MEMORY[0x1E69939A8];
  }

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_emailType];
  v17[2](v17, v8);

  if (self->_orderNumber)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_orderNumber];
    v17[2](v17, v9);
  }

  if (self->_orderDate)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_orderDate];
    v17[2](v17, v10);
  }

  if (self->_merchant)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_merchant];
    v17[2](v17, v11);
  }

  if (self->_customer)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_customer];
    v17[2](v17, v12);
  }

  if (self->_shippingRecipient)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_shippingRecipient];
    v17[2](v17, v13);
  }

  if (self->_shippingInformation)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_shippingInformation];
    v17[2](v17, v14);
  }

  v15 = v17;
  if (self->_paymentInformation)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_paymentInformation];
    v17[2](v17, v16);

    v15 = v17;
  }
}

- (CCWalletPaymentsCommerceOrderEmailPaymentInformation)paymentInformation
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailPaymentInformation *)self->_paymentInformation copy];

  return v2;
}

- (CCWalletPaymentsCommerceOrderEmailShippingInformation)shippingInformation
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self->_shippingInformation copy];

  return v2;
}

- (CCWalletPaymentsCommerceOrderEmailShippingRecipient)shippingRecipient
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailShippingRecipient *)self->_shippingRecipient copy];

  return v2;
}

- (CCWalletPaymentsCommerceOrderEmailCustomer)customer
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailCustomer *)self->_customer copy];

  return v2;
}

- (CCWalletPaymentsCommerceOrderEmailMerchant)merchant
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailMerchant *)self->_merchant copy];

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

- (CCWalletPaymentsCommerceOrderEmailEmailMetadata)emailMetadata
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailEmailMetadata *)self->_emailMetadata copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_62;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_63;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_63;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 <= 6)
        {
          if (v23 == 5)
          {
            v41 = [CCWalletPaymentsCommerceOrderEmailMerchant alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v56 = 0;
            v26 = [(CCItemMessage *)v41 initWithData:v25 error:&v56];
            v10 = v56;
            v27 = 48;
            goto LABEL_50;
          }

          if (v23 == 6)
          {
            v37 = [CCWalletPaymentsCommerceOrderEmailCustomer alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v55 = 0;
            v26 = [(CCItemMessage *)v37 initWithData:v25 error:&v55];
            v10 = v55;
            v27 = 56;
            goto LABEL_50;
          }
        }

        else
        {
          switch(v23)
          {
            case 7:
              v40 = [CCWalletPaymentsCommerceOrderEmailShippingRecipient alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v54 = 0;
              v26 = [(CCItemMessage *)v40 initWithData:v25 error:&v54];
              v10 = v54;
              v27 = 64;
              goto LABEL_50;
            case 8:
              v42 = [CCWalletPaymentsCommerceOrderEmailShippingInformation alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v53 = 0;
              v26 = [(CCItemMessage *)v42 initWithData:v25 error:&v53];
              v10 = v53;
              v27 = 72;
              goto LABEL_50;
            case 9:
              v24 = [CCWalletPaymentsCommerceOrderEmailPaymentInformation alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v52 = 0;
              v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v52];
              v10 = v52;
              v27 = 80;
LABEL_50:
              v43 = *(&self->super.super.isa + v27);
              *(&self->super.super.isa + v27) = v26;

LABEL_51:
              goto LABEL_52;
          }
        }

        goto LABEL_54;
      }

      if (v23 <= 2)
      {
        if (v23 == 1)
        {
          v38 = [CCWalletPaymentsCommerceOrderEmailEmailMetadata alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v57 = 0;
          v26 = [(CCItemMessage *)v38 initWithData:v25 error:&v57];
          v10 = v57;
          v27 = 24;
          goto LABEL_50;
        }

        if (v23 == 2)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            v31 = *v7;
            v32 = *&v6[v31];
            v33 = v32 + 1;
            if (v32 == -1 || v33 > *&v6[*v8])
            {
              break;
            }

            v34 = *(*&v6[*v11] + v32);
            *&v6[v31] = v33;
            v30 |= (v34 & 0x7F) << v28;
            if ((v34 & 0x80) == 0)
            {
              goto LABEL_57;
            }

            v28 += 7;
            v20 = v29++ >= 9;
            if (v20)
            {
              LODWORD(v30) = 0;
              goto LABEL_59;
            }
          }

          *&v6[*v9] = 1;
LABEL_57:
          if (*&v6[*v9])
          {
            LODWORD(v30) = 0;
          }

LABEL_59:
          v10 = 0;
          self->_emailType = v30;
LABEL_52:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        goto LABEL_54;
      }

      if (v23 == 3)
      {
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 32;
      }

      else
      {
        if (v23 != 4)
        {
LABEL_54:
          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v44 = objc_opt_class();
            v25 = NSStringFromClass(v44);
            v45 = *&v6[*v9];
            v10 = CCSkipFieldErrorForMessage();
            goto LABEL_51;
          }

LABEL_46:
          v10 = 0;
          goto LABEL_52;
        }

        v35 = CCPBReaderReadStringNoCopy();
        v36 = 40;
      }

      v39 = *(&self->super.super.isa + v36);
      *(&self->super.super.isa + v36) = v35;

      goto LABEL_46;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_64;
  }

LABEL_62:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v50 = 1;
    goto LABEL_66;
  }

LABEL_63:
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  v48 = *&v6[*v9];
  v49 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_64:
  v50 = 0;
LABEL_66:

  return v50;
}

- (CCWalletPaymentsCommerceOrderEmail)initWithEmailMetadata:(id)a3 emailType:(unsigned int)a4 orderNumber:(id)a5 orderDate:(id)a6 merchant:(id)a7 customer:(id)a8 shippingRecipient:(id)a9 shippingInformation:(id)a10 paymentInformation:(id)a11 error:(id *)a12
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v50 = a9;
  v49 = a10;
  v48 = a11;
  v22 = objc_opt_new();
  if (v17)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v24 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v28 = 0;
      v29 = self;
      goto LABEL_41;
    }

    v25 = [v17 data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v24 = 0;
  }

  v46 = v21;
  if (a4)
  {
    v26 = CCValidateEnumField();
    v27 = v24;

    if (!v26)
    {
      CCSetError();
      v28 = 0;
      v24 = v27;
LABEL_39:
      v29 = self;
LABEL_40:
      v21 = v46;
      goto LABEL_41;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v27 = v24;
  }

  if (!v18)
  {
    v24 = v27;
    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_18:
    objc_opt_class();
    v34 = CCValidateIsInstanceOfExpectedClass();
    v31 = v24;

    if (!v34)
    {
LABEL_33:
      CCSetError();
      v28 = 0;
      v24 = v31;
      goto LABEL_39;
    }

    CCPBDataWriterWriteStringField();
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  objc_opt_class();
  v30 = CCValidateIsInstanceOfExpectedClass();
  v24 = v27;

  if (!v30)
  {
    goto LABEL_38;
  }

  CCPBDataWriterWriteStringField();
  if (v19)
  {
    goto LABEL_18;
  }

LABEL_13:
  v31 = v24;
  if (v20)
  {
LABEL_14:
    objc_opt_class();
    v32 = CCValidateIsInstanceOfExpectedClass();
    v24 = v31;

    if (!v32)
    {
      goto LABEL_38;
    }

    v33 = [v20 data];
    CCPBDataWriterWriteDataField();

    goto LABEL_21;
  }

LABEL_20:
  v24 = v31;
LABEL_21:
  if (!v46)
  {
    v36 = v24;
    goto LABEL_25;
  }

  objc_opt_class();
  v35 = CCValidateIsInstanceOfExpectedClass();
  v36 = v24;

  if (v35)
  {
    v37 = [v46 data];
    CCPBDataWriterWriteDataField();

LABEL_25:
    if (!v50)
    {
      v24 = v36;
      goto LABEL_30;
    }

    objc_opt_class();
    v38 = CCValidateIsInstanceOfExpectedClass();
    v24 = v36;

    if (v38)
    {
      v39 = [v50 data];
      CCPBDataWriterWriteDataField();

LABEL_30:
      if (!v49)
      {
        v31 = v24;
        goto LABEL_35;
      }

      objc_opt_class();
      v40 = CCValidateIsInstanceOfExpectedClass();
      v31 = v24;

      if (v40)
      {
        v41 = [v49 data];
        CCPBDataWriterWriteDataField();

LABEL_35:
        if (!v48)
        {
          v24 = v31;
          goto LABEL_43;
        }

        objc_opt_class();
        v42 = CCValidateIsInstanceOfExpectedClass();
        v24 = v31;

        if (v42)
        {
          v43 = [v48 data];
          CCPBDataWriterWriteDataField();

LABEL_43:
          v45 = [v22 immutableData];
          v29 = [(CCItemMessage *)self initWithData:v45 error:a12];

          v28 = v29;
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      goto LABEL_33;
    }

LABEL_38:
    CCSetError();
    v28 = 0;
    goto LABEL_39;
  }

  CCSetError();
  v28 = 0;
  v24 = v36;
  v29 = self;
  v21 = v46;
LABEL_41:

  return v28;
}

@end