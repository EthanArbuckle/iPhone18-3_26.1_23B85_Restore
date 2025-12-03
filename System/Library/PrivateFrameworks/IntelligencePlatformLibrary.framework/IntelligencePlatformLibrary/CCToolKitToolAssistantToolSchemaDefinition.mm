@interface CCToolKitToolAssistantToolSchemaDefinition
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolAssistantSchemaIdentifier)identifier;
- (CCToolKitToolAssistantToolSchemaDefinition)initWithIdentifier:(id)identifier name:(id)name description:(id)description parameters:(id)parameters sampleInvocations:(id)invocations outputType:(id)type error:(id *)error;
- (CCToolKitToolAssistantToolSchemaDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeInstance)outputType;
- (NSArray)parameters;
- (NSArray)sampleInvocations;
- (NSString)description;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolAssistantToolSchemaDefinition

- (CCToolKitToolAssistantToolSchemaDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v75[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    if (v9)
    {
      v75[0] = 0;
      v10 = [[CCToolKitToolAssistantSchemaIdentifier alloc] initWithJSONDictionary:v9 error:v75];
      v11 = v75[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v44 = 0;
LABEL_54:

        goto LABEL_55;
      }

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    v61 = v12;
    if (v13)
    {
      v14 = v13;
      objc_opt_class();
      v74 = v8;
      v15 = CCValidateIsInstanceOfExpectedClass();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v44 = 0;
        v17 = v14;
LABEL_40:
        v12 = v61;
        goto LABEL_53;
      }

      errorCopy = error;
      v56 = v10;
      v58 = v9;
      v17 = objc_opt_new();
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v18 = v14;
      v19 = [v18 countByEnumeratingWithState:&v70 objects:v77 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v71;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v71 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v70 + 1) + 8 * i);
            v24 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
            v69 = 0;
            v25 = [(CCToolKitToolToolDefinitionVersion1Parameter *)v24 initWithJSONDictionary:v23 error:&v69];
            v26 = v69;
            if (v25)
            {
              v27 = v26 == 0;
            }

            else
            {
              v27 = 0;
            }

            if (!v27)
            {
              v43 = v26;
              CCSetError();

              v44 = 0;
              v17 = v18;
              v9 = v58;
              v10 = v56;
              goto LABEL_40;
            }

            [v17 addObject:v25];
          }

          v20 = [v18 countByEnumeratingWithState:&v70 objects:v77 count:16];
        }

        while (v20);
      }

      v9 = v58;
      error = errorCopy;
      v10 = v56;
      v12 = v61;
    }

    else
    {
      v17 = 0;
      v16 = v8;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"sampleInvocations"];
    if (v28)
    {
      v29 = v28;
      objc_opt_class();
      v68 = v16;
      v30 = CCValidateIsInstanceOfExpectedClass();
      v31 = v16;

      v60 = v31;
      if ((v30 & 1) == 0)
      {
        CCSetError();
        v44 = 0;
        v32 = v29;
LABEL_47:
        v12 = v61;
        goto LABEL_52;
      }

      errorCopy2 = error;
      v57 = v10;
      v59 = v9;
      v32 = objc_opt_new();
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v33 = v29;
      v34 = [v33 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v65;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v65 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v64 + 1) + 8 * j);
            v39 = [CCToolKitToolSampleInvocationDefinition alloc];
            v63 = 0;
            v40 = [(CCToolKitToolSampleInvocationDefinition *)v39 initWithJSONDictionary:v38 error:&v63];
            v41 = v63;
            if (v40)
            {
              v42 = v41 == 0;
            }

            else
            {
              v42 = 0;
            }

            if (!v42)
            {
              v51 = v41;
              CCSetError();

              v44 = 0;
              v32 = v33;
              v9 = v59;
              v10 = v57;
              goto LABEL_47;
            }

            [v32 addObject:v40];
          }

          v35 = [v33 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v35);
      }

      v9 = v59;
      error = errorCopy2;
      v10 = v57;
      v12 = v61;
    }

    else
    {
      v32 = 0;
      v60 = v16;
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"outputType"];
    if (v45)
    {
      v46 = v45;
      v47 = v10;
      v62 = 0;
      v48 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v45 error:&v62];
      v49 = v62;
      v50 = v49;
      if (!v48 || v49)
      {
        CCSetError();

        v44 = 0;
        v10 = v47;
        v12 = v61;
        goto LABEL_51;
      }

      v10 = v47;
      v12 = v61;
    }

    else
    {
      v48 = 0;
    }

    v44 = [[CCToolKitToolAssistantToolSchemaDefinition alloc] initWithIdentifier:v9 name:v12 description:v10 parameters:v17 sampleInvocations:v32 outputType:v48 error:error];
    v46 = v48;
