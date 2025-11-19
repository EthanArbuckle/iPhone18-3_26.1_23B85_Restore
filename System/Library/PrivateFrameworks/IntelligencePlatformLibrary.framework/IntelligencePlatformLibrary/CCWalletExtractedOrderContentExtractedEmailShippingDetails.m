@interface CCWalletExtractedOrderContentExtractedEmailShippingDetails
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletExtractedOrderContentExtractedEmailShippingDetails)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletExtractedOrderContentExtractedEmailShippingDetails)initWithStatus:(unsigned int)a3 trackingNumber:(id)a4 carrierName:(id)a5 error:(id *)a6;
- (NSString)carrierName;
- (NSString)trackingNumber;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletExtractedOrderContentExtractedEmailShippingDetails

- (CCWalletExtractedOrderContentExtractedEmailShippingDetails)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"status"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"trackingNumber"];
    v14 = [v6 objectForKeyedSubscript:@"carrierName"];
    v12 = [[CCWalletExtractedOrderContentExtractedEmailShippingDetails alloc] initWithStatus:v11 trackingNumber:v13 carrierName:v14 error:a4];
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletExtractedOrderContentExtractedEmailShippingDetails status](self, "status")}];
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  if (self->_trackingNumber)
  {
    v5 = [(CCWalletExtractedOrderContentExtractedEmailShippingDetails *)self trackingNumber];
    [v3 setObject:v5 forKeyedSubscript:@"trackingNumber"];
  }

  if (self->_carrierName)
  {
    v6 = [(CCWalletExtractedOrderContentExtractedEmailShippingDetails *)self carrierName];
    [v3 setObject:v6 forKeyedSubscript:@"carrierName"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8027 enumValue:self->_status];
  v8[2](v8, v5);

  if (self->_trackingNumber)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8028 stringValue:self->_trackingNumber];
    v8[2](v8, v6);
  }

  if (self->_carrierName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8029 stringValue:self->_carrierName];
    v8[2](v8, v7);
  }
}

- (NSString)carrierName
{
  v2 = [(NSString *)self->_carrierName copy];

  return v2;
}

- (NSString)trackingNumber
{
  v2 = [(NSString *)self->_trackingNumber copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_44;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v45 = self;
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        v19 = v18 + 1;
        if (v18 == -1 || v19 > *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v12] + v18);
        *&v7[v17] = v19;
        v16 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v21 = v15++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_45;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *&v7[*v10];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v23)
      {
        goto LABEL_45;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) == 3)
      {
        v32 = CCPBReaderReadStringNoCopy();
        v33 = 32;
      }

      else
      {
        if (v24 != 2)
        {
          if (v24 == 1)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v28 = *v8;
              v29 = *&v7[v28];
              v30 = v29 + 1;
              if (v29 == -1 || v30 > *&v7[*v9])
              {
                break;
              }

              v31 = *(*&v7[*v12] + v29);
              *&v7[v28] = v30;
              v27 |= (v31 & 0x7F) << v25;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_38;
              }

              v25 += 7;
              v21 = v26++ >= 9;
              if (v21)
              {
                LODWORD(v27) = 0;
                goto LABEL_40;
              }
            }

            *&v7[*v10] = 1;
LABEL_38:
            if (*&v7[*v10])
            {
              LODWORD(v27) = 0;
            }

LABEL_40:
            v11 = 0;
            self->_status = v27;
LABEL_41:
            if (*&v7[*v8] < *&v7[*v9])
            {
              continue;
            }

            break;
          }

          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v35 = objc_opt_class();
            NSStringFromClass(v35);
            v36 = v6;
            v38 = v37 = a4;
            v39 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            a4 = v37;
            v6 = v36;
            self = v45;
            goto LABEL_41;
          }

LABEL_34:
          v11 = 0;
          goto LABEL_41;
        }

        v32 = CCPBReaderReadStringNoCopy();
        v33 = 24;
      }

      v34 = *(&self->super.super.isa + v33);
      *(&self->super.super.isa + v33) = v32;

      goto LABEL_34;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_46;
  }

LABEL_44:
  if (!*&v7[*v10])
  {
    v43 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v40 = objc_opt_class();
  v11 = NSStringFromClass(v40);
  v41 = *&v7[*v10];
  v42 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_46:
  v43 = 0;
LABEL_48:

  return v43;
}

- (CCWalletExtractedOrderContentExtractedEmailShippingDetails)initWithStatus:(unsigned int)a3 trackingNumber:(id)a4 carrierName:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  if (a3)
  {
    v13 = CCValidateEnumField();
    v14 = 0;
    if (!v13)
    {
      goto LABEL_13;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v16 = v14;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v19 = 0;
      v14 = v16;
      goto LABEL_15;
    }

    CCPBDataWriterWriteStringField();
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v16 = v14;
  if (v11)
  {
LABEL_10:
    objc_opt_class();
    v17 = CCValidateIsInstanceOfExpectedClass();
    v14 = v16;

    if (v17)
    {
      CCPBDataWriterWriteStringField();
      goto LABEL_12;
    }

LABEL_13:
    CCSetError();
    v19 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v14 = v16;
LABEL_12:
  v18 = [v12 immutableData];
  self = [(CCItemMessage *)self initWithData:v18 error:a6];

  v19 = self;
LABEL_15:

  return v19;
}

@end