@interface CCWalletExtractedOrderContentExtractedEmailOrderDetails
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletExtractedOrderContentExtractedEmailOrderDetails)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletExtractedOrderContentExtractedEmailOrderDetails)initWithOrderNumber:(id)a3 merchant:(id)a4 shippingDetails:(id)a5 orderContentType:(unsigned int)a6 error:(id *)a7;
- (CCWalletExtractedOrderContentExtractedEmailShippingDetails)shippingDetails;
- (CCWalletPaymentsCommerceOrderEmailMerchant)merchant;
- (NSString)orderNumber;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletExtractedOrderContentExtractedEmailOrderDetails

- (CCWalletExtractedOrderContentExtractedEmailOrderDetails)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v21[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"orderNumber"];
    v10 = [v6 objectForKeyedSubscript:@"merchant"];
    if (v10)
    {
      v21[0] = 0;
      v11 = [[CCWalletPaymentsCommerceOrderEmailMerchant alloc] initWithJSONDictionary:v10 error:v21];
      v12 = v21[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        goto LABEL_15;
      }

      v10 = v11;
    }

    v13 = [v6 objectForKeyedSubscript:@"shippingDetails"];
    if (!v13)
    {
LABEL_10:
      v16 = [v6 objectForKeyedSubscript:@"orderContentType"];
      v11 = v16;
      if (v16)
      {
        v17 = [(CCWalletPaymentsCommerceOrderEmailMerchant *)v16 unsignedIntegerValue];
      }

      else
      {
        v17 = 0;
      }

      v18 = [[CCWalletExtractedOrderContentExtractedEmailOrderDetails alloc] initWithOrderNumber:v9 merchant:v10 shippingDetails:v13 orderContentType:v17 error:a4];
      goto LABEL_18;
    }

    v20 = 0;
    v14 = [[CCWalletExtractedOrderContentExtractedEmailShippingDetails alloc] initWithJSONDictionary:v13 error:&v20];
    v15 = v20;
    v11 = v15;
    if (v14 && !v15)
    {

      v13 = v14;
      goto LABEL_10;
    }

    CCSetError();

LABEL_15:
    v18 = 0;
LABEL_18:

    goto LABEL_19;
  }

  CCSetError();
  v18 = 0;
LABEL_19:

  return v18;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_orderNumber)
  {
    v4 = [(CCWalletExtractedOrderContentExtractedEmailOrderDetails *)self orderNumber];
    [v3 setObject:v4 forKeyedSubscript:@"orderNumber"];
  }

  if (self->_merchant)
  {
    v5 = [(CCWalletExtractedOrderContentExtractedEmailOrderDetails *)self merchant];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"merchant"];
  }

  if (self->_shippingDetails)
  {
    v7 = [(CCWalletExtractedOrderContentExtractedEmailOrderDetails *)self shippingDetails];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"shippingDetails"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletExtractedOrderContentExtractedEmailOrderDetails orderContentType](self, "orderContentType")}];
  [v3 setObject:v9 forKeyedSubscript:@"orderContentType"];

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v9 = a3;
  if (self->_orderNumber)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8023 stringValue:self->_orderNumber];
    v9[2](v9, v5);
  }

  if (self->_merchant)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8024 subMessageValue:self->_merchant];
    v9[2](v9, v6);
  }

  if (self->_shippingDetails)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8026 subMessageValue:self->_shippingDetails];
    v9[2](v9, v7);
  }

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8037 enumValue:self->_orderContentType];
  v9[2](v9, v8);
}

- (CCWalletExtractedOrderContentExtractedEmailShippingDetails)shippingDetails
{
  v2 = [(CCWalletExtractedOrderContentExtractedEmailShippingDetails *)self->_shippingDetails copy];

  return v2;
}

- (CCWalletPaymentsCommerceOrderEmailMerchant)merchant
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailMerchant *)self->_merchant copy];

  return v2;
}

- (NSString)orderNumber
{
  v2 = [(NSString *)self->_orderNumber copy];

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
    goto LABEL_48;
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
            goto LABEL_49;
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
        goto LABEL_49;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v39 = [CCWalletExtractedOrderContentExtractedEmailShippingDetails alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v47 = 0;
          v26 = [(CCItemMessage *)v39 initWithData:v25 error:&v47];
          v10 = v47;
          v27 = 40;
          goto LABEL_39;
        }

        if (v23 == 4)
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
              goto LABEL_42;
            }

            v28 += 7;
            v20 = v29++ >= 9;
            if (v20)
            {
              LODWORD(v30) = 0;
              goto LABEL_44;
            }
          }

          *&v6[*v9] = 1;
LABEL_42:
          if (*&v6[*v9])
          {
            LODWORD(v30) = 0;
          }

LABEL_44:
          v10 = 0;
          self->_orderContentType = v30;
LABEL_45:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v37 = CCPBReaderReadStringNoCopy();
          orderNumber = self->_orderNumber;
          self->_orderNumber = v37;

          goto LABEL_37;
        }

        if (v23 == 2)
        {
          v24 = [CCWalletPaymentsCommerceOrderEmailMerchant alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v48 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v48];
          v10 = v48;
          v27 = 32;
LABEL_39:
          v40 = *(&self->super.super.isa + v27);
          *(&self->super.super.isa + v27) = v26;

          goto LABEL_40;
        }
      }

      if ((CCPBReaderSkipValueWithTag() & 1) == 0)
      {
        v35 = objc_opt_class();
        v25 = NSStringFromClass(v35);
        v36 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
LABEL_40:

        goto LABEL_45;
      }

LABEL_37:
      v10 = 0;
      goto LABEL_45;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_50;
  }

LABEL_48:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v45 = 1;
    goto LABEL_52;
  }

LABEL_49:
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  v43 = *&v6[*v9];
  v44 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_50:
  v45 = 0;
LABEL_52:

  return v45;
}

- (CCWalletExtractedOrderContentExtractedEmailOrderDetails)initWithOrderNumber:(id)a3 merchant:(id)a4 shippingDetails:(id)a5 orderContentType:(unsigned int)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = objc_opt_new();
  if (v12)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v17 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

    CCPBDataWriterWriteStringField();
    if (!v13)
    {
LABEL_4:
      v18 = v17;
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_12:
      v17 = v18;
      if (!a6)
      {
LABEL_15:
        v25 = [v15 immutableData];
        self = [(CCItemMessage *)self initWithData:v25 error:a7];

        v21 = self;
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v22 = CCValidateIsInstanceOfExpectedClass();
  v18 = v17;

  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = [v13 data];
  CCPBDataWriterWriteDataField();

  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v17 = v18;

  if (v19)
  {
    v20 = [v14 data];
    CCPBDataWriterWriteDataField();

    if (!a6)
    {
      goto LABEL_15;
    }

LABEL_13:
    v27 = v17;
    v24 = CCValidateEnumField();
    v18 = v17;

    if (v24)
    {
      CCPBDataWriterWriteUint32Field();
      v17 = v18;
      goto LABEL_15;
    }

LABEL_16:
    CCSetError();
    v21 = 0;
    v17 = v18;
    goto LABEL_17;
  }

LABEL_8:
  CCSetError();
  v21 = 0;
LABEL_17:

  return v21;
}

@end