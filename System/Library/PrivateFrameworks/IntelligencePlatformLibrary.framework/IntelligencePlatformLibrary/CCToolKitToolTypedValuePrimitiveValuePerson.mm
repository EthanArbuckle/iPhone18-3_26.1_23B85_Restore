@interface CCToolKitToolTypedValuePrimitiveValuePerson
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypedValuePrimitiveValuePerson)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValuePerson)initWithPerson:(id)person displayRepresentation:(id)representation handle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier customIdentifier:(id)self0 relationship:(id)self1 contactSuggestion:(id)self2 isMe:(id)self3 error:(id *)self4;
- (CCToolKitToolTypedValuePrimitiveValuePersonHandle)handle;
- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponents)nameComponents;
- (NSData)image;
- (NSData)person;
- (NSString)contactIdentifier;
- (NSString)customIdentifier;
- (NSString)displayName;
- (NSString)relationship;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValuePerson

- (CCToolKitToolTypedValuePrimitiveValuePerson)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v38[2] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"person"];
    if (v9)
    {
      objc_opt_class();
      v38[1] = v8;
      v10 = CCValidateIsInstanceOfExpectedClass();
      v11 = v8;

      if ((v10 & 1) == 0)
      {
        CCSetError();
        v24 = 0;
        v8 = v11;
LABEL_32:

        goto LABEL_33;
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

      v9 = v12;
      v8 = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
    if (v13)
    {
      v38[0] = 0;
      v14 = [[CCToolKitToolDisplayRepresentation alloc] initWithJSONDictionary:v13 error:v38];
      v15 = v38[0];
      v16 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        v24 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v13 = v14;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"handle"];
    if (v16)
    {
      v37 = 0;
      v17 = [[CCToolKitToolTypedValuePrimitiveValuePersonHandle alloc] initWithJSONDictionary:v16 error:&v37];
      v18 = v37;
      v14 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v24 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v16 = v17;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"nameComponents"];
    if (v14)
    {
      v36 = 0;
      v19 = [[CCToolKitToolTypedValuePrimitiveValuePersonNameComponents alloc] initWithJSONDictionary:v14 error:&v36];
      v20 = v36;
      v17 = v20;
      if (!v19 || v20)
      {
        CCSetError();
        v24 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v14 = v19;
    }

    selfCopy = self;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    if (v21)
    {
      v19 = v21;
      objc_opt_class();
      v22 = CCValidateIsInstanceOfExpectedClass();
      v34 = v8;

      if ((v22 & 1) == 0)
      {
        v8 = v34;
        CCSetError();
        v24 = 0;
        goto LABEL_28;
      }

      v31 = v13;
      v32 = v17;
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v19 options:0];

      v30 = v23;
      v8 = v34;
    }

    else
    {
      v31 = v13;
      v32 = v17;
      v30 = 0;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    v29 = [dictionaryCopy objectForKeyedSubscript:@"customIdentifier"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"relationship"];
    v27 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggestion"];
    v25 = [dictionaryCopy objectForKeyedSubscript:@"isMe"];
    v13 = v31;
    v17 = v32;
    v19 = v30;
    v24 = [[CCToolKitToolTypedValuePrimitiveValuePerson alloc] initWithPerson:v9 displayRepresentation:v31 handle:v16 nameComponents:v14 displayName:v32 image:v30 contactIdentifier:v35 customIdentifier:v29 relationship:v28 contactSuggestion:v27 isMe:v25 error:error];

LABEL_28:
    self = selfCopy;
    goto LABEL_29;
  }

  CCSetError();
  v24 = 0;
LABEL_33:

  return v24;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_person)
  {
    person = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self person];
    v5 = [person base64EncodedStringWithOptions:0];
    [v3 setObject:v5 forKeyedSubscript:@"person"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self displayRepresentation];
    jsonDictionary = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"displayRepresentation"];
  }

  if (self->_handle)
  {
    handle = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self handle];
    jsonDictionary2 = [handle jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"handle"];
  }

  if (self->_nameComponents)
  {
    nameComponents = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self nameComponents];
    jsonDictionary3 = [nameComponents jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"nameComponents"];
  }

  if (self->_displayName)
  {
    displayName = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self displayName];
    [v3 setObject:displayName forKeyedSubscript:@"displayName"];
  }

  if (self->_image)
  {
    image = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self image];
    v14 = [image base64EncodedStringWithOptions:0];
    [v3 setObject:v14 forKeyedSubscript:@"image"];
  }

  if (self->_contactIdentifier)
  {
    contactIdentifier = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self contactIdentifier];
    [v3 setObject:contactIdentifier forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_customIdentifier)
  {
    customIdentifier = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self customIdentifier];
    [v3 setObject:customIdentifier forKeyedSubscript:@"customIdentifier"];
  }

  if (self->_relationship)
  {
    relationship = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self relationship];
    [v3 setObject:relationship forKeyedSubscript:@"relationship"];
  }

  if (self->_hasContactSuggestion)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolTypedValuePrimitiveValuePerson contactSuggestion](self, "contactSuggestion")}];
    [v3 setObject:v18 forKeyedSubscript:@"contactSuggestion"];
  }

  if (self->_hasIsMe)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolTypedValuePrimitiveValuePerson isMe](self, "isMe")}];
    [v3 setObject:v19 forKeyedSubscript:@"isMe"];
  }

  v20 = [v3 copy];

  return v20;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v18 = blockCopy;
  if (self->_person)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] bytesValue:self->_person];
    v18[2](v18, v7);
  }

  if (self->_displayRepresentation)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_displayRepresentation];
    v18[2](v18, v8);
  }

  if (self->_handle)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_handle];
    v18[2](v18, v9);
  }

  if (self->_nameComponents)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_nameComponents];
    v18[2](v18, v10);
  }

  if (self->_displayName)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_displayName];
    v18[2](v18, v11);
  }

  if (self->_image)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 bytesValue:self->_image];
    v18[2](v18, v12);
  }

  if (self->_contactIdentifier)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_contactIdentifier];
    v18[2](v18, v13);
  }

  if (self->_customIdentifier)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_customIdentifier];
    v18[2](v18, v14);
  }

  if (self->_relationship)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_relationship];
    v18[2](v18, v15);
  }

  if (self->_hasContactSuggestion)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 BOOLValue:self->_contactSuggestion];
    v18[2](v18, v16);
  }

  if (self->_hasIsMe)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 BOOLValue:self->_isMe];
    v18[2](v18, v17);
  }
}

