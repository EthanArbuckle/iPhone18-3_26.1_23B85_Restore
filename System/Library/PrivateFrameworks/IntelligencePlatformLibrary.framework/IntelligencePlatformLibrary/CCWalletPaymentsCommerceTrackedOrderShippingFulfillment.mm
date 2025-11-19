@interface CCWalletPaymentsCommerceTrackedOrderShippingFulfillment
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithStatus:(unsigned int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14 shippingRecipient:(id)a15 error:(id *)a16;
- (CCWalletPaymentsCommerceTrackedOrderShippingRecipient)shippingRecipient;
- (NSString)carrierName;
- (NSString)deliveryDate;
- (NSString)deliveryTime;
- (NSString)estimatedDeliveryEndDate;
- (NSString)estimatedDeliveryEndTime;
- (NSString)estimatedDeliveryStartDate;
- (NSString)estimatedDeliveryStartTime;
- (NSString)shippingDate;
- (NSString)shippingMethod;
- (NSString)shippingTime;
- (NSString)trackingNumber;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceTrackedOrderShippingFulfillment

- (CCWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v48[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"status"];
    v10 = v9;
    if (v9)
    {
      v34 = [v9 unsignedIntegerValue];
    }

    else
    {
      v34 = 0;
    }

    v47 = [v6 objectForKeyedSubscript:@"trackingNumber"];
    v46 = [v6 objectForKeyedSubscript:@"carrierName"];
    v12 = [v6 objectForKeyedSubscript:@"shippingMethod"];
    v41 = [v6 objectForKeyedSubscript:@"shippingDate"];
    v13 = [v6 objectForKeyedSubscript:@"shippingTime"];
    v14 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
    v39 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
    v38 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
    v37 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
    v36 = [v6 objectForKeyedSubscript:@"deliveryDate"];
    v15 = [v6 objectForKeyedSubscript:@"deliveryTime"];
    v16 = [v6 objectForKeyedSubscript:@"shippingRecipient"];
    v42 = v8;
    v43 = v10;
    v40 = self;
    v44 = v15;
    v45 = v14;
    v35 = v12;
    if (v16)
    {
      v17 = v16;
      v18 = a4;
      v48[0] = 0;
      v19 = [[CCWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initWithJSONDictionary:v16 error:v48];
      v20 = v48[0];
      v21 = v20;
      if (!v19 || v20)
      {
        CCSetError();

        v11 = 0;
        v30 = v10;
        v29 = v41;
        v27 = v38;
        v26 = v39;
        v25 = v36;
        v24 = v37;
        goto LABEL_13;
      }

      v22 = v34;
      a4 = v18;
      v15 = v44;
    }

    else
    {
      v19 = 0;
      v22 = v34;
    }

    v23 = [CCWalletPaymentsCommerceTrackedOrderShippingFulfillment alloc];
    v33 = a4;
    v32 = v15;
    v25 = v36;
    v24 = v37;
    v27 = v38;
    v26 = v39;
    v28 = v12;
    v29 = v41;
    v11 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)v23 initWithStatus:v22 trackingNumber:v47 carrierName:v46 shippingMethod:v28 shippingDate:v41 shippingTime:v13 estimatedDeliveryStartDate:v14 estimatedDeliveryStartTime:v39 estimatedDeliveryEndDate:v38 estimatedDeliveryEndTime:v37 deliveryDate:v36 deliveryTime:v32 shippingRecipient:v19 error:v33];
    v17 = v19;
    v30 = v43;
LABEL_13:

    v8 = v42;
    self = v40;
    goto LABEL_14;
  }

  CCSetError();
  v11 = 0;
