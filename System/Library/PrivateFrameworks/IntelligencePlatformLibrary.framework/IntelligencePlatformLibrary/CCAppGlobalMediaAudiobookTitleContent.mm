@interface CCAppGlobalMediaAudiobookTitleContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppGlobalMediaAudiobookTitleContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppGlobalMediaAudiobookTitleContent)initWithVocabularyStrings:(id)strings error:(id *)error;
- (NSArray)vocabularyStrings;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppGlobalMediaAudiobookTitleContent

- (CCAppGlobalMediaAudiobookTitleContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"vocabularyStrings"];
    v10 = [[CCAppGlobalMediaAudiobookTitleContent alloc] initWithVocabularyStrings:v9 error:error];
  }

  else
  {
    CCSetError();
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_vocabularyStrings)
  {
    vocabularyStrings = [(CCAppGlobalMediaAudiobookTitleContent *)self vocabularyStrings];
    [v3 setObject:vocabularyStrings forKeyedSubscript:@"vocabularyStrings"];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  if (self->_vocabularyStrings)
  {
    v6 = MEMORY[0x1E69939F0];
    blockCopy = block;
    v8 = [[v6 alloc] initWithFieldType:8199 repeatedStringValue:self->_vocabularyStrings];
    (*(block + 2))(blockCopy, v8);
  }
}

- (NSArray)vocabularyStrings
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_vocabularyStrings copyItems:1];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  errorCopy = error;
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        if (v17 == -1 || v17 >= *&v5[*v7])
        {
          break;
        }

        v18 = *(*&v5[*v11] + v17);
        *&v5[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_35;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v21 = *&v5[*v10];
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
      if ((v20 >> 3) != 1)
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_30;
        }

        v24 = objc_opt_class();
        v23 = NSStringFromClass(v24);
        v25 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
LABEL_29:

LABEL_30:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        goto LABEL_36;
      }

      break;
    }

    v22 = CCPBReaderReadStringNoCopy();
    v23 = v22;
    if (v9)
    {
      if (!v22)
      {
LABEL_25:
        v8 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!v23)
      {
        goto LABEL_25;
      }
    }

    [v9 addObject:{v23, errorCopy}];
    goto LABEL_25;
  }

  v9 = 0;
LABEL_35:
  v8 = 0;
LABEL_36:
  v26 = [v9 copy];
  vocabularyStrings = self->_vocabularyStrings;
  self->_vocabularyStrings = v26;

  if (v8)
  {
    CCSetError();
    v28 = 0;
    v29 = dataCopy;
  }

  else
  {
    v30 = MEMORY[0x1E6993AA8];
    v29 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = *&v5[*v30];
      v34 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }
  }

  return v28;
}

- (CCAppGlobalMediaAudiobookTitleContent)initWithVocabularyStrings:(id)strings error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v7 = objc_opt_new();
  if (stringsCopy)
  {
    objc_opt_class();
    v24 = 0;
    v8 = CCValidateArrayValues();
    v9 = 0;
    if (!v8)
    {
      CCSetError();
      selfCopy = 0;
      goto LABEL_14;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = stringsCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          CCPBDataWriterWriteStringField();
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = 0;
  }

  immutableData = [v7 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  v3 = @"AppGlobalMediaAudiobookTitleContent_vocabularyStrings";
  if (identifier != 8199)
  {
    v3 = 0;
  }

  if (identifier == 8194)
  {
    return @"AppGlobalMediaAudiobookTitle";
  }

  else
  {
    return v3;
  }
}

@end