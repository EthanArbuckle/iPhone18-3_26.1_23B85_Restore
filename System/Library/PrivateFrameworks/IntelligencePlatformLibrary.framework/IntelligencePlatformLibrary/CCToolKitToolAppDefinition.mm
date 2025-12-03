@interface CCToolKitToolAppDefinition
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolAppDefinition)initWithId:(id)id name:(id)name bundleId:(id)bundleId bundleVersion:(id)version teamId:(id)teamId device:(id)device origin:(unsigned int)origin synonyms:(id)self0 error:(id *)self1;
- (CCToolKitToolAppDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolAppDefinitionDevice)device;
- (NSArray)synonyms;
- (NSString)bundleId;
- (NSString)bundleVersion;
- (NSString)id;
- (NSString)name;
- (NSString)teamId;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolAppDefinition

- (CCToolKitToolAppDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v29[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  v9 = v8;
  if (IsInstanceOfExpectedClass)
  {
    v27 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"bundleVersion"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"teamId"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"device"];
    selfCopy = self;
    if (v15)
    {
      v16 = v10;
      v17 = v11;
      v29[0] = 0;
      v18 = [[CCToolKitToolAppDefinitionDevice alloc] initWithJSONDictionary:v15 error:v29];
      v19 = v29[0];
      v20 = v19;
      if (!v18 || v19)
      {
        CCSetError();
        v23 = 0;
LABEL_12:

        v9 = v27;
        self = selfCopy;
        goto LABEL_13;
      }

      v15 = v18;
      v11 = v17;
      v10 = v16;
    }

    v26 = v14;
    v16 = v10;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"origin"];
    v20 = v21;
    v17 = v11;
    if (v21)
    {
      unsignedIntegerValue = [v21 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"synonyms"];
    LODWORD(v25) = unsignedIntegerValue;
    v14 = v26;
    v23 = [[CCToolKitToolAppDefinition alloc] initWithId:v16 name:v17 bundleId:v12 bundleVersion:v13 teamId:v26 device:v15 origin:v25 synonyms:v18 error:error];
    goto LABEL_12;
  }

  CCSetError();
  v23 = 0;
LABEL_13:

  return v23;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_id)
  {
    v4 = [(CCToolKitToolAppDefinition *)self id];
    [v3 setObject:v4 forKeyedSubscript:@"id"];
  }

  if (self->_name)
  {
    name = [(CCToolKitToolAppDefinition *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_bundleId)
  {
    bundleId = [(CCToolKitToolAppDefinition *)self bundleId];
    [v3 setObject:bundleId forKeyedSubscript:@"bundleId"];
  }

  if (self->_bundleVersion)
  {
    bundleVersion = [(CCToolKitToolAppDefinition *)self bundleVersion];
    [v3 setObject:bundleVersion forKeyedSubscript:@"bundleVersion"];
  }

  if (self->_teamId)
  {
    teamId = [(CCToolKitToolAppDefinition *)self teamId];
    [v3 setObject:teamId forKeyedSubscript:@"teamId"];
  }

  if (self->_device)
  {
    device = [(CCToolKitToolAppDefinition *)self device];
    jsonDictionary = [device jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"device"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolAppDefinition origin](self, "origin")}];
  [v3 setObject:v11 forKeyedSubscript:@"origin"];

  if (self->_synonyms)
  {
    synonyms = [(CCToolKitToolAppDefinition *)self synonyms];
    [v3 setObject:synonyms forKeyedSubscript:@"synonyms"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v17 = blockCopy;
  if (self->_id)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_id];
    v17[2](v17, v7);
  }

  if (self->_name)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_name];
    v17[2](v17, v8);
  }

  if (self->_bundleId)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_bundleId];
    v17[2](v17, v9);
  }

  if (self->_bundleVersion)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_bundleVersion];
    v17[2](v17, v10);
  }

  if (self->_teamId)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_teamId];
    v17[2](v17, v11);
  }

  if (self->_device)
  {
    v12 = objc_alloc(MEMORY[0x1E69939F0]);
    v13 = *v6;
    v14 = [v12 initWithFieldType:v13 subMessageValue:self->_device];
    v17[2](v17, v14);
  }

  else
  {
    v13 = *v6;
  }

  v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v13 enumValue:self->_origin];
  v17[2](v17, v15);

  if (self->_synonyms)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v13 repeatedStringValue:self->_synonyms];
    v17[2](v17, v16);
  }
}