LABEL_51:

LABEL_52:
    v16 = v60;
LABEL_53:

    v8 = v16;
    goto LABEL_54;
  }

  CCSetError();
  v44 = 0;
LABEL_55:

  v52 = *MEMORY[0x1E69E9840];
  return v44;
}

- (id)jsonDictionary
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    identifier = [(CCToolKitToolAssistantToolSchemaDefinition *)self identifier];
    jsonDictionary = [identifier jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"identifier"];
  }

  if (self->_name)
  {
    name = [(CCToolKitToolAssistantToolSchemaDefinition *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_description)
  {
    v7 = [(CCToolKitToolAssistantToolSchemaDefinition *)self description];
    [v3 setObject:v7 forKeyedSubscript:@"description"];
  }

  if (self->_parameters)
  {
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    parameters = [(CCToolKitToolAssistantToolSchemaDefinition *)self parameters];
    v10 = [parameters countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(parameters);
          }

          jsonDictionary2 = [*(*(&v31 + 1) + 8 * i) jsonDictionary];
          [v8 addObject:jsonDictionary2];
        }

        v11 = [parameters countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"parameters"];
  }

  if (self->_sampleInvocations)
  {
    v15 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    sampleInvocations = [(CCToolKitToolAssistantToolSchemaDefinition *)self sampleInvocations];
    v17 = [sampleInvocations countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(sampleInvocations);
          }

          jsonDictionary3 = [*(*(&v27 + 1) + 8 * j) jsonDictionary];
          [v15 addObject:jsonDictionary3];
        }

        v18 = [sampleInvocations countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"sampleInvocations"];
  }

  if (self->_outputType)
  {
    outputType = [(CCToolKitToolAssistantToolSchemaDefinition *)self outputType];
    jsonDictionary4 = [outputType jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"outputType"];
  }

  v24 = [v3 copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v14 = blockCopy;
  if (self->_identifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_identifier];
    v14[2](v14, v7);
  }

  if (self->_name)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_name];
    v14[2](v14, v8);
  }

  if (self->_description)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_description];
    v14[2](v14, v9);
  }

  if (self->_parameters)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_parameters];
    v14[2](v14, v10);
  }

  if (self->_sampleInvocations)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_sampleInvocations];
    v14[2](v14, v11);
  }

  v12 = v14;
  if (self->_outputType)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_outputType];
    v14[2](v14, v13);

    v12 = v14;
  }
}

- (CCToolKitToolTypeInstance)outputType
{
  v2 = [(CCToolKitToolTypeInstance *)self->_outputType copy];

  return v2;
}

- (NSArray)sampleInvocations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sampleInvocations copyItems:1];

  return v2;
}

- (NSArray)parameters
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_parameters copyItems:1];

  return v2;
}

