@interface CCWalletPaymentsCommerceOrderEmailShippingInformation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletPaymentsCommerceOrderEmailShippingInformation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCWalletPaymentsCommerceOrderEmailShippingInformation)initWithStatus:(unsigned int)status trackingNumber:(id)number carrierName:(id)name shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)time estimatedDeliveryStartDate:(id)startDate estimatedDeliveryStartTime:(id)self0 estimatedDeliveryEndDate:(id)self1 estimatedDeliveryEndTime:(id)self2 deliveryDate:(id)self3 deliveryTime:(id)self4 error:(id *)self5;
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

@implementation CCWalletPaymentsCommerceOrderEmailShippingInformation

- (CCWalletPaymentsCommerceOrderEmailShippingInformation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    selfCopy = self;
    v24 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"trackingNumber"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"carrierName"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"shippingMethod"];
    v22 = [dictionaryCopy objectForKeyedSubscript:@"shippingDate"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"shippingTime"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"deliveryDate"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"deliveryTime"];
    v10 = [[CCWalletPaymentsCommerceOrderEmailShippingInformation alloc] initWithStatus:unsignedIntegerValue trackingNumber:v20 carrierName:v11 shippingMethod:v12 shippingDate:v22 shippingTime:v21 estimatedDeliveryStartDate:v19 estimatedDeliveryStartTime:v18 estimatedDeliveryEndDate:v17 estimatedDeliveryEndTime:v13 deliveryDate:v14 deliveryTime:v15 error:error];

    self = selfCopy;
  }

  else
  {
    CCSetError();
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCWalletPaymentsCommerceOrderEmailShippingInformation status](self, "status")}];
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  if (self->_trackingNumber)
  {
    trackingNumber = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
    [v3 setObject:trackingNumber forKeyedSubscript:@"trackingNumber"];
  }

  if (self->_carrierName)
  {
    carrierName = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
    [v3 setObject:carrierName forKeyedSubscript:@"carrierName"];
  }

  if (self->_shippingMethod)
  {
    shippingMethod = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
    [v3 setObject:shippingMethod forKeyedSubscript:@"shippingMethod"];
  }

  if (self->_shippingDate)
  {
    shippingDate = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
    [v3 setObject:shippingDate forKeyedSubscript:@"shippingDate"];
  }

  if (self->_shippingTime)
  {
    shippingTime = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
    [v3 setObject:shippingTime forKeyedSubscript:@"shippingTime"];
  }

  if (self->_estimatedDeliveryStartDate)
  {
    estimatedDeliveryStartDate = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
    [v3 setObject:estimatedDeliveryStartDate forKeyedSubscript:@"estimatedDeliveryStartDate"];
  }

  if (self->_estimatedDeliveryStartTime)
  {
    estimatedDeliveryStartTime = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
    [v3 setObject:estimatedDeliveryStartTime forKeyedSubscript:@"estimatedDeliveryStartTime"];
  }

  if (self->_estimatedDeliveryEndDate)
  {
    estimatedDeliveryEndDate = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
    [v3 setObject:estimatedDeliveryEndDate forKeyedSubscript:@"estimatedDeliveryEndDate"];
  }

  if (self->_estimatedDeliveryEndTime)
  {
    estimatedDeliveryEndTime = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
    [v3 setObject:estimatedDeliveryEndTime forKeyedSubscript:@"estimatedDeliveryEndTime"];
  }

  if (self->_deliveryDate)
  {
    deliveryDate = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
    [v3 setObject:deliveryDate forKeyedSubscript:@"deliveryDate"];
  }

  if (self->_deliveryTime)
  {
    deliveryTime = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
    [v3 setObject:deliveryTime forKeyedSubscript:@"deliveryTime"];
  }

  v16 = [v3 copy];

  return v16;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_status];
  blockCopy[2](blockCopy, v7);

  if (self->_trackingNumber)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_trackingNumber];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_carrierName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_carrierName];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_shippingMethod)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingMethod];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_shippingDate)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingDate];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_shippingTime)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingTime];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_estimatedDeliveryStartDate)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryStartDate];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_estimatedDeliveryStartTime)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryStartTime];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_estimatedDeliveryEndDate)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryEndDate];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_estimatedDeliveryEndTime)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryEndTime];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_deliveryDate)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_deliveryDate];
    blockCopy[2](blockCopy, v17);
  }

  v18 = blockCopy;
  if (self->_deliveryTime)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_deliveryTime];
    blockCopy[2](blockCopy, v19);

    v18 = blockCopy;
  }
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
    goto LABEL_66;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
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
            goto LABEL_67;
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
        goto LABEL_67;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) > 6)
      {
        if (v24 > 9)
        {
          switch(v24)
          {
            case 0xA:
              v25 = CCPBReaderReadStringNoCopy();
              v26 = 88;
              goto LABEL_54;
            case 0xB:
              v25 = CCPBReaderReadStringNoCopy();
              v26 = 96;
              goto LABEL_54;
            case 0xC:
              v25 = CCPBReaderReadStringNoCopy();
              v26 = 104;
              goto LABEL_54;
          }
        }

        else
        {
          switch(v24)
          {
            case 7:
              v25 = CCPBReaderReadStringNoCopy();
              v26 = 64;
              goto LABEL_54;
            case 8:
              v25 = CCPBReaderReadStringNoCopy();
              v26 = 72;
              goto LABEL_54;
            case 9:
              v25 = CCPBReaderReadStringNoCopy();
              v26 = 80;
              goto LABEL_54;
          }
        }
      }

      else if (v24 > 3)
      {
        switch(v24)
        {
          case 4:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 40;
            goto LABEL_54;
          case 5:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 48;
            goto LABEL_54;
          case 6:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 56;
            goto LABEL_54;
        }
      }

      else
      {
        switch(v24)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            while (1)
            {
              v30 = *v8;
              v31 = *&v7[v30];
              v32 = v31 + 1;
              if (v31 == -1 || v32 > *&v7[*v9])
              {
                break;
              }

              v33 = *(*&v7[*v12] + v31);
              *&v7[v30] = v32;
              v29 |= (v33 & 0x7F) << v27;
              if ((v33 & 0x80) == 0)
              {
                goto LABEL_61;
              }

              v27 += 7;
              v21 = v28++ >= 9;
              if (v21)
              {
                LODWORD(v29) = 0;
                goto LABEL_63;
              }
            }

            *&v7[*v10] = 1;
LABEL_61:
            if (*&v7[*v10])
            {
              LODWORD(v29) = 0;
            }

LABEL_63:
            v11 = 0;
            self->_status = v29;
            goto LABEL_56;
          case 2:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 24;
            goto LABEL_54;
          case 3:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 32;
LABEL_54:
            v34 = *(&self->super.super.isa + v26);
            *(&self->super.super.isa + v26) = v25;

LABEL_55:
            v11 = 0;
            goto LABEL_56;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        goto LABEL_55;
      }

      v35 = objc_opt_class();
      NSStringFromClass(v35);
      v44 = dataCopy;
      v37 = v36 = error;
      v38 = *&v7[*v10];
      v11 = CCSkipFieldErrorForMessage();

      error = v36;
      dataCopy = v44;
