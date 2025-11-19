@interface CCAssistantSchemaVersion
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAssistantSchemaVersion)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAssistantSchemaVersion)initWithMajor:(id)a3 minor:(id)a4 patch:(id)a5 error:(id *)a6;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAssistantSchemaVersion

- (CCAssistantSchemaVersion)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"major"];
    v10 = [v6 objectForKeyedSubscript:@"minor"];
    v11 = [v6 objectForKeyedSubscript:@"patch"];
    v12 = [[CCAssistantSchemaVersion alloc] initWithMajor:v9 minor:v10 patch:v11 error:a4];
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasMajor)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCAssistantSchemaVersion major](self, "major")}];
    [v3 setObject:v4 forKeyedSubscript:@"major"];
  }

  if (self->_hasMinor)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCAssistantSchemaVersion minor](self, "minor")}];
    [v3 setObject:v5 forKeyedSubscript:@"minor"];
  }

  if (self->_hasPatch)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCAssistantSchemaVersion patch](self, "patch")}];
    [v3 setObject:v6 forKeyedSubscript:@"patch"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  if (self->_hasMajor)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:47359 int32Value:self->_major];
    v8[2](v8, v5);
  }

  if (self->_hasMinor)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:47360 int32Value:self->_minor];
    v8[2](v8, v6);
  }

  if (self->_hasPatch)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:47361 int32Value:self->_patch];
    v8[2](v8, v7);
  }
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_64;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v57 = self;
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
            goto LABEL_65;
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
        goto LABEL_65;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) == 1)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        while (1)
        {
          v42 = *v8;
          v43 = *&v7[v42];
          v44 = v43 + 1;
          if (v43 == -1 || v44 > *&v7[*v9])
          {
            break;
          }

          v45 = *(*&v7[*v12] + v43);
          *&v7[v42] = v44;
          v41 |= (v45 & 0x7F) << v39;
          if ((v45 & 0x80) == 0)
          {
            goto LABEL_52;
          }

          v39 += 7;
          v21 = v40++ >= 9;
          if (v21)
          {
            LODWORD(v41) = 0;
            goto LABEL_54;
          }
        }

        *&v7[*v10] = 1;
LABEL_52:
        if (*&v7[*v10])
        {
          LODWORD(v41) = 0;
        }

LABEL_54:
        v11 = 0;
        self->_major = v41;
        v46 = 16;
      }

      else if (v24 == 2)
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
            goto LABEL_48;
          }

          v32 += 7;
          v21 = v33++ >= 9;
          if (v21)
          {
            LODWORD(v34) = 0;
            goto LABEL_50;
          }
        }

        *&v7[*v10] = 1;
LABEL_48:
        if (*&v7[*v10])
        {
          LODWORD(v34) = 0;
        }

LABEL_50:
        v11 = 0;
        self->_minor = v34;
        v46 = 17;
      }

      else
      {
        if (v24 != 3)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v11 = 0;
          }

          else
          {
            v47 = objc_opt_class();
            NSStringFromClass(v47);
            v48 = a4;
            v50 = v49 = v6;
            v51 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            v6 = v49;
            a4 = v48;
            self = v57;
          }

LABEL_61:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

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
            goto LABEL_56;
          }

          v25 += 7;
          v21 = v26++ >= 9;
          if (v21)
          {
            LODWORD(v27) = 0;
            goto LABEL_58;
          }
        }

        *&v7[*v10] = 1;
LABEL_56:
        if (*&v7[*v10])
        {
          LODWORD(v27) = 0;
        }

LABEL_58:
        v11 = 0;
        self->_patch = v27;
        v46 = 18;
      }

      *(&self->super.super.isa + v46) = 1;
      goto LABEL_61;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_66;
  }

LABEL_64:
  if (!*&v7[*v10])
  {
    v55 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v52 = objc_opt_class();
  v11 = NSStringFromClass(v52);
  v53 = *&v7[*v10];
  v54 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_66:
  v55 = 0;
LABEL_68:

  return v55;
}

- (CCAssistantSchemaVersion)initWithMajor:(id)a3 minor:(id)a4 patch:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    [v10 intValue];
    CCPBDataWriterWriteInt32Field();
    if (!v11)
    {
LABEL_4:
      v16 = v15;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = v16;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v19)
  {
    CCSetError();
    v18 = 0;
    v15 = v16;
    goto LABEL_14;
  }

  [v11 intValue];
  CCPBDataWriterWriteInt32Field();
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    [v12 intValue];
    CCPBDataWriterWriteInt32Field();
LABEL_12:
    v20 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v20 error:a6];

    v18 = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  v18 = 0;
LABEL_14:

  return v18;
}

@end