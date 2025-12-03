@interface CCWalletExtractedOrderContentShippingFulfillment
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletExtractedOrderContentShippingFulfillment)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCWalletExtractedOrderContentShippingFulfillment)initWithStatus:(unsigned int)status trackingNumber:(id)number carrierName:(id)name shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)time estimatedDeliveryStartDate:(id)startDate estimatedDeliveryStartTime:(id)self0 estimatedDeliveryEndDate:(id)self1 estimatedDeliveryEndTime:(id)self2 deliveryDate:(id)self3 deliveryTime:(id)self4 shippingRecipient:(id)self5 fulfillmentUpdateDate:(id)self6 error:(id *)self7;
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
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletExtractedOrderContentShippingFulfillment

- (CCWalletExtractedOrderContentShippingFulfillment)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v55[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v7 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    v48 = v8;
    errorCopy = error;
    if (v8)
    {
      unsignedIntegerValue = [v8 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trackingNumber"];
    v51 = [dictionaryCopy objectForKeyedSubscript:@"carrierName"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"shippingMethod"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"shippingDate"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"shippingTime"];
    v46 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
    v44 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"deliveryDate"];
    v43 = [dictionaryCopy objectForKeyedSubscript:@"deliveryTime"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"shippingRecipient"];
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

    v22 = [dictionaryCopy objectForKeyedSubscript:@"fulfillmentUpdateDate"];
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
      v9 = [(CCWalletExtractedOrderContentShippingFulfillment *)v34 initWithStatus:unsignedIntegerValue trackingNumber:v52 carrierName:v51 shippingMethod:v35 shippingDate:v47 shippingTime:v29 estimatedDeliveryStartDate:v46 estimatedDeliveryStartTime:v37 estimatedDeliveryEndDate:v44 estimatedDeliveryEndTime:v39 deliveryDate:v16 deliveryTime:v43 shippingRecipient:v38 fulfillmentUpdateDate:v22 error:errorCopy];
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
    trackingNumber = [(CCWalletExtractedOrderContentShippingFulfillment *)self trackingNumber];
    [v3 setObject:trackingNumber forKeyedSubscript:@"trackingNumber"];
  }

  if (self->_carrierName)
  {
    carrierName = [(CCWalletExtractedOrderContentShippingFulfillment *)self carrierName];
    [v3 setObject:carrierName forKeyedSubscript:@"carrierName"];
  }

  if (self->_shippingMethod)
  {
    shippingMethod = [(CCWalletExtractedOrderContentShippingFulfillment *)self shippingMethod];
    [v3 setObject:shippingMethod forKeyedSubscript:@"shippingMethod"];
  }

  if (self->_shippingDate)
  {
    shippingDate = [(CCWalletExtractedOrderContentShippingFulfillment *)self shippingDate];
    [v3 setObject:shippingDate forKeyedSubscript:@"shippingDate"];
  }

  if (self->_shippingTime)
  {
    shippingTime = [(CCWalletExtractedOrderContentShippingFulfillment *)self shippingTime];
    [v3 setObject:shippingTime forKeyedSubscript:@"shippingTime"];
  }

  if (self->_estimatedDeliveryStartDate)
  {
    estimatedDeliveryStartDate = [(CCWalletExtractedOrderContentShippingFulfillment *)self estimatedDeliveryStartDate];
    [v3 setObject:estimatedDeliveryStartDate forKeyedSubscript:@"estimatedDeliveryStartDate"];
  }

  if (self->_estimatedDeliveryStartTime)
  {
    estimatedDeliveryStartTime = [(CCWalletExtractedOrderContentShippingFulfillment *)self estimatedDeliveryStartTime];
    [v3 setObject:estimatedDeliveryStartTime forKeyedSubscript:@"estimatedDeliveryStartTime"];
  }

  if (self->_estimatedDeliveryEndDate)
  {
    estimatedDeliveryEndDate = [(CCWalletExtractedOrderContentShippingFulfillment *)self estimatedDeliveryEndDate];
    [v3 setObject:estimatedDeliveryEndDate forKeyedSubscript:@"estimatedDeliveryEndDate"];
  }

  if (self->_estimatedDeliveryEndTime)
  {
    estimatedDeliveryEndTime = [(CCWalletExtractedOrderContentShippingFulfillment *)self estimatedDeliveryEndTime];
    [v3 setObject:estimatedDeliveryEndTime forKeyedSubscript:@"estimatedDeliveryEndTime"];
  }

  if (self->_deliveryDate)
  {
    deliveryDate = [(CCWalletExtractedOrderContentShippingFulfillment *)self deliveryDate];
    [v3 setObject:deliveryDate forKeyedSubscript:@"deliveryDate"];
  }

  if (self->_deliveryTime)
  {
    deliveryTime = [(CCWalletExtractedOrderContentShippingFulfillment *)self deliveryTime];
    [v3 setObject:deliveryTime forKeyedSubscript:@"deliveryTime"];
  }

  if (self->_shippingRecipient)
  {
    shippingRecipient = [(CCWalletExtractedOrderContentShippingFulfillment *)self shippingRecipient];
    jsonDictionary = [shippingRecipient jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"shippingRecipient"];
  }

  if (self->_hasRaw_fulfillmentUpdateDate)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_fulfillmentUpdateDate];
    [v3 setObject:v18 forKeyedSubscript:@"fulfillmentUpdateDate"];
  }

  v19 = [v3 copy];

  return v19;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7974 enumValue:self->_status];
  blockCopy[2](blockCopy, v5);

  if (self->_trackingNumber)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7975 stringValue:self->_trackingNumber];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_carrierName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7976 stringValue:self->_carrierName];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_shippingMethod)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7977 stringValue:self->_shippingMethod];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_shippingDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7978 stringValue:self->_shippingDate];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_shippingTime)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7979 stringValue:self->_shippingTime];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_estimatedDeliveryStartDate)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7980 stringValue:self->_estimatedDeliveryStartDate];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_estimatedDeliveryStartTime)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7981 stringValue:self->_estimatedDeliveryStartTime];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_estimatedDeliveryEndDate)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7982 stringValue:self->_estimatedDeliveryEndDate];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_estimatedDeliveryEndTime)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7983 stringValue:self->_estimatedDeliveryEndTime];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_deliveryDate)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7984 stringValue:self->_deliveryDate];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_deliveryTime)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7985 stringValue:self->_deliveryTime];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_shippingRecipient)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7986 subMessageValue:self->_shippingRecipient];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_hasRaw_fulfillmentUpdateDate)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8030 doubleValue:self->_raw_fulfillmentUpdateDate];
    blockCopy[2](blockCopy, v18);
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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_59;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v51 = dataCopy;
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
        v39 = v38 = error;
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
          v39 = v38 = error;
          v44 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();