LABEL_56:
      if (*&v7[*v8] < *&v7[*v9])
      {
        continue;
      }
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_68;
  }

LABEL_66:
  if (!*&v7[*v10])
  {
    v42 = 1;
    goto LABEL_70;
  }

LABEL_67:
  v39 = objc_opt_class();
  v11 = NSStringFromClass(v39);
  v40 = *&v7[*v10];
  v41 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_68:
  v42 = 0;
LABEL_70:

  return v42;
}

- (CCWalletPaymentsCommerceOrderEmailShippingInformation)initWithStatus:(unsigned int)status trackingNumber:(id)number carrierName:(id)name shippingMethod:(id)method shippingDate:(id)date shippingTime:(id)time estimatedDeliveryStartDate:(id)startDate estimatedDeliveryStartTime:(id)self0 estimatedDeliveryEndDate:(id)self1 estimatedDeliveryEndTime:(id)self2 deliveryDate:(id)self3 deliveryTime:(id)self4 error:(id *)self5
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
  v24 = objc_opt_new();
  if (status)
  {
    v25 = CCValidateEnumField();
    v26 = 0;
    if (!v25)
    {
      CCSetError();
      v38 = 0;
      v27 = numberCopy;
      v28 = timeCopy;
      v30 = dateCopy;
      v33 = methodCopy;
      goto LABEL_26;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v26 = 0;
  }

  v27 = numberCopy;
  v28 = timeCopy;
  v29 = 0x1E696A000uLL;
  v30 = dateCopy;
  if (numberCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v32 = v26;

    v33 = methodCopy;
    if (IsInstanceOfExpectedClass)
    {
      CCPBDataWriterWriteStringField();
      v34 = nameCopy;
      v29 = 0x1E696A000uLL;
      if (!nameCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    CCSetError();
    v38 = 0;
    v26 = v32;
LABEL_26:
    v34 = nameCopy;
    goto LABEL_46;
  }

  v32 = v26;
  v33 = methodCopy;
  v34 = nameCopy;
  if (!nameCopy)
  {
LABEL_8:
    v26 = v32;
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_18:
    v36 = v26;
    if (!v30)
    {
      goto LABEL_11;
    }

LABEL_19:
    objc_opt_class();
    v40 = CCValidateIsInstanceOfExpectedClass();
    v26 = v36;

    if (!v40)
    {
      goto LABEL_45;
    }

    CCPBDataWriterWriteStringField();
    v29 = 0x1E696A000uLL;
    if (v28)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_16:
  objc_opt_class();
  v39 = CCValidateIsInstanceOfExpectedClass();
  v26 = v32;

  if (!v39)
  {
    goto LABEL_45;
  }

  CCPBDataWriterWriteStringField();
  v29 = 0x1E696A000uLL;
  if (!v33)
  {
    goto LABEL_18;
  }

LABEL_9:
  objc_opt_class();
  v35 = CCValidateIsInstanceOfExpectedClass();
  v36 = v26;

  if (!v35)
  {
    goto LABEL_40;
  }

  CCPBDataWriterWriteStringField();
  v29 = 0x1E696A000uLL;
  if (v30)
  {
    goto LABEL_19;
  }

LABEL_11:
  v26 = v36;
  if (v28)
  {
LABEL_12:
    objc_opt_class();
    v37 = CCValidateIsInstanceOfExpectedClass();
    v36 = v26;

    if (!v37)
    {
      goto LABEL_40;
    }

    v61 = startTimeCopy;
    CCPBDataWriterWriteStringField();
    v29 = 0x1E696A000;
    goto LABEL_22;
  }

LABEL_21:
  v61 = startTimeCopy;
  v36 = v26;
LABEL_22:
  if (!startDateCopy)
  {
    v26 = v36;
    goto LABEL_28;
  }

  v41 = *(v29 + 3776);
  objc_opt_class();
  v42 = CCValidateIsInstanceOfExpectedClass();
  v26 = v36;

  if (v42)
  {
    CCPBDataWriterWriteStringField();
    v29 = 0x1E696A000;
LABEL_28:
    startTimeCopy = v61;
    if (!v61)
    {
      v36 = v26;
      goto LABEL_33;
    }

    v43 = *(v29 + 3776);
    objc_opt_class();
    v44 = CCValidateIsInstanceOfExpectedClass();
    v36 = v26;

    if (v44)
    {
      CCPBDataWriterWriteStringField();
      v29 = 0x1E696A000;
LABEL_33:
      if (endDateCopy)
      {
        v45 = *(v29 + 3776);
        objc_opt_class();
        v46 = CCValidateIsInstanceOfExpectedClass();
        v26 = v36;

        if (!v46)
        {
          goto LABEL_45;
        }

        CCPBDataWriterWriteStringField();
        v47 = endTimeCopy;
        v29 = 0x1E696A000;
      }

      else
      {
        v26 = v36;
        v47 = endTimeCopy;
      }

      if (!v47)
      {
        v36 = v26;
        goto LABEL_42;
      }

      v48 = *(v29 + 3776);
      objc_opt_class();
      v49 = CCValidateIsInstanceOfExpectedClass();
      v36 = v26;

      if (v49)
      {
        CCPBDataWriterWriteStringField();
        v29 = 0x1E696A000;
LABEL_42:
        if (!deliveryDateCopy)
        {
          v26 = v36;
          goto LABEL_48;
        }

        v50 = *(v29 + 3776);
        objc_opt_class();
        v51 = CCValidateIsInstanceOfExpectedClass();
        v26 = v36;

        if (v51)
        {
          CCPBDataWriterWriteStringField();
          v29 = 0x1E696A000;
LABEL_48:
          if (!deliveryTimeCopy)
          {
LABEL_51:
            immutableData = [v24 immutableData];
            v56 = [(CCItemMessage *)self initWithData:immutableData error:v57];

            self = v56;
            v38 = v56;
            goto LABEL_46;
          }

          v53 = *(v29 + 3776);
          objc_opt_class();
          v54 = CCValidateIsInstanceOfExpectedClass();
          v59 = v26;

          if (v54)
          {
            CCPBDataWriterWriteStringField();
            v26 = v59;
            goto LABEL_51;
          }

          v26 = v59;
        }

LABEL_45:
        CCSetError();
        v38 = 0;
        goto LABEL_46;
      }
    }

LABEL_40:
    CCSetError();
    v38 = 0;
    v26 = v36;
    goto LABEL_46;
  }

  CCSetError();
  v38 = 0;
  startTimeCopy = v61;
LABEL_46:

  return v38;
}

@end