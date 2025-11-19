@interface CCWalletExtractedOrderContentShippingFulfillment
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletExtractedOrderContentShippingFulfillment)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletExtractedOrderContentShippingFulfillment)initWithStatus:(unsigned int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14 shippingRecipient:(id)a15 fulfillmentUpdateDate:(id)a16 error:(id *)a17;
- (CCWalletPaymentsCommerceTrackedOrderShippingRecipient)shippingRecipient;
- (NSDate)fulfillmentUpdateDate;
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

@implementation CCWalletExtractedOrderContentShippingFulfillment

- (CCWalletExtractedOrderContentShippingFulfillment)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v55[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v7 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v8 = [v5 objectForKeyedSubscript:@"status"];
    v48 = v8;
    v42 = a4;
    if (v8)
    {
      v40 = [v8 unsignedIntegerValue];
    }

    else
    {
      v40 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"trackingNumber"];
    v51 = [v5 objectForKeyedSubscript:@"carrierName"];
    v11 = [v5 objectForKeyedSubscript:@"shippingMethod"];
    v12 = [v5 objectForKeyedSubscript:@"shippingDate"];
    v13 = [v5 objectForKeyedSubscript:@"shippingTime"];
    v46 = [v5 objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
    v14 = [v5 objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
    v44 = [v5 objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
    v15 = [v5 objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
    v16 = [v5 objectForKeyedSubscript:@"deliveryDate"];
    v43 = [v5 objectForKeyedSubscript:@"deliveryTime"];
    v17 = [v5 objectForKeyedSubscript:@"shippingRecipient"];
    v52 = v10;
    v53 = v13;
    v47 = v12;
    v50 = v14;
    v49 = v16;
    v41 = v11;
    if (v17)
    {
      v18 = v17;
      v19 = v11;
      v55[0] = 0;
      v20 = [[CCWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initWithJSONDictionary:v17 error:v55];
      v21 = v55[0];
      v22 = v21;
      if (!v20 || v21)
      {
        v45 = v7;
        CCSetError();

        v9 = 0;
        v31 = v46;
        v30 = v47;
        v32 = v43;
        v33 = v44;
        goto LABEL_18;
      }

      v39 = v15;

      v38 = v20;
      v23 = v53;
      v24 = v50;
    }

    else
    {
      v23 = v13;
      v38 = 0;
      v39 = v15;
      v19 = v11;
      v24 = v14;
    }

    v22 = [v5 objectForKeyedSubscript:@"fulfillmentUpdateDate"];
    if (!v22)
    {
      v45 = v7;
      v29 = v23;
      goto LABEL_16;
    }

    objc_opt_class();
    v25 = CCValidateIsInstanceOfExpectedClass();
    v26 = v7;

    if (v25)
    {
      v27 = objc_alloc(MEMORY[0x1E695DF00]);
      [v22 doubleValue];
      v28 = [v27 initWithTimeIntervalSinceReferenceDate:?];

      v45 = v26;
      v22 = v28;
      v29 = v53;
      v16 = v49;
LABEL_16:
      v34 = [CCWalletExtractedOrderContentShippingFulfillment alloc];
      v18 = v38;
      v32 = v43;
      v15 = v39;
      v33 = v44;
      v37 = v24;
      v31 = v46;
      v35 = v19;
      v30 = v47;
      v9 = [(CCWalletExtractedOrderContentShippingFulfillment *)v34 initWithStatus:v40 trackingNumber:v52 carrierName:v51 shippingMethod:v35 shippingDate:v47 shippingTime:v29 estimatedDeliveryStartDate:v46 estimatedDeliveryStartTime:v37 estimatedDeliveryEndDate:v44 estimatedDeliveryEndTime:v39 deliveryDate:v16 deliveryTime:v43 shippingRecipient:v38 fulfillmentUpdateDate:v22 error:v42];
LABEL_19:

      v7 = v45;
      goto LABEL_20;
    }

    CCSetError();
    v9 = 0;
    v45 = v26;
    v31 = v46;
    v30 = v47;
    v33 = v44;
    v32 = v43;
    v18 = v38;
    v15 = v39;
LABEL_18:
    v16 = v49;
    goto LABEL_19;
  }

  CCSetError();
  v9 = 0;
LABEL_20:

  return v9;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletExtractedOrderContentShippingFulfillment status](self, "status")}];
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  if (self->_trackingNumber)
  {
    v5 = [(CCWalletExtractedOrderContentShippingFulfillment *)self trackingNumber];
    [v3 setObject:v5 forKeyedSubscript:@"trackingNumber"];
  }

  if (self->_carrierName)
  {
    v6 = [(CCWalletExtractedOrderContentShippingFulfillment *)self carrierName];
    [v3 setObject:v6 forKeyedSubscript:@"carrierName"];
  }

  if (self->_shippingMethod)
  {
    v7 = [(CCWalletExtractedOrderContentShippingFulfillment *)self shippingMethod];
    [v3 setObject:v7 forKeyedSubscript:@"shippingMethod"];
  }

  if (self->_shippingDate)
  {
    v8 = [(CCWalletExtractedOrderContentShippingFulfillment *)self shippingDate];
    [v3 setObject:v8 forKeyedSubscript:@"shippingDate"];
  }

  if (self->_shippingTime)
  {
    v9 = [(CCWalletExtractedOrderContentShippingFulfillment *)self shippingTime];
    [v3 setObject:v9 forKeyedSubscript:@"shippingTime"];
  }

  if (self->_estimatedDeliveryStartDate)
  {
    v10 = [(CCWalletExtractedOrderContentShippingFulfillment *)self estimatedDeliveryStartDate];
    [v3 setObject:v10 forKeyedSubscript:@"estimatedDeliveryStartDate"];
  }

  if (self->_estimatedDeliveryStartTime)
  {
    v11 = [(CCWalletExtractedOrderContentShippingFulfillment *)self estimatedDeliveryStartTime];
    [v3 setObject:v11 forKeyedSubscript:@"estimatedDeliveryStartTime"];
  }

  if (self->_estimatedDeliveryEndDate)
  {
    v12 = [(CCWalletExtractedOrderContentShippingFulfillment *)self estimatedDeliveryEndDate];
    [v3 setObject:v12 forKeyedSubscript:@"estimatedDeliveryEndDate"];
  }

  if (self->_estimatedDeliveryEndTime)
  {
    v13 = [(CCWalletExtractedOrderContentShippingFulfillment *)self estimatedDeliveryEndTime];
    [v3 setObject:v13 forKeyedSubscript:@"estimatedDeliveryEndTime"];
  }

  if (self->_deliveryDate)
  {
    v14 = [(CCWalletExtractedOrderContentShippingFulfillment *)self deliveryDate];
    [v3 setObject:v14 forKeyedSubscript:@"deliveryDate"];
  }

  if (self->_deliveryTime)
  {
    v15 = [(CCWalletExtractedOrderContentShippingFulfillment *)self deliveryTime];
    [v3 setObject:v15 forKeyedSubscript:@"deliveryTime"];
  }

  if (self->_shippingRecipient)
  {
    v16 = [(CCWalletExtractedOrderContentShippingFulfillment *)self shippingRecipient];
    v17 = [v16 jsonDictionary];
    [v3 setObject:v17 forKeyedSubscript:@"shippingRecipient"];
  }

  if (self->_hasRaw_fulfillmentUpdateDate)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_fulfillmentUpdateDate];
    [v3 setObject:v18 forKeyedSubscript:@"fulfillmentUpdateDate"];
  }

  v19 = [v3 copy];

  return v19;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v19 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7974 enumValue:self->_status];
  v19[2](v19, v5);

  if (self->_trackingNumber)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7975 stringValue:self->_trackingNumber];
    v19[2](v19, v6);
  }

  if (self->_carrierName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7976 stringValue:self->_carrierName];
    v19[2](v19, v7);
  }

  if (self->_shippingMethod)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7977 stringValue:self->_shippingMethod];
    v19[2](v19, v8);
  }

  if (self->_shippingDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7978 stringValue:self->_shippingDate];
    v19[2](v19, v9);
  }

  if (self->_shippingTime)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7979 stringValue:self->_shippingTime];
    v19[2](v19, v10);
  }

  if (self->_estimatedDeliveryStartDate)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7980 stringValue:self->_estimatedDeliveryStartDate];
    v19[2](v19, v11);
  }

  if (self->_estimatedDeliveryStartTime)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7981 stringValue:self->_estimatedDeliveryStartTime];
    v19[2](v19, v12);
  }

  if (self->_estimatedDeliveryEndDate)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7982 stringValue:self->_estimatedDeliveryEndDate];
    v19[2](v19, v13);
  }

  if (self->_estimatedDeliveryEndTime)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7983 stringValue:self->_estimatedDeliveryEndTime];
    v19[2](v19, v14);
  }

  if (self->_deliveryDate)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7984 stringValue:self->_deliveryDate];
    v19[2](v19, v15);
  }

  if (self->_deliveryTime)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7985 stringValue:self->_deliveryTime];
    v19[2](v19, v16);
  }

  if (self->_shippingRecipient)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7986 subMessageValue:self->_shippingRecipient];
    v19[2](v19, v17);
  }

  if (self->_hasRaw_fulfillmentUpdateDate)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8030 doubleValue:self->_raw_fulfillmentUpdateDate];
    v19[2](v19, v18);
  }
}

