@interface CCToolKitToolTypedValuePrimitiveValuePlacemark
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypedValuePrimitiveValuePlacemark)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValuePlacemark)initWithPlacemark:(id)placemark displayRepresentation:(id)representation type:(unsigned int)type error:(id *)error;
- (NSData)placemark;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValuePlacemark

- (CCToolKitToolTypedValuePrimitiveValuePlacemark)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v21[2] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"placemark"];
    if (v9)
    {
      objc_opt_class();
      v21[1] = v8;
      v10 = CCValidateIsInstanceOfExpectedClass();
      v11 = v8;

      if ((v10 & 1) == 0)
      {
        CCSetError();
        v19 = 0;
        v8 = v11;
LABEL_17:

        goto LABEL_18;
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

      v9 = v12;
      v8 = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
    if (v13)
    {
      v21[0] = 0;
      v14 = [[CCToolKitToolDisplayRepresentation alloc] initWithJSONDictionary:v13 error:v21];
      v15 = v21[0];
      v16 = v15;
      if (!v14 || v15)
      {
        CCSetError();

        v19 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v13 = v14;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v16 = v17;
    if (v17)
    {
      unsignedIntegerValue = [v17 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v19 = [[CCToolKitToolTypedValuePrimitiveValuePlacemark alloc] initWithPlacemark:v9 displayRepresentation:v13 type:unsignedIntegerValue error:error];
    goto LABEL_16;
  }

  CCSetError();
  v19 = 0;
LABEL_18:

  return v19;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_placemark)
  {
    placemark = [(CCToolKitToolTypedValuePrimitiveValuePlacemark *)self placemark];
    v5 = [placemark base64EncodedStringWithOptions:0];
    [v3 setObject:v5 forKeyedSubscript:@"placemark"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCToolKitToolTypedValuePrimitiveValuePlacemark *)self displayRepresentation];
    jsonDictionary = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"displayRepresentation"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValuePlacemark type](self, "type")}];
  [v3 setObject:v8 forKeyedSubscript:@"type"];

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v12 = blockCopy;
  if (self->_placemark)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] bytesValue:self->_placemark];
    v12[2](v12, v7);
  }

  if (self->_displayRepresentation)
  {
    v8 = objc_alloc(MEMORY[0x1E69939F0]);
    v9 = *v6;
    v10 = [v8 initWithFieldType:v9 subMessageValue:self->_displayRepresentation];
    v12[2](v12, v10);
  }

  else
  {
    v9 = *v6;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_type];
  v12[2](v12, v11);
}

- (CCToolKitToolDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSData)placemark
{
  v2 = [(NSData *)self->_placemark copy];

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
      if ((v21 >> 3) != 1)
      {
        if (v23 == 2)
        {
          v31 = [CCToolKitToolDisplayRepresentation alloc];
          v32 = CCPBReaderReadDataNoCopy();
          v45 = 0;
          v33 = [(CCItemMessage *)v31 initWithData:v32 error:&v45];
          v10 = v45;
          displayRepresentation = self->_displayRepresentation;
          self->_displayRepresentation = v33;
        }

        else
        {
          if (v23 == 3)
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
          v32 = NSStringFromClass(v37);
          v38 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
        }

        goto LABEL_41;
      }

      v35 = CCPBReaderReadData();
      placemark = self->_placemark;
      self->_placemark = v35;

      goto LABEL_34;
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

- (CCToolKitToolTypedValuePrimitiveValuePlacemark)initWithPlacemark:(id)placemark displayRepresentation:(id)representation type:(unsigned int)type error:(id *)error
{
  placemarkCopy = placemark;
  representationCopy = representation;
  v12 = objc_opt_new();
  if (placemarkCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteDataField();
    if (!representationCopy)
    {
LABEL_4:
      v15 = v14;
      if (type)
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
    if (!representationCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v15 = v14;

  if (!v18)
  {
    CCSetError();
    selfCopy = 0;
    v14 = v15;
    goto LABEL_14;
  }

  data = [representationCopy data];
  CCPBDataWriterWriteDataField();

  if (!type)
  {
    goto LABEL_11;
  }

LABEL_5:
  v16 = CCValidateEnumField();
  v14 = v15;

  if (v16)
  {
    CCPBDataWriterWriteUint32Field();
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