LABEL_14:

  return v11;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletPaymentsCommerceTrackedOrderShippingFulfillment status](self, "status")}];
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  if (self->_trackingNumber)
  {
    v5 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self trackingNumber];
    [v3 setObject:v5 forKeyedSubscript:@"trackingNumber"];
  }

  if (self->_carrierName)
  {
    v6 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self carrierName];
    [v3 setObject:v6 forKeyedSubscript:@"carrierName"];
  }

  if (self->_shippingMethod)
  {
    v7 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingMethod];
    [v3 setObject:v7 forKeyedSubscript:@"shippingMethod"];
  }

  if (self->_shippingDate)
  {
    v8 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingDate];
    [v3 setObject:v8 forKeyedSubscript:@"shippingDate"];
  }

  if (self->_shippingTime)
  {
    v9 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingTime];
    [v3 setObject:v9 forKeyedSubscript:@"shippingTime"];
  }

  if (self->_estimatedDeliveryStartDate)
  {
    v10 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartDate];
    [v3 setObject:v10 forKeyedSubscript:@"estimatedDeliveryStartDate"];
  }

  if (self->_estimatedDeliveryStartTime)
  {
    v11 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryStartTime];
    [v3 setObject:v11 forKeyedSubscript:@"estimatedDeliveryStartTime"];
  }

  if (self->_estimatedDeliveryEndDate)
  {
    v12 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndDate];
    [v3 setObject:v12 forKeyedSubscript:@"estimatedDeliveryEndDate"];
  }

  if (self->_estimatedDeliveryEndTime)
  {
    v13 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self estimatedDeliveryEndTime];
    [v3 setObject:v13 forKeyedSubscript:@"estimatedDeliveryEndTime"];
  }

  if (self->_deliveryDate)
  {
    v14 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryDate];
    [v3 setObject:v14 forKeyedSubscript:@"deliveryDate"];
  }

  if (self->_deliveryTime)
  {
    v15 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self deliveryTime];
    [v3 setObject:v15 forKeyedSubscript:@"deliveryTime"];
  }

  if (self->_shippingRecipient)
  {
    v16 = [(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment *)self shippingRecipient];
    v17 = [v16 jsonDictionary];
    [v3 setObject:v17 forKeyedSubscript:@"shippingRecipient"];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v21 = a3;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_status];
  v21[2](v21, v7);

  if (self->_trackingNumber)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_trackingNumber];
    v21[2](v21, v8);
  }

  if (self->_carrierName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_carrierName];
    v21[2](v21, v9);
  }

  if (self->_shippingMethod)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingMethod];
    v21[2](v21, v10);
  }

  if (self->_shippingDate)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingDate];
    v21[2](v21, v11);
  }

  if (self->_shippingTime)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingTime];
    v21[2](v21, v12);
  }

  if (self->_estimatedDeliveryStartDate)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryStartDate];
    v21[2](v21, v13);
  }

  if (self->_estimatedDeliveryStartTime)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryStartTime];
    v21[2](v21, v14);
  }

  if (self->_estimatedDeliveryEndDate)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryEndDate];
    v21[2](v21, v15);
  }

  if (self->_estimatedDeliveryEndTime)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryEndTime];
    v21[2](v21, v16);
  }

  if (self->_deliveryDate)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_deliveryDate];
    v21[2](v21, v17);
  }

  if (self->_deliveryTime)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_deliveryTime];
    v21[2](v21, v18);
  }

  v19 = v21;
  if (self->_shippingRecipient)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_shippingRecipient];
    v21[2](v21, v20);

    v19 = v21;
  }
}

- (CCWalletPaymentsCommerceTrackedOrderShippingRecipient)shippingRecipient
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderShippingRecipient *)self->_shippingRecipient copy];

  return v2;
}

- (NSString)deliveryTime
{
  v2 = [(NSString *)self->_deliveryTime copy];

  return v2;
}

- (NSString)deliveryDate
{
  v2 = [(NSString *)self->_deliveryDate copy];

  return v2;
}

- (NSString)estimatedDeliveryEndTime
{
  v2 = [(NSString *)self->_estimatedDeliveryEndTime copy];

  return v2;
}

- (NSString)estimatedDeliveryEndDate
{
  v2 = [(NSString *)self->_estimatedDeliveryEndDate copy];

  return v2;
}

- (NSString)estimatedDeliveryStartTime
{
  v2 = [(NSString *)self->_estimatedDeliveryStartTime copy];

  return v2;
}

- (NSString)estimatedDeliveryStartDate
{
  v2 = [(NSString *)self->_estimatedDeliveryStartDate copy];

  return v2;
}

- (NSString)shippingTime
{
  v2 = [(NSString *)self->_shippingTime copy];

  return v2;
}

- (NSString)shippingDate
{
  v2 = [(NSString *)self->_shippingDate copy];

  return v2;
}

- (NSString)shippingMethod
{
  v2 = [(NSString *)self->_shippingMethod copy];

  return v2;
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
    goto LABEL_54;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v47 = v6;
  do
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (!v13)
    {
      break;
    }

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
          goto LABEL_55;
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
      goto LABEL_55;
    }