- (NSString)relationship
{
  v2 = [(NSString *)self->_relationship copy];

  return v2;
}

- (NSString)customIdentifier
{
  v2 = [(NSString *)self->_customIdentifier copy];

  return v2;
}

- (NSString)contactIdentifier
{
  v2 = [(NSString *)self->_contactIdentifier copy];

  return v2;
}

- (NSData)image
{
  v2 = [(NSData *)self->_image copy];

  return v2;
}

- (NSString)displayName
{
  v2 = [(NSString *)self->_displayName copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponents)nameComponents
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self->_nameComponents copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValuePersonHandle)handle
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValuePersonHandle *)self->_handle copy];

  return v2;
}

- (CCToolKitToolDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSData)person
{
  v2 = [(NSData *)self->_person copy];

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
    goto LABEL_84;
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
            goto LABEL_85;
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
        goto LABEL_85;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 5)
      {
        if (v23 <= 8)
        {
          switch(v23)
          {
            case 6:
              v24 = CCPBReaderReadData();
              v25 = 64;
              goto LABEL_60;
            case 7:
              v24 = CCPBReaderReadStringNoCopy();
              v25 = 72;
              goto LABEL_60;
            case 8:
              v24 = CCPBReaderReadStringNoCopy();
              v25 = 80;
LABEL_60:
              v49 = *(&self->super.super.isa + v25);
              *(&self->super.super.isa + v25) = v24;

LABEL_61:
              v10 = 0;
              goto LABEL_81;
          }

          goto LABEL_62;
        }

        switch(v23)
        {
          case 9:
            v24 = CCPBReaderReadStringNoCopy();
            v25 = 88;
            goto LABEL_60;
          case 0xA:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            while (1)
            {
              v42 = *v7;
              v43 = *&v6[v42];
              v44 = v43 + 1;
              if (v43 == -1 || v44 > *&v6[*v8])
              {
                break;
              }

              v45 = *(*&v6[*v11] + v43);
              *&v6[v42] = v44;
              v41 |= (v45 & 0x7F) << v39;
              if ((v45 & 0x80) == 0)
              {
                goto LABEL_65;
              }

              v39 += 7;
              v20 = v40++ >= 9;
              if (v20)
              {
                v46 = 0;
                goto LABEL_71;
              }
            }

            *&v6[*v9] = 1;
LABEL_65:
            if (*&v6[*v9])
            {
              v52 = 1;
            }

            else
            {
              v52 = v41 == 0;
            }

            v46 = !v52;
LABEL_71:
            v10 = 0;
            self->_contactSuggestion = v46;
            v53 = 18;
            goto LABEL_80;
          case 0xB:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              v29 = *v7;
              v30 = *&v6[v29];
              v31 = v30 + 1;
              if (v30 == -1 || v31 > *&v6[*v8])
              {
                break;
              }

              v32 = *(*&v6[*v11] + v30);
              *&v6[v29] = v31;
              v28 |= (v32 & 0x7F) << v26;
              if ((v32 & 0x80) == 0)
              {
                goto LABEL_73;
              }

              v26 += 7;
              v20 = v27++ >= 9;
              if (v20)
              {
                v33 = 0;
                goto LABEL_79;
              }
            }

            *&v6[*v9] = 1;
LABEL_73:
            if (*&v6[*v9])
            {
              v54 = 1;
            }

            else
            {
              v54 = v28 == 0;
            }

            v33 = !v54;
LABEL_79:
            v10 = 0;
            self->_isMe = v33;
            v53 = 19;
LABEL_80:
            *(&self->super.super.isa + v53) = 1;
LABEL_81:
            if (*&v6[*v7] < *&v6[*v8])
            {
              continue;
            }

            goto LABEL_82;
        }

