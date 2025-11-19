@interface CCToolKitToolTriggerDefinitionVersion1
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTriggerDefinitionVersion1)initWithId:(id)a3 name:(id)a4 description:(id)a5 parameters:(id)a6 outputType:(id)a7 requirements:(id)a8 flags:(id)a9 error:(id *)a10;
- (CCToolKitToolTriggerDefinitionVersion1)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeInstance)outputType;
- (NSArray)parameters;
- (NSArray)requirements;
- (NSString)description;
- (NSString)id;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTriggerDefinitionVersion1

- (CCToolKitToolTriggerDefinitionVersion1)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v96 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"id"];
    v10 = [v6 objectForKeyedSubscript:@"name"];
    v76 = [v6 objectForKeyedSubscript:@"description"];
    v11 = [v6 objectForKeyedSubscript:@"parameters"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v95 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v30 = 0;
LABEL_59:

        v8 = v14;
        goto LABEL_60;
      }

      v65 = a4;
      v70 = v10;
      v73 = v9;
      v77 = objc_opt_new();
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v91 objects:v99 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v92;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v92 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v91 + 1) + 8 * i);
            v21 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
            v90 = 0;
            v22 = [(CCToolKitToolToolDefinitionVersion1Parameter *)v21 initWithJSONDictionary:v20 error:&v90];
            v23 = v90;
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
              v29 = v23;
              CCSetError();

              v30 = 0;
              v12 = v15;
              v10 = v70;
              v9 = v73;
              goto LABEL_59;
            }

            [v77 addObject:v22];
          }

          v17 = [v15 countByEnumeratingWithState:&v91 objects:v99 count:16];
        }

        while (v17);
      }

      v10 = v70;
      a4 = v65;
    }

    else
    {
      v77 = 0;
      v14 = v8;
    }

    v25 = [v6 objectForKeyedSubscript:@"outputType"];
    if (v25)
    {
      v89 = 0;
      v26 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v25 error:&v89];
      v27 = v89;
      v28 = v27;
      if (!v26 || v27)
      {
        CCSetError();

        v30 = 0;
        goto LABEL_58;
      }

      v68 = self;

      v25 = v26;
    }

    else
    {
      v68 = self;
    }

    v31 = [v6 objectForKeyedSubscript:@"requirements"];
    if (!v31)
    {
      v28 = 0;
      self = v68;
      goto LABEL_42;
    }

    v32 = v31;
    objc_opt_class();
    v88 = v14;
    v33 = CCValidateIsInstanceOfExpectedClass();
    v34 = v14;

    if (v33)
    {
      v66 = v34;
      v62 = v25;
      v35 = a4;
      v71 = v10;
      v74 = v9;
      v28 = objc_opt_new();
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v36 = v32;
      v37 = [v36 countByEnumeratingWithState:&v84 objects:v98 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v85;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v85 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v84 + 1) + 8 * j);
            v42 = [CCToolKitToolRuntimeRequirement alloc];
            v83 = 0;
            v43 = [(CCToolKitToolRuntimeRequirement *)v42 initWithJSONDictionary:v41 error:&v83];
            v44 = v83;
            if (v43)
            {
              v45 = v44 == 0;
            }

            else
            {
              v45 = 0;
            }

            if (!v45)
            {
              v59 = v44;
              CCSetError();

              v30 = 0;
              v28 = v36;
              v14 = v34;
              self = v68;
              v10 = v71;
              v9 = v74;
              v25 = v62;
              goto LABEL_58;
            }

            [v28 addObject:v43];
          }

          v38 = [v36 countByEnumeratingWithState:&v84 objects:v98 count:16];
        }

        while (v38);
      }

      self = v68;
      v9 = v74;
      a4 = v35;
      v25 = v62;
      v14 = v66;
