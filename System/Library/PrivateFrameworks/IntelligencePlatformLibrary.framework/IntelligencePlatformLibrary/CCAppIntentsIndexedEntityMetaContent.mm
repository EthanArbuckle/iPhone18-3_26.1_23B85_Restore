@interface CCAppIntentsIndexedEntityMetaContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsIndexedEntityMetaContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppIntentsIndexedEntityMetaContent)initWithSourceItemIdentifier:(id)identifier saliency:(id)saliency error:(id *)error;
- (NSString)sourceItemIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsIndexedEntityMetaContent

- (CCAppIntentsIndexedEntityMetaContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"sourceItemIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"saliency"];
    v11 = [[CCAppIntentsIndexedEntityMetaContent alloc] initWithSourceItemIdentifier:v9 saliency:v10 error:error];
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
  if (self->_sourceItemIdentifier)
  {
    sourceItemIdentifier = [(CCAppIntentsIndexedEntityMetaContent *)self sourceItemIdentifier];
    [v3 setObject:sourceItemIdentifier forKeyedSubscript:@"sourceItemIdentifier"];
  }

  if (self->_hasSaliency)
  {
    v5 = MEMORY[0x1E696AD98];
    [(CCAppIntentsIndexedEntityMetaContent *)self saliency];
    v6 = [v5 numberWithFloat:?];
    [v3 setObject:v6 forKeyedSubscript:@"saliency"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_sourceItemIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:47345 stringValue:self->_sourceItemIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_hasSaliency)
  {
    v6 = objc_alloc(MEMORY[0x1E69939F0]);
    *&v7 = self->_saliency;
    v8 = [v6 initWithFieldType:47355 floatValue:v7];
    blockCopy[2](blockCopy, v8);
  }
}

- (NSString)sourceItemIdentifier
{
  v2 = [(NSString *)self->_sourceItemIdentifier copy];

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
          v22 = *v9;
          if (*&v6[v22])
          {
            goto LABEL_37;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *v9;
      v23 = *&v6[v22];
      if (v23)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v23)
      {
        goto LABEL_37;
      }

LABEL_21:
      if ((v21 >> 3) == 3)
      {
        v26 = *v7;
        v27 = *&v6[v26];
        if (v27 <= 0xFFFFFFFFFFFFFFFBLL && v27 + 4 <= *&v6[*v8])
        {
          v28 = *(*&v6[*v11] + v27);
          *&v6[v26] = v27 + 4;
        }

        else
        {
          *&v6[v22] = 1;
          v28 = 0.0;
        }

        v10 = 0;
        self->_saliency = v28;
        self->_hasSaliency = 1;
      }

      else
      {
        if ((v21 >> 3) == 1)
        {
          v24 = CCPBReaderReadStringNoCopy();
          sourceItemIdentifier = self->_sourceItemIdentifier;
          self->_sourceItemIdentifier = v24;

LABEL_28:
          v10 = 0;
          goto LABEL_33;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          goto LABEL_28;
        }

        v29 = objc_opt_class();
        NSStringFromClass(v29);
        v31 = v30 = dataCopy;
        v32 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

        dataCopy = v30;
      }

LABEL_33:
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
    goto LABEL_38;
  }

LABEL_36:
  if (!*&v6[*v9])
  {
    v36 = 1;
    goto LABEL_40;
  }

LABEL_37:
  v33 = objc_opt_class();
  v10 = NSStringFromClass(v33);
  v34 = *&v6[*v9];
  v35 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_38:
  v36 = 0;
LABEL_40:

  return v36;
}

- (CCAppIntentsIndexedEntityMetaContent)initWithSourceItemIdentifier:(id)identifier saliency:(id)saliency error:(id *)error
{
  identifierCopy = identifier;
  saliencyCopy = saliency;
  v10 = objc_opt_new();
  if (!identifierCopy)
  {
    v12 = 0;
    if (!saliencyCopy)
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

    [saliencyCopy floatValue];
    CCPBDataWriterWriteFloatField();
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
  if (saliencyCopy)
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
  v3 = @"AppIntentsIndexedEntityMetaContent_saliency";
  if (identifier != 47355)
  {
    v3 = 0;
  }

  if (identifier == 47345)
  {
    return @"AppIntentsIndexedEntityMetaContent_sourceItemIdentifier";
  }

  else
  {
    return v3;
  }
}

@end