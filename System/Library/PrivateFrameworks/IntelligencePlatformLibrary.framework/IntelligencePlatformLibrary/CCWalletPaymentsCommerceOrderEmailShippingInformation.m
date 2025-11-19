@interface CCWalletPaymentsCommerceOrderEmailShippingInformation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceOrderEmailShippingInformation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceOrderEmailShippingInformation)initWithStatus:(unsigned int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14 error:(id *)a15;
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

@implementation CCWalletPaymentsCommerceOrderEmailShippingInformation

- (CCWalletPaymentsCommerceOrderEmailShippingInformation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"status"];
    v25 = self;
    v24 = v9;
    if (v9)
    {
      v23 = [v9 unsignedIntegerValue];
    }

    else
    {
      v23 = 0;
    }

    v20 = [v6 objectForKeyedSubscript:@"trackingNumber"];
    v11 = [v6 objectForKeyedSubscript:@"carrierName"];
    v12 = [v6 objectForKeyedSubscript:@"shippingMethod"];
    v22 = [v6 objectForKeyedSubscript:@"shippingDate"];
    v21 = [v6 objectForKeyedSubscript:@"shippingTime"];
    v19 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartDate"];
    v18 = [v6 objectForKeyedSubscript:@"estimatedDeliveryStartTime"];
    v17 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndDate"];
    v13 = [v6 objectForKeyedSubscript:@"estimatedDeliveryEndTime"];
    v14 = [v6 objectForKeyedSubscript:@"deliveryDate"];
    v15 = [v6 objectForKeyedSubscript:@"deliveryTime"];
    v10 = [[CCWalletPaymentsCommerceOrderEmailShippingInformation alloc] initWithStatus:v23 trackingNumber:v20 carrierName:v11 shippingMethod:v12 shippingDate:v22 shippingTime:v21 estimatedDeliveryStartDate:v19 estimatedDeliveryStartTime:v18 estimatedDeliveryEndDate:v17 estimatedDeliveryEndTime:v13 deliveryDate:v14 deliveryTime:v15 error:a4];

    self = v25;
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
    v5 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self trackingNumber];
    [v3 setObject:v5 forKeyedSubscript:@"trackingNumber"];
  }

  if (self->_carrierName)
  {
    v6 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self carrierName];
    [v3 setObject:v6 forKeyedSubscript:@"carrierName"];
  }

  if (self->_shippingMethod)
  {
    v7 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingMethod];
    [v3 setObject:v7 forKeyedSubscript:@"shippingMethod"];
  }

  if (self->_shippingDate)
  {
    v8 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingDate];
    [v3 setObject:v8 forKeyedSubscript:@"shippingDate"];
  }

  if (self->_shippingTime)
  {
    v9 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self shippingTime];
    [v3 setObject:v9 forKeyedSubscript:@"shippingTime"];
  }

  if (self->_estimatedDeliveryStartDate)
  {
    v10 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartDate];
    [v3 setObject:v10 forKeyedSubscript:@"estimatedDeliveryStartDate"];
  }

  if (self->_estimatedDeliveryStartTime)
  {
    v11 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryStartTime];
    [v3 setObject:v11 forKeyedSubscript:@"estimatedDeliveryStartTime"];
  }

  if (self->_estimatedDeliveryEndDate)
  {
    v12 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndDate];
    [v3 setObject:v12 forKeyedSubscript:@"estimatedDeliveryEndDate"];
  }

  if (self->_estimatedDeliveryEndTime)
  {
    v13 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self estimatedDeliveryEndTime];
    [v3 setObject:v13 forKeyedSubscript:@"estimatedDeliveryEndTime"];
  }

  if (self->_deliveryDate)
  {
    v14 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryDate];
    [v3 setObject:v14 forKeyedSubscript:@"deliveryDate"];
  }

  if (self->_deliveryTime)
  {
    v15 = [(CCWalletPaymentsCommerceOrderEmailShippingInformation *)self deliveryTime];
    [v3 setObject:v15 forKeyedSubscript:@"deliveryTime"];
  }

  v16 = [v3 copy];

  return v16;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v20 = a3;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_status];
  v20[2](v20, v7);

  if (self->_trackingNumber)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_trackingNumber];
    v20[2](v20, v8);
  }

  if (self->_carrierName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_carrierName];
    v20[2](v20, v9);
  }

  if (self->_shippingMethod)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingMethod];
    v20[2](v20, v10);
  }

  if (self->_shippingDate)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingDate];
    v20[2](v20, v11);
  }

  if (self->_shippingTime)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_shippingTime];
    v20[2](v20, v12);
  }

  if (self->_estimatedDeliveryStartDate)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryStartDate];
    v20[2](v20, v13);
  }

  if (self->_estimatedDeliveryStartTime)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryStartTime];
    v20[2](v20, v14);
  }

  if (self->_estimatedDeliveryEndDate)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryEndDate];
    v20[2](v20, v15);
  }

  if (self->_estimatedDeliveryEndTime)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_estimatedDeliveryEndTime];
    v20[2](v20, v16);
  }

  if (self->_deliveryDate)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_deliveryDate];
    v20[2](v20, v17);
  }

  v18 = v20;
  if (self->_deliveryTime)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_deliveryTime];
    v20[2](v20, v19);

    v18 = v20;
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

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
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
      v44 = v6;
      v37 = v36 = a4;
      v38 = *&v7[*v10];
      v11 = CCSkipFieldErrorForMessage();

      a4 = v36;
      v6 = v44;
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

