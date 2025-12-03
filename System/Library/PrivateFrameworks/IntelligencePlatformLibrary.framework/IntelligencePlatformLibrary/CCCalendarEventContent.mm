@interface CCCalendarEventContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCCalendarEventContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCCalendarEventContent)initWithTitle:(id)title locationName:(id)name error:(id *)error;
- (NSString)locationName;
- (NSString)title;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCCalendarEventContent

- (CCCalendarEventContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"locationName"];
    v11 = [[CCCalendarEventContent alloc] initWithTitle:v9 locationName:v10 error:error];
  }

  else
  {
    CCSetError();
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_title)
  {
    title = [(CCCalendarEventContent *)self title];
    [v3 setObject:title forKeyedSubscript:@"title"];
  }

  if (self->_locationName)
  {
    locationName = [(CCCalendarEventContent *)self locationName];
    [v3 setObject:locationName forKeyedSubscript:@"locationName"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_title)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:54388 stringValue:self->_title];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_locationName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:54389 stringValue:self->_locationName];
    blockCopy[2](blockCopy, v6);
  }
}

- (NSString)locationName
{
  v2 = [(NSString *)self->_locationName copy];

  return v2;
}

- (NSString)title
{
  v2 = [(NSString *)self->_title copy];

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
    goto LABEL_34;
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
            goto LABEL_35;
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
        goto LABEL_35;
      }

LABEL_21:
      if ((v20 >> 3) == 2)
      {
        v22 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v23 = 24;
      }

      else
      {
        if ((v20 >> 3) != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
LABEL_27:
            if (*&v6[*v7] < *&v6[*v8])
            {
              continue;
            }

            break;
          }

          v25 = objc_opt_class();
          v24 = NSStringFromClass(v25);
          v26 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_26:

          goto LABEL_27;
        }

        v22 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v23 = 16;
      }

      v24 = *(&self->super.super.isa + v23);
      *(&self->super.super.isa + v23) = v22;
      goto LABEL_26;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_36;
  }

LABEL_34:
  if (!*&v6[*v9])
  {
    v30 = 1;
    goto LABEL_38;
  }

LABEL_35:
  v27 = objc_opt_class();
  v10 = NSStringFromClass(v27);
  v28 = *&v6[*v9];
  v29 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_36:
  v30 = 0;
LABEL_38:

  return v30;
}

- (CCCalendarEventContent)initWithTitle:(id)title locationName:(id)name error:(id *)error
{
  titleCopy = title;
  nameCopy = name;
  v10 = objc_opt_new();
  if (!titleCopy)
  {
    v12 = 0;
    if (!nameCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v18 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v14;
      goto LABEL_11;
    }

    CCPBDataWriterWriteStringField();
    v12 = v14;
    goto LABEL_8;
  }

  objc_opt_class();
  v11 = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteStringField();
  if (nameCopy)
  {
    goto LABEL_6;
  }

LABEL_8:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 11151) > 4u)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E6E70 + (identifier + 11151));
  }
}

@end