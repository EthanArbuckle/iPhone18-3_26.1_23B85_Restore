@interface CCToolKitToolToolDefinitionVersion1ParameterToolMetadata
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolToolDefinitionVersion1ParameterToolMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolToolDefinitionVersion1ParameterToolMetadata)initWithSourceContainerId:(id)a3 backingLinkActionIdentifiers:(id)a4 error:(id *)a5;
- (NSArray)backingLinkActionIdentifiers;
- (NSString)sourceContainerId;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolToolDefinitionVersion1ParameterToolMetadata

- (CCToolKitToolToolDefinitionVersion1ParameterToolMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"sourceContainerId"];
    v10 = [v6 objectForKeyedSubscript:@"backingLinkActionIdentifiers"];
    v11 = [[CCToolKitToolToolDefinitionVersion1ParameterToolMetadata alloc] initWithSourceContainerId:v9 backingLinkActionIdentifiers:v10 error:a4];
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
  if (self->_sourceContainerId)
  {
    v4 = [(CCToolKitToolToolDefinitionVersion1ParameterToolMetadata *)self sourceContainerId];
    [v3 setObject:v4 forKeyedSubscript:@"sourceContainerId"];
  }

  if (self->_backingLinkActionIdentifiers)
  {
    v5 = [(CCToolKitToolToolDefinitionVersion1ParameterToolMetadata *)self backingLinkActionIdentifiers];
    [v3 setObject:v5 forKeyedSubscript:@"backingLinkActionIdentifiers"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_sourceContainerId)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_sourceContainerId];
    v8[2](v8, v6);
  }

  if (self->_backingLinkActionIdentifiers)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedStringValue:self->_backingLinkActionIdentifiers];
    v8[2](v8, v7);
  }
}

- (NSArray)backingLinkActionIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_backingLinkActionIdentifiers copyItems:1];

  return v2;
}

- (NSString)sourceContainerId
{
  v2 = [(NSString *)self->_sourceContainerId copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v38 = a4;
  v39 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v39];
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
        goto LABEL_38;
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
            goto LABEL_37;
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
        goto LABEL_37;
      }

LABEL_21:
      if ((v21 >> 3) != 2)
      {
        if ((v21 >> 3) == 1)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          sourceContainerId = self->_sourceContainerId;
          self->_sourceContainerId = v23;
        }

        else
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
            goto LABEL_32;
          }

          v26 = objc_opt_class();
          sourceContainerId = NSStringFromClass(v26);
          v27 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
        }

LABEL_31:

LABEL_32:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        goto LABEL_38;
      }

      break;
    }

    v25 = CCPBReaderReadStringNoCopy();
    sourceContainerId = v25;
    if (v9)
    {
      if (!v25)
      {
LABEL_27:
        v8 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!sourceContainerId)
      {
        goto LABEL_27;
      }
    }

    [v9 addObject:{sourceContainerId, v38}];
    goto LABEL_27;
  }

  v9 = 0;
LABEL_37:
  v8 = 0;
LABEL_38:
  v28 = [v9 copy];
  backingLinkActionIdentifiers = self->_backingLinkActionIdentifiers;
  self->_backingLinkActionIdentifiers = v28;

  if (v8)
  {
    CCSetError();
    v30 = 0;
    v31 = v39;
  }

  else
  {
    v32 = MEMORY[0x1E6993AA8];
    v31 = v39;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = *&v5[*v32];
      v36 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  return v30;
}

- (CCToolKitToolToolDefinitionVersion1ParameterToolMetadata)initWithSourceContainerId:(id)a3 backingLinkActionIdentifiers:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if (!v8)
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    v29 = v12;
    v13 = CCValidateArrayValues();
    v14 = v12;

    if (!v13)
    {
      CCSetError();
      v22 = 0;
      v12 = v14;
      goto LABEL_18;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          CCPBDataWriterWriteStringField();
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v17);
    }

    v12 = v14;
    goto LABEL_15;
  }

  objc_opt_class();
  v30 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    v22 = 0;
    goto LABEL_18;
  }

  CCPBDataWriterWriteStringField();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_15:
  v21 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v21 error:a5];

  v22 = self;
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

@end