@interface CCToolKitToolSampleInvocationDefinition
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolSampleInvocationDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolSampleInvocationDefinition)initWithPhrases:(id)phrases expectedResult:(id)result negativePhrases:(id)negativePhrases error:(id *)error;
- (NSArray)negativePhrases;
- (NSArray)phrases;
- (NSString)expectedResult;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolSampleInvocationDefinition

- (CCToolKitToolSampleInvocationDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"phrases"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"expectedResult"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"negativePhrases"];
    v12 = [[CCToolKitToolSampleInvocationDefinition alloc] initWithPhrases:v9 expectedResult:v10 negativePhrases:v11 error:error];
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_phrases)
  {
    phrases = [(CCToolKitToolSampleInvocationDefinition *)self phrases];
    [v3 setObject:phrases forKeyedSubscript:@"phrases"];
  }

  if (self->_expectedResult)
  {
    expectedResult = [(CCToolKitToolSampleInvocationDefinition *)self expectedResult];
    [v3 setObject:expectedResult forKeyedSubscript:@"expectedResult"];
  }

  if (self->_negativePhrases)
  {
    negativePhrases = [(CCToolKitToolSampleInvocationDefinition *)self negativePhrases];
    [v3 setObject:negativePhrases forKeyedSubscript:@"negativePhrases"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_phrases)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] repeatedStringValue:self->_phrases];
    v11[2](v11, v7);
  }

  if (self->_expectedResult)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_expectedResult];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_negativePhrases)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedStringValue:self->_negativePhrases];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSArray)negativePhrases
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_negativePhrases copyItems:1];

  return v2;
}

- (NSString)expectedResult
{
  v2 = [(NSString *)self->_expectedResult copy];

  return v2;
}

- (NSArray)phrases
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_phrases copyItems:1];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v44 = 0;
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
        goto LABEL_45;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_44;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
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
        goto LABEL_44;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) != 3)
      {
        if (v23 == 2)
        {
          v26 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          expectedResult = self->_expectedResult;
          self->_expectedResult = v26;
        }

        else
        {
          if (v23 == 1)
          {
            v24 = CCPBReaderReadStringNoCopy();
            expectedResult = v24;
            if (v44)
            {
              if (!v24)
              {
                goto LABEL_39;
              }

              goto LABEL_37;
            }

            v44 = objc_opt_new();
            if (expectedResult)
            {
LABEL_37:
              v30 = v44;
              goto LABEL_38;
            }

LABEL_39:
            v8 = 0;
            goto LABEL_40;
          }

          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
            goto LABEL_41;
          }

          v28 = objc_opt_class();
          expectedResult = NSStringFromClass(v28);
          v29 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
        }

LABEL_40:

LABEL_41:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        goto LABEL_45;
      }

      break;
    }

    v27 = CCPBReaderReadStringNoCopy();
    expectedResult = v27;
    if (v9)
    {
      if (!v27)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!expectedResult)
      {
        goto LABEL_39;
      }
    }

    v30 = v9;
LABEL_38:
    [v30 addObject:expectedResult];
    goto LABEL_39;
  }

  v9 = 0;
  v44 = 0;
LABEL_44:
  v8 = 0;
LABEL_45:
  v31 = [v44 copy];
  phrases = self->_phrases;
  self->_phrases = v31;

  v33 = [v9 copy];
  negativePhrases = self->_negativePhrases;
  self->_negativePhrases = v33;

  if (v8)
  {
    CCSetError();
    v35 = 0;
    v36 = dataCopy;
  }

  else
  {
    v37 = MEMORY[0x1E6993AA8];
    v36 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = *&v5[*v37];
      v41 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }
  }

  return v35;
}

- (CCToolKitToolSampleInvocationDefinition)initWithPhrases:(id)phrases expectedResult:(id)result negativePhrases:(id)negativePhrases error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  phrasesCopy = phrases;
  resultCopy = result;
  negativePhrasesCopy = negativePhrases;
  v13 = objc_opt_new();
  if (phrasesCopy)
  {
    objc_opt_class();
    v47 = 0;
    v14 = CCValidateArrayValues();
    v15 = 0;
    if (!v14)
    {
      goto LABEL_21;
    }

    errorCopy = error;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = phrasesCopy;
    v17 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        v20 = 0;
        do
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v43 + 1) + 8 * v20);
          CCPBDataWriterWriteStringField();
          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v18);
    }

    error = errorCopy;
    if (!resultCopy)
    {
LABEL_11:
      v22 = v15;
      if (negativePhrasesCopy)
      {
        goto LABEL_12;
      }

LABEL_25:
      v15 = v22;
LABEL_26:
      immutableData = [v13 immutableData];
      self = [(CCItemMessage *)self initWithData:immutableData error:error];

      selfCopy = self;
      goto LABEL_28;
    }
  }

  else
  {
    v15 = 0;
    if (!resultCopy)
    {
      goto LABEL_11;
    }
  }

  objc_opt_class();
  v42 = v15;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v22 = v15;

  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v22;
    goto LABEL_28;
  }

  CCPBDataWriterWriteStringField();
  if (!negativePhrasesCopy)
  {
    goto LABEL_25;
  }

LABEL_12:
  objc_opt_class();
  v41 = v22;
  v23 = CCValidateArrayValues();
  v15 = v22;

  if (v23)
  {
    errorCopy2 = error;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = negativePhrasesCopy;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        v28 = 0;
        do
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v37 + 1) + 8 * v28);
          CCPBDataWriterWriteStringField();
          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v26);
    }

    error = errorCopy2;
    goto LABEL_26;
  }

LABEL_21:
  CCSetError();
  selfCopy = 0;
LABEL_28:

  v33 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end