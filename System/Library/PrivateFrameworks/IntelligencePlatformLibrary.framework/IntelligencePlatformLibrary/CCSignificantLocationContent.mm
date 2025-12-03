@interface CCSignificantLocationContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSignificantLocationAddress)address;
- (CCSignificantLocationContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCSignificantLocationContent)initWithPreferredName:(id)name mapItemName:(id)itemName address:(id)address error:(id *)error;
- (NSString)mapItemName;
- (NSString)preferredName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSignificantLocationContent

- (CCSignificantLocationContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v18[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"preferredName"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"mapItemName"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    if (v11)
    {
      v12 = v11;
      v18[0] = 0;
      v13 = [[CCSignificantLocationAddress alloc] initWithJSONDictionary:v11 error:v18];
      v14 = v18[0];
      v15 = v14;
      if (!v13 || v14)
      {
        CCSetError();

        v16 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = [[CCSignificantLocationContent alloc] initWithPreferredName:v9 mapItemName:v10 address:v13 error:error];
    v12 = v13;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v16 = 0;
LABEL_11:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_preferredName)
  {
    preferredName = [(CCSignificantLocationContent *)self preferredName];
    [v3 setObject:preferredName forKeyedSubscript:@"preferredName"];
  }

  if (self->_mapItemName)
  {
    mapItemName = [(CCSignificantLocationContent *)self mapItemName];
    [v3 setObject:mapItemName forKeyedSubscript:@"mapItemName"];
  }

  if (self->_address)
  {
    address = [(CCSignificantLocationContent *)self address];
    jsonDictionary = [address jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"address"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_preferredName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15768 stringValue:self->_preferredName];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_mapItemName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15769 stringValue:self->_mapItemName];
    blockCopy[2](blockCopy, v6);
  }

  v7 = blockCopy;
  if (self->_address)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15763 subMessageValue:self->_address];
    blockCopy[2](blockCopy, v8);

    v7 = blockCopy;
  }
}

- (CCSignificantLocationAddress)address
{
  v2 = [(CCSignificantLocationAddress *)self->_address copy];

  return v2;
}

- (NSString)mapItemName
{
  v2 = [(NSString *)self->_mapItemName copy];

  return v2;
}

- (NSString)preferredName
{
  v2 = [(NSString *)self->_preferredName copy];

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
    goto LABEL_35;
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
            goto LABEL_36;
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
        goto LABEL_36;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) == 3)
      {
        v26 = [CCSignificantLocationAddress alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v37 = 0;
        v27 = [(CCItemMessage *)v26 initWithData:v25 error:&v37];
        v10 = v37;
        address = self->_address;
        self->_address = v27;

        goto LABEL_31;
      }

      if (v22 == 2)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v24 = 24;
      }

      else
      {
        if (v22 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
            goto LABEL_32;
          }

          v29 = objc_opt_class();
          v25 = NSStringFromClass(v29);
          v30 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_31:

LABEL_32:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v24 = 16;
      }

      v25 = *(&self->super.super.isa + v24);
      *(&self->super.super.isa + v24) = v23;
      goto LABEL_31;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_37;
  }

LABEL_35:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v35 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = *&v6[*v9];
  v34 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_37:
  v35 = 0;
LABEL_39:

  return v35;
}

- (CCSignificantLocationContent)initWithPreferredName:(id)name mapItemName:(id)itemName address:(id)address error:(id *)error
{
  nameCopy = name;
  itemNameCopy = itemName;
  addressCopy = address;
  v13 = objc_opt_new();
  if (nameCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
    if (!itemNameCopy)
    {
LABEL_4:
      v16 = v15;
      if (addressCopy)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = v16;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    if (!itemNameCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v20 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v20)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v16;
    goto LABEL_14;
  }

  CCPBDataWriterWriteStringField();
  if (!addressCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    data = [addressCopy data];
    CCPBDataWriterWriteDataField();

LABEL_12:
    immutableData = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:immutableData error:error];

    selfCopy = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier - 15757) > 0x20)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E79E0 + (identifier - 15757));
  }
}

@end