@interface CCToolKitToolToolInvocationSignature
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolToolInvocationSignature)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolToolInvocationSignature)initWithVisibleParameterKeys:(id)a3 invisibleParameterKeys:(id)a4 valueConstraints:(id)a5 error:(id *)a6;
- (NSArray)invisibleParameterKeys;
- (NSArray)valueConstraints;
- (NSArray)visibleParameterKeys;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolToolInvocationSignature

- (CCToolKitToolToolInvocationSignature)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v38 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"visibleParameterKeys"];
    v10 = [v6 objectForKeyedSubscript:@"invisibleParameterKeys"];
    v11 = [v6 objectForKeyedSubscript:@"valueConstraints"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v37 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v26 = 0;
        goto LABEL_21;
      }

      v29 = v14;
      v30 = v9;
      v31 = self;
      v15 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = v12;
      v16 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v12);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            v21 = [CCToolKitToolToolInvocationSignatureValueConstraintsEntry alloc];
            v32 = 0;
            v22 = [(CCToolKitToolToolInvocationSignatureValueConstraintsEntry *)v21 initWithJSONDictionary:v20 error:&v32];
            v23 = v32;
            if (v22)
            {
              v24 = v23 == 0;
            }

            else
            {
              v24 = 0;
            }

            if (!v24)
            {
              v25 = v23;
              CCSetError();

              v26 = 0;
              v9 = v30;
              self = v31;
              v14 = v29;
              goto LABEL_21;
            }

            [v15 addObject:v22];
          }

          v17 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v17);
      }

      v9 = v30;
      self = v31;
      v14 = v29;
    }

    else
    {
      v15 = 0;
      v14 = v8;
    }

    v26 = [[CCToolKitToolToolInvocationSignature alloc] initWithVisibleParameterKeys:v9 invisibleParameterKeys:v10 valueConstraints:v15 error:a4];
    v12 = v15;
LABEL_21:

    v8 = v14;
    goto LABEL_22;
  }

  CCSetError();
  v26 = 0;
LABEL_22:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)jsonDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_visibleParameterKeys)
  {
    v4 = [(CCToolKitToolToolInvocationSignature *)self visibleParameterKeys];
    [v3 setObject:v4 forKeyedSubscript:@"visibleParameterKeys"];
  }

  if (self->_invisibleParameterKeys)
  {
    v5 = [(CCToolKitToolToolInvocationSignature *)self invisibleParameterKeys];
    [v3 setObject:v5 forKeyedSubscript:@"invisibleParameterKeys"];
  }

  if (self->_valueConstraints)
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(CCToolKitToolToolInvocationSignature *)self valueConstraints];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"valueConstraints"];
  }

  v13 = [v3 copy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_visibleParameterKeys)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] repeatedStringValue:self->_visibleParameterKeys];
    v11[2](v11, v7);
  }

  if (self->_invisibleParameterKeys)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedStringValue:self->_invisibleParameterKeys];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_valueConstraints)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_valueConstraints];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSArray)valueConstraints
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_valueConstraints copyItems:1];

  return v2;
}

- (NSArray)invisibleParameterKeys
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_invisibleParameterKeys copyItems:1];

  return v2;
}

- (NSArray)visibleParameterKeys
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_visibleParameterKeys copyItems:1];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v46 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v46];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v47 = 0;
    v48 = 0;
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
        goto LABEL_50;
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
            goto LABEL_49;
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
        goto LABEL_49;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v25 = CCPBReaderReadDataNoCopy();
        if (!v47)
        {
          v47 = objc_opt_new();
        }

        v27 = [CCToolKitToolToolInvocationSignatureValueConstraintsEntry alloc];
        v49 = 0;
        v28 = [(CCItemMessage *)v27 initWithData:v25 error:&v49];
        v8 = v49;
        if (!v8 && v28)
        {
          [v47 addObject:v28];
        }

        goto LABEL_45;
      }

      if (v23 != 2)
      {
        if (v23 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
            goto LABEL_46;
          }

          v29 = objc_opt_class();
          v25 = NSStringFromClass(v29);
          v30 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
LABEL_45:

LABEL_46:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_50;
        }

        v24 = CCPBReaderReadStringNoCopy();
        v25 = v24;
        if (v48)
        {
          if (!v24)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        }

        v48 = objc_opt_new();
        if (v25)
        {
LABEL_42:
          v31 = v48;
          goto LABEL_43;
        }

