@interface CCToolKitToolToolDefinitionVersion1Parameter
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolToolDefinitionVersion1Parameter)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolToolDefinitionVersion1Parameter)initWithKey:(id)a3 name:(id)a4 description:(id)a5 valueType:(id)a6 relationships:(id)a7 sampleInvocations:(id)a8 flags:(id)a9 parentToolMetadata:(id)a10 BOOLeanMetadata:(id)a11 error:(id *)a12;
- (CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata)BOOLeanMetadata;
- (CCToolKitToolToolDefinitionVersion1ParameterToolMetadata)parentToolMetadata;
- (CCToolKitToolTypeInstance)valueType;
- (NSArray)relationships;
- (NSArray)sampleInvocations;
- (NSString)description;
- (NSString)key;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolToolDefinitionVersion1Parameter

- (CCToolKitToolToolDefinitionVersion1Parameter)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v99[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"key"];
    v10 = [v6 objectForKeyedSubscript:@"name"];
    v11 = [v6 objectForKeyedSubscript:@"description"];
    v12 = [v6 objectForKeyedSubscript:@"valueType"];
    if (v12)
    {
      v99[0] = 0;
      v13 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v12 error:v99];
      v14 = v99[0];
      v15 = v14;
      if (!v13 || v14)
      {
        CCSetError();

        v44 = 0;
LABEL_74:

        goto LABEL_75;
      }

      v12 = v13;
    }

    v77 = v11;
    v16 = [v6 objectForKeyedSubscript:@"relationships"];
    v78 = v12;
    if (v16)
    {
      v17 = v16;
      objc_opt_class();
      v98 = v8;
      v18 = CCValidateIsInstanceOfExpectedClass();
      v19 = v8;

      if ((v18 & 1) == 0)
      {
        CCSetError();
        v44 = 0;
        v15 = v17;
        v8 = v19;
LABEL_40:
        v11 = v77;
        v12 = v78;
        goto LABEL_74;
      }

      v68 = v9;
      v71 = v10;
      v74 = self;
      v15 = objc_opt_new();
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v20 = v17;
      v21 = [v20 countByEnumeratingWithState:&v94 objects:v102 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v95;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v95 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v94 + 1) + 8 * i);
            v26 = [CCToolKitToolToolDefinitionVersion1ParameterRelationship alloc];
            v93 = 0;
            v27 = [(CCToolKitToolToolDefinitionVersion1ParameterRelationship *)v26 initWithJSONDictionary:v25 error:&v93];
            v28 = v93;
            if (v27)
            {
              v29 = v28 == 0;
            }

            else
            {
              v29 = 0;
            }

            if (!v29)
            {
              v43 = v28;
              CCSetError();

              v44 = 0;
              v15 = v20;
              v8 = v19;
              v10 = v71;
              self = v74;
              v9 = v68;
              goto LABEL_40;
            }

            [v15 addObject:v27];
          }

          v22 = [v20 countByEnumeratingWithState:&v94 objects:v102 count:16];
        }

        while (v22);
      }

      self = v74;
      v9 = v68;
      v12 = v78;
    }

    else
    {
      v15 = 0;
      v19 = v8;
    }

    v30 = [v6 objectForKeyedSubscript:@"sampleInvocations"];
    if (v30)
    {
      v31 = v30;
      objc_opt_class();
      v92 = v19;
      v32 = CCValidateIsInstanceOfExpectedClass();
      v8 = v19;

      if ((v32 & 1) == 0)
      {
        CCSetError();
        v44 = 0;
LABEL_54:
        v11 = v77;
        v12 = v78;
        goto LABEL_73;
      }

      v69 = v9;
      v72 = v10;
      v75 = self;
      v79 = objc_opt_new();
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v33 = v31;
      v34 = [v33 countByEnumeratingWithState:&v88 objects:v101 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v89;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v89 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v88 + 1) + 8 * j);
            v39 = [CCToolKitToolSampleInvocationDefinition alloc];
            v87 = 0;
            v40 = [(CCToolKitToolSampleInvocationDefinition *)v39 initWithJSONDictionary:v38 error:&v87];
            v41 = v87;
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
              v56 = v41;
              CCSetError();

              v44 = 0;
              v31 = v33;
              v10 = v72;
              self = v75;
              v9 = v69;
              goto LABEL_54;
            }

            [v79 addObject:v40];
          }

          v35 = [v33 countByEnumeratingWithState:&v88 objects:v101 count:16];
        }

        while (v35);
      }

      self = v75;
      v9 = v69;
      v12 = v78;
    }

    else
    {
      v79 = 0;
      v8 = v19;
    }

    v45 = [v6 objectForKeyedSubscript:@"flags"];
    v73 = v10;
    if (v45)
    {
      v46 = v45;
      objc_opt_class();
      v86 = v8;
      v47 = CCValidateIsInstanceOfExpectedClass();
      v48 = v8;

      if ((v47 & 1) == 0)
      {
        CCSetError();
        v44 = 0;
        v8 = v48;
LABEL_72:

        v10 = v73;
        v11 = v77;
        v31 = v79;
LABEL_73:

        goto LABEL_74;
      }

      v67 = a4;
      v70 = v9;
      v76 = objc_opt_new();
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      obj = v46;
      v49 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v83;
        while (2)
        {
          v52 = 0;
          v53 = v48;
          do
          {
            if (*v83 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v54 = *(*(&v82 + 1) + 8 * v52);
            objc_opt_class();
            v81[1] = v53;
            v55 = CCValidateIsInstanceOfExpectedClass();
            v48 = v53;

            if (!v55)
            {
              CCSetError();
              v46 = obj;

              v44 = 0;
              v8 = v48;
              v9 = v70;
              v12 = v78;
              goto LABEL_72;
            }

            [v76 appendEnumValue:{objc_msgSend(v54, "unsignedIntValue")}];
            ++v52;
            v53 = v48;
          }

          while (v50 != v52);
          v50 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

      v8 = v48;
      a4 = v67;
      v9 = v70;
    }

    else
    {
      v76 = 0;
    }

    v57 = [v6 objectForKeyedSubscript:@"parentToolMetadata"];
    if (v57)
    {
      v81[0] = 0;
      v58 = [[CCToolKitToolToolDefinitionVersion1ParameterToolMetadata alloc] initWithJSONDictionary:v57 error:v81];
      v59 = v81[0];
      v60 = v59;
      if (!v58 || v59)
      {
        CCSetError();
        goto LABEL_70;
      }

      v57 = v58;
    }

    v61 = [v6 objectForKeyedSubscript:@"BOOLeanMetadata"];
    if (!v61)
    {
      v62 = 0;
      goto LABEL_68;
    }

    v60 = v61;
    v80 = 0;
    v62 = [[CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata alloc] initWithJSONDictionary:v61 error:&v80];
    v63 = v80;
    v58 = v63;
    if (v62 && !v63)
    {

LABEL_68:
      v12 = v78;
      v44 = [[CCToolKitToolToolDefinitionVersion1Parameter alloc] initWithKey:v9 name:v73 description:v77 valueType:v78 relationships:v15 sampleInvocations:v79 flags:v76 parentToolMetadata:v57 BOOLeanMetadata:v62 error:a4];
      v60 = v62;
LABEL_71:

      v46 = v76;
      goto LABEL_72;
    }

    CCSetError();

LABEL_70:
    v44 = 0;
    v12 = v78;
    goto LABEL_71;
  }

  CCSetError();
  v44 = 0;
LABEL_75:

  v64 = *MEMORY[0x1E69E9840];
  return v44;
}

