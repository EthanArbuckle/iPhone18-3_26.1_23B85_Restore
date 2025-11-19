@interface CCToolKitToolContainerDefinition
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolContainerDefinition)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolContainerDefinition)initWithName:(id)a3 containerId:(id)a4 bundleVersion:(id)a5 containerType:(unsigned int)a6 teamId:(id)a7 device:(id)a8 origin:(unsigned int)a9 synonyms:(id)a10 error:(id *)a11;
- (CCToolKitToolContainerDefinitionDevice)device;
- (NSArray)synonyms;
- (NSString)bundleVersion;
- (NSString)containerId;
- (NSString)name;
- (NSString)teamId;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolContainerDefinition

- (CCToolKitToolContainerDefinition)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v28[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"name"];
    v10 = [v6 objectForKeyedSubscript:@"containerId"];
    v11 = [v6 objectForKeyedSubscript:@"bundleVersion"];
    v12 = [v6 objectForKeyedSubscript:@"containerType"];
    v26 = v8;
    v27 = v12;
    if (v12)
    {
      v25 = [v12 unsignedIntegerValue];
    }

    else
    {
      v25 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"teamId"];
    v15 = [v6 objectForKeyedSubscript:@"device"];
    if (v15)
    {
      v28[0] = 0;
      v16 = [[CCToolKitToolContainerDefinitionDevice alloc] initWithJSONDictionary:v15 error:v28];
      v17 = v28[0];
      v18 = v17;
      if (!v16 || v17)
      {
        CCSetError();
        v13 = 0;
LABEL_16:

        v8 = v26;
        goto LABEL_17;
      }

      v24 = self;

      v15 = v16;
    }

    else
    {
      v24 = self;
    }

    v19 = v9;
    v20 = [v6 objectForKeyedSubscript:@"origin"];
    v18 = v20;
    if (v20)
    {
      v21 = [v20 unsignedIntegerValue];
    }

    else
    {
      v21 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"synonyms"];
    LODWORD(v23) = v21;
    v9 = v19;
    v13 = [[CCToolKitToolContainerDefinition alloc] initWithName:v19 containerId:v10 bundleVersion:v11 containerType:v25 teamId:v14 device:v15 origin:v23 synonyms:v16 error:a4];
    self = v24;
    goto LABEL_16;
  }

  CCSetError();
  v13 = 0;
LABEL_17:

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_name)
  {
    v4 = [(CCToolKitToolContainerDefinition *)self name];
    [v3 setObject:v4 forKeyedSubscript:@"name"];
  }

  if (self->_containerId)
  {
    v5 = [(CCToolKitToolContainerDefinition *)self containerId];
    [v3 setObject:v5 forKeyedSubscript:@"containerId"];
  }

  if (self->_bundleVersion)
  {
    v6 = [(CCToolKitToolContainerDefinition *)self bundleVersion];
    [v3 setObject:v6 forKeyedSubscript:@"bundleVersion"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolContainerDefinition containerType](self, "containerType")}];
  [v3 setObject:v7 forKeyedSubscript:@"containerType"];

  if (self->_teamId)
  {
    v8 = [(CCToolKitToolContainerDefinition *)self teamId];
    [v3 setObject:v8 forKeyedSubscript:@"teamId"];
  }

  if (self->_device)
  {
    v9 = [(CCToolKitToolContainerDefinition *)self device];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"device"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolContainerDefinition origin](self, "origin")}];
  [v3 setObject:v11 forKeyedSubscript:@"origin"];

  if (self->_synonyms)
  {
    v12 = [(CCToolKitToolContainerDefinition *)self synonyms];
    [v3 setObject:v12 forKeyedSubscript:@"synonyms"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v17 = v5;
  if (self->_name)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_name];
    v17[2](v17, v7);
  }

  if (self->_containerId)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_containerId];
    v17[2](v17, v8);
  }

  if (self->_bundleVersion)
  {
    v9 = objc_alloc(MEMORY[0x1E69939F0]);
    v10 = *v6;
    v11 = [v9 initWithFieldType:v10 stringValue:self->_bundleVersion];
    v17[2](v17, v11);
  }

  else
  {
    v10 = *v6;
  }

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 enumValue:self->_containerType];
  v17[2](v17, v12);

  if (self->_teamId)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 stringValue:self->_teamId];
    v17[2](v17, v13);
  }

  if (self->_device)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 subMessageValue:self->_device];
    v17[2](v17, v14);
  }

  v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 enumValue:self->_origin];
  v17[2](v17, v15);

  if (self->_synonyms)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 repeatedStringValue:self->_synonyms];
    v17[2](v17, v16);
  }
}