LABEL_21:
    switch((v22 >> 3))
    {
      case 1u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        break;
      case 2u:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 24;
        goto LABEL_44;
      case 3u:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 32;
        goto LABEL_44;
      case 4u:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 40;
        goto LABEL_44;
      case 5u:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 48;
        goto LABEL_44;
      case 6u:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 56;
        goto LABEL_44;
      case 7u:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 64;
        goto LABEL_44;
      case 8u:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 72;
        goto LABEL_44;
      case 9u:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 80;
        goto LABEL_44;
      case 0xAu:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 88;
        goto LABEL_44;
      case 0xBu:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 96;
        goto LABEL_44;
      case 0xCu:
        v31 = CCPBReaderReadStringNoCopy();
        v32 = 104;
LABEL_44:
        v40 = *(&self->super.super.isa + v32);
        *(&self->super.super.isa + v32) = v31;

        goto LABEL_45;
      case 0xDu:
        v33 = [CCWalletPaymentsCommerceTrackedOrderShippingRecipient alloc];
        CCPBReaderReadDataNoCopy();
        v35 = v34 = a4;
        v48 = 0;
        v36 = [(CCItemMessage *)v33 initWithData:v35 error:&v48];
        v11 = v48;
        shippingRecipient = self->_shippingRecipient;
        self->_shippingRecipient = v36;

        goto LABEL_40;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
LABEL_45:
          v11 = 0;
        }

        else
        {
          v38 = objc_opt_class();
          NSStringFromClass(v38);
          v35 = v34 = a4;
          v39 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();
LABEL_40:

          a4 = v34;
          v6 = v47;
        }

        continue;
    }

    while (1)
    {
      v27 = *v8;
      v28 = *&v7[v27];
      v29 = v28 + 1;
      if (v28 == -1 || v29 > *&v7[*v9])
      {
        break;
      }

      v30 = *(*&v7[*v12] + v28);
      *&v7[v27] = v29;
      v26 |= (v30 & 0x7F) << v24;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      v24 += 7;
      v21 = v25++ >= 9;
      if (v21)
      {
        LODWORD(v26) = 0;
        goto LABEL_51;
      }
    }

    *&v7[*v10] = 1;
LABEL_49:
    if (*&v7[*v10])
    {
      LODWORD(v26) = 0;
    }

LABEL_51:
    v11 = 0;
    self->_status = v26;
  }

  while (*&v7[*v8] < *&v7[*v9]);
  if (v11)
  {
    CCSetError();
  }

  else
  {
LABEL_54:
    if (!*&v7[*v10])
    {
      v11 = 0;
      v45 = 1;
      goto LABEL_58;
    }

LABEL_55:
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = *&v7[*v10];
    v44 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v11 = 0;
  }

  v45 = 0;
LABEL_58:

  return v45;
}

