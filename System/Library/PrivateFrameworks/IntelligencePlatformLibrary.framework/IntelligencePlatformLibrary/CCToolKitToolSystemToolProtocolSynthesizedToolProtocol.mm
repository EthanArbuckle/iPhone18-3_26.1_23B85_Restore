@interface CCToolKitToolSystemToolProtocolSynthesizedToolProtocol
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemToolProtocolSynthesizedToolProtocol)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemToolProtocolSynthesizedToolProtocol)initWithReplacingIntents:(id)a3 error:(id *)a4;
- (NSArray)replacingIntents;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolSystemToolProtocolSynthesizedToolProtocol

- (CCToolKitToolSystemToolProtocolSynthesizedToolProtocol)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"replacingIntents"];
    v10 = [[CCToolKitToolSystemToolProtocolSynthesizedToolProtocol alloc] initWithReplacingIntents:v9 error:a4];
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
  if (self->_replacingIntents)
  {
    v4 = [(CCToolKitToolSystemToolProtocolSynthesizedToolProtocol *)self replacingIntents];
    [v3 setObject:v4 forKeyedSubscript:@"replacingIntents"];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  if (self->_replacingIntents)
  {
    v6 = MEMORY[0x1E69939F0];
    v7 = a3;
    v8 = [v6 alloc];
    v9 = [v8 initWithFieldType:*MEMORY[0x1E69939A8] repeatedStringValue:self->_replacingIntents];
    (*(a3 + 2))(v7, v9);
  }
}

- (NSArray)replacingIntents
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_replacingIntents copyItems:1];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v37 = a4;
  v38 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v38];
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
            goto LABEL_35;
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
        goto LABEL_35;
      }

LABEL_21:
      if ((v21 >> 3) != 1)
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_30;
        }

        v25 = objc_opt_class();
        v24 = NSStringFromClass(v25);
        v26 = *&v5[*v10];
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

    v23 = CCPBReaderReadStringNoCopy();
    v24 = v23;
    if (v9)
    {
      if (!v23)
      {
LABEL_25:
        v8 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!v24)
      {
        goto LABEL_25;
      }
    }

    [v9 addObject:{v24, v37}];
    goto LABEL_25;
  }

  v9 = 0;
LABEL_35:
  v8 = 0;
LABEL_36:
  v27 = [v9 copy];
  replacingIntents = self->_replacingIntents;
  self->_replacingIntents = v27;

  if (v8)
  {
    CCSetError();
    v29 = 0;
    v30 = v38;
  }

  else
  {
    v31 = MEMORY[0x1E6993AA8];
    v30 = v38;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = *&v5[*v31];
      v35 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  return v29;
}

- (CCToolKitToolSystemToolProtocolSynthesizedToolProtocol)initWithReplacingIntents:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  if (v6)
  {
    objc_opt_class();
    v24 = 0;
    v8 = CCValidateArrayValues();
    v9 = 0;
    if (!v8)
    {
      CCSetError();
      v17 = 0;
      goto LABEL_14;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v6;
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

  v16 = [v7 immutableData];
  self = [(CCItemMessage *)self initWithData:v16 error:a4];

  v17 = self;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end