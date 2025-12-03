@interface CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation)initWithNamePrefix:(id)prefix givenName:(id)name middleName:(id)middleName familyName:(id)familyName nameSuffix:(id)suffix nickname:(id)nickname error:(id *)error;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)middleName;
- (NSString)namePrefix;
- (NSString)nameSuffix;
- (NSString)nickname;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation

- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"namePrefix"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"givenName"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"middleName"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"familyName"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"nameSuffix"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"nickname"];
    v15 = [[CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation alloc] initWithNamePrefix:v9 givenName:v10 middleName:v11 familyName:v12 nameSuffix:v13 nickname:v14 error:error];
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
  if (self->_namePrefix)
  {
    namePrefix = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation *)self namePrefix];
    [v3 setObject:namePrefix forKeyedSubscript:@"namePrefix"];
  }

  if (self->_givenName)
  {
    givenName = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation *)self givenName];
    [v3 setObject:givenName forKeyedSubscript:@"givenName"];
  }

  if (self->_middleName)
  {
    middleName = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation *)self middleName];
    [v3 setObject:middleName forKeyedSubscript:@"middleName"];
  }

  if (self->_familyName)
  {
    familyName = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation *)self familyName];
    [v3 setObject:familyName forKeyedSubscript:@"familyName"];
  }

  if (self->_nameSuffix)
  {
    nameSuffix = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation *)self nameSuffix];
    [v3 setObject:nameSuffix forKeyedSubscript:@"nameSuffix"];
  }

  if (self->_nickname)
  {
    nickname = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation *)self nickname];
    [v3 setObject:nickname forKeyedSubscript:@"nickname"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v14 = blockCopy;
  if (self->_namePrefix)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_namePrefix];
    v14[2](v14, v7);
  }

  if (self->_givenName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_givenName];
    v14[2](v14, v8);
  }

  if (self->_middleName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_middleName];
    v14[2](v14, v9);
  }

  if (self->_familyName)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_familyName];
    v14[2](v14, v10);
  }

  if (self->_nameSuffix)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_nameSuffix];
    v14[2](v14, v11);
  }

  v12 = v14;
  if (self->_nickname)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_nickname];
    v14[2](v14, v13);

    v12 = v14;
  }
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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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

- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponentsPhoneticRepresentation)initWithNamePrefix:(id)prefix givenName:(id)name middleName:(id)middleName familyName:(id)familyName nameSuffix:(id)suffix nickname:(id)nickname error:(id *)error
{
  prefixCopy = prefix;
  nameCopy = name;
  middleNameCopy = middleName;
  familyNameCopy = familyName;
  suffixCopy = suffix;
  nicknameCopy = nickname;
  v20 = objc_opt_new();
  v21 = 0x1E696A000uLL;
  if (!prefixCopy)
  {
    v23 = 0;
LABEL_5:
    selfCopy = self;
    if (nameCopy)
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
      if (!middleNameCopy)
      {
LABEL_8:
        v23 = v26;
        if (familyNameCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v26 = v23;
      if (!middleNameCopy)
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
    if (familyNameCopy)
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
        if (!suffixCopy)
        {
LABEL_11:
          v23 = v26;
LABEL_19:
          if (!nicknameCopy)
          {
LABEL_22:
            immutableData = [v20 immutableData];
            v29 = [v39 initWithData:immutableData error:error];

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
      self = selfCopy;
      goto LABEL_26;
    }

LABEL_16:
    v26 = v23;
    if (!suffixCopy)
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