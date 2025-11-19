@interface CCToolKitToolTypedValuePrimitiveValuePersonHandle
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValuePersonHandle)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValuePersonHandle)initWithValue:(id)a3 type:(unsigned int)a4 label:(id)a5 error:(id *)a6;
- (NSString)label;
- (NSString)value;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValuePersonHandle

- (CCToolKitToolTypedValuePrimitiveValuePersonHandle)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"value"];
    v10 = [v6 objectForKeyedSubscript:@"type"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 unsignedIntegerValue];
    }

    else
    {
      v12 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"label"];
    v13 = [[CCToolKitToolTypedValuePrimitiveValuePersonHandle alloc] initWithValue:v9 type:v12 label:v14 error:a4];
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
  if (self->_value)
  {
    v4 = [(CCToolKitToolTypedValuePrimitiveValuePersonHandle *)self value];
    [v3 setObject:v4 forKeyedSubscript:@"value"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValuePersonHandle type](self, "type")}];
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  if (self->_label)
  {
    v6 = [(CCToolKitToolTypedValuePrimitiveValuePersonHandle *)self label];
    [v3 setObject:v6 forKeyedSubscript:@"label"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v10 = a3;
  if (self->_value)
  {
    v5 = objc_alloc(MEMORY[0x1E69939F0]);
    v6 = *MEMORY[0x1E69939A8];
    v7 = [v5 initWithFieldType:v6 stringValue:self->_value];
    v10[2](v10, v7);
  }

  else
  {
    v6 = *MEMORY[0x1E69939A8];
  }

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_type];
  v10[2](v10, v8);

  if (self->_label)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_label];
    v10[2](v10, v9);
  }
}

- (NSString)label
{
  v2 = [(NSString *)self->_label copy];

  return v2;
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
    goto LABEL_44;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v45 = self;
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
            goto LABEL_45;
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
        goto LABEL_45;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) == 1)
      {
        v32 = CCPBReaderReadStringNoCopy();
        v33 = 24;
      }

      else
      {
        if (v24 != 3)
        {
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
                goto LABEL_38;
              }

              v25 += 7;
              v21 = v26++ >= 9;
              if (v21)
              {
                LODWORD(v27) = 0;
                goto LABEL_40;
              }
            }

            *&v7[*v10] = 1;
LABEL_38:
            if (*&v7[*v10])
            {
              LODWORD(v27) = 0;
            }

LABEL_40:
            v11 = 0;
            self->_type = v27;
LABEL_41:
            if (*&v7[*v8] < *&v7[*v9])
            {
              continue;
            }

            break;
          }

          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v35 = objc_opt_class();
            NSStringFromClass(v35);
            v36 = v6;
            v38 = v37 = a4;
            v39 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            a4 = v37;
            v6 = v36;
            self = v45;
            goto LABEL_41;
          }

LABEL_34:
          v11 = 0;
          goto LABEL_41;
        }

        v32 = CCPBReaderReadStringNoCopy();
        v33 = 32;
      }

      v34 = *(&self->super.super.isa + v33);
      *(&self->super.super.isa + v33) = v32;

      goto LABEL_34;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_46;
  }

LABEL_44:
  if (!*&v7[*v10])
  {
    v43 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v40 = objc_opt_class();
  v11 = NSStringFromClass(v40);
  v41 = *&v7[*v10];
  v42 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_46:
  v43 = 0;
LABEL_48:

  return v43;
}

- (CCToolKitToolTypedValuePrimitiveValuePersonHandle)initWithValue:(id)a3 type:(unsigned int)a4 label:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
    if (!a4)
    {
LABEL_4:
      v15 = v14;
      if (v11)
      {
        goto LABEL_5;
      }

LABEL_11:
      v14 = v15;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  v18 = CCValidateEnumField();
  v15 = v14;

  if (!v18)
  {
    CCSetError();
    v17 = 0;
    v14 = v15;
    goto LABEL_14;
  }

  CCPBDataWriterWriteUint32Field();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v16 = CCValidateIsInstanceOfExpectedClass();
  v14 = v15;

  if (v16)
  {
    CCPBDataWriterWriteStringField();
LABEL_12:
    v19 = [v12 immutableData];
    self = [(CCItemMessage *)self initWithData:v19 error:a6];

    v17 = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  v17 = 0;
LABEL_14:

  return v17;
}

@end