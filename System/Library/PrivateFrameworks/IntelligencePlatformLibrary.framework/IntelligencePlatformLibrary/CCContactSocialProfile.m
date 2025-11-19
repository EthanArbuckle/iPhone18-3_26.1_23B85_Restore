@interface CCContactSocialProfile
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCContactSocialProfile)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCContactSocialProfile)initWithLabel:(id)a3 urlString:(id)a4 username:(id)a5 userIdentifier:(id)a6 serviceName:(id)a7 error:(id *)a8;
- (NSString)label;
- (NSString)serviceName;
- (NSString)urlString;
- (NSString)userIdentifier;
- (NSString)username;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCContactSocialProfile

- (CCContactSocialProfile)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"label"];
    v10 = [v6 objectForKeyedSubscript:@"urlString"];
    v11 = [v6 objectForKeyedSubscript:@"username"];
    v12 = [v6 objectForKeyedSubscript:@"userIdentifier"];
    v13 = [v6 objectForKeyedSubscript:@"serviceName"];
    v14 = [[CCContactSocialProfile alloc] initWithLabel:v9 urlString:v10 username:v11 userIdentifier:v12 serviceName:v13 error:a4];
  }

  else
  {
    CCSetError();
    v14 = 0;
  }

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_label)
  {
    v4 = [(CCContactSocialProfile *)self label];
    [v3 setObject:v4 forKeyedSubscript:@"label"];
  }

  if (self->_urlString)
  {
    v5 = [(CCContactSocialProfile *)self urlString];
    [v3 setObject:v5 forKeyedSubscript:@"urlString"];
  }

  if (self->_username)
  {
    v6 = [(CCContactSocialProfile *)self username];
    [v3 setObject:v6 forKeyedSubscript:@"username"];
  }

  if (self->_userIdentifier)
  {
    v7 = [(CCContactSocialProfile *)self userIdentifier];
    [v3 setObject:v7 forKeyedSubscript:@"userIdentifier"];
  }

  if (self->_serviceName)
  {
    v8 = [(CCContactSocialProfile *)self serviceName];
    [v3 setObject:v8 forKeyedSubscript:@"serviceName"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v11 = a3;
  if (self->_label)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19760 stringValue:self->_label];
    v11[2](v11, v5);
  }

  if (self->_urlString)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19761 stringValue:self->_urlString];
    v11[2](v11, v6);
  }

  if (self->_username)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19762 stringValue:self->_username];
    v11[2](v11, v7);
  }

  if (self->_userIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19763 stringValue:self->_userIdentifier];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_serviceName)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19764 stringValue:self->_serviceName];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSString)serviceName
{
  v2 = [(NSString *)self->_serviceName copy];

  return v2;
}

- (NSString)userIdentifier
{
  v2 = [(NSString *)self->_userIdentifier copy];

  return v2;
}

- (NSString)username
{
  v2 = [(NSString *)self->_username copy];

  return v2;
}

- (NSString)urlString
{
  v2 = [(NSString *)self->_urlString copy];

  return v2;
}

- (NSString)label
{
  v2 = [(NSString *)self->_label copy];

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
    goto LABEL_41;
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
            goto LABEL_42;
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
        goto LABEL_42;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v24 = 16;
          goto LABEL_32;
        }

        if (v22 == 2)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v24 = 24;
          goto LABEL_32;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 32;
            goto LABEL_32;
          case 4:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 40;
            goto LABEL_32;
          case 5:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 48;
LABEL_32:
            v25 = *(&self->super.super.isa + v24);
            *(&self->super.super.isa + v24) = v23;
            goto LABEL_33;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
LABEL_34:
        if (*&v6[*v7] < *&v6[*v8])
        {
          continue;
        }

        break;
      }

      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      v27 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_33:

      goto LABEL_34;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_43;
  }

LABEL_41:
  if (!*&v6[*v9])
  {
    v31 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v28 = objc_opt_class();
  v10 = NSStringFromClass(v28);
  v29 = *&v6[*v9];
  v30 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_43:
  v31 = 0;
LABEL_45:

  return v31;
}

- (CCContactSocialProfile)initWithLabel:(id)a3 urlString:(id)a4 username:(id)a5 userIdentifier:(id)a6 serviceName:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_opt_new();
  if (!v13)
  {
    v20 = 0;
LABEL_5:
    v29 = self;
    if (v14)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v22 = v20;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_12;
      }

      CCPBDataWriterWriteStringField();
      if (!v15)
      {
LABEL_8:
        v20 = v22;
        if (v16)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v22 = v20;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v25 = CCValidateIsInstanceOfExpectedClass();
    v20 = v22;

    if (!v25)
    {
LABEL_21:
      CCSetError();
      v24 = 0;
      goto LABEL_22;
    }

    CCPBDataWriterWriteStringField();
    if (v16)
    {
LABEL_9:
      objc_opt_class();
      v23 = CCValidateIsInstanceOfExpectedClass();
      v22 = v20;

      if (v23)
      {
        CCPBDataWriterWriteStringField();
        if (!v17)
        {
LABEL_11:
          v20 = v22;
LABEL_20:
          v27 = [v18 immutableData];
          v24 = [(CCItemMessage *)v29 initWithData:v27 error:a8];

          self = v24;
          goto LABEL_23;
        }

        goto LABEL_18;
      }

LABEL_12:
      CCSetError();
      v24 = 0;
      v20 = v22;
LABEL_22:
      self = v29;
      goto LABEL_23;
    }

LABEL_17:
    v22 = v20;
    if (!v17)
    {
      goto LABEL_11;
    }

LABEL_18:
    objc_opt_class();
    v26 = CCValidateIsInstanceOfExpectedClass();
    v20 = v22;

    if (v26)
    {
      CCPBDataWriterWriteStringField();
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v20 = 0;
  if (v19)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v24 = 0;
LABEL_23:

  return v24;
}

@end