@interface CCToolKitToolRuntimePlatformVersion
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolRuntimePlatformVersion)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolRuntimePlatformVersion)initWithMajor:(id)major minor:(id)minor patch:(id)patch isWildcard:(id)wildcard error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolRuntimePlatformVersion

- (CCToolKitToolRuntimePlatformVersion)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"major"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"minor"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"patch"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"isWildcard"];
    v13 = [[CCToolKitToolRuntimePlatformVersion alloc] initWithMajor:v9 minor:v10 patch:v11 isWildcard:v12 error:error];
  }

  else
  {
    CCSetError();
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasMajor)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCToolKitToolRuntimePlatformVersion major](self, "major")}];
    [v3 setObject:v4 forKeyedSubscript:@"major"];
  }

  if (self->_hasMinor)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCToolKitToolRuntimePlatformVersion minor](self, "minor")}];
    [v3 setObject:v5 forKeyedSubscript:@"minor"];
  }

  if (self->_hasPatch)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCToolKitToolRuntimePlatformVersion patch](self, "patch")}];
    [v3 setObject:v6 forKeyedSubscript:@"patch"];
  }

  if (self->_hasIsWildcard)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolRuntimePlatformVersion isWildcard](self, "isWildcard")}];
    [v3 setObject:v7 forKeyedSubscript:@"isWildcard"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasMajor)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] int32Value:self->_major];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_hasMinor)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 int32Value:self->_minor];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_hasPatch)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 int32Value:self->_patch];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_hasIsWildcard)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 BOOLValue:self->_isWildcard];
    blockCopy[2](blockCopy, v9);
  }
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_82;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  selfCopy = self;
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        v19 = v18 + 1;
        if (v18 == -1 || v19 > *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v12] + v18);
        *&v7[v17] = v19;
        v16 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v21 = v15++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_83;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *&v7[*v10];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v23)
      {
        goto LABEL_83;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) > 2)
      {
        if (v24 == 3)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          while (1)
          {
            v50 = *v8;
            v51 = *&v7[v50];
            v52 = v51 + 1;
            if (v51 == -1 || v52 > *&v7[*v9])
            {
              break;
            }

            v53 = *(*&v7[*v12] + v51);
            *&v7[v50] = v52;
            v49 |= (v53 & 0x7F) << v47;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_73;
            }

            v47 += 7;
            v21 = v48++ >= 9;
            if (v21)
            {
              LODWORD(v49) = 0;
              goto LABEL_75;
            }
          }

          *&v7[*v10] = 1;
LABEL_73:
          if (*&v7[*v10])
          {
            LODWORD(v49) = 0;
          }

LABEL_75:
          v11 = 0;
          self->_patch = v49;
          v54 = 19;
          goto LABEL_76;
        }

        if (v24 == 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            v35 = *v8;
            v36 = *&v7[v35];
            v37 = v36 + 1;
            if (v36 == -1 || v37 > *&v7[*v9])
            {
              break;
            }

            v38 = *(*&v7[*v12] + v36);
            *&v7[v35] = v37;
            v34 |= (v38 & 0x7F) << v32;
            if ((v38 & 0x80) == 0)
            {
              goto LABEL_61;
            }

            v32 += 7;
            v21 = v33++ >= 9;
            if (v21)
            {
              v39 = 0;
              goto LABEL_67;
            }
          }

          *&v7[*v10] = 1;
LABEL_61:
          if (*&v7[*v10])
          {
            v55 = 1;
          }

          else
          {
            v55 = v34 == 0;
          }

          v39 = !v55;
