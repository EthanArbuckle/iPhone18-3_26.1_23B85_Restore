@interface CCAppShortcutPhraseContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppShortcutPhraseContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppShortcutPhraseContent)initWithPhrase:(id)phrase baseTemplate:(id)template templateParameterValue:(id)value actionIdentifier:(id)identifier error:(id *)error;
- (NSString)actionIdentifier;
- (NSString)baseTemplate;
- (NSString)phrase;
- (NSString)templateParameterValue;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppShortcutPhraseContent

- (CCAppShortcutPhraseContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"phrase"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"baseTemplate"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"templateParameterValue"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"actionIdentifier"];
    v13 = [[CCAppShortcutPhraseContent alloc] initWithPhrase:v9 baseTemplate:v10 templateParameterValue:v11 actionIdentifier:v12 error:error];
  }

  else
  {
    CCSetError();
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_phrase)
  {
    phrase = [(CCAppShortcutPhraseContent *)self phrase];
    [v3 setObject:phrase forKeyedSubscript:@"phrase"];
  }

  if (self->_baseTemplate)
  {
    baseTemplate = [(CCAppShortcutPhraseContent *)self baseTemplate];
    [v3 setObject:baseTemplate forKeyedSubscript:@"baseTemplate"];
  }

  if (self->_templateParameterValue)
  {
    templateParameterValue = [(CCAppShortcutPhraseContent *)self templateParameterValue];
    [v3 setObject:templateParameterValue forKeyedSubscript:@"templateParameterValue"];
  }

  if (self->_actionIdentifier)
  {
    actionIdentifier = [(CCAppShortcutPhraseContent *)self actionIdentifier];
    [v3 setObject:actionIdentifier forKeyedSubscript:@"actionIdentifier"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_phrase)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:12013 stringValue:self->_phrase];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_baseTemplate)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:12014 stringValue:self->_baseTemplate];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_templateParameterValue)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:12015 stringValue:self->_templateParameterValue];
    blockCopy[2](blockCopy, v7);
  }

  v8 = blockCopy;
  if (self->_actionIdentifier)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:12017 stringValue:self->_actionIdentifier];
    blockCopy[2](blockCopy, v9);

    v8 = blockCopy;
  }
}

- (NSString)actionIdentifier
{
  v2 = [(NSString *)self->_actionIdentifier copy];

  return v2;
}

- (NSString)templateParameterValue
{
  v2 = [(NSString *)self->_templateParameterValue copy];

  return v2;
}

- (NSString)baseTemplate
{
  v2 = [(NSString *)self->_baseTemplate copy];

  return v2;
}

- (NSString)phrase
{
  v2 = [(NSString *)self->_phrase copy];

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
    goto LABEL_39;
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) > 2)
      {
        if (v22 == 3)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v24 = 32;
          goto LABEL_32;
        }

        if (v22 == 4)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v24 = 40;
          goto LABEL_32;
        }
      }

      else
      {
        if (v22 == 1)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v24 = 16;
          goto LABEL_32;
        }

        if (v22 == 2)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v24 = 24;
LABEL_32:
          v25 = *(&self->super.super.isa + v24);
          *(&self->super.super.isa + v24) = v23;
          goto LABEL_33;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_34;
      }

      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      v27 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_33:

LABEL_34:
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
    goto LABEL_41;
  }

LABEL_39:
  if (!*&v6[*v9])
  {
    v31 = 1;
    goto LABEL_43;
  }

LABEL_40:
  v28 = objc_opt_class();
  v10 = NSStringFromClass(v28);
  v29 = *&v6[*v9];
  v30 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_41:
  v31 = 0;
LABEL_43:

  return v31;
}

- (CCAppShortcutPhraseContent)initWithPhrase:(id)phrase baseTemplate:(id)template templateParameterValue:(id)value actionIdentifier:(id)identifier error:(id *)error
{
  phraseCopy = phrase;
  templateCopy = template;
  valueCopy = value;
  identifierCopy = identifier;
  v16 = objc_opt_new();
  if (phraseCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v18 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_16;
    }

    errorCopy2 = error;
    CCPBDataWriterWriteStringField();
    if (!templateCopy)
    {
LABEL_4:
      v19 = v18;
      if (valueCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    errorCopy2 = error;
    v18 = 0;
    if (!templateCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v21 = CCValidateIsInstanceOfExpectedClass();
  v19 = v18;

  if (!v21)
  {
    goto LABEL_15;
  }

  CCPBDataWriterWriteStringField();
  if (valueCopy)
  {
LABEL_5:
    objc_opt_class();
    v20 = CCValidateIsInstanceOfExpectedClass();
    v18 = v19;

    if (v20)
    {
      CCPBDataWriterWriteStringField();
      if (!identifierCopy)
      {
        goto LABEL_14;
      }

LABEL_12:
      objc_opt_class();
      v22 = CCValidateIsInstanceOfExpectedClass();
      v19 = v18;

      if (v22)
      {
        CCPBDataWriterWriteStringField();
        v18 = v19;
        goto LABEL_14;
      }

LABEL_15:
      CCSetError();
      selfCopy = 0;
      v18 = v19;
      goto LABEL_17;
    }

LABEL_16:
    CCSetError();
    selfCopy = 0;
    goto LABEL_17;
  }

LABEL_11:
  v18 = v19;
  if (identifierCopy)
  {
    goto LABEL_12;
  }

LABEL_14:
  immutableData = [v16 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:errorCopy2];

  selfCopy = self;
LABEL_17:

  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier - 12010) > 7u)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E6E30 + (identifier - 12010));
  }
}

@end