- (id)jsonDictionary
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_key)
  {
    v4 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self key];
    [v3 setObject:v4 forKeyedSubscript:@"key"];
  }

  if (self->_name)
  {
    v5 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self name];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  if (self->_description)
  {
    v6 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self description];
    [v3 setObject:v6 forKeyedSubscript:@"description"];
  }

  if (self->_valueType)
  {
    v7 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self valueType];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"valueType"];
  }

  if (self->_relationships)
  {
    v9 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self relationships];
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v39 + 1) + 8 * i) jsonDictionary];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"relationships"];
  }

  if (self->_sampleInvocations)
  {
    v16 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self sampleInvocations];
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v35 + 1) + 8 * j) jsonDictionary];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"sampleInvocations"];
  }

  if (self->_flags)
  {
    v23 = objc_opt_new();
    v24 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self flags];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __62__CCToolKitToolToolDefinitionVersion1Parameter_jsonDictionary__block_invoke;
    v33[3] = &unk_1E73E8EA0;
    v34 = v23;
    v25 = v23;
    [v24 enumerateEnumValuesWithBlock:v33];

    [v3 setObject:v25 forKeyedSubscript:@"flags"];
  }

  if (self->_parentToolMetadata)
  {
    v26 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self parentToolMetadata];
    v27 = [v26 jsonDictionary];
    [v3 setObject:v27 forKeyedSubscript:@"parentToolMetadata"];
  }

  if (self->_BOOLeanMetadata)
  {
    v28 = [(CCToolKitToolToolDefinitionVersion1Parameter *)self BOOLeanMetadata];
    v29 = [v28 jsonDictionary];
    [v3 setObject:v29 forKeyedSubscript:@"BOOLeanMetadata"];
  }

  v30 = [v3 copy];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