- (NSDate)fulfillmentUpdateDate
{
  if (self->_hasRaw_fulfillmentUpdateDate)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_fulfillmentUpdateDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    goto LABEL_59;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v51 = v6;
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
        v23 = *v10;
        if (*&v7[v23])
        {
          goto LABEL_60;
        }

        goto LABEL_21;
      }
    }

    *&v7[*v10] = 1;
LABEL_17:
    v23 = *v10;
    v24 = *&v7[v23];
    if (v24)
    {
      v22 = 0;
    }

    else
    {
      v22 = v16;
    }

    if (v24)
    {
      goto LABEL_60;
    }

LABEL_21:
    switch((v22 >> 3))
    {
      case 2u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        break;
      case 3u:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 40;
        goto LABEL_44;
      case 4u:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 48;
        goto LABEL_44;
      case 6u:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 56;
        goto LABEL_44;
      case 7u:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 64;
        goto LABEL_44;
      case 8u:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 72;
        goto LABEL_44;
      case 9u:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 80;
        goto LABEL_44;
      case 0xAu:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 88;
        goto LABEL_44;
      case 0xBu:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 96;
        goto LABEL_44;
      case 0xCu:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 104;
        goto LABEL_44;
      case 0xDu:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 112;
        goto LABEL_44;
      case 0xEu:
        v35 = CCPBReaderReadStringNoCopy();
        v36 = 120;
LABEL_44:
        v42 = *(&self->super.super.isa + v36);
        *(&self->super.super.isa + v36) = v35;

        goto LABEL_45;
      case 0xFu:
        v37 = [CCWalletPaymentsCommerceTrackedOrderShippingRecipient alloc];
        CCPBReaderReadDataNoCopy();
        v39 = v38 = a4;
        v52 = 0;
        v40 = [(CCItemMessage *)v37 initWithData:v39 error:&v52];
        v11 = v52;
        shippingRecipient = self->_shippingRecipient;
        self->_shippingRecipient = v40;

        goto LABEL_50;
      case 0x10u:
        v32 = *v8;
        v33 = *&v7[v32];
        if (v33 <= 0xFFFFFFFFFFFFFFF7 && v33 + 8 <= *&v7[*v9])
        {
          v34 = *(*&v7[*v12] + v33);
          *&v7[v32] = v33 + 8;
        }

        else
        {
          *&v7[v23] = 1;
          v34 = 0.0;
        }

        v11 = 0;
        self->_raw_fulfillmentUpdateDate = v34;
        self->_hasRaw_fulfillmentUpdateDate = 1;
        continue;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
LABEL_45:
          v11 = 0;
        }

        else
        {
          v43 = objc_opt_class();
          NSStringFromClass(v43);
          v39 = v38 = a4;
          v44 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();
LABEL_50:

          a4 = v38;
          v6 = v51;
        }

        continue;
    }

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
        goto LABEL_52;
      }

      v25 += 7;
      v21 = v26++ >= 9;
      if (v21)
      {
        LODWORD(v27) = 0;
        goto LABEL_54;
      }
    }

    *&v7[*v10] = 1;