LABEL_42:
      v46 = [v6 objectForKeyedSubscript:@"flags"];
      if (v46)
      {
        objc_opt_class();
        v82 = v14;
        v47 = CCValidateIsInstanceOfExpectedClass();
        v48 = v14;
        v49 = v14;
        v14 = v48;

        if ((v47 & 1) == 0)
        {
          CCSetError();
          v30 = 0;
          goto LABEL_57;
        }

        v63 = v25;
        v67 = a4;
        v69 = self;
        v72 = v10;
        v75 = v9;
        v50 = objc_opt_new();
        v51 = v46;
        v46 = v50;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        obj = v51;
        v52 = [obj countByEnumeratingWithState:&v78 objects:v97 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v79;
          while (2)
          {
            v55 = 0;
            v56 = v14;
            do
            {
              if (*v79 != v54)
              {
                objc_enumerationMutation(obj);
              }

              v57 = *(*(&v78 + 1) + 8 * v55);
              objc_opt_class();
              v58 = CCValidateIsInstanceOfExpectedClass();
              v14 = v56;

              if (!v58)
              {
                CCSetError();

                v46 = obj;
                v30 = 0;
                self = v69;
                v10 = v72;
                v9 = v75;
                v25 = v63;
                goto LABEL_57;
              }

              [v46 appendEnumValue:{objc_msgSend(v57, "unsignedIntValue")}];
              ++v55;
              v56 = v14;
            }

            while (v53 != v55);
            v53 = [obj countByEnumeratingWithState:&v78 objects:v97 count:16];
            if (v53)
            {
              continue;
            }

            break;
          }
        }

        self = v69;
        v10 = v72;
        v9 = v75;
        a4 = v67;
        v25 = v63;
      }

      v30 = [[CCToolKitToolTriggerDefinitionVersion1 alloc] initWithId:v9 name:v10 description:v76 parameters:v77 outputType:v25 requirements:v28 flags:v46 error:a4];
LABEL_57:

      goto LABEL_58;
    }

    CCSetError();
    v30 = 0;
    v28 = v32;
    v14 = v34;
    self = v68;
LABEL_58:

    v12 = v77;
    goto LABEL_59;
  }

  CCSetError();
  v30 = 0;
LABEL_60:

  v60 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)jsonDictionary
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_id)
  {
    v4 = [(CCToolKitToolTriggerDefinitionVersion1 *)self id];
    [v3 setObject:v4 forKeyedSubscript:@"id"];
  }

  if (self->_name)
  {
    v5 = [(CCToolKitToolTriggerDefinitionVersion1 *)self name];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  if (self->_description)
  {
    v6 = [(CCToolKitToolTriggerDefinitionVersion1 *)self description];
    [v3 setObject:v6 forKeyedSubscript:@"description"];
  }

  if (self->_parameters)
  {
    v7 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [(CCToolKitToolTriggerDefinitionVersion1 *)self parameters];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v35 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"parameters"];
  }

  if (self->_outputType)
  {
    v14 = [(CCToolKitToolTriggerDefinitionVersion1 *)self outputType];
    v15 = [v14 jsonDictionary];
    [v3 setObject:v15 forKeyedSubscript:@"outputType"];
  }

  if (self->_requirements)
  {
    v16 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = [(CCToolKitToolTriggerDefinitionVersion1 *)self requirements];
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v31 + 1) + 8 * j) jsonDictionary];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"requirements"];
  }

  if (self->_flags)
  {
    v23 = objc_opt_new();
    v24 = [(CCToolKitToolTriggerDefinitionVersion1 *)self flags];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__CCToolKitToolTriggerDefinitionVersion1_jsonDictionary__block_invoke;
    v29[3] = &unk_1E73E8EA0;
    v30 = v23;
    v25 = v23;
    [v24 enumerateEnumValuesWithBlock:v29];

    [v3 setObject:v25 forKeyedSubscript:@"flags"];
  }

  v26 = [v3 copy];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

