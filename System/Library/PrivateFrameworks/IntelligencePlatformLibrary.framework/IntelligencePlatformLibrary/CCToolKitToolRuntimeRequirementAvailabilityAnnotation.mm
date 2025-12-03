@interface CCToolKitToolRuntimeRequirementAvailabilityAnnotation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolRuntimePlatformVersion)deprecatingVersion;
- (CCToolKitToolRuntimePlatformVersion)introducingVersion;
- (CCToolKitToolRuntimePlatformVersion)obsoletingVersion;
- (CCToolKitToolRuntimeRequirementAvailabilityAnnotation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolRuntimeRequirementAvailabilityAnnotation)initWithPlatform:(unsigned int)platform introducingVersion:(id)version deprecatingVersion:(id)deprecatingVersion obsoletingVersion:(id)obsoletingVersion error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolRuntimeRequirementAvailabilityAnnotation

- (CCToolKitToolRuntimeRequirementAvailabilityAnnotation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v26[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"platform"];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"introducingVersion"];
    if (v12)
    {
      v26[0] = 0;
      v13 = [[CCToolKitToolRuntimePlatformVersion alloc] initWithJSONDictionary:v12 error:v26];
      v14 = v26[0];
      v15 = v14;
      if (!v13 || v14)
      {
        CCSetError();
        goto LABEL_23;
      }

      v12 = v13;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"deprecatingVersion"];
    if (v15)
    {
      v25 = 0;
      v16 = [[CCToolKitToolRuntimePlatformVersion alloc] initWithJSONDictionary:v15 error:&v25];
      v17 = v25;
      v13 = v17;
      if (!v16 || v17)
      {
        CCSetError();

        goto LABEL_23;
      }

      v15 = v16;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"obsoletingVersion"];
    if (!v18)
    {
      v19 = 0;
      goto LABEL_21;
    }

    v13 = v18;
    v24 = 0;
    v19 = [[CCToolKitToolRuntimePlatformVersion alloc] initWithJSONDictionary:v18 error:&v24];
    v20 = v24;
    v21 = v20;
    if (v19 && !v20)
    {

LABEL_21:
      v11 = [[CCToolKitToolRuntimeRequirementAvailabilityAnnotation alloc] initWithPlatform:unsignedIntegerValue introducingVersion:v12 deprecatingVersion:v15 obsoletingVersion:v19 error:error];
      v13 = v19;
LABEL_24:

      goto LABEL_25;
    }

    CCSetError();

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  CCSetError();
  v11 = 0;
LABEL_25:

  return v11;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolRuntimeRequirementAvailabilityAnnotation platform](self, "platform")}];
  [v3 setObject:v4 forKeyedSubscript:@"platform"];

  if (self->_introducingVersion)
  {
    introducingVersion = [(CCToolKitToolRuntimeRequirementAvailabilityAnnotation *)self introducingVersion];
    jsonDictionary = [introducingVersion jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"introducingVersion"];
  }

  if (self->_deprecatingVersion)
  {
    deprecatingVersion = [(CCToolKitToolRuntimeRequirementAvailabilityAnnotation *)self deprecatingVersion];
    jsonDictionary2 = [deprecatingVersion jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"deprecatingVersion"];
  }

  if (self->_obsoletingVersion)
  {
    obsoletingVersion = [(CCToolKitToolRuntimeRequirementAvailabilityAnnotation *)self obsoletingVersion];
    jsonDictionary3 = [obsoletingVersion jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"obsoletingVersion"];
  }

  v11 = [v3 copy];

  return v11;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_platform];
  blockCopy[2](blockCopy, v7);

  if (self->_introducingVersion)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_introducingVersion];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_deprecatingVersion)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_deprecatingVersion];
    blockCopy[2](blockCopy, v9);
  }

  v10 = blockCopy;
  if (self->_obsoletingVersion)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_obsoletingVersion];
    blockCopy[2](blockCopy, v11);

    v10 = blockCopy;
  }
}

- (CCToolKitToolRuntimePlatformVersion)obsoletingVersion
{
  v2 = [(CCToolKitToolRuntimePlatformVersion *)self->_obsoletingVersion copy];

  return v2;
}

