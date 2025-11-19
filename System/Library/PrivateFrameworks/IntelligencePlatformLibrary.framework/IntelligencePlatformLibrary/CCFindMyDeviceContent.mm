@interface CCFindMyDeviceContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCFindMyDeviceContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCFindMyDeviceContent)initWithName:(id)a3 owner:(id)a4 error:(id *)a5;
- (CCFindMyDeviceOwner)owner;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCFindMyDeviceContent

- (CCFindMyDeviceContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v17[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"name"];
    v10 = [v6 objectForKeyedSubscript:@"owner"];
    if (v10)
    {
      v11 = v10;
      v17[0] = 0;
      v12 = [[CCFindMyDeviceOwner alloc] initWithJSONDictionary:v10 error:v17];
      v13 = v17[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();

        v15 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = [[CCFindMyDeviceContent alloc] initWithName:v9 owner:v12 error:a4];
    v11 = v12;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v15 = 0;
LABEL_11:

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_name)
  {
    v4 = [(CCFindMyDeviceContent *)self name];
    [v3 setObject:v4 forKeyedSubscript:@"name"];
  }

  if (self->_owner)
  {
    v5 = [(CCFindMyDeviceContent *)self owner];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"owner"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v7 = a3;
  if (self->_name)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27126 stringValue:self->_name];
    v7[2](v7, v5);
  }

  if (self->_owner)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27127 subMessageValue:self->_owner];
    v7[2](v7, v6);
  }
}

- (CCFindMyDeviceOwner)owner
{
  v2 = [(CCFindMyDeviceOwner *)self->_owner copy];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

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
    goto LABEL_32;
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
        if (v17 == -1 || v17 >= *&v6[*v8])
        {
          break;
        }

        v18 = *(*&v6[*v11] + v17);
        *&v6[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_33;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v21 = *&v6[*v9];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_33;
      }

LABEL_21:
      if ((v20 >> 3) == 2)
      {
        v24 = [CCFindMyDeviceOwner alloc];
        name = CCPBReaderReadDataNoCopy();
        v35 = 0;
        v25 = [(CCItemMessage *)v24 initWithData:name error:&v35];
        v10 = v35;
        owner = self->_owner;
        self->_owner = v25;
      }

      else if ((v20 >> 3) == 1)
      {
        v22 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        name = self->_name;
        self->_name = v22;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_29;
        }

        v27 = objc_opt_class();
        name = NSStringFromClass(v27);
        v28 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

LABEL_29:
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
    goto LABEL_34;
  }

LABEL_32:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v33 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = *&v6[*v9];
  v32 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_34:
  v33 = 0;
LABEL_36:

  return v33;
}

- (CCFindMyDeviceContent)initWithName:(id)a3 owner:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if (!v8)
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v19 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v17 = 0;
      v12 = v14;
      goto LABEL_11;
    }

    v15 = [v9 data];
    CCPBDataWriterWriteDataField();

    v12 = v14;
    goto LABEL_8;
  }

  objc_opt_class();
  v11 = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    v17 = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteStringField();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_8:
  v16 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v16 error:a5];

  v17 = self;
LABEL_11:

  return v17;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 - 27122) > 0xA)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E7208 + (a3 - 27122));
  }
}

@end