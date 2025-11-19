@interface CCAppCustomMediaAudiobookAuthorNameContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppCustomMediaAudiobookAuthorNameContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppCustomMediaAudiobookAuthorNameContent)initWithVocabularyString:(id)a3 vocabularyIdentifier:(id)a4 error:(id *)a5;
- (NSString)vocabularyIdentifier;
- (NSString)vocabularyString;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppCustomMediaAudiobookAuthorNameContent

- (CCAppCustomMediaAudiobookAuthorNameContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"vocabularyString"];
    v10 = [v6 objectForKeyedSubscript:@"vocabularyIdentifier"];
    v11 = [[CCAppCustomMediaAudiobookAuthorNameContent alloc] initWithVocabularyString:v9 vocabularyIdentifier:v10 error:a4];
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
  if (self->_vocabularyString)
  {
    v4 = [(CCAppCustomMediaAudiobookAuthorNameContent *)self vocabularyString];
    [v3 setObject:v4 forKeyedSubscript:@"vocabularyString"];
  }

  if (self->_vocabularyIdentifier)
  {
    v5 = [(CCAppCustomMediaAudiobookAuthorNameContent *)self vocabularyIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"vocabularyIdentifier"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v7 = a3;
  if (self->_vocabularyString)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:38254 stringValue:self->_vocabularyString];
    v7[2](v7, v5);
  }

  if (self->_vocabularyIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:38255 stringValue:self->_vocabularyIdentifier];
    v7[2](v7, v6);
  }
}

- (NSString)vocabularyIdentifier
{
  v2 = [(NSString *)self->_vocabularyIdentifier copy];

  return v2;
}

- (NSString)vocabularyString
{
  v2 = [(NSString *)self->_vocabularyString copy];

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

- (CCAppCustomMediaAudiobookAuthorNameContent)initWithVocabularyString:(id)a3 vocabularyIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if (!v8)
  {
    v12 = 0;
    if (!v9)
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
      v16 = 0;
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
    v16 = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteStringField();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_8:
  v15 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v15 error:a5];

  v16 = self;
LABEL_11:

  return v16;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 + 27285) > 4u)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E67F0 + (a3 + 27285));
  }
}

@end