- (NSArray)synonyms
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_synonyms copyItems:1];

  return v2;
}

- (CCToolKitToolAppDefinitionDevice)device
{
  v2 = [(CCToolKitToolAppDefinitionDevice *)self->_device copy];

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

- (NSString)bundleId
{
  v2 = [(NSString *)self->_bundleId copy];

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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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
        goto LABEL_63;
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
            goto LABEL_62;
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
        goto LABEL_62;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 8)
          {
            v38 = CCPBReaderReadStringNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            if (v38)
            {
              [v9 addObject:v38];
            }

            goto LABEL_46;
          }

          if (v23 == 7)
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
                goto LABEL_58;
              }

              v30 += 7;
              v20 = v31++ >= 9;
              if (v20)
              {
                LODWORD(v32) = 0;
                goto LABEL_60;
              }
            }

            *&v5[*v10] = 1;
LABEL_58:
            if (*&v5[*v10])
            {
              LODWORD(v32) = 0;
            }

LABEL_60:
            v8 = 0;
            self->_origin = v32;
LABEL_47:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_63;
          }
        }

        else
        {
          if (v23 == 5)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v25 = 56;
            goto LABEL_45;
          }

          if (v23 == 6)
          {
            v26 = [CCToolKitToolAppDefinitionDevice alloc];
            v27 = CCPBReaderReadDataNoCopy();
            v52 = 0;
            v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v52];
            v8 = v52;
            device = self->_device;
            self->_device = v28;

LABEL_56:
            goto LABEL_47;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 40;
          goto LABEL_45;
        }

        if (v23 == 4)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 48;
          goto LABEL_45;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 24;
          goto LABEL_45;
        }

        if (v23 == 2)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v25 = 32;
LABEL_45:
          v37 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;

LABEL_46:
          v8 = 0;
          goto LABEL_47;
        }
      }

      break;
    }

    if (CCPBReaderSkipValueWithTag())
    {
      goto LABEL_46;
    }

    v39 = objc_opt_class();
    v27 = NSStringFromClass(v39);
    v40 = *&v5[*v10];
    v8 = CCSkipFieldErrorForMessage();
    goto LABEL_56;
  }

  v9 = 0;
LABEL_62:
  v8 = 0;
