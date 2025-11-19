@interface CCToolKitToolTimestamp
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTimestamp)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTimestamp)initWithSeconds:(id)a3 nanos:(id)a4 error:(id *)a5;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTimestamp

- (CCToolKitToolTimestamp)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"seconds"];
    v10 = [v6 objectForKeyedSubscript:@"nanos"];
    v11 = [[CCToolKitToolTimestamp alloc] initWithSeconds:v9 nanos:v10 error:a4];
  }

  else
  {
    CCSetError();
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasSeconds)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTimestamp seconds](self, "seconds")}];
    [v3 setObject:v4 forKeyedSubscript:@"seconds"];
  }

  if (self->_hasNanos)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCToolKitToolTimestamp nanos](self, "nanos")}];
    [v3 setObject:v5 forKeyedSubscript:@"nanos"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasSeconds)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] int64Value:self->_seconds];
    v8[2](v8, v6);
  }

  if (self->_hasNanos)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 int32Value:self->_nanos];
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
    goto LABEL_52;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v49 = self;
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
            goto LABEL_53;
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
        goto LABEL_53;
      }

LABEL_21:
      if ((v22 >> 3) == 1)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v34 = *v8;
          v35 = *&v7[v34];
          v36 = v35 + 1;
          if (v35 == -1 || v36 > *&v7[*v9])
          {
            break;
          }

          v37 = *(*&v7[*v12] + v35);
          *&v7[v34] = v36;
          v33 |= (v37 & 0x7F) << v31;
          if ((v37 & 0x80) == 0)
          {
            goto LABEL_44;
          }

          v31 += 7;
          v21 = v32++ >= 9;
          if (v21)
          {
            v33 = 0;
            goto LABEL_46;
          }
        }

        *&v7[*v10] = 1;
LABEL_44:
        if (*&v7[*v10])
        {
          v33 = 0;
        }

LABEL_46:
        v11 = 0;
        self->_seconds = v33;
        v38 = 16;
      }

      else
      {
        if ((v22 >> 3) != 2)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v11 = 0;
          }

          else
          {
            v39 = objc_opt_class();
            NSStringFromClass(v39);
            v40 = a4;
            v42 = v41 = v6;
            v43 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            v6 = v41;
            a4 = v40;
            self = v49;
          }

LABEL_49:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v27 = *v8;
          v28 = *&v7[v27];
          v29 = v28 + 1;
          if (v28 == -1 || v29 > *&v7[*v9])
          {
            break;
          }

          v30 = *(*&v7[*v12] + v28);
          *&v7[v27] = v29;
          v26 |= (v30 & 0x7F) << v24;
          if ((v30 & 0x80) == 0)
          {
            goto LABEL_40;
          }

          v24 += 7;
          v21 = v25++ >= 9;
          if (v21)
          {
            LODWORD(v26) = 0;
            goto LABEL_42;
          }
        }

        *&v7[*v10] = 1;
LABEL_40:
        if (*&v7[*v10])
        {
          LODWORD(v26) = 0;
        }

LABEL_42:
        v11 = 0;
        self->_nanos = v26;
        v38 = 17;
      }

      *(&self->super.super.isa + v38) = 1;
      goto LABEL_49;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_54;
  }

LABEL_52:
  if (!*&v7[*v10])
  {
    v47 = 1;
    goto LABEL_56;
  }

LABEL_53:
  v44 = objc_opt_class();
  v11 = NSStringFromClass(v44);
  v45 = *&v7[*v10];
  v46 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_54:
  v47 = 0;
LABEL_56:

  return v47;
}

- (CCToolKitToolTimestamp)initWithSeconds:(id)a3 nanos:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if (!v8)
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v18 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v16 = 0;
      v12 = v14;
      goto LABEL_11;
    }

    [v9 intValue];
    CCPBDataWriterWriteInt32Field();
    v12 = v14;
    goto LABEL_8;
  }

  objc_opt_class();
  v11 = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    v16 = 0;
    goto LABEL_11;
  }

  [v8 longLongValue];
  CCPBDataWriterWriteInt64Field();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_8:
  v15 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v15 error:a5];

  v16 = self;
LABEL_11:

  return v16;
}

@end