- (NSArray)synonyms
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_synonyms copyItems:1];

  return v2;
}

- (CCToolKitToolContainerDefinitionDevice)device
{
  v2 = [(CCToolKitToolContainerDefinitionDevice *)self->_device copy];

  return v2;
}

- (NSString)teamId
{
  v2 = [(NSString *)self->_teamId copy];

  return v2;
}

- (NSString)bundleVersion
{
  v2 = [(NSString *)self->_bundleVersion copy];

  return v2;
}

- (NSString)containerId
{
  v2 = [(NSString *)self->_containerId copy];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v58 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v58];
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
        goto LABEL_74;
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
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_73;
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
        goto LABEL_73;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 5)
      {
        if (v23 > 7)
        {
          if (v23 == 9)
          {
            v44 = CCPBReaderReadStringNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            if (v44)
            {
              [v9 addObject:v44];
            }

            goto LABEL_52;
          }

          if (v23 == 8)
          {
            v37 = 0;
            v38 = 0;
            v32 = 0;
            while (1)
            {
              v39 = *v6;
              v40 = *&v5[v39];
              v41 = v40 + 1;
              if (v40 == -1 || v41 > *&v5[*v7])
              {
                break;
              }

              v42 = *(*&v5[*v11] + v40);
              *&v5[v39] = v41;
              v32 |= (v42 & 0x7F) << v37;
              if ((v42 & 0x80) == 0)
              {
                goto LABEL_66;
              }

              v37 += 7;
              v20 = v38++ >= 9;
              if (v20)
              {
                LODWORD(v32) = 0;
                goto LABEL_68;
              }
            }

            *&v5[*v10] = 1;
LABEL_66:
            if (*&v5[*v10])
            {
              LODWORD(v32) = 0;
            }

LABEL_68:
            v8 = 0;
            v47 = 20;
            goto LABEL_69;
          }
        }

        else
        {
          if (v23 == 6)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v25 = 48;
            goto LABEL_51;
          }

          if (v23 == 7)
          {
            v26 = [CCToolKitToolContainerDefinitionDevice alloc];
            v27 = CCPBReaderReadDataNoCopy();
            v59 = 0;
            v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v59];
            v8 = v59;
            device = self->_device;
            self->_device = v28;

LABEL_60:
            goto LABEL_70;
          }
        }
      }

      else
      {
        if (v23 <= 3)
        {
          if (v23 == 2)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v25 = 24;
            goto LABEL_51;
          }

          if (v23 == 3)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v25 = 32;
LABEL_51:
            v43 = *(&self->super.super.isa + v25);
            *(&self->super.super.isa + v25) = v24;

LABEL_52:
            v8 = 0;
            goto LABEL_70;
          }

          break;
        }

        if (v23 == 4)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 40;
          goto LABEL_51;
        }

        if (v23 == 5)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v33 = *v6;
            v34 = *&v5[v33];
            v35 = v34 + 1;
            if (v34 == -1 || v35 > *&v5[*v7])
            {
              break;
            }

            v36 = *(*&v5[*v11] + v34);
            *&v5[v33] = v35;
            v32 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              goto LABEL_62;
            }

            v30 += 7;
            v20 = v31++ >= 9;
            if (v20)
            {
              LODWORD(v32) = 0;
              goto LABEL_64;
            }
          }

          *&v5[*v10] = 1;
LABEL_62:
          if (*&v5[*v10])
          {
            LODWORD(v32) = 0;
          }

LABEL_64:
          v8 = 0;
          v47 = 16;
LABEL_69:
          *(&self->super.super.isa + v47) = v32;
LABEL_70:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_74;
        }
      }

      break;
    }

    if (CCPBReaderSkipValueWithTag())
    {
      goto LABEL_52;
    }

    v45 = objc_opt_class();
    v27 = NSStringFromClass(v45);
    v46 = *&v5[*v10];
    v8 = CCSkipFieldErrorForMessage();
    goto LABEL_60;
  }

  v9 = 0;