LABEL_67:
          v11 = 0;
          self->_isWildcard = v39;
          v54 = 20;
          goto LABEL_76;
        }
      }

      else
      {
        if (v24 == 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          while (1)
          {
            v43 = *v8;
            v44 = *&v7[v43];
            v45 = v44 + 1;
            if (v44 == -1 || v45 > *&v7[*v9])
            {
              break;
            }

            v46 = *(*&v7[*v12] + v44);
            *&v7[v43] = v45;
            v42 |= (v46 & 0x7F) << v40;
            if ((v46 & 0x80) == 0)
            {
              goto LABEL_69;
            }

            v40 += 7;
            v21 = v41++ >= 9;
            if (v21)
            {
              LODWORD(v42) = 0;
              goto LABEL_71;
            }
          }

          *&v7[*v10] = 1;
LABEL_69:
          if (*&v7[*v10])
          {
            LODWORD(v42) = 0;
          }

LABEL_71:
          v11 = 0;
          self->_major = v42;
          v54 = 17;
          goto LABEL_76;
        }

        if (v24 == 2)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v28 = *v8;
            v29 = *&v7[v28];
            v30 = v29 + 1;
            if (v29 == -1 || v30 > *&v7[*v9])
            {
              break;
            }

            v31 = *(*&v7[*v12] + v29);
            *&v7[v28] = v30;
            v27 |= (v31 & 0x7F) << v25;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_57;
            }

            v25 += 7;
            v21 = v26++ >= 9;
            if (v21)
            {
              LODWORD(v27) = 0;
              goto LABEL_59;
            }
          }

          *&v7[*v10] = 1;
LABEL_57:
          if (*&v7[*v10])
          {
            LODWORD(v27) = 0;
          }

LABEL_59:
          v11 = 0;
          self->_minor = v27;
          v54 = 18;
LABEL_76:
          *(&self->super.super.isa + v54) = 1;
          goto LABEL_77;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v11 = 0;
      }

      else
      {
        v56 = objc_opt_class();
        NSStringFromClass(v56);
        errorCopy = error;
        v59 = v58 = dataCopy;
        v60 = *&v7[*v10];
        v11 = CCSkipFieldErrorForMessage();

        dataCopy = v58;
        error = errorCopy;
        self = selfCopy;
      }

LABEL_77:
      if (*&v7[*v8] < *&v7[*v9])
      {
        continue;
      }
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_84;
  }

LABEL_82:
  if (!*&v7[*v10])
  {
    v64 = 1;
    goto LABEL_86;
  }

LABEL_83:
  v61 = objc_opt_class();
  v11 = NSStringFromClass(v61);
  v62 = *&v7[*v10];
  v63 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_84:
  v64 = 0;
LABEL_86:

  return v64;
}

- (CCToolKitToolRuntimePlatformVersion)initWithMajor:(id)major minor:(id)minor patch:(id)patch isWildcard:(id)wildcard error:(id *)error
{
  majorCopy = major;
  minorCopy = minor;
  patchCopy = patch;
  wildcardCopy = wildcard;
  v16 = objc_opt_new();
  v17 = 0x1E696A000uLL;
  if (majorCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v19 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

    [majorCopy intValue];
    CCPBDataWriterWriteInt32Field();
    if (!minorCopy)
    {
LABEL_4:
      v20 = v19;
      if (patchCopy)
      {
        goto LABEL_5;
      }

LABEL_12:
      v19 = v20;
      if (!wildcardCopy)
      {
LABEL_15:
        immutableData = [v16 immutableData];
        self = [(CCItemMessage *)self initWithData:immutableData error:error];

        selfCopy = self;
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (!minorCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v23 = CCValidateIsInstanceOfExpectedClass();
  v20 = v19;

  if (!v23)
  {
    goto LABEL_16;
  }

  [minorCopy intValue];
  CCPBDataWriterWriteInt32Field();
  v17 = 0x1E696A000uLL;
  if (!patchCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  v21 = CCValidateIsInstanceOfExpectedClass();
  v19 = v20;

  if (v21)
  {
    [patchCopy intValue];
    CCPBDataWriterWriteInt32Field();
    v17 = 0x1E696A000;
    if (!wildcardCopy)
    {
      goto LABEL_15;
    }

LABEL_13:
    v24 = *(v17 + 3480);
    objc_opt_class();
    v28 = v19;
    v25 = CCValidateIsInstanceOfExpectedClass();
    v20 = v19;

    if (v25)
    {
      [wildcardCopy BOOLValue];
      CCPBDataWriterWriteBOOLField();
      v19 = v20;
      goto LABEL_15;
    }

LABEL_16:
    CCSetError();
    selfCopy = 0;
    v19 = v20;
    goto LABEL_17;
  }

LABEL_8:
  CCSetError();
  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

@end