LABEL_63:
  v41 = [v9 copy];
  synonyms = self->_synonyms;
  self->_synonyms = v41;

  if (v8)
  {
    CCSetError();
    v43 = 0;
    v44 = dataCopy;
  }

  else
  {
    v45 = MEMORY[0x1E6993AA8];
    v44 = dataCopy;
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

- (CCToolKitToolAppDefinition)initWithId:(id)id name:(id)name bundleId:(id)bundleId bundleVersion:(id)version teamId:(id)teamId device:(id)device origin:(unsigned int)origin synonyms:(id)self0 error:(id *)self1
{
  v66 = *MEMORY[0x1E69E9840];
  idCopy = id;
  nameCopy = name;
  bundleIdCopy = bundleId;
  versionCopy = version;
  teamIdCopy = teamId;
  deviceCopy = device;
  synonymsCopy = synonyms;
  v22 = objc_opt_new();
  v23 = 0x1E696A000uLL;
  if (!idCopy)
  {
    errorCopy2 = error;
    v25 = 0;
    if (!nameCopy)
    {
      goto LABEL_4;
    }

LABEL_11:
    objc_opt_class();
    v63 = v25;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v26 = v25;

    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_20;
    }

    CCPBDataWriterWriteStringField();
    v23 = 0x1E696A000uLL;
    if (bundleIdCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  v64 = 0;
  v24 = CCValidateIsInstanceOfExpectedClass();
  v25 = 0;
  if (!v24)
  {
    goto LABEL_28;
  }

  errorCopy2 = error;
  CCPBDataWriterWriteStringField();
  v23 = 0x1E696A000uLL;
  if (nameCopy)
  {
    goto LABEL_11;
  }

LABEL_4:
  v26 = v25;
  if (bundleIdCopy)
  {
LABEL_5:
    objc_opt_class();
    v62 = v26;
    v27 = CCValidateIsInstanceOfExpectedClass();
    v25 = v26;

    if (!v27)
    {
      goto LABEL_28;
    }

    CCPBDataWriterWriteStringField();
    v23 = 0x1E696A000uLL;
    if (!versionCopy)
    {
LABEL_7:
      v26 = v25;
      if (teamIdCopy)
      {
LABEL_8:
        objc_opt_class();
        v60 = v26;
        v28 = CCValidateIsInstanceOfExpectedClass();
        v25 = v26;

        if (!v28)
        {
          goto LABEL_28;
        }

        v49 = synonymsCopy;
        CCPBDataWriterWriteStringField();
        v23 = 0x1E696A000;
        goto LABEL_17;
      }

LABEL_16:
      v49 = synonymsCopy;
      v25 = v26;
LABEL_17:
      if (deviceCopy)
      {
        objc_opt_class();
        v59 = v25;
        v31 = CCValidateIsInstanceOfExpectedClass();
        v32 = v25;

        if (!v31)
        {
          CCSetError();
          v34 = 0;
          v25 = v32;
          selfCopy2 = self;
LABEL_43:
          synonymsCopy = v49;
          goto LABEL_30;
        }

        data = [deviceCopy data];
        CCPBDataWriterWriteDataField();

        v23 = 0x1E696A000;
      }

      else
      {
        v32 = v25;
      }

      synonymsCopy = v49;
      if (!origin)
      {
        v25 = v32;
        if (!v49)
        {
LABEL_42:
          immutableData = [v22 immutableData];
          selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:errorCopy2];

          v34 = selfCopy2;
          goto LABEL_43;
        }

        goto LABEL_33;
      }

      v58 = v32;
      v47 = CCValidateEnumField();
      v25 = v32;

      if (v47)
      {
        CCPBDataWriterWriteUint32Field();
        v23 = 0x1E696A000;
        if (!v49)
        {
          goto LABEL_42;
        }

LABEL_33:
        v38 = *(v23 + 3776);
        objc_opt_class();
        v57 = v25;
        v39 = CCValidateArrayValues();
        v26 = v25;

        if (v39)
        {
          v48 = v26;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v40 = v49;
          v41 = [v40 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v54;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v54 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                v45 = *(*(&v53 + 1) + 8 * i);
                CCPBDataWriterWriteStringField();
              }

              v42 = [v40 countByEnumeratingWithState:&v53 objects:v65 count:16];
            }

            while (v42);
          }

          v25 = v48;
          goto LABEL_42;
        }

        CCSetError();
        synonymsCopy = v49;
        goto LABEL_21;
      }

LABEL_28:
      CCSetError();
      v34 = 0;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

LABEL_13:
  v25 = v26;
  if (!versionCopy)
  {
    goto LABEL_7;
  }

LABEL_14:
  objc_opt_class();
  v61 = v25;
  v30 = CCValidateIsInstanceOfExpectedClass();
  v26 = v25;

  if (v30)
  {
    CCPBDataWriterWriteStringField();
    v23 = 0x1E696A000uLL;
    if (teamIdCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_20:
  CCSetError();
LABEL_21:
  v34 = 0;
  v25 = v26;
LABEL_29:
  selfCopy2 = self;
LABEL_30:

  v36 = *MEMORY[0x1E69E9840];
  return v34;
}

@end