void __62__CCToolKitToolToolDefinitionVersion1Parameter_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v17 = v5;
  if (self->_key)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_key];
    v17[2](v17, v7);
  }

  if (self->_name)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_name];
    v17[2](v17, v8);
  }

  if (self->_description)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_description];
    v17[2](v17, v9);
  }

  if (self->_valueType)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_valueType];
    v17[2](v17, v10);
  }

  if (self->_relationships)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_relationships];
    v17[2](v17, v11);
  }

  if (self->_sampleInvocations)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_sampleInvocations];
    v17[2](v17, v12);
  }

  if (self->_flags)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedEnumValue:self->_flags];
    v17[2](v17, v13);
  }

  if (self->_parentToolMetadata)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_parentToolMetadata];
    v17[2](v17, v14);
  }

  v15 = v17;
  if (self->_BOOLeanMetadata)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_BOOLeanMetadata];
    v17[2](v17, v16);

    v15 = v17;
  }
}

- (CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata)BOOLeanMetadata
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata *)self->_BOOLeanMetadata copy];

  return v2;
}

- (CCToolKitToolToolDefinitionVersion1ParameterToolMetadata)parentToolMetadata
{
  v2 = [(CCToolKitToolToolDefinitionVersion1ParameterToolMetadata *)self->_parentToolMetadata copy];

  return v2;
}

- (NSArray)sampleInvocations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_sampleInvocations copyItems:1];

  return v2;
}

- (NSArray)relationships
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_relationships copyItems:1];

  return v2;
}