- (CCWalletPaymentsCommerceOrderEmailShippingInformation)initWithStatus:(unsigned int)a3 trackingNumber:(id)a4 carrierName:(id)a5 shippingMethod:(id)a6 shippingDate:(id)a7 shippingTime:(id)a8 estimatedDeliveryStartDate:(id)a9 estimatedDeliveryStartTime:(id)a10 estimatedDeliveryEndDate:(id)a11 estimatedDeliveryEndTime:(id)a12 deliveryDate:(id)a13 deliveryTime:(id)a14 error:(id *)a15
{
  v60 = a4;
  v58 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v67 = a9;
  v23 = a10;
  v66 = a11;
  v65 = a12;
  v64 = a13;
  v62 = a14;
  v24 = objc_opt_new();
  if (a3)
  {
    v25 = CCValidateEnumField();
    v26 = 0;
    if (!v25)
    {
      CCSetError();
      v38 = 0;
      v27 = v60;
      v28 = v22;
      v30 = v21;
      v33 = v20;
      goto LABEL_26;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v26 = 0;
  }

  v27 = v60;
  v28 = v22;
  v29 = 0x1E696A000uLL;
  v30 = v21;
  if (v60)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v32 = v26;

    v33 = v20;
    if (IsInstanceOfExpectedClass)
    {
      CCPBDataWriterWriteStringField();
      v34 = v58;
      v29 = 0x1E696A000uLL;
      if (!v58)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    CCSetError();
    v38 = 0;
    v26 = v32;
LABEL_26:
    v34 = v58;
    goto LABEL_46;
  }

  v32 = v26;
  v33 = v20;
  v34 = v58;
  if (!v58)
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

    v61 = v23;
    CCPBDataWriterWriteStringField();
    v29 = 0x1E696A000;
    goto LABEL_22;
  }

LABEL_21:
  v61 = v23;
  v36 = v26;
LABEL_22:
  if (!v67)
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
    v23 = v61;
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
      if (v66)
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
        v47 = v65;
        v29 = 0x1E696A000;
      }

      else
      {
        v26 = v36;
        v47 = v65;
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
        if (!v64)
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
          if (!v62)
          {
LABEL_51:
            v55 = [v24 immutableData];
            v56 = [(CCItemMessage *)self initWithData:v55 error:v57];

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
  v23 = v61;
LABEL_46:

  return v38;
}

@end