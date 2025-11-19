@interface CCToolKitToolTypedValuePrimitiveValuePersonNameComponents
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponents)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponents)initWithNamePrefix:(id)a3 givenName:(id)a4 middleName:(id)a5 familyName:(id)a6 nameSuffix:(id)a7 nickname:(id)a8 phoneticRepresentation:(id)a9 error:(id *)a10;
- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation)phoneticRepresentation;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)middleName;
- (NSString)namePrefix;
- (NSString)nameSuffix;
- (NSString)nickname;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValuePersonNameComponents

- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponents)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v26[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v25 = self;
    v9 = [v6 objectForKeyedSubscript:@"namePrefix"];
    v24 = [v6 objectForKeyedSubscript:@"givenName"];
    v10 = [v6 objectForKeyedSubscript:@"middleName"];
    v11 = [v6 objectForKeyedSubscript:@"familyName"];
    v12 = [v6 objectForKeyedSubscript:@"nameSuffix"];
    v13 = [v6 objectForKeyedSubscript:@"nickname"];
    v14 = [v6 objectForKeyedSubscript:@"phoneticRepresentation"];
    v23 = v8;
    if (v14)
    {
      v15 = v14;
      v22 = v9;
      v26[0] = 0;
      v16 = [[CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation alloc] initWithJSONDictionary:v14 error:v26];
      v17 = v26[0];
      v18 = v17;
      if (!v16 || v17)
      {
        CCSetError();

        v19 = 0;
        v9 = v22;
        v20 = v24;
        goto LABEL_10;
      }

      v9 = v22;
    }

    else
    {
      v16 = 0;
    }

    v20 = v24;
    v19 = [[CCToolKitToolTypedValuePrimitiveValuePersonNameComponents alloc] initWithNamePrefix:v9 givenName:v24 middleName:v10 familyName:v11 nameSuffix:v12 nickname:v13 phoneticRepresentation:v16 error:a4];
    v15 = v16;
LABEL_10:

    self = v25;
    v8 = v23;
    goto LABEL_11;
  }

  CCSetError();
  v19 = 0;
LABEL_11:

  return v19;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_namePrefix)
  {
    v4 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self namePrefix];
    [v3 setObject:v4 forKeyedSubscript:@"namePrefix"];
  }

  if (self->_givenName)
  {
    v5 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self givenName];
    [v3 setObject:v5 forKeyedSubscript:@"givenName"];
  }

  if (self->_middleName)
  {
    v6 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self middleName];
    [v3 setObject:v6 forKeyedSubscript:@"middleName"];
  }

  if (self->_familyName)
  {
    v7 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self familyName];
    [v3 setObject:v7 forKeyedSubscript:@"familyName"];
  }

  if (self->_nameSuffix)
  {
    v8 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self nameSuffix];
    [v3 setObject:v8 forKeyedSubscript:@"nameSuffix"];
  }

  if (self->_nickname)
  {
    v9 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self nickname];
    [v3 setObject:v9 forKeyedSubscript:@"nickname"];
  }

  if (self->_phoneticRepresentation)
  {
    v10 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self phoneticRepresentation];
    v11 = [v10 jsonDictionary];
    [v3 setObject:v11 forKeyedSubscript:@"phoneticRepresentation"];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v15 = v5;
  if (self->_namePrefix)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_namePrefix];
    v15[2](v15, v7);
  }

  if (self->_givenName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_givenName];
    v15[2](v15, v8);
  }

  if (self->_middleName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_middleName];
    v15[2](v15, v9);
  }

  if (self->_familyName)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_familyName];
    v15[2](v15, v10);
  }

  if (self->_nameSuffix)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_nameSuffix];
    v15[2](v15, v11);
  }

  if (self->_nickname)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_nickname];
    v15[2](v15, v12);
  }

  v13 = v15;
  if (self->_phoneticRepresentation)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_phoneticRepresentation];
    v15[2](v15, v14);

    v13 = v15;
  }
}

- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation)phoneticRepresentation
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation *)self->_phoneticRepresentation copy];

  return v2;
}

- (NSString)nickname
{
  v2 = [(NSString *)self->_nickname copy];

  return v2;
}

- (NSString)nameSuffix
{
  v2 = [(NSString *)self->_nameSuffix copy];

  return v2;
}

- (NSString)familyName
{
  v2 = [(NSString *)self->_familyName copy];

  return v2;
}