- (NSString)description
{
  v2 = [(NSString *)self->_description copy];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (CCToolKitToolAssistantSchemaIdentifier)identifier
{
  v2 = [(CCToolKitToolAssistantSchemaIdentifier *)self->_identifier copy];

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
    v51 = 0;
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
        goto LABEL_54;
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
            goto LABEL_53;
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
        goto LABEL_53;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 3)
      {
        if (v23 != 1)
        {
          if (v23 == 2)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v25 = 24;
            goto LABEL_40;
          }

          if (v23 == 3)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v25 = 32;
LABEL_40:
            v27 = *(&self->super.super.isa + v25);
            *(&self->super.super.isa + v25) = v24;
            goto LABEL_48;
          }

          goto LABEL_37;
        }

        v30 = [CCToolKitToolAssistantSchemaIdentifier alloc];
        v27 = CCPBReaderReadDataNoCopy();
        v55 = 0;
        v28 = [(CCItemMessage *)v30 initWithData:v27 error:&v55];
        v8 = v55;
        v29 = 16;
        goto LABEL_31;
      }

      switch(v23)
      {
        case 4:
          v27 = CCPBReaderReadDataNoCopy();
          if (!v51)
          {
            v51 = objc_opt_new();
          }

          v32 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
          v54 = 0;
          v33 = [(CCItemMessage *)v32 initWithData:v27 error:&v54];
          v8 = v54;
          if (v8 || !v33)
          {
            goto LABEL_47;
          }

          v34 = v51;
          break;
        case 5:
          v27 = CCPBReaderReadDataNoCopy();
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          v35 = [CCToolKitToolSampleInvocationDefinition alloc];
          v53 = 0;
          v33 = [(CCItemMessage *)v35 initWithData:v27 error:&v53];
          v8 = v53;
          if (v8 || !v33)
          {
LABEL_47:

            goto LABEL_48;
          }

          v34 = v9;
          break;
        case 6:
          v26 = [CCToolKitToolTypeInstance alloc];
          v27 = CCPBReaderReadDataNoCopy();
          v52 = 0;
          v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v52];
          v8 = v52;
          v29 = 56;
LABEL_31:
          v31 = *(&self->super.super.isa + v29);
          *(&self->super.super.isa + v29) = v28;

          goto LABEL_48;
        default:
LABEL_37:
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
            goto LABEL_49;
          }

          v36 = objc_opt_class();
          v27 = NSStringFromClass(v36);
          v37 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
LABEL_48:

LABEL_49:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_54;
      }

      break;
    }

    [v34 addObject:v33];
    goto LABEL_47;
  }

  v9 = 0;
  v51 = 0;
LABEL_53:
  v8 = 0;
LABEL_54:
  v38 = [v51 copy];
  parameters = self->_parameters;
  self->_parameters = v38;

  v40 = [v9 copy];
  sampleInvocations = self->_sampleInvocations;
  self->_sampleInvocations = v40;

  if (v8)
  {
    CCSetError();
    v42 = 0;
    v43 = dataCopy;
  }

  else
  {
    v44 = MEMORY[0x1E6993AA8];
    v43 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = *&v5[*v44];
      v48 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }
  }

  return v42;
}

