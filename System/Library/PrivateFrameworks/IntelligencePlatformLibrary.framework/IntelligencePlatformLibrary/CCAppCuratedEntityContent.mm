@interface CCAppCuratedEntityContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppCuratedEntityContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppCuratedEntityContent)initWithTypeIdentifier:(id)identifier displayRepresentation:(id)representation typeDisplayRepresentation:(id)displayRepresentation error:(id *)error;
- (CCAppEntityDisplayRepresentation)displayRepresentation;
- (CCAppEntityTypeDisplayRepresentation)typeDisplayRepresentation;
- (NSString)typeIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppCuratedEntityContent

- (CCAppCuratedEntityContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v21[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"typeIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
    if (v10)
    {
      v21[0] = 0;
      v11 = [[CCAppEntityDisplayRepresentation alloc] initWithJSONDictionary:v10 error:v21];
      v12 = v21[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();

        goto LABEL_15;
      }

      v10 = v11;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"typeDisplayRepresentation"];
    if (!v14)
    {
      v15 = 0;
      goto LABEL_13;
    }

    v13 = v14;
    v20 = 0;
    v15 = [[CCAppEntityTypeDisplayRepresentation alloc] initWithJSONDictionary:v14 error:&v20];
    v16 = v20;
    v17 = v16;
    if (v15 && !v16)
    {

LABEL_13:
      v18 = [[CCAppCuratedEntityContent alloc] initWithTypeIdentifier:v9 displayRepresentation:v10 typeDisplayRepresentation:v15 error:error];
      v13 = v15;
LABEL_16:

      goto LABEL_17;
    }

    CCSetError();

LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  CCSetError();
  v18 = 0;
LABEL_17:

  return v18;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_typeIdentifier)
  {
    typeIdentifier = [(CCAppCuratedEntityContent *)self typeIdentifier];
    [v3 setObject:typeIdentifier forKeyedSubscript:@"typeIdentifier"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCAppCuratedEntityContent *)self displayRepresentation];
    jsonDictionary = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"displayRepresentation"];
  }

  if (self->_typeDisplayRepresentation)
  {
    typeDisplayRepresentation = [(CCAppCuratedEntityContent *)self typeDisplayRepresentation];
    jsonDictionary2 = [typeDisplayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"typeDisplayRepresentation"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_typeIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:39426 stringValue:self->_typeIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_displayRepresentation)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:39427 subMessageValue:self->_displayRepresentation];
    blockCopy[2](blockCopy, v6);
  }

  v7 = blockCopy;
  if (self->_typeDisplayRepresentation)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:39431 subMessageValue:self->_typeDisplayRepresentation];
    blockCopy[2](blockCopy, v8);

    v7 = blockCopy;
  }
}

- (CCAppEntityTypeDisplayRepresentation)typeDisplayRepresentation
{
  v2 = [(CCAppEntityTypeDisplayRepresentation *)self->_typeDisplayRepresentation copy];

  return v2;
}

- (CCAppEntityDisplayRepresentation)displayRepresentation
{
  v2 = [(CCAppEntityDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSString)typeIdentifier
{
  v2 = [(NSString *)self->_typeIdentifier copy];

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
    goto LABEL_36;
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
            goto LABEL_37;
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
        goto LABEL_37;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v29 = [CCAppEntityTypeDisplayRepresentation alloc];
        typeIdentifier = CCPBReaderReadDataNoCopy();
        v39 = 0;
        v27 = [(CCItemMessage *)v29 initWithData:typeIdentifier error:&v39];
        v10 = v39;
        v28 = 32;
      }

      else
      {
        if (v23 != 2)
        {
          if (v23 == 1)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            typeIdentifier = self->_typeIdentifier;
            self->_typeIdentifier = v24;
          }

          else
          {
            if (CCPBReaderSkipValueWithTag())
            {
              v10 = 0;
LABEL_29:
              if (*&v6[*v7] < *&v6[*v8])
              {
                continue;
              }

              break;
            }

            v31 = objc_opt_class();
            typeIdentifier = NSStringFromClass(v31);
            v32 = *&v6[*v9];
            v10 = CCSkipFieldErrorForMessage();
          }

LABEL_28:

          goto LABEL_29;
        }

        v26 = [CCAppEntityDisplayRepresentation alloc];
        typeIdentifier = CCPBReaderReadDataNoCopy();
        v40 = 0;
        v27 = [(CCItemMessage *)v26 initWithData:typeIdentifier error:&v40];
        v10 = v40;
        v28 = 24;
      }

      v30 = *(&self->super.super.isa + v28);
      *(&self->super.super.isa + v28) = v27;

      goto LABEL_28;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_38;
  }

LABEL_36:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v37 = 1;
    goto LABEL_40;
  }

LABEL_37:
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = *&v6[*v9];
  v36 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_38:
  v37 = 0;
LABEL_40:

  return v37;
}

- (CCAppCuratedEntityContent)initWithTypeIdentifier:(id)identifier displayRepresentation:(id)representation typeDisplayRepresentation:(id)displayRepresentation error:(id *)error
{
  identifierCopy = identifier;
  representationCopy = representation;
  displayRepresentationCopy = displayRepresentation;
  v13 = objc_opt_new();
  if (identifierCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
    if (!representationCopy)
    {
LABEL_4:
      v16 = v15;
      if (displayRepresentationCopy)
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
    if (!representationCopy)
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

  data = [representationCopy data];
  CCPBDataWriterWriteDataField();

  if (!displayRepresentationCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    data2 = [displayRepresentationCopy data];
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
  if ((identifier + 26111) > 8u)
  {
    return 0;
  }

  else
  {
    return off_1E73E7D88[(identifier + 26111)];
  }
}

@end