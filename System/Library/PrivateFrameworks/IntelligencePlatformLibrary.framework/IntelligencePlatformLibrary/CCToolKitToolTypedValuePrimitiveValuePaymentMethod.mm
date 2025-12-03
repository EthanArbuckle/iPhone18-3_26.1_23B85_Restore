@interface CCToolKitToolTypedValuePrimitiveValuePaymentMethod
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypedValuePrimitiveValuePaymentMethod)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValuePaymentMethod)initWithType:(unsigned int)type identificationHint:(id)hint displayRepresentation:(id)representation error:(id *)error;
- (NSString)identificationHint;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValuePaymentMethod

- (CCToolKitToolTypedValuePrimitiveValuePaymentMethod)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v20[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"identificationHint"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
    if (v14)
    {
      v15 = v14;
      v20[0] = 0;
      v16 = [[CCToolKitToolDisplayRepresentation alloc] initWithJSONDictionary:v14 error:v20];
      v17 = v20[0];
      v18 = v17;
      if (!v16 || v17)
      {
        CCSetError();

        v12 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
    }

    v12 = [[CCToolKitToolTypedValuePrimitiveValuePaymentMethod alloc] initWithType:unsignedIntegerValue identificationHint:v13 displayRepresentation:v16 error:error];
    v15 = v16;
LABEL_13:

    goto LABEL_14;
  }

  CCSetError();
  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValuePaymentMethod type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  if (self->_identificationHint)
  {
    identificationHint = [(CCToolKitToolTypedValuePrimitiveValuePaymentMethod *)self identificationHint];
    [v3 setObject:identificationHint forKeyedSubscript:@"identificationHint"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCToolKitToolTypedValuePrimitiveValuePaymentMethod *)self displayRepresentation];
    jsonDictionary = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"displayRepresentation"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_type];
  blockCopy[2](blockCopy, v7);

  if (self->_identificationHint)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_identificationHint];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_displayRepresentation)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_displayRepresentation];
    blockCopy[2](blockCopy, v9);
  }
}

- (CCToolKitToolDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSString)identificationHint
{
  v2 = [(NSString *)self->_identificationHint copy];

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
    goto LABEL_44;
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
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_45;
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
        goto LABEL_45;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v33 = [CCToolKitToolDisplayRepresentation alloc];
        v34 = CCPBReaderReadDataNoCopy();
        v45 = 0;
        v35 = [(CCItemMessage *)v33 initWithData:v34 error:&v45];
        v10 = v45;
        displayRepresentation = self->_displayRepresentation;
        self->_displayRepresentation = v35;
      }

      else
      {
        if (v23 == 2)
        {
          v31 = CCPBReaderReadStringNoCopy();
          identificationHint = self->_identificationHint;
          self->_identificationHint = v31;

          goto LABEL_34;
        }

        if (v23 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v27 = *v7;
            v28 = *&v6[v27];
            v29 = v28 + 1;
            if (v28 == -1 || v29 > *&v6[*v8])
            {
              break;
            }

            v30 = *(*&v6[*v11] + v28);
            *&v6[v27] = v29;
            v26 |= (v30 & 0x7F) << v24;
            if ((v30 & 0x80) == 0)
            {
              goto LABEL_36;
            }

            v24 += 7;
            v20 = v25++ >= 9;
            if (v20)
            {
              LODWORD(v26) = 0;
              goto LABEL_38;
            }
          }

          *&v6[*v9] = 1;
LABEL_36:
          if (*&v6[*v9])
          {
            LODWORD(v26) = 0;
          }

LABEL_38:
          v10 = 0;
          self->_type = v26;
LABEL_41:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        if (CCPBReaderSkipValueWithTag())
        {
LABEL_34:
          v10 = 0;
          goto LABEL_41;
        }

        v37 = objc_opt_class();
        v34 = NSStringFromClass(v37);
        v38 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

      goto LABEL_41;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_46;
  }

LABEL_44:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v43 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  v41 = *&v6[*v9];
  v42 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_46:
  v43 = 0;
LABEL_48:

  return v43;
}

- (CCToolKitToolTypedValuePrimitiveValuePaymentMethod)initWithType:(unsigned int)type identificationHint:(id)hint displayRepresentation:(id)representation error:(id *)error
{
  hintCopy = hint;
  representationCopy = representation;
  v12 = objc_opt_new();
  if (type)
  {
    v13 = CCValidateEnumField();
    v14 = 0;
    if (!v13)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteUint32Field();
    if (!hintCopy)
    {
LABEL_4:
      v15 = v14;
      if (representationCopy)
      {
        goto LABEL_5;
      }

LABEL_11:
      v14 = v15;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    if (!hintCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v15 = v14;

  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    selfCopy = 0;
    v14 = v15;
    goto LABEL_14;
  }

  CCPBDataWriterWriteStringField();
  if (!representationCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v16 = CCValidateIsInstanceOfExpectedClass();
  v14 = v15;

  if (v16)
  {
    data = [representationCopy data];
    CCPBDataWriterWriteDataField();

LABEL_12:
    immutableData = [v12 immutableData];
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

@end