LABEL_52:
    if (*&v7[*v10])
    {
      LODWORD(v27) = 0;
    }

LABEL_54:
    v11 = 0;
    self->_status = v27;
  }

  while (*&v7[*v8] < *&v7[*v9]);
  if (v11)
  {
    CCSetError();
  }

  else
  {
LABEL_59:
    if (!*&v7[*v10])
    {
      v11 = 0;
      v49 = 1;
      goto LABEL_63;
    }

LABEL_60:
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v47 = *&v7[*v10];
    v48 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v11 = 0;
  }

  v49 = 0;
LABEL_63:

  return v49;
}

- (CCWalletExtractedOrderContentShippingFulfillment)initWithStatus:(unsigned int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14 shippingRecipient:(id)a15 fulfillmentUpdateDate:(id)a16 error:(id *)a17
{
  v74 = a4;
  v66 = a5;
  v22 = a6;
  v23 = a7;
  v73 = a8;
  v72 = a9;
  v24 = a10;
  v71 = a11;
  v25 = a12;
  v70 = a13;
  v26 = a14;
  v69 = a15;
  v68 = a16;
  v27 = objc_opt_new();
  if (a3)
  {
    v28 = CCValidateEnumField();
    v29 = 0;
    if (!v28)
    {
      v37 = v25;
      CCSetError();
      v38 = 0;
      v39 = self;
      v30 = v23;
      v32 = v22;
      v35 = v66;
      goto LABEL_58;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v29 = 0;
  }

  v30 = v23;
  v65 = v24;
  v31 = 0x1E696A000uLL;
  v32 = v22;
  if (v74)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v34 = v29;

    v35 = v66;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_54;
    }

    CCPBDataWriterWriteStringField();
    v31 = 0x1E696A000uLL;
    if (!v66)
    {
LABEL_8:
      v29 = v34;
      if (v32)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v34 = v29;
    v35 = v66;
    if (!v66)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v40 = CCValidateIsInstanceOfExpectedClass();
  v29 = v34;

  if (!v40)
  {
    goto LABEL_55;
  }

  CCPBDataWriterWriteStringField();
  v31 = 0x1E696A000uLL;
  if (v32)
  {
LABEL_9:
    objc_opt_class();
    v36 = CCValidateIsInstanceOfExpectedClass();
    v34 = v29;

    if (!v36)
    {
      goto LABEL_54;
    }

    CCPBDataWriterWriteStringField();
    v31 = 0x1E696A000;
    if (!v30)
    {
      goto LABEL_11;
    }

LABEL_17:
    v41 = *(v31 + 3776);
    objc_opt_class();
    v42 = CCValidateIsInstanceOfExpectedClass();
    v29 = v34;

    if (!v42)
    {
      goto LABEL_55;
    }

    CCPBDataWriterWriteStringField();
    v31 = 0x1E696A000uLL;
    goto LABEL_19;
  }

LABEL_16:
  v34 = v29;
  if (v30)
  {
    goto LABEL_17;
  }

LABEL_11:
  v29 = v34;
LABEL_19:
  if (v73)
  {
    v43 = *(v31 + 3776);
    objc_opt_class();
    v44 = CCValidateIsInstanceOfExpectedClass();
    v34 = v29;

    if (!v44)
    {
      goto LABEL_54;
    }

    CCPBDataWriterWriteStringField();
    v31 = 0x1E696A000;
  }

  else
  {
    v34 = v29;
  }

  if (v72)
  {
    v45 = *(v31 + 3776);
    objc_opt_class();
    v46 = CCValidateIsInstanceOfExpectedClass();
    v29 = v34;

    if (!v46)
    {
      goto LABEL_55;
    }

    CCPBDataWriterWriteStringField();
    v47 = v65;
    v31 = 0x1E696A000;
    if (!v65)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v29 = v34;
    v47 = v65;
    if (!v65)
    {
LABEL_26:
      v48 = v29;
LABEL_30:
      if (v71)
      {
        v51 = *(v31 + 3776);
        objc_opt_class();
        v52 = CCValidateIsInstanceOfExpectedClass();
        v29 = v48;

        if (!v52)
        {
          goto LABEL_55;
        }

        CCPBDataWriterWriteStringField();
        v31 = 0x1E696A000;
      }

      else
      {
        v29 = v48;
      }

      if (v25)
      {
        v54 = *(v31 + 3776);
        objc_opt_class();
        v55 = CCValidateIsInstanceOfExpectedClass();
        v34 = v29;

        if (!v55)
        {
          goto LABEL_54;
        }

        CCPBDataWriterWriteStringField();
        v31 = 0x1E696A000;
      }

      else
      {
        v34 = v29;
      }

      if (v70)
      {
        v56 = *(v31 + 3776);
        objc_opt_class();
        v57 = CCValidateIsInstanceOfExpectedClass();
        v29 = v34;

        if (!v57)
        {
          goto LABEL_55;
        }

        CCPBDataWriterWriteStringField();
        v31 = 0x1E696A000;
      }

      else
      {
        v29 = v34;
      }

      if (!v26)
      {
        v34 = v29;
        goto LABEL_47;
      }

      v58 = *(v31 + 3776);
      objc_opt_class();
      v59 = CCValidateIsInstanceOfExpectedClass();
      v34 = v29;

      if (v59)
      {
        CCPBDataWriterWriteStringField();
LABEL_47:
        if (!v69)
        {
          v29 = v34;
          goto LABEL_51;
        }

        objc_opt_class();
        v60 = CCValidateIsInstanceOfExpectedClass();
        v29 = v34;

        if (v60)
        {
          v61 = [v69 data];
          CCPBDataWriterWriteDataField();

LABEL_51:
          if (!v68)
          {
            v37 = v25;
            goto LABEL_60;
          }

          objc_opt_class();
          v62 = CCValidateIsInstanceOfExpectedClass();
          v34 = v29;

          if (v62)
          {
            v37 = v25;
            [v68 timeIntervalSinceReferenceDate];
            CCPBDataWriterWriteDoubleField();
            v29 = v34;
LABEL_60:
            v64 = [v27 immutableData];
            v39 = [(CCItemMessage *)self initWithData:v64 error:a17];

            v38 = v39;
            goto LABEL_57;
          }

          goto LABEL_54;
        }

LABEL_55:
        v37 = v25;
        CCSetError();
        v38 = 0;
        goto LABEL_56;
      }

LABEL_54:
      v37 = v25;
      CCSetError();
      v38 = 0;
      v29 = v34;
LABEL_56:
      v39 = self;
LABEL_57:
      v24 = v65;
      goto LABEL_58;
    }
  }

  v49 = *(v31 + 3776);
  objc_opt_class();
  v50 = CCValidateIsInstanceOfExpectedClass();
  v48 = v29;

  if (v50)
  {
    CCPBDataWriterWriteStringField();
    v31 = 0x1E696A000uLL;
    goto LABEL_30;
  }

  v37 = v25;
  CCSetError();
  v53 = v47;
  v38 = 0;
  v29 = v48;
  v39 = self;
  v24 = v53;
LABEL_58:

  return v38;
}

@end