@interface CCWalletPaymentsCommerceTrackedOrderAddress
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderAddress)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderAddress)initWithStreet:(id)a3 city:(id)a4 state:(id)a5 postalCode:(id)a6 country:(id)a7 rawAddress:(id)a8 error:(id *)a9;
- (NSString)city;
- (NSString)country;
- (NSString)postalCode;
- (NSString)rawAddress;
- (NSString)state;
- (NSString)street;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceTrackedOrderAddress

- (CCWalletPaymentsCommerceTrackedOrderAddress)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"street"];
    v10 = [v6 objectForKeyedSubscript:@"city"];
    v11 = [v6 objectForKeyedSubscript:@"state"];
    v12 = [v6 objectForKeyedSubscript:@"postalCode"];
    v13 = [v6 objectForKeyedSubscript:@"country"];
    v14 = [v6 objectForKeyedSubscript:@"rawAddress"];
    v15 = [[CCWalletPaymentsCommerceTrackedOrderAddress alloc] initWithStreet:v9 city:v10 state:v11 postalCode:v12 country:v13 rawAddress:v14 error:a4];
  }

  else
  {
    CCSetError();
    v15 = 0;
  }

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_street)
  {
    v4 = [(CCWalletPaymentsCommerceTrackedOrderAddress *)self street];
    [v3 setObject:v4 forKeyedSubscript:@"street"];
  }

  if (self->_city)
  {
    v5 = [(CCWalletPaymentsCommerceTrackedOrderAddress *)self city];
    [v3 setObject:v5 forKeyedSubscript:@"city"];
  }

  if (self->_state)
  {
    v6 = [(CCWalletPaymentsCommerceTrackedOrderAddress *)self state];
    [v3 setObject:v6 forKeyedSubscript:@"state"];
  }

  if (self->_postalCode)
  {
    v7 = [(CCWalletPaymentsCommerceTrackedOrderAddress *)self postalCode];
    [v3 setObject:v7 forKeyedSubscript:@"postalCode"];
  }

  if (self->_country)
  {
    v8 = [(CCWalletPaymentsCommerceTrackedOrderAddress *)self country];
    [v3 setObject:v8 forKeyedSubscript:@"country"];
  }

  if (self->_rawAddress)
  {
    v9 = [(CCWalletPaymentsCommerceTrackedOrderAddress *)self rawAddress];
    [v3 setObject:v9 forKeyedSubscript:@"rawAddress"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v4 = a4;
  v18 = a3;
  if (self->_street)
  {
    if (v4 == 7990)
    {
      v6 = 7991;
    }

    else
    {
      if (v4 != 8000)
      {
        goto LABEL_7;
      }

      v6 = 8001;
    }

    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_street];
    v18[2](v18, v7);
  }

LABEL_7:
  if (!self->_city)
  {
    goto LABEL_13;
  }

  if (v4 == 7990)
  {
    v8 = 7992;
  }

  else
  {
    if (v4 != 8000)
    {
      goto LABEL_13;
    }

    v8 = 8002;
  }

  v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v8 stringValue:self->_city];
  v18[2](v18, v9);

LABEL_13:
  if (!self->_state)
  {
    goto LABEL_19;
  }

  if (v4 == 7990)
  {
    v10 = 7993;
  }

  else
  {
    if (v4 != 8000)
    {
      goto LABEL_19;
    }

    v10 = 8003;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 stringValue:self->_state];
  v18[2](v18, v11);

LABEL_19:
  if (!self->_postalCode)
  {
    goto LABEL_25;
  }

  if (v4 == 7990)
  {
    v12 = 7994;
  }

  else
  {
    if (v4 != 8000)
    {
      goto LABEL_25;
    }

    v12 = 8004;
  }

  v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v12 stringValue:self->_postalCode];
  v18[2](v18, v13);

LABEL_25:
  if (!self->_country)
  {
    goto LABEL_31;
  }

  if (v4 == 7990)
  {
    v14 = 7995;
  }

  else
  {
    if (v4 != 8000)
    {
      goto LABEL_31;
    }

    v14 = 8005;
  }

  v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v14 stringValue:self->_country];
  v18[2](v18, v15);

LABEL_31:
  if (!self->_rawAddress)
  {
    goto LABEL_37;
  }

  if (v4 == 7990)
  {
    v16 = 8032;
  }

  else
  {
    if (v4 != 8000)
    {
      goto LABEL_37;
    }

    v16 = 8033;
  }

  v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v16 stringValue:self->_rawAddress];
  v18[2](v18, v17);

