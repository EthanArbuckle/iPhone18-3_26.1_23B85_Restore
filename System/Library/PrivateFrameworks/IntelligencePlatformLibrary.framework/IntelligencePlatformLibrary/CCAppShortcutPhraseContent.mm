@interface CCAppShortcutPhraseContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppShortcutPhraseContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppShortcutPhraseContent)initWithPhrase:(id)a3 baseTemplate:(id)a4 templateParameterValue:(id)a5 actionIdentifier:(id)a6 error:(id *)a7;
- (NSString)actionIdentifier;
- (NSString)baseTemplate;
- (NSString)phrase;
- (NSString)templateParameterValue;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppShortcutPhraseContent

- (CCAppShortcutPhraseContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"phrase"];
    v10 = [v6 objectForKeyedSubscript:@"baseTemplate"];
    v11 = [v6 objectForKeyedSubscript:@"templateParameterValue"];
    v12 = [v6 objectForKeyedSubscript:@"actionIdentifier"];
    v13 = [[CCAppShortcutPhraseContent alloc] initWithPhrase:v9 baseTemplate:v10 templateParameterValue:v11 actionIdentifier:v12 error:a4];
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
    v4 = [(CCAppShortcutPhraseContent *)self phrase];
    [v3 setObject:v4 forKeyedSubscript:@"phrase"];
  }

  if (self->_baseTemplate)
  {
    v5 = [(CCAppShortcutPhraseContent *)self baseTemplate];
    [v3 setObject:v5 forKeyedSubscript:@"baseTemplate"];
  }

  if (self->_templateParameterValue)
  {
    v6 = [(CCAppShortcutPhraseContent *)self templateParameterValue];
    [v3 setObject:v6 forKeyedSubscript:@"templateParameterValue"];
  }

  if (self->_actionIdentifier)
  {
    v7 = [(CCAppShortcutPhraseContent *)self actionIdentifier];
    [v3 setObject:v7 forKeyedSubscript:@"actionIdentifier"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v10 = a3;
  if (self->_phrase)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:12013 stringValue:self->_phrase];
    v10[2](v10, v5);
  }

  if (self->_baseTemplate)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:12014 stringValue:self->_baseTemplate];
    v10[2](v10, v6);
  }

  if (self->_templateParameterValue)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:12015 stringValue:self->_templateParameterValue];
    v10[2](v10, v7);
  }

  v8 = v10;
  if (self->_actionIdentifier)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:12017 stringValue:self->_actionIdentifier];
    v10[2](v10, v9);

    v8 = v10;
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

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
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

- (CCAppShortcutPhraseContent)initWithPhrase:(id)a3 baseTemplate:(id)a4 templateParameterValue:(id)a5 actionIdentifier:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_opt_new();
  if (v12)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v18 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_16;
    }

    v26 = a7;
    CCPBDataWriterWriteStringField();
    if (!v13)
    {
LABEL_4:
      v19 = v18;
      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v26 = a7;
    v18 = 0;
    if (!v13)
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
  if (v14)
  {
LABEL_5:
    objc_opt_class();
    v20 = CCValidateIsInstanceOfExpectedClass();
    v18 = v19;

    if (v20)
    {
      CCPBDataWriterWriteStringField();
      if (!v15)
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
      v24 = 0;
      v18 = v19;
      goto LABEL_17;
    }

LABEL_16:
    CCSetError();
    v24 = 0;
    goto LABEL_17;
  }

LABEL_11:
  v18 = v19;
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_14:
  v23 = [v16 immutableData];
  self = [(CCItemMessage *)self initWithData:v23 error:v26];

  v24 = self;
LABEL_17:

  return v24;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 - 12010) > 7u)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E6E30 + (a3 - 12010));
  }
}

@end