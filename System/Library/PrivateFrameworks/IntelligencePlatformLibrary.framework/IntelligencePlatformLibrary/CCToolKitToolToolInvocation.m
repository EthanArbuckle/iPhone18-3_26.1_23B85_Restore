@interface CCToolKitToolToolInvocation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolContainerDefinitionDevice)target;
- (CCToolKitToolToolInvocation)initWithIdentifier:(id)a3 toolIdentifier:(id)a4 target:(id)a5 parameterValues:(id)a6 options:(id)a7 error:(id *)a8;
- (CCToolKitToolToolInvocation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolToolInvocationOptions)options;
- (NSArray)parameterValues;
- (NSString)identifier;
- (NSString)toolIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolToolInvocation

- (CCToolKitToolToolInvocation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v49[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"identifier"];
    v10 = [v6 objectForKeyedSubscript:@"toolIdentifier"];
    v11 = [v6 objectForKeyedSubscript:@"target"];
    if (v11)
    {
      v49[0] = 0;
      v12 = [[CCToolKitToolContainerDefinitionDevice alloc] initWithJSONDictionary:v11 error:v49];
      v13 = v49[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();

        v35 = 0;
        goto LABEL_33;
      }

      v11 = v12;
    }

    v15 = [v6 objectForKeyedSubscript:@"parameterValues"];
    if (!v15)
    {
      v14 = 0;
      v41 = v8;
      goto LABEL_24;
    }

    v16 = v15;
    objc_opt_class();
    v48 = v8;
    v17 = CCValidateIsInstanceOfExpectedClass();
    v18 = v8;

    if (v17)
    {
      v41 = v18;
      v38 = a4;
      v39 = v10;
      v40 = v9;
      v14 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v45;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v45 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v44 + 1) + 8 * i);
            v25 = [CCToolKitToolToolInvocationParameterValuesEntry alloc];
            v43 = 0;
            v26 = [(CCToolKitToolToolInvocationParameterValuesEntry *)v25 initWithJSONDictionary:v24 error:&v43];
            v27 = v43;
            if (v26)
            {
              v28 = v27 == 0;
            }

            else
            {
              v28 = 0;
            }

            if (!v28)
            {
              v34 = v27;
              CCSetError();

              v35 = 0;
              v14 = v19;
              v8 = v41;
              v10 = v39;
              v9 = v40;
              goto LABEL_33;
            }

            [v14 addObject:v26];
          }

          v21 = [v19 countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v21);
      }

      a4 = v38;
      v10 = v39;
LABEL_24:
      v29 = [v6 objectForKeyedSubscript:@"options"];
      if (v29)
      {
        v30 = v29;
        v42 = 0;
        v31 = [[CCToolKitToolToolInvocationOptions alloc] initWithJSONDictionary:v29 error:&v42];
        v32 = v42;
        v33 = v32;
        if (!v31 || v32)
        {
          CCSetError();

          v35 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        v31 = 0;
      }

      v35 = [[CCToolKitToolToolInvocation alloc] initWithIdentifier:v9 toolIdentifier:v10 target:v11 parameterValues:v14 options:v31 error:a4];
      v30 = v31;
LABEL_32:

      v8 = v41;
      goto LABEL_33;
    }

    CCSetError();
    v35 = 0;
    v8 = v18;
    v14 = v16;
LABEL_33:

    goto LABEL_34;
  }

  CCSetError();
  v35 = 0;
LABEL_34:

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (id)jsonDictionary
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    v4 = [(CCToolKitToolToolInvocation *)self identifier];
    [v3 setObject:v4 forKeyedSubscript:@"identifier"];
  }

  if (self->_toolIdentifier)
  {
    v5 = [(CCToolKitToolToolInvocation *)self toolIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"toolIdentifier"];
  }

  if (self->_target)
  {
    v6 = [(CCToolKitToolToolInvocation *)self target];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"target"];
  }

  if (self->_parameterValues)
  {
    v8 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [(CCToolKitToolToolInvocation *)self parameterValues];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) jsonDictionary];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"parameterValues"];
  }

  if (self->_options)
  {
    v15 = [(CCToolKitToolToolInvocation *)self options];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"options"];
  }

  v17 = [v3 copy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v13 = v5;
  if (self->_identifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_identifier];
    v13[2](v13, v7);
  }

  if (self->_toolIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_toolIdentifier];
    v13[2](v13, v8);
  }

  if (self->_target)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_target];
    v13[2](v13, v9);
  }

  if (self->_parameterValues)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_parameterValues];
    v13[2](v13, v10);
  }

  v11 = v13;
  if (self->_options)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_options];
    v13[2](v13, v12);

    v11 = v13;
  }
}