LABEL_50:

          error = v38;
          dataCopy = v51;
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

- (CCWalletExtractedOrderContentShippingFulfillment)initWithStatus:(unsigned int)status trackingNumber:(id)number carrierName:(id)name shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)time estimatedDeliveryStartDate:(id)startDate estimatedDeliveryStartTime:(id)self0 estimatedDeliveryEndDate:(id)self1 estimatedDeliveryEndTime:(id)self2 deliveryDate:(id)self3 deliveryTime:(id)self4 shippingRecipient:(id)self5 fulfillmentUpdateDate:(id)self6 error:(id *)self7
{
  numberCopy = number;
  nameCopy = name;
  methodCopy = method;
  dateCopy = date;
  timeCopy = time;
  startDateCopy = startDate;
  startTimeCopy = startTime;
  endDateCopy = endDate;
  endTimeCopy = endTime;
  deliveryDateCopy = deliveryDate;
  deliveryTimeCopy = deliveryTime;
  recipientCopy = recipient;
  updateDateCopy = updateDate;
  v27 = objc_opt_new();
  if (status)
  {
    v28 = CCValidateEnumField();
    v29 = 0;
    if (!v28)
    {
      v37 = endTimeCopy;
      CCSetError();
      v38 = 0;
      selfCopy3 = self;
      v30 = dateCopy;
      v32 = methodCopy;
      v35 = nameCopy;
      goto LABEL_58;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v29 = 0;
  }

  v30 = dateCopy;
  v65 = startTimeCopy;
  v31 = 0x1E696A000uLL;
  v32 = methodCopy;
  if (numberCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v34 = v29;

    v35 = nameCopy;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_54;
    }

    CCPBDataWriterWriteStringField();
    v31 = 0x1E696A000uLL;
    if (!nameCopy)
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
    v35 = nameCopy;
    if (!nameCopy)
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
  if (timeCopy)
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

  if (startDateCopy)
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
      if (endDateCopy)
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

      if (endTimeCopy)
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

      if (deliveryDateCopy)
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

      if (!deliveryTimeCopy)
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
        if (!recipientCopy)
        {
          v29 = v34;
          goto LABEL_51;
        }

        objc_opt_class();
        v60 = CCValidateIsInstanceOfExpectedClass();
        v29 = v34;

        if (v60)
        {
          data = [recipientCopy data];
          CCPBDataWriterWriteDataField();

LABEL_51:
          if (!updateDateCopy)
          {
            v37 = endTimeCopy;
            goto LABEL_60;
          }

          objc_opt_class();
          v62 = CCValidateIsInstanceOfExpectedClass();
          v34 = v29;

          if (v62)
          {
            v37 = endTimeCopy;
            [updateDateCopy timeIntervalSinceReferenceDate];
            CCPBDataWriterWriteDoubleField();
            v29 = v34;
LABEL_60:
            immutableData = [v27 immutableData];
            selfCopy3 = [(CCItemMessage *)self initWithData:immutableData error:error];

            v38 = selfCopy3;
            goto LABEL_57;
          }

          goto LABEL_54;
        }

LABEL_55:
        v37 = endTimeCopy;
        CCSetError();
        v38 = 0;
        goto LABEL_56;
      }

LABEL_54:
      v37 = endTimeCopy;
      CCSetError();
      v38 = 0;
      v29 = v34;
LABEL_56:
      selfCopy3 = self;
LABEL_57:
      startTimeCopy = v65;
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

  v37 = endTimeCopy;
  CCSetError();
  v53 = v47;
  v38 = 0;
  v29 = v48;
  selfCopy3 = self;
  startTimeCopy = v53;
LABEL_58:

  return v38;
}

@end