LABEL_62:
        if (CCPBReaderSkipValueWithTag())
        {
          goto LABEL_61;
        }

        v50 = objc_opt_class();
        v35 = NSStringFromClass(v50);
        v51 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
LABEL_57:

        goto LABEL_81;
      }

      if (v23 <= 2)
      {
        if (v23 == 1)
        {
          v24 = CCPBReaderReadData();
          v25 = 24;
          goto LABEL_60;
        }

        if (v23 != 2)
        {
          goto LABEL_62;
        }

        v34 = [CCToolKitToolDisplayRepresentation alloc];
        v35 = CCPBReaderReadDataNoCopy();
        v63 = 0;
        v36 = [(CCItemMessage *)v34 initWithData:v35 error:&v63];
        v10 = v63;
        v37 = 32;
      }

      else
      {
        switch(v23)
        {
          case 3:
            v47 = [CCToolKitToolTypedValuePrimitiveValuePersonHandle alloc];
            v35 = CCPBReaderReadDataNoCopy();
            v62 = 0;
            v36 = [(CCItemMessage *)v47 initWithData:v35 error:&v62];
            v10 = v62;
            v37 = 40;
            break;
          case 4:
            v38 = [CCToolKitToolTypedValuePrimitiveValuePersonNameComponents alloc];
            v35 = CCPBReaderReadDataNoCopy();
            v61 = 0;
            v36 = [(CCItemMessage *)v38 initWithData:v35 error:&v61];
            v10 = v61;
            v37 = 48;
            break;
          case 5:
            v24 = CCPBReaderReadStringNoCopy();
            v25 = 56;
            goto LABEL_60;
          default:
            goto LABEL_62;
        }
      }

      v48 = *(&self->super.super.isa + v37);
      *(&self->super.super.isa + v37) = v36;

      goto LABEL_57;
    }

    break;
  }

LABEL_82:
  if (v10)
  {
    CCSetError();
    goto LABEL_86;
  }

LABEL_84:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v59 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v55 = objc_opt_class();
  v56 = NSStringFromClass(v55);
  v57 = *&v6[*v9];
  v58 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_86:
  v59 = 0;
LABEL_88:

  return v59;
}