void __56__CCToolKitToolTriggerDefinitionVersion1_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v15 = v5;
  if (self->_id)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_id];
    v15[2](v15, v7);
  }

  if (self->_name)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_name];
    v15[2](v15, v8);
  }

  if (self->_description)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_description];
    v15[2](v15, v9);
  }

  if (self->_parameters)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_parameters];
    v15[2](v15, v10);
  }

  if (self->_outputType)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_outputType];
    v15[2](v15, v11);
  }

  if (self->_requirements)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_requirements];
    v15[2](v15, v12);
  }

  v13 = v15;
  if (self->_flags)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedEnumValue:self->_flags];
    v15[2](v15, v14);

    v13 = v15;
  }
}

- (NSArray)requirements
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_requirements copyItems:1];

  return v2;
}

- (CCToolKitToolTypeInstance)outputType
{
  v2 = [(CCToolKitToolTypeInstance *)self->_outputType copy];

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

- (NSString)id
{
  v2 = [(NSString *)self->_id copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v51 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v51];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v52 = 0;
    v53 = 0;
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
        goto LABEL_58;
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
            goto LABEL_57;
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
        goto LABEL_57;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 3)
      {
        switch(v23)
        {
          case 1:
            v28 = CCPBReaderReadStringNoCopy();
            v29 = 16;
            break;
          case 2:
            v28 = CCPBReaderReadStringNoCopy();
            v29 = 24;
            break;
          case 3:
            v28 = CCPBReaderReadStringNoCopy();
            v29 = 32;
            break;
          default:
LABEL_36:
            if ((CCPBReaderSkipValueWithTag() & 1) == 0)
            {
              v30 = objc_opt_class();
              v25 = NSStringFromClass(v30);
              v31 = *&v5[*v10];
              v8 = CCSkipFieldErrorForMessage();
              goto LABEL_50;
            }

LABEL_53:
            v8 = 0;
LABEL_54:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_58;
        }

        v36 = *(&self->super.super.isa + v29);
        *(&self->super.super.isa + v29) = v28;

        goto LABEL_53;
      }

      break;
    }

    if (v23 > 5)
    {
      if (v23 != 6)
      {
        if (v23 == 7)
        {
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          CCPBReaderAppendRepeatedEnumFieldValues();
          goto LABEL_53;
        }

        goto LABEL_36;
      }

      v25 = CCPBReaderReadDataNoCopy();
      if (!v53)
      {
        v53 = objc_opt_new();
      }

      v35 = [CCToolKitToolRuntimeRequirement alloc];
      v54 = 0;
      v33 = [(CCItemMessage *)v35 initWithData:v25 error:&v54];
      v8 = v54;
      if (!v8 && v33)
      {
        v34 = v53;
        goto LABEL_48;
      }
    }

    else
    {
      if (v23 != 4)
      {
        if (v23 == 5)
        {
          v24 = [CCToolKitToolTypeInstance alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v55 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v55];
          v8 = v55;
          outputType = self->_outputType;
          self->_outputType = v26;

LABEL_50:
          goto LABEL_54;
        }

        goto LABEL_36;
      }

      v25 = CCPBReaderReadDataNoCopy();
      if (!v52)
      {
        v52 = objc_opt_new();
      }

      v32 = [CCToolKitToolToolDefinitionVersion1Parameter alloc];
      v56 = 0;
      v33 = [(CCItemMessage *)v32 initWithData:v25 error:&v56];
      v8 = v56;
      if (!v8 && v33)
      {
        v34 = v52;
LABEL_48:
        [v34 addObject:v33];
      }
    }

    goto LABEL_50;
  }

  v9 = 0;
  v52 = 0;
  v53 = 0;
LABEL_57:
  v8 = 0;
LABEL_58:
  v37 = [v52 copy];
  parameters = self->_parameters;
  self->_parameters = v37;

  v39 = [v53 copy];
  requirements = self->_requirements;
  self->_requirements = v39;

  v41 = [v9 copy];
  flags = self->_flags;
  self->_flags = v41;

  if (v8)
  {
    CCSetError();
    v43 = 0;
    v44 = v51;
  }

  else
  {
    v45 = MEMORY[0x1E6993AA8];
    v44 = v51;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = *&v5[*v45];
      v49 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }
  }

  return v43;
}