- (CCToolKitToolAssistantToolSchemaDefinition)initWithIdentifier:(id)identifier name:(id)name description:(id)description parameters:(id)parameters sampleInvocations:(id)invocations outputType:(id)type error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  parametersCopy = parameters;
  invocationsCopy = invocations;
  typeCopy = type;
  v20 = objc_opt_new();
  v62 = descriptionCopy;
  selfCopy = self;
  if (identifierCopy)
  {
    objc_opt_class();
    v76 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v22 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      v27 = identifierCopy;
      CCSetError();
      selfCopy2 = 0;
LABEL_45:
      v29 = nameCopy;
      goto LABEL_46;
    }

    v23 = parametersCopy;
    v24 = typeCopy;
    v25 = invocationsCopy;
    data = [identifierCopy data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v23 = parametersCopy;
    v24 = typeCopy;
    v25 = invocationsCopy;
    v22 = 0;
  }

  if (nameCopy)
  {
    v27 = identifierCopy;
    objc_opt_class();
    v75 = v22;
    v28 = CCValidateIsInstanceOfExpectedClass();
    v29 = nameCopy;
    v30 = v22;

    if (!v28)
    {
      CCSetError();
      selfCopy2 = 0;
      v22 = v30;
      invocationsCopy = v25;
      typeCopy = v24;
      goto LABEL_28;
    }

    CCPBDataWriterWriteStringField();
    identifierCopy = v27;
    if (!v62)
    {
LABEL_8:
      v22 = v30;
      goto LABEL_13;
    }
  }

  else
  {
    v30 = v22;
    if (!descriptionCopy)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v74 = v30;
  v32 = CCValidateIsInstanceOfExpectedClass();
  v22 = v30;

  if (v32)
  {
    CCPBDataWriterWriteStringField();
LABEL_13:
    invocationsCopy = v25;
    typeCopy = v24;
    parametersCopy = v23;
    if (v23)
    {
      objc_opt_class();
      v73 = v22;
      v33 = CCValidateArrayValues();
      v34 = v22;

      self = selfCopy;
      if (!v33)
      {
        v27 = identifierCopy;
        CCSetError();
        selfCopy2 = 0;
        v22 = v34;
        goto LABEL_45;
      }

      v35 = parametersCopy;
      v36 = typeCopy;
      v37 = invocationsCopy;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v60 = v35;
      v38 = v35;
      v39 = [v38 countByEnumeratingWithState:&v69 objects:v78 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v70;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v70 != v41)
            {
              objc_enumerationMutation(v38);
            }

            data2 = [*(*(&v69 + 1) + 8 * i) data];
            CCPBDataWriterWriteDataField();
          }

          v40 = [v38 countByEnumeratingWithState:&v69 objects:v78 count:16];
        }

        while (v40);
      }

      invocationsCopy = v37;
      typeCopy = v36;
      parametersCopy = v60;
      if (!invocationsCopy)
      {
LABEL_23:
        v22 = v34;
        if (typeCopy)
        {
          goto LABEL_24;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v34 = v22;
      if (!invocationsCopy)
      {
        goto LABEL_23;
      }
    }

    objc_opt_class();
    v68 = v34;
    v47 = CCValidateArrayValues();
    v22 = v34;

    if (!v47)
    {
      v27 = identifierCopy;
      CCSetError();
      selfCopy2 = 0;
      goto LABEL_44;
    }

    v48 = parametersCopy;
    v49 = typeCopy;
    v60 = v48;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v50 = invocationsCopy;
    v51 = invocationsCopy;
    v52 = [v51 countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v65;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v65 != v54)
          {
            objc_enumerationMutation(v51);
          }

          data3 = [*(*(&v64 + 1) + 8 * j) data];
          CCPBDataWriterWriteDataField();
        }

        v53 = [v51 countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v53);
    }

    invocationsCopy = v50;
    typeCopy = v49;
    parametersCopy = v60;
    if (typeCopy)
    {
LABEL_24:
      objc_opt_class();
      v44 = CCValidateIsInstanceOfExpectedClass();
      v45 = v22;

      v27 = identifierCopy;
      if (v44)
      {
        data4 = [typeCopy data];
        CCPBDataWriterWriteDataField();

        v22 = v45;
LABEL_40:
        immutableData = [v20 immutableData];
        self = [(CCItemMessage *)selfCopy initWithData:immutableData error:error];

        selfCopy2 = self;
        goto LABEL_45;
      }

      CCSetError();
      selfCopy2 = 0;
      v22 = v45;
LABEL_44:
      self = selfCopy;
      goto LABEL_45;
    }

LABEL_39:
    v27 = identifierCopy;
    goto LABEL_40;
  }

  v27 = identifierCopy;
  CCSetError();
  selfCopy2 = 0;
  invocationsCopy = v25;
  typeCopy = v24;
  v29 = nameCopy;
LABEL_28:
  parametersCopy = v23;
  self = selfCopy;
LABEL_46:

  v58 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

@end