- (CCToolKitToolRuntimePlatformVersion)deprecatingVersion
{
  v2 = [(CCToolKitToolRuntimePlatformVersion *)self->_deprecatingVersion copy];

  return v2;
}

- (CCToolKitToolRuntimePlatformVersion)introducingVersion
{
  v2 = [(CCToolKitToolRuntimePlatformVersion *)self->_introducingVersion copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_49;
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
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_50;
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
        goto LABEL_50;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v36 = [CCToolKitToolRuntimePlatformVersion alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v47 = 0;
          v26 = [(CCItemMessage *)v36 initWithData:v25 error:&v47];
          v10 = v47;
          v27 = 32;
          goto LABEL_38;
        }

        if (v23 == 4)
        {
          v28 = [CCToolKitToolRuntimePlatformVersion alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v46 = 0;
          v26 = [(CCItemMessage *)v28 initWithData:v25 error:&v46];
          v10 = v46;
          v27 = 40;
          goto LABEL_38;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            v33 = *&v6[v32];
            v34 = v33 + 1;
            if (v33 == -1 || v34 > *&v6[*v8])
            {
              break;
            }

            v35 = *(*&v6[*v11] + v33);
            *&v6[v32] = v34;
            v31 |= (v35 & 0x7F) << v29;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_41;
            }

            v29 += 7;
            v20 = v30++ >= 9;
            if (v20)
            {
              LODWORD(v31) = 0;
              goto LABEL_43;
            }
          }

          *&v6[*v9] = 1;
LABEL_41:
          if (*&v6[*v9])
          {
            LODWORD(v31) = 0;
          }

LABEL_43:
          v10 = 0;
          self->_platform = v31;
LABEL_44:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        if (v23 == 2)
        {
          v24 = [CCToolKitToolRuntimePlatformVersion alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v48 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v48];
          v10 = v48;
          v27 = 24;
LABEL_38:
          v37 = *(&self->super.super.isa + v27);
          *(&self->super.super.isa + v27) = v26;

LABEL_39:
          goto LABEL_44;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_44;
      }

      v38 = objc_opt_class();
      v25 = NSStringFromClass(v38);
      v39 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
      goto LABEL_39;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_51;
  }

LABEL_49:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v44 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = *&v6[*v9];
  v43 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_51:
  v44 = 0;
LABEL_53:

  return v44;
}

- (CCToolKitToolRuntimeRequirementAvailabilityAnnotation)initWithPlatform:(unsigned int)platform introducingVersion:(id)version deprecatingVersion:(id)deprecatingVersion obsoletingVersion:(id)obsoletingVersion error:(id *)error
{
  versionCopy = version;
  deprecatingVersionCopy = deprecatingVersion;
  obsoletingVersionCopy = obsoletingVersion;
  v15 = objc_opt_new();
  if (platform)
  {
    v16 = CCValidateEnumField();
    v17 = 0;
    if (!v16)
    {
      goto LABEL_16;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v17 = 0;
  }

  if (versionCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v19 = v17;

    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_17;
    }

    data = [versionCopy data];
    CCPBDataWriterWriteDataField();

    if (!deprecatingVersionCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = v17;
    if (!deprecatingVersionCopy)
    {
LABEL_8:
      v17 = v19;
      if (!obsoletingVersionCopy)
      {
        goto LABEL_15;
      }

LABEL_13:
      objc_opt_class();
      v28 = v17;
      v23 = CCValidateIsInstanceOfExpectedClass();
      v19 = v17;

      if (v23)
      {
        data2 = [obsoletingVersionCopy data];
        CCPBDataWriterWriteDataField();

        v17 = v19;
        goto LABEL_15;
      }

LABEL_17:
      CCSetError();
      selfCopy = 0;
      v17 = v19;
      goto LABEL_18;
    }
  }

  objc_opt_class();
  v21 = CCValidateIsInstanceOfExpectedClass();
  v17 = v19;

  if (!v21)
  {
LABEL_16:
    CCSetError();
    selfCopy = 0;
    goto LABEL_18;
  }

  data3 = [deprecatingVersionCopy data];
  CCPBDataWriterWriteDataField();

  if (obsoletingVersionCopy)
  {
    goto LABEL_13;
  }

LABEL_15:
  immutableData = [v15 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_18:

  return selfCopy;
}

@end