LABEL_37:
}

- (NSString)rawAddress
{
  v2 = [(NSString *)self->_rawAddress copy];

  return v2;
}

- (NSString)country
{
  v2 = [(NSString *)self->_country copy];

  return v2;
}

- (NSString)postalCode
{
  v2 = [(NSString *)self->_postalCode copy];

  return v2;
}

- (NSString)state
{
  v2 = [(NSString *)self->_state copy];

  return v2;
}

- (NSString)city
{
  v2 = [(NSString *)self->_city copy];

  return v2;
}

- (NSString)street
{
  v2 = [(NSString *)self->_street copy];

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
    goto LABEL_43;
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
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_44;
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
        goto LABEL_44;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 3)
      {
        switch(v23)
        {
          case 4:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 40;
            goto LABEL_36;
          case 5:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 48;
            goto LABEL_36;
          case 6:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 56;
            goto LABEL_36;
        }
      }

      else
      {
        switch(v23)
        {
          case 1:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 16;
            goto LABEL_36;
          case 2:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 24;
            goto LABEL_36;
          case 3:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 32;
LABEL_36:
            v26 = *(&self->super.super.isa + v25);
            *(&self->super.super.isa + v25) = v24;
            goto LABEL_37;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_38;
      }

      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      v28 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_37:

LABEL_38:
      if (*&v6[*v7] < *&v6[*v8])
      {
        continue;
      }
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_45;
  }

LABEL_43:
  if (!*&v6[*v9])
  {
    v32 = 1;
    goto LABEL_47;
  }

LABEL_44:
  v29 = objc_opt_class();
  v10 = NSStringFromClass(v29);
  v30 = *&v6[*v9];
  v31 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_45:
  v32 = 0;
LABEL_47:

  return v32;
}

- (CCWalletPaymentsCommerceTrackedOrderAddress)initWithStreet:(id)a3 city:(id)a4 state:(id)a5 postalCode:(id)a6 country:(id)a7 rawAddress:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v40 = a8;
  v20 = objc_opt_new();
  v21 = 0x1E696A000uLL;
  if (!v15)
  {
    v23 = 0;
LABEL_5:
    v38 = self;
    if (v16)
    {
      v24 = *(v21 + 3776);
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v26 = v23;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_23;
      }

      CCPBDataWriterWriteStringField();
      v21 = 0x1E696A000uLL;
      if (!v17)
      {
LABEL_8:
        v23 = v26;
        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v26 = v23;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    v30 = *(v21 + 3776);
    objc_opt_class();
    v31 = CCValidateIsInstanceOfExpectedClass();
    v23 = v26;

    if (!v31)
    {
      goto LABEL_24;
    }

    CCPBDataWriterWriteStringField();
    v21 = 0x1E696A000uLL;
    if (v18)
    {
LABEL_9:
      v27 = *(v21 + 3776);
      objc_opt_class();
      v28 = CCValidateIsInstanceOfExpectedClass();
      v26 = v23;

      if (v28)
      {
        CCPBDataWriterWriteStringField();
        v21 = 0x1E696A000;
        if (!v19)
        {
LABEL_11:
          v23 = v26;
LABEL_19:
          if (!v40)
          {
LABEL_22:
            v36 = [v20 immutableData];
            v29 = [v39 initWithData:v36 error:a9];

            self = v29;
            goto LABEL_26;
          }

          v34 = *(v21 + 3776);
          objc_opt_class();
          v35 = CCValidateIsInstanceOfExpectedClass();
          v26 = v23;

          if (v35)
          {
            CCPBDataWriterWriteStringField();
            v23 = v26;
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        goto LABEL_17;
      }

LABEL_23:
      CCSetError();
      v29 = 0;
      v23 = v26;
LABEL_25:
      self = v38;
      goto LABEL_26;
    }

LABEL_16:
    v26 = v23;
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_17:
    v32 = *(v21 + 3776);
    objc_opt_class();
    v33 = CCValidateIsInstanceOfExpectedClass();
    v23 = v26;

    if (v33)
    {
      CCPBDataWriterWriteStringField();
      v21 = 0x1E696A000uLL;
      goto LABEL_19;
    }

LABEL_24:
    CCSetError();
    v29 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  v22 = CCValidateIsInstanceOfExpectedClass();
  v23 = 0;
  if (v22)
  {
    CCPBDataWriterWriteStringField();
    v21 = 0x1E696A000;
    goto LABEL_5;
  }

  CCSetError();
  v29 = 0;
LABEL_26:

  return v29;
}

@end