- (CCToolKitToolTypedValuePrimitiveValuePerson)initWithPerson:(id)person displayRepresentation:(id)representation handle:(id)handle nameComponents:(id)components displayName:(id)name image:(id)image contactIdentifier:(id)identifier customIdentifier:(id)self0 relationship:(id)self1 contactSuggestion:(id)self2 isMe:(id)self3 error:(id *)self4
{
  personCopy = person;
  representationCopy = representation;
  handleCopy = handle;
  componentsCopy = components;
  nameCopy = name;
  imageCopy = image;
  identifierCopy = identifier;
  customIdentifierCopy = customIdentifier;
  relationshipCopy = relationship;
  suggestionCopy = suggestion;
  meCopy = me;
  v25 = objc_opt_new();
  v55 = identifierCopy;
  if (!personCopy)
  {
    v27 = 0;
    if (!representationCopy)
    {
LABEL_4:
      v28 = v27;
      if (handleCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

LABEL_11:
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v28 = v27;

    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_37;
    }

    data = [representationCopy data];
    CCPBDataWriterWriteDataField();

    if (handleCopy)
    {
LABEL_5:
      objc_opt_class();
      v29 = CCValidateIsInstanceOfExpectedClass();
      v27 = v28;

      if (!v29)
      {
        goto LABEL_42;
      }

      data2 = [handleCopy data];
      CCPBDataWriterWriteDataField();

      if (!componentsCopy)
      {
LABEL_7:
        v28 = v27;
        if (nameCopy)
        {
LABEL_8:
          objc_opt_class();
          v31 = CCValidateIsInstanceOfExpectedClass();
          v27 = v28;

          if (!v31)
          {
            goto LABEL_42;
          }

          CCPBDataWriterWriteStringField();
LABEL_17:
          if (imageCopy)
          {
            objc_opt_class();
            v36 = CCValidateIsInstanceOfExpectedClass();
            v37 = imageCopy;
            v38 = v27;

            if (!v36)
            {
              v39 = personCopy;
              CCSetError();
              v40 = 0;
              v27 = v38;
LABEL_44:
              selfCopy2 = self;
              goto LABEL_45;
            }

            CCPBDataWriterWriteDataField();
            if (!v55)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v38 = v27;
            if (!identifierCopy)
            {
LABEL_20:
              v27 = v38;
LABEL_25:
              if (customIdentifierCopy)
              {
                objc_opt_class();
                v43 = CCValidateIsInstanceOfExpectedClass();
                v28 = v27;

                if (!v43)
                {
                  goto LABEL_37;
                }

                CCPBDataWriterWriteStringField();
              }

              else
              {
                v28 = v27;
              }

              if (!relationshipCopy)
              {
                v27 = v28;
                goto LABEL_34;
              }

              objc_opt_class();
              v44 = CCValidateIsInstanceOfExpectedClass();
              v27 = v28;

              if (v44)
              {
                CCPBDataWriterWriteStringField();
LABEL_34:
                v45 = 0x1E696A000uLL;
                if (!suggestionCopy)
                {
                  v28 = v27;
                  goto LABEL_39;
                }

                objc_opt_class();
                v46 = CCValidateIsInstanceOfExpectedClass();
                v28 = v27;

                if (v46)
                {
                  [suggestionCopy BOOLValue];
                  CCPBDataWriterWriteBOOLField();
                  v45 = 0x1E696A000;
LABEL_39:
                  if (!meCopy)
                  {
                    v39 = personCopy;
                    v27 = v28;
                    goto LABEL_47;
                  }

                  v47 = *(v45 + 3480);
                  objc_opt_class();
                  v48 = CCValidateIsInstanceOfExpectedClass();
                  v27 = v28;

                  if (v48)
                  {
                    v39 = personCopy;
                    [meCopy BOOLValue];
                    CCPBDataWriterWriteBOOLField();
LABEL_47:
                    v37 = imageCopy;
                    immutableData = [v25 immutableData];
                    selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:v51];

                    v40 = selfCopy2;
                    goto LABEL_45;
                  }

                  goto LABEL_42;
                }

LABEL_37:
                v39 = personCopy;
                CCSetError();
                v40 = 0;
                v27 = v28;
LABEL_43:
                v37 = imageCopy;
                goto LABEL_44;
              }

LABEL_42:
              v39 = personCopy;
              CCSetError();
              v40 = 0;
              goto LABEL_43;
            }
          }

          objc_opt_class();
          v42 = CCValidateIsInstanceOfExpectedClass();
          v27 = v38;

          if (!v42)
          {
            goto LABEL_42;
          }

          CCPBDataWriterWriteStringField();
          goto LABEL_25;
        }

LABEL_16:
        v27 = v28;
        goto LABEL_17;
      }

LABEL_14:
      objc_opt_class();
      v34 = CCValidateIsInstanceOfExpectedClass();
      v28 = v27;

      if (!v34)
      {
        goto LABEL_37;
      }

      data3 = [componentsCopy data];
      CCPBDataWriterWriteDataField();

      if (nameCopy)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_13:
    v27 = v28;
    if (!componentsCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  v26 = CCValidateIsInstanceOfExpectedClass();
  v27 = 0;
  if (v26)
  {
    CCPBDataWriterWriteDataField();
    if (!representationCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v39 = personCopy;
  CCSetError();
  v40 = 0;
  selfCopy2 = self;
  v37 = imageCopy;
LABEL_45:

  return v40;
}

@end