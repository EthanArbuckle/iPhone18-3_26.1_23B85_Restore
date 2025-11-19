@interface CCToolKitToolToolDefinitionVersion1ToolIcon
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolToolDefinitionVersion1ToolIcon)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolToolDefinitionVersion1ToolIcon)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolToolDefinitionVersion1ToolIconToolExternalAsset)externalAsset;
- (CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon)symbol;
- (NSString)workflowAsset;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolToolDefinitionVersion1ToolIcon

- (CCToolKitToolToolDefinitionVersion1ToolIcon)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v22[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"workflowAsset"];
    v10 = [v6 objectForKeyedSubscript:@"symbol"];
    if (v10)
    {
      v22[0] = 0;
      v11 = [[CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon alloc] initWithJSONDictionary:v10 error:v22];
      v12 = v22[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        goto LABEL_15;
      }

      v10 = v11;
    }

    v13 = [v6 objectForKeyedSubscript:@"externalAsset"];
    if (!v13)
    {
LABEL_10:
      if (v9)
      {
        v16 = v9;
        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      v11 = v9;
      if (v10)
      {
        v11 = v10;

        v17 = 2;
      }

      if (v13)
      {
        v19 = v13;

        v17 = 3;
        v11 = v19;
      }

      v18 = [[CCToolKitToolToolDefinitionVersion1ToolIcon alloc] initWithKind:v11 kindType:v17 error:a4];
      goto LABEL_22;
    }

    v21 = 0;
    v14 = [[CCToolKitToolToolDefinitionVersion1ToolIconToolExternalAsset alloc] initWithJSONDictionary:v13 error:&v21];
    v15 = v21;
    v11 = v15;
    if (v14 && !v15)
    {

      v13 = v14;
      goto LABEL_10;
    }

    CCSetError();

LABEL_15:
    v18 = 0;
LABEL_22:

    goto LABEL_23;
  }

  CCSetError();
  v18 = 0;
LABEL_23:

  return v18;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_workflowAsset)
    {
      goto LABEL_10;
    }

    v5 = [(CCToolKitToolToolDefinitionVersion1ToolIcon *)self workflowAsset];
    [v3 setObject:v5 forKeyedSubscript:@"workflowAsset"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_symbol)
    {
      goto LABEL_10;
    }

    v6 = [(CCToolKitToolToolDefinitionVersion1ToolIcon *)self symbol];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"symbol"];

    kindType = self->_kindType;
  }

  if (kindType == 3 && self->_externalAsset)
  {
    v8 = [(CCToolKitToolToolDefinitionVersion1ToolIcon *)self externalAsset];
    v9 = [v8 jsonDictionary];
    [v3 setObject:v9 forKeyedSubscript:@"externalAsset"];
  }

LABEL_10:
  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_workflowAsset)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_workflowAsset];
    v11[2](v11, v7);
  }

  if (self->_symbol)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_symbol];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_externalAsset)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_externalAsset];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (CCToolKitToolToolDefinitionVersion1ToolIconToolExternalAsset)externalAsset
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ToolIconToolExternalAsset *)self->_externalAsset copy];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon)symbol
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon *)self->_symbol copy];

  return v2;
}

- (NSString)workflowAsset
{
  v2 = [(NSString *)self->_workflowAsset copy];

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
    goto LABEL_35;
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
          if (*&v6[*v9])
          {
            goto LABEL_36;
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
        goto LABEL_36;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v34 = [CCToolKitToolToolDefinitionVersion1ToolIconToolExternalAsset alloc];
        v35 = CCPBReaderReadDataNoCopy();
        v49 = 0;
        v36 = [(CCItemMessage *)v34 initWithData:v35 error:&v49];
        v10 = v49;
        externalAsset = self->_externalAsset;
        self->_externalAsset = v36;

        if (!v10)
        {
          workflowAsset = self->_workflowAsset;
          self->_workflowAsset = 0;

          symbol = self->_symbol;
          self->_symbol = 0;

          self->_kindType = 3;
        }
      }

      else if (v23 == 2)
      {
        v28 = [CCToolKitToolToolDefinitionVersion1ToolIconToolSymbolIcon alloc];
        v29 = CCPBReaderReadDataNoCopy();
        v50 = 0;
        v30 = [(CCItemMessage *)v28 initWithData:v29 error:&v50];
        v10 = v50;
        v31 = self->_symbol;
        self->_symbol = v30;

        if (!v10)
        {
          v32 = self->_workflowAsset;
          self->_workflowAsset = 0;

          self->_kindType = 2;
          v33 = self->_externalAsset;
          self->_externalAsset = 0;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = self->_workflowAsset;
          self->_workflowAsset = v24;

          self->_kindType = 1;
          v26 = self->_symbol;
          self->_symbol = 0;

          v27 = self->_externalAsset;
          self->_externalAsset = 0;

LABEL_30:
          v10 = 0;
          goto LABEL_32;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          goto LABEL_30;
        }

        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

LABEL_32:
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
    goto LABEL_37;
  }

LABEL_35:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v47 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  v45 = *&v6[*v9];
  v46 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_37:
  v47 = 0;
LABEL_39:

  return v47;
}

- (CCToolKitToolToolDefinitionVersion1ToolIcon)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (!v8 || a4 != 1)
  {
    if (v8 && a4 == 2)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v11 = 0;
      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
      if (!v8 || a4 != 3)
      {
        goto LABEL_13;
      }

      objc_opt_class();
      v13 = CCValidateIsInstanceOfExpectedClass();
      v11 = 0;
      if (!v13)
      {
LABEL_14:
        CCSetError();
        v16 = 0;
        goto LABEL_15;
      }
    }

    v14 = [v8 data];
    CCPBDataWriterWriteDataField();

    goto LABEL_13;
  }

  objc_opt_class();
  v10 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v10)
  {
    goto LABEL_14;
  }

  CCPBDataWriterWriteStringField();
LABEL_13:
  v15 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v15 error:a5];

  v16 = self;
LABEL_15:

  return v16;
}

@end