- (CCToolKitToolTypeInstance)valueType
{
  v2 = [(CCToolKitToolTypeInstance *)self->_valueType copy];

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

- (NSString)key
{
  v2 = [(NSString *)self->_key copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v54 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v54];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v55 = 0;
    v56 = 0;
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
        goto LABEL_64;
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
            goto LABEL_63;
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
        goto LABEL_63;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 > 6)
        {
          switch(v23)
          {
            case 7:
              if (!v9)
              {
                v9 = objc_opt_new();
              }

              CCPBReaderAppendRepeatedEnumFieldValues();
              goto LABEL_58;
            case 8:
              v36 = [CCToolKitToolToolDefinitionVersion1ParameterToolMetadata alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v58 = 0;
              v26 = [(CCItemMessage *)v36 initWithData:v25 error:&v58];
              v8 = v58;
              v27 = 72;
              goto LABEL_55;
            case 9:
              v24 = [CCToolKitToolToolDefinitionVersion1ParameterBooleanMetadata alloc];
              v25 = CCPBReaderReadDataNoCopy();
              v57 = 0;
              v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v57];
              v8 = v57;
              v27 = 80;
LABEL_55:
              v37 = *(&self->super.super.isa + v27);
              *(&self->super.super.isa + v27) = v26;

              goto LABEL_56;
          }

          goto LABEL_57;
        }

        if (v23 == 5)
        {
          v25 = CCPBReaderReadDataNoCopy();
          if (!v55)
          {
            v55 = objc_opt_new();
          }

          v35 = [CCToolKitToolToolDefinitionVersion1ParameterRelationship alloc];
          v60 = 0;
          v32 = [(CCItemMessage *)v35 initWithData:v25 error:&v60];
          v8 = v60;
          if (v8 || !v32)
          {
            goto LABEL_53;
          }

          v33 = v55;
          goto LABEL_52;
        }

        if (v23 == 6)
        {
          v25 = CCPBReaderReadDataNoCopy();
          if (!v56)
          {
            v56 = objc_opt_new();
          }

          v31 = [CCToolKitToolSampleInvocationDefinition alloc];
          v59 = 0;
          v32 = [(CCItemMessage *)v31 initWithData:v25 error:&v59];
          v8 = v59;
          if (v8 || !v32)
          {
            goto LABEL_53;
          }

          v33 = v56;
LABEL_52:
          [v33 addObject:v32];
LABEL_53:

LABEL_56:
          goto LABEL_59;
        }

LABEL_57:
        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v38 = objc_opt_class();
          v25 = NSStringFromClass(v38);
          v39 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
          goto LABEL_56;
        }

LABEL_58:
        v8 = 0;
LABEL_59:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        goto LABEL_64;
      }

      break;
    }

    if (v23 > 2)
    {
      if (v23 != 3)
      {
        if (v23 == 4)
        {
          v30 = [CCToolKitToolTypeInstance alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v61 = 0;
          v26 = [(CCItemMessage *)v30 initWithData:v25 error:&v61];
          v8 = v61;
          v27 = 40;
          goto LABEL_55;
        }

        goto LABEL_57;
      }

      v28 = CCPBReaderReadStringNoCopy();
      v29 = 32;
    }

    else if (v23 == 1)
    {
      v28 = CCPBReaderReadStringNoCopy();
      v29 = 16;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_57;
      }

      v28 = CCPBReaderReadStringNoCopy();
      v29 = 24;
    }

    v34 = *(&self->super.super.isa + v29);
    *(&self->super.super.isa + v29) = v28;

    goto LABEL_58;
  }

  v9 = 0;
  v55 = 0;
  v56 = 0;
LABEL_63:
  v8 = 0;
LABEL_64:
  v40 = [v55 copy];
  relationships = self->_relationships;
  self->_relationships = v40;

  v42 = [v56 copy];
  sampleInvocations = self->_sampleInvocations;
  self->_sampleInvocations = v42;

  v44 = [v9 copy];
  flags = self->_flags;
  self->_flags = v44;

  if (v8)
  {
    CCSetError();
    v46 = 0;
    v47 = v54;
  }

  else
  {
    v48 = MEMORY[0x1E6993AA8];
    v47 = v54;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = *&v5[*v48];
      v52 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  return v46;
}