- (CCToolKitToolToolInvocationOptions)options
{
  v2 = [(CCToolKitToolToolInvocationOptions *)self->_options copy];

  return v2;
}

- (NSArray)parameterValues
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_parameterValues copyItems:1];

  return v2;
}

- (CCToolKitToolContainerDefinitionDevice)target
{
  v2 = [(CCToolKitToolContainerDefinitionDevice *)self->_target copy];

  return v2;
}

- (NSString)toolIdentifier
{
  v2 = [(NSString *)self->_toolIdentifier copy];

  return v2;
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

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
        goto LABEL_47;
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
            goto LABEL_46;
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
        goto LABEL_46;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        switch(v23)
        {
          case 3:
            v30 = [CCToolKitToolContainerDefinitionDevice alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v49 = 0;
            v26 = [(CCItemMessage *)v30 initWithData:v25 error:&v49];
            v8 = v49;
            v27 = 32;
            goto LABEL_30;
          case 4:
            v25 = CCPBReaderReadDataNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            v32 = [CCToolKitToolToolInvocationParameterValuesEntry alloc];
            v48 = 0;
            v33 = [(CCItemMessage *)v32 initWithData:v25 error:&v48];
            v8 = v48;
            if (!v8 && v33)
            {
              [v9 addObject:v33];
            }

            goto LABEL_39;
          case 5:
            v24 = [CCToolKitToolToolInvocationOptions alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v47 = 0;
            v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v47];
            v8 = v47;
            v27 = 48;
LABEL_30:
            v31 = *(&self->super.super.isa + v27);
            *(&self->super.super.isa + v27) = v26;

            goto LABEL_39;
        }

LABEL_42:
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
LABEL_40:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_47;
        }

        v34 = objc_opt_class();
        v25 = NSStringFromClass(v34);
        v35 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
LABEL_39:

        goto LABEL_40;
      }

      break;
    }

    if (v23 == 1)
    {
      v28 = CCPBReaderReadStringNoCopy();
      v8 = 0;
      v29 = 16;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_42;
      }

      v28 = CCPBReaderReadStringNoCopy();
      v8 = 0;
      v29 = 24;
    }

    v25 = *(&self->super.super.isa + v29);
    *(&self->super.super.isa + v29) = v28;
    goto LABEL_39;
  }

  v9 = 0;
LABEL_46:
  v8 = 0;
LABEL_47:
  v36 = [v9 copy];
  parameterValues = self->_parameterValues;
  self->_parameterValues = v36;

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

- (CCToolKitToolToolInvocation)initWithIdentifier:(id)a3 toolIdentifier:(id)a4 target:(id)a5 parameterValues:(id)a6 options:(id)a7 error:(id *)a8
{
  v53 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_opt_new();
  if (v13)
  {
    objc_opt_class();
    v51 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v20 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_26;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v20 = 0;
  }

  v42 = self;
  if (v14)
  {
    objc_opt_class();
    v50 = v20;
    v21 = CCValidateIsInstanceOfExpectedClass();
    v22 = v20;

    if (!v21)
    {
      CCSetError();
      v37 = 0;
      v20 = v22;
LABEL_29:
      self = v42;
      goto LABEL_31;
    }

    CCPBDataWriterWriteStringField();
    if (!v15)
    {
LABEL_8:
      v20 = v22;
      goto LABEL_12;
    }
  }

  else
  {
    v22 = v20;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v49 = v22;
  v23 = CCValidateIsInstanceOfExpectedClass();
  v20 = v22;

  if (!v23)
  {
    CCSetError();
    v37 = 0;
    goto LABEL_29;
  }

  v24 = [v15 data];
  CCPBDataWriterWriteDataField();

LABEL_12:
  self = v42;
  if (v16)
  {
    objc_opt_class();
    v48 = v20;
    v25 = CCValidateArrayValues();
    v26 = v20;

    if (!v25)
    {
      CCSetError();
      v37 = 0;
      v20 = v26;
      goto LABEL_31;
    }

    v40 = v26;
    v41 = v17;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v45;
      do
      {
        v31 = 0;
        do
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v44 + 1) + 8 * v31) data];
          CCPBDataWriterWriteDataField();

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v29);
    }

    v17 = v41;
    self = v42;
    v20 = v40;
  }

  if (!v17)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  v33 = v20;
  v34 = CCValidateIsInstanceOfExpectedClass();
  v20 = v20;

  if (!v34)
  {
LABEL_26:
    CCSetError();
    v37 = 0;
    goto LABEL_31;
  }

  v35 = [v17 data];
  CCPBDataWriterWriteDataField();

LABEL_25:
  v36 = [v18 immutableData];
  self = [(CCItemMessage *)self initWithData:v36 error:a8];

  v37 = self;
LABEL_31:

  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

@end