LABEL_73:
  v8 = 0;
LABEL_74:
  v48 = [v9 copy];
  synonyms = self->_synonyms;
  self->_synonyms = v48;

  if (v8)
  {
    CCSetError();
    v50 = 0;
    v51 = v58;
  }

  else
  {
    v52 = MEMORY[0x1E6993AA8];
    v51 = v58;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = *&v5[*v52];
      v56 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }
  }

  return v50;
}

- (CCToolKitToolContainerDefinition)initWithName:(id)a3 containerId:(id)a4 bundleVersion:(id)a5 containerType:(unsigned int)a6 teamId:(id)a7 device:(id)a8 origin:(unsigned int)a9 synonyms:(id)a10 error:(id *)a11
{
  v64 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v48 = a8;
  v49 = a10;
  v20 = objc_opt_new();
  if (v16)
  {
    objc_opt_class();
    v62 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v22 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_19;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v22 = 0;
  }

  if (v17)
  {
    objc_opt_class();
    v61 = v22;
    v23 = CCValidateIsInstanceOfExpectedClass();
    v24 = v22;

    if (!v23)
    {
LABEL_11:
      CCSetError();
      v26 = 0;
      v22 = v24;
LABEL_22:
      v29 = v48;
      v30 = v49;
      goto LABEL_23;
    }

    CCPBDataWriterWriteStringField();
    if (!v18)
    {
LABEL_8:
      v22 = v24;
      if (a6)
      {
        goto LABEL_9;
      }

LABEL_15:
      v24 = v22;
      goto LABEL_16;
    }
  }

  else
  {
    v24 = v22;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v60 = v24;
  v27 = CCValidateIsInstanceOfExpectedClass();
  v22 = v24;

  if (!v27)
  {
    CCSetError();
    v26 = 0;
    goto LABEL_22;
  }

  CCPBDataWriterWriteStringField();
  if (!a6)
  {
    goto LABEL_15;
  }

LABEL_9:
  v59 = v22;
  v25 = CCValidateEnumField();
  v24 = v22;

  if (!v25)
  {
    goto LABEL_11;
  }

  CCPBDataWriterWriteUint32Field();
LABEL_16:
  if (!v19)
  {
    v47 = a11;
    v22 = v24;
LABEL_25:
    v29 = v48;
    if (v48)
    {
      objc_opt_class();
      v57 = v22;
      v33 = CCValidateIsInstanceOfExpectedClass();
      v34 = v22;

      if (!v33)
      {
        CCSetError();
        v26 = 0;
        v22 = v34;
        v30 = v49;
        goto LABEL_23;
      }

      v35 = [v48 data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v34 = v22;
    }

    if (a9)
    {
      v56 = v34;
      v36 = CCValidateEnumField();
      v22 = v34;

      if (!v36)
      {
        CCSetError();
        v26 = 0;
        v30 = v49;
        goto LABEL_23;
      }

      CCPBDataWriterWriteUint32Field();
      v30 = v49;
      if (!v49)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v22 = v34;
      v30 = v49;
      if (!v49)
      {
LABEL_44:
        v46 = [v20 immutableData];
        v26 = [(CCItemMessage *)self initWithData:v46 error:v47];

        self = v26;
        goto LABEL_20;
      }
    }

    objc_opt_class();
    v55 = v22;
    v37 = CCValidateArrayValues();
    v38 = v22;

    if (!v37)
    {
      CCSetError();
      v26 = 0;
      v22 = v38;
      goto LABEL_23;
    }

    v39 = v38;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = v30;
    v41 = [v40 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v52;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v52 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v51 + 1) + 8 * i);
          CCPBDataWriterWriteStringField();
        }

        v42 = [v40 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v42);
    }

    v22 = v39;
    goto LABEL_44;
  }

  objc_opt_class();
  v58 = v24;
  v28 = CCValidateIsInstanceOfExpectedClass();
  v22 = v24;

  if (v28)
  {
    v47 = a11;
    CCPBDataWriterWriteStringField();
    goto LABEL_25;
  }

LABEL_19:
  CCSetError();
  v26 = 0;
LABEL_20:
  v29 = v48;
  v30 = v49;
LABEL_23:

  v31 = *MEMORY[0x1E69E9840];
  return v26;
}

@end