- (CCWalletPaymentsCommerceTrackedOrderShippingFulfillment)initWithStatus:(unsigned int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14 shippingRecipient:(id)a15 error:(id *)a16
{
  v64 = a4;
  v63 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v73 = a9;
  v72 = a10;
  v24 = a3;
  v71 = a11;
  v70 = a12;
  v69 = a13;
  v68 = a14;
  v67 = a15;
  v25 = objc_opt_new();
  if (!v24)
  {
    v27 = 0;
LABEL_5:
    v28 = v64;
    v29 = v23;
    v30 = v72;
    v31 = 0x1E696A000uLL;
    v32 = v22;
    if (v64)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v34 = v27;

      v35 = v21;
      if (!IsInstanceOfExpectedClass)
      {
        CCSetError();
        v40 = 0;
        v27 = v34;
        v36 = v63;
LABEL_52:
        v41 = self;
        goto LABEL_53;
      }

      CCPBDataWriterWriteStringField();
      v36 = v63;
      v31 = 0x1E696A000uLL;
      if (!v63)
      {
LABEL_8:
        v27 = v34;
        if (v35)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v34 = v27;
      v35 = v21;
      v36 = v63;
      if (!v63)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v42 = CCValidateIsInstanceOfExpectedClass();
    v27 = v34;

    if (!v42)
    {
      goto LABEL_51;
    }

    CCPBDataWriterWriteStringField();
    v31 = 0x1E696A000uLL;
    if (v35)
    {
LABEL_9:
      objc_opt_class();
      v37 = CCValidateIsInstanceOfExpectedClass();
      v38 = v27;

      if (!v37)
      {
        goto LABEL_30;
      }

      CCPBDataWriterWriteStringField();
      v31 = 0x1E696A000uLL;
      if (!v32)
      {
LABEL_11:
        v27 = v38;
        if (v29)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

LABEL_19:
      objc_opt_class();
      v43 = CCValidateIsInstanceOfExpectedClass();
      v27 = v38;

      if (!v43)
      {
        goto LABEL_51;
      }

      CCPBDataWriterWriteStringField();
      v31 = 0x1E696A000uLL;
      if (v29)
      {
LABEL_12:
        objc_opt_class();
        v39 = CCValidateIsInstanceOfExpectedClass();
        v38 = v27;

        if (v39)
        {
          CCPBDataWriterWriteStringField();
          v31 = 0x1E696A000;
LABEL_22:
          if (v73)
          {
            v44 = *(v31 + 3776);
            objc_opt_class();
            v45 = CCValidateIsInstanceOfExpectedClass();
            v27 = v38;

            if (!v45)
            {
              CCSetError();
              v40 = 0;
              v30 = v72;
              goto LABEL_52;
            }

            CCPBDataWriterWriteStringField();
            v31 = 0x1E696A000;
          }

          else
          {
            v27 = v38;
          }

          v30 = v72;
          if (!v72)
          {
            v38 = v27;
            goto LABEL_33;
          }

          v46 = *(v31 + 3776);
          objc_opt_class();
          v47 = CCValidateIsInstanceOfExpectedClass();
          v38 = v27;

          if (v47)
          {
            CCPBDataWriterWriteStringField();
            v31 = 0x1E696A000;
LABEL_33:
            if (v71)
            {
              v48 = *(v31 + 3776);
              objc_opt_class();
              v49 = CCValidateIsInstanceOfExpectedClass();
              v27 = v38;

              if (!v49)
              {
                goto LABEL_51;
              }

              CCPBDataWriterWriteStringField();
              v31 = 0x1E696A000;
            }

            else
            {
              v27 = v38;
            }

            if (v70)
            {
              v50 = *(v31 + 3776);
              objc_opt_class();
              v51 = CCValidateIsInstanceOfExpectedClass();
              v65 = v27;

              if (!v51)
              {
LABEL_46:
                v27 = v65;
                goto LABEL_51;
              }

              CCPBDataWriterWriteStringField();
              v31 = 0x1E696A000uLL;
              v27 = v65;
            }

            if (!v69)
            {
LABEL_43:
              if (!v68)
              {
                v58 = v27;
                goto LABEL_48;
              }

              v56 = *(v31 + 3776);
              objc_opt_class();
              v57 = CCValidateIsInstanceOfExpectedClass();
              v65 = v27;

              if (v57)
              {
                CCPBDataWriterWriteStringField();
                v58 = v65;
LABEL_48:
                if (!v67)
                {
                  v27 = v58;
                  goto LABEL_55;
                }

                objc_opt_class();
                v59 = CCValidateIsInstanceOfExpectedClass();
                v27 = v58;

                if (v59)
                {
                  v60 = [v67 data];
                  CCPBDataWriterWriteDataField();

LABEL_55:
                  v62 = [v25 immutableData];
                  v40 = [(CCItemMessage *)self initWithData:v62 error:a16];

                  v41 = v40;
                  goto LABEL_53;
                }

                goto LABEL_51;
              }

              goto LABEL_46;
            }

            v52 = *(v31 + 3776);
            objc_opt_class();
            v53 = CCValidateIsInstanceOfExpectedClass();
            v54 = v27;
            v55 = v27;
            v27 = v54;

            if (v53)
            {
              CCPBDataWriterWriteStringField();
              v31 = 0x1E696A000uLL;
              goto LABEL_43;
            }

LABEL_51:
            CCSetError();
            v40 = 0;
            goto LABEL_52;
          }
        }

LABEL_30:
        CCSetError();
        v40 = 0;
        v27 = v38;
        goto LABEL_52;
      }

LABEL_21:
      v38 = v27;
      goto LABEL_22;
    }

LABEL_18:
    v38 = v27;
    if (!v32)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v26 = CCValidateEnumField();
  v27 = 0;
  if (v26)
  {
    CCPBDataWriterWriteUint32Field();
    goto LABEL_5;
  }

  CCSetError();
  v40 = 0;
  v28 = v64;
  v41 = self;
  v29 = v23;
  v32 = v22;
  v35 = v21;
  v36 = v63;
  v30 = v72;
LABEL_53:

  return v40;
}

@end