- (NSString)middleName
{
  v2 = [(NSString *)self->_middleName copy];

  return v2;
}

- (NSString)givenName
{
  v2 = [(NSString *)self->_givenName copy];

  return v2;
}

- (NSString)namePrefix
{
  v2 = [(NSString *)self->_namePrefix copy];

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
    goto LABEL_46;
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
            goto LABEL_47;
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
        goto LABEL_47;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 3)
      {
        switch(v23)
        {
          case 1:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 16;
            goto LABEL_39;
          case 2:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 24;
            goto LABEL_39;
          case 3:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 32;
            goto LABEL_39;
        }
      }

      else if (v23 > 5)
      {
        if (v23 == 6)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 56;
          goto LABEL_39;
        }

        if (v23 == 7)
        {
          v26 = [CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation alloc];
          v27 = CCPBReaderReadDataNoCopy();
          v38 = 0;
          v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v38];
          v10 = v38;
          phoneticRepresentation = self->_phoneticRepresentation;
          self->_phoneticRepresentation = v28;

          goto LABEL_40;
        }
      }

      else
      {
        if (v23 == 4)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 40;
          goto LABEL_39;
        }

        if (v23 == 5)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 48;
LABEL_39:
          v27 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;
          goto LABEL_40;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_41;
      }

      v30 = objc_opt_class();
      v27 = NSStringFromClass(v30);
      v31 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_40:

LABEL_41:
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
    goto LABEL_48;
  }

LABEL_46:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v36 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = *&v6[*v9];
  v35 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_48:
  v36 = 0;
LABEL_50:

  return v36;
}

- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponents)initWithNamePrefix:(id)a3 givenName:(id)a4 middleName:(id)a5 familyName:(id)a6 nameSuffix:(id)a7 nickname:(id)a8 phoneticRepresentation:(id)a9 error:(id *)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v39 = a8;
  v38 = a9;
  v20 = objc_opt_new();
  if (!v15)
  {
    v22 = 0;
    if (!v16)
    {
      goto LABEL_4;
    }

LABEL_11:
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v23 = v22;

    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_20;
    }

    CCPBDataWriterWriteStringField();
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  v21 = CCValidateIsInstanceOfExpectedClass();
  v22 = 0;
  if (!v21)
  {
    goto LABEL_25;
  }

  CCPBDataWriterWriteStringField();
  if (v16)
  {
    goto LABEL_11;
  }

LABEL_4:
  v23 = v22;
  if (v17)
  {
LABEL_5:
    objc_opt_class();
    v24 = CCValidateIsInstanceOfExpectedClass();
    v22 = v23;

    if (!v24)
    {
      goto LABEL_25;
    }

    CCPBDataWriterWriteStringField();
    if (!v18)
    {
LABEL_7:
      v23 = v22;
      if (v19)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_13:
  v22 = v23;
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_14:
  objc_opt_class();
  v27 = CCValidateIsInstanceOfExpectedClass();
  v23 = v22;

  if (v27)
  {
    CCPBDataWriterWriteStringField();
    if (v19)
    {
LABEL_8:
      objc_opt_class();
      v25 = CCValidateIsInstanceOfExpectedClass();
      v22 = v23;

      if (v25)
      {
        CCPBDataWriterWriteStringField();
LABEL_17:
        if (v39)
        {
          objc_opt_class();
          v28 = CCValidateIsInstanceOfExpectedClass();
          v29 = v22;

          if (!v28)
          {
            CCSetError();
            v34 = v39;
            v30 = 0;
            v22 = v29;
            v33 = self;
            goto LABEL_28;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v29 = v22;
        }

        if (!v38)
        {
          v22 = v29;
          goto LABEL_31;
        }

        objc_opt_class();
        v31 = CCValidateIsInstanceOfExpectedClass();
        v22 = v29;

        if (v31)
        {
          v32 = [v38 data];
          CCPBDataWriterWriteDataField();

LABEL_31:
          v36 = [v20 immutableData];
          v33 = [(CCItemMessage *)self initWithData:v36 error:a10];

          v30 = v33;
          goto LABEL_27;
        }
      }

LABEL_25:
      CCSetError();
      v30 = 0;
      goto LABEL_26;
    }

LABEL_16:
    v22 = v23;
    goto LABEL_17;
  }

LABEL_20:
  CCSetError();
  v30 = 0;
  v22 = v23;
LABEL_26:
  v33 = self;
LABEL_27:
  v34 = v39;
LABEL_28:

  return v30;
}

@end