LABEL_44:
        v8 = 0;
        goto LABEL_45;
      }

      break;
    }

    v26 = CCPBReaderReadStringNoCopy();
    v25 = v26;
    if (v9)
    {
      if (!v26)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!v25)
      {
        goto LABEL_44;
      }
    }

    v31 = v9;
LABEL_43:
    [v31 addObject:v25];
    goto LABEL_44;
  }

  v47 = 0;
  v48 = 0;
  v9 = 0;
LABEL_49:
  v8 = 0;
LABEL_50:
  v32 = [v48 copy];
  visibleParameterKeys = self->_visibleParameterKeys;
  self->_visibleParameterKeys = v32;

  v34 = [v9 copy];
  invisibleParameterKeys = self->_invisibleParameterKeys;
  self->_invisibleParameterKeys = v34;

  v36 = [v47 copy];
  valueConstraints = self->_valueConstraints;
  self->_valueConstraints = v36;

  if (v8)
  {
    CCSetError();
    v38 = 0;
    v39 = v46;
  }

  else
  {
    v40 = MEMORY[0x1E6993AA8];
    v39 = v46;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = *&v5[*v40];
      v44 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }
  }

  return v38;
}

- (CCToolKitToolToolInvocationSignature)initWithVisibleParameterKeys:(id)a3 invisibleParameterKeys:(id)a4 valueConstraints:(id)a5 error:(id *)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    v60 = 0;
    v14 = CCValidateArrayValues();
    v15 = 0;
    if (!v14)
    {
      goto LABEL_21;
    }

    v42 = self;
    v43 = a6;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v57;
      do
      {
        v20 = 0;
        do
        {
          if (*v57 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v56 + 1) + 8 * v20);
          CCPBDataWriterWriteStringField();
          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v18);
    }

    self = v42;
    a6 = v43;
    if (!v11)
    {
LABEL_11:
      v22 = v15;
      if (v12)
      {
        goto LABEL_12;
      }

LABEL_32:
      v15 = v22;
LABEL_33:
      v39 = [v13 immutableData];
      self = [(CCItemMessage *)self initWithData:v39 error:a6];

      v30 = self;
      goto LABEL_35;
    }
  }

  else
  {
    v15 = 0;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  objc_opt_class();
  v55 = v15;
  v31 = CCValidateArrayValues();
  v22 = v15;

  if (!v31)
  {
    CCSetError();
    v30 = 0;
    v15 = v22;
    goto LABEL_35;
  }

  v45 = a6;
  v32 = self;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v33 = v11;
  v34 = [v33 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v52;
    do
    {
      v37 = 0;
      do
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v51 + 1) + 8 * v37);
        CCPBDataWriterWriteStringField();
        ++v37;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v35);
  }

  self = v32;
  a6 = v45;
  if (!v12)
  {
    goto LABEL_32;
  }

LABEL_12:
  objc_opt_class();
  v50 = v22;
  v23 = CCValidateArrayValues();
  v15 = v22;

  if (v23)
  {
    v42 = self;
    v44 = a6;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v24 = v12;
    v25 = [v24 countByEnumeratingWithState:&v46 objects:v61 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v47;
      do
      {
        v28 = 0;
        do
        {
          if (*v47 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v46 + 1) + 8 * v28) data];
          CCPBDataWriterWriteDataField();

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v46 objects:v61 count:16];
      }

      while (v26);
    }

    self = v42;
    a6 = v44;
    goto LABEL_33;
  }

LABEL_21:
  CCSetError();
  v30 = 0;
LABEL_35:

  v40 = *MEMORY[0x1E69E9840];
  return v30;
}

@end