- (CCToolKitToolToolDefinitionVersion1Parameter)initWithKey:(id)a3 name:(id)a4 description:(id)a5 valueType:(id)a6 relationships:(id)a7 sampleInvocations:(id)a8 flags:(id)a9 parentToolMetadata:(id)a10 BOOLeanMetadata:(id)a11 error:(id *)a12
{
  v83 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v66 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v65 = a8;
  v64 = a9;
  v63 = a10;
  v61 = a11;
  v21 = objc_opt_new();
  if (v17)
  {
    objc_opt_class();
    v80 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v23 = 0;
    if (!IsInstanceOfExpectedClass)
    {
LABEL_37:
      CCSetError();
      v47 = 0;
      v37 = v65;
      goto LABEL_42;
    }

    v60 = a12;
    CCPBDataWriterWriteStringField();
  }

  else
  {
    v60 = a12;
    v23 = 0;
  }

  if (!v66)
  {
    v25 = v23;
    if (!v18)
    {
LABEL_8:
      v59 = v18;
      v23 = v25;
      if (v19)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  v79 = v23;
  v24 = CCValidateIsInstanceOfExpectedClass();
  v25 = v23;

  if (v24)
  {
    CCPBDataWriterWriteStringField();
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_14:
    objc_opt_class();
    v78 = v25;
    v29 = CCValidateIsInstanceOfExpectedClass();
    v23 = v25;

    if (v29)
    {
      v59 = v18;
      CCPBDataWriterWriteStringField();
      if (v19)
      {
LABEL_9:
        objc_opt_class();
        v77 = v23;
        v26 = CCValidateIsInstanceOfExpectedClass();
        v27 = v23;

        if (!v26)
        {
          goto LABEL_38;
        }

        v28 = [v19 data];
        CCPBDataWriterWriteDataField();

        if (!v20)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }

LABEL_16:
      v27 = v23;
      if (!v20)
      {
LABEL_11:
        v23 = v27;
LABEL_26:
        v37 = v65;
        if (v65)
        {
          objc_opt_class();
          v71 = v23;
          v38 = CCValidateArrayValues();
          v39 = v23;

          if (!v38)
          {
            CCSetError();
            v47 = 0;
            v23 = v39;
            goto LABEL_41;
          }

          v58 = v20;
          v40 = v19;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v41 = v65;
          v42 = [v41 countByEnumeratingWithState:&v67 objects:v81 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v68;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v68 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = [*(*(&v67 + 1) + 8 * i) data];
                CCPBDataWriterWriteDataField();
              }

              v43 = [v41 countByEnumeratingWithState:&v67 objects:v81 count:16];
            }

            while (v43);
          }

          v19 = v40;
          v20 = v58;
          v37 = v65;
        }

        else
        {
          v39 = v23;
        }

        if (v64)
        {
          objc_opt_class();
          v50 = CCValidateIsInstanceOfExpectedClass();
          v23 = v39;

          if (!v50)
          {
            CCSetError();
            v47 = 0;
            goto LABEL_41;
          }

          CCPBDataWriterWriteRepeatedUInt32Field();
        }

        else
        {
          v23 = v39;
        }

        if (!v63)
        {
          v27 = v23;
          goto LABEL_54;
        }

        objc_opt_class();
        v51 = CCValidateIsInstanceOfExpectedClass();
        v27 = v23;

        if (v51)
        {
          v52 = [v63 data];
          CCPBDataWriterWriteDataField();

LABEL_54:
          if (!v61)
          {
            v23 = v27;
            goto LABEL_59;
          }

          objc_opt_class();
          v53 = CCValidateIsInstanceOfExpectedClass();
          v23 = v27;

          if (v53)
          {
            v54 = [v61 data];
            CCPBDataWriterWriteDataField();

LABEL_59:
            v37 = v65;
            v55 = [v21 immutableData];
            v47 = [(CCItemMessage *)self initWithData:v55 error:v60];

            self = v47;
            goto LABEL_41;
          }

          goto LABEL_39;
        }

LABEL_38:
        CCSetError();
        v47 = 0;
        v23 = v27;
LABEL_40:
        v37 = v65;
LABEL_41:
        v18 = v59;
        goto LABEL_42;
      }

LABEL_17:
      objc_opt_class();
      v76 = v27;
      v30 = CCValidateArrayValues();
      v23 = v27;

      if (!v30)
      {
LABEL_39:
        CCSetError();
        v47 = 0;
        goto LABEL_40;
      }

      v56 = v19;
      v57 = v20;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v31 = v20;
      v32 = [v31 countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v73;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v73 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [*(*(&v72 + 1) + 8 * j) data];
            CCPBDataWriterWriteDataField();
          }

          v33 = [v31 countByEnumeratingWithState:&v72 objects:v82 count:16];
        }

        while (v33);
      }

      v19 = v56;
      v20 = v57;
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  CCSetError();
  v47 = 0;
  v23 = v25;
  v37 = v65;
LABEL_42:

  v48 = *MEMORY[0x1E69E9840];
  return v47;
}

@end