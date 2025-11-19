@interface CCSignificantLocationSubPremise
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCSignificantLocationSubPremise)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCSignificantLocationSubPremise)initWithType:(unsigned int)a3 value:(id)a4 error:(id *)a5;
- (NSString)value;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCSignificantLocationSubPremise

- (CCSignificantLocationSubPremise)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"type"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"value"];
    v12 = [[CCSignificantLocationSubPremise alloc] initWithType:v11 value:v13 error:a4];
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSignificantLocationSubPremise type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  if (self->_value)
  {
    v5 = [(CCSignificantLocationSubPremise *)self value];
    [v3 setObject:v5 forKeyedSubscript:@"value"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v7 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15775 enumValue:self->_type];
  v7[2](v7, v5);

  if (self->_value)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15776 stringValue:self->_value];
    v7[2](v7, v6);
  }
}

- (NSString)value
{
  v2 = [(NSString *)self->_value copy];

  return v2;
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
    goto LABEL_41;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v41 = self;
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
        if (v18 == -1 || v18 >= *&v7[*v9])
        {
          break;
        }

        v19 = *(*&v7[*v12] + v18);
        *&v7[v17] = v18 + 1;
        v16 |= (v19 & 0x7F) << v14;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v20 = v15++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_42;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v22 = *&v7[*v10];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v16;
      }

      if (v22)
      {
        goto LABEL_42;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v29 = CCPBReaderReadStringNoCopy();
        value = self->_value;
        self->_value = v29;
      }

      else
      {
        if ((v21 >> 3) == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v26 = *v8;
            v27 = *&v7[v26];
            if (v27 == -1 || v27 >= *&v7[*v9])
            {
              break;
            }

            v28 = *(*&v7[*v12] + v27);
            *&v7[v26] = v27 + 1;
            v25 |= (v28 & 0x7F) << v23;
            if ((v28 & 0x80) == 0)
            {
              goto LABEL_34;
            }

            v23 += 7;
            v20 = v24++ >= 9;
            if (v20)
            {
              LODWORD(v25) = 0;
              goto LABEL_36;
            }
          }

          *&v7[*v10] = 1;
LABEL_34:
          if (*&v7[*v10])
          {
            LODWORD(v25) = 0;
          }

LABEL_36:
          v11 = 0;
          self->_type = v25;
LABEL_38:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v31 = objc_opt_class();
          NSStringFromClass(v31);
          v32 = v6;
          v34 = v33 = a4;
          v35 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          a4 = v33;
          v6 = v32;
          self = v41;
          goto LABEL_38;
        }
      }

      v11 = 0;
      goto LABEL_38;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_43;
  }

LABEL_41:
  if (!*&v7[*v10])
  {
    v39 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v36 = objc_opt_class();
  v11 = NSStringFromClass(v36);
  v37 = *&v7[*v10];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_43:
  v39 = 0;
LABEL_45:

  return v39;
}

- (CCSignificantLocationSubPremise)initWithType:(unsigned int)a3 value:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_opt_new();
  if (!a3)
  {
    v11 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v17 = v11;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v13 = v11;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v15 = 0;
      v11 = v13;
      goto LABEL_11;
    }

    CCPBDataWriterWriteStringField();
    v11 = v13;
    goto LABEL_8;
  }

  v10 = CCValidateEnumField();
  v11 = 0;
  if (!v10)
  {
    CCSetError();
    v15 = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteUint32Field();
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_8:
  v14 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v14 error:a5];

  v15 = self;
LABEL_11:

  return v15;
}

@end