- (CCToolKitToolTriggerDefinitionVersion1)initWithId:(id)a3 name:(id)a4 description:(id)a5 parameters:(id)a6 outputType:(id)a7 requirements:(id)a8 flags:(id)a9 error:(id *)a10
{
  v73 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v56 = a8;
  v55 = a9;
  v21 = objc_opt_new();
  if (!v16)
  {
    v23 = 0;
LABEL_5:
    v54 = self;
    if (v17)
    {
      objc_opt_class();
      v69 = v23;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v25 = v23;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_36;
      }

      CCPBDataWriterWriteStringField();
      if (!v18)
      {
LABEL_8:
        v23 = v25;
        if (v19)
        {
LABEL_9:
          objc_opt_class();
          v67 = v23;
          v26 = CCValidateArrayValues();
          v25 = v23;

          if (!v26)
          {
            goto LABEL_36;
          }

          v49 = v19;
          v51 = v20;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v27 = v19;
          v28 = [v27 countByEnumeratingWithState:&v63 objects:v72 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v64;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v64 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = [*(*(&v63 + 1) + 8 * i) data];
                CCPBDataWriterWriteDataField();
              }

              v29 = [v27 countByEnumeratingWithState:&v63 objects:v72 count:16];
            }

            while (v29);
          }

          v19 = v49;
          v20 = v51;
          if (!v51)
          {
            goto LABEL_18;
          }

LABEL_24:
          objc_opt_class();
          v62 = v25;
          v35 = CCValidateIsInstanceOfExpectedClass();
          v23 = v25;

          if (v35)
          {
            v36 = [v20 data];
            CCPBDataWriterWriteDataField();

            goto LABEL_26;
          }

LABEL_41:
          CCSetError();
          v33 = 0;
          goto LABEL_42;
        }

LABEL_23:
        v25 = v23;
        if (!v20)
        {
LABEL_18:
          v23 = v25;
LABEL_26:
          if (!v56)
          {
            v25 = v23;
LABEL_38:
            if (!v55)
            {
              v53 = v20;
              v45 = v19;
              v23 = v25;
              goto LABEL_45;
            }

            objc_opt_class();
            v44 = CCValidateIsInstanceOfExpectedClass();
            v23 = v25;

            if (v44)
            {
              v53 = v20;
              v45 = v19;
              CCPBDataWriterWriteRepeatedUInt32Field();
LABEL_45:
              v48 = [v21 immutableData];
              self = [(CCItemMessage *)v54 initWithData:v48 error:a10];

              v33 = self;
              v19 = v45;
              v20 = v53;
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          objc_opt_class();
          v61 = v23;
          v37 = CCValidateArrayValues();
          v25 = v23;

          if (v37)
          {
            v50 = v19;
            v52 = v20;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v38 = v56;
            v39 = [v38 countByEnumeratingWithState:&v57 objects:v71 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v58;
              do
              {
                for (j = 0; j != v40; ++j)
                {
                  if (*v58 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v43 = [*(*(&v57 + 1) + 8 * j) data];
                  CCPBDataWriterWriteDataField();
                }

                v40 = [v38 countByEnumeratingWithState:&v57 objects:v71 count:16];
              }

              while (v40);
            }

            v19 = v50;
            v20 = v52;
            goto LABEL_38;
          }

LABEL_36:
          CCSetError();
          v33 = 0;
          v23 = v25;
LABEL_42:
          self = v54;
          goto LABEL_43;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v25 = v23;
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v68 = v25;
    v34 = CCValidateIsInstanceOfExpectedClass();
    v23 = v25;

    if (!v34)
    {
      goto LABEL_41;
    }

    CCPBDataWriterWriteStringField();
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  v70 = 0;
  v22 = CCValidateIsInstanceOfExpectedClass();
  v23 = 0;
  if (v22)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v33 = 0;
LABEL_43:

  v46 = *MEMORY[0x1E69E9840];
  return v33;
}

@end