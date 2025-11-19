@interface CCToolKitToolTypedValuePrimitiveValueMeasurement
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueMeasurement)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueMeasurement)initWithUnit:(id)a3 value:(id)a4 unitType:(unsigned int)a5 error:(id *)a6;
- (NSString)unit;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueMeasurement

- (CCToolKitToolTypedValuePrimitiveValueMeasurement)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"unit"];
    v10 = [v6 objectForKeyedSubscript:@"value"];
    v11 = [v6 objectForKeyedSubscript:@"unitType"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 unsignedIntegerValue];
    }

    else
    {
      v13 = 0;
    }

    v14 = [[CCToolKitToolTypedValuePrimitiveValueMeasurement alloc] initWithUnit:v9 value:v10 unitType:v13 error:a4];
  }

  else
  {
    CCSetError();
    v14 = 0;
  }

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_unit)
  {
    v4 = [(CCToolKitToolTypedValuePrimitiveValueMeasurement *)self unit];
    [v3 setObject:v4 forKeyedSubscript:@"unit"];
  }

  if (self->_hasValue)
  {
    v5 = MEMORY[0x1E696AD98];
    [(CCToolKitToolTypedValuePrimitiveValueMeasurement *)self value];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"value"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValueMeasurement unitType](self, "unitType")}];
  [v3 setObject:v7 forKeyedSubscript:@"unitType"];

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v12 = v5;
  if (self->_unit)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_unit];
    v12[2](v12, v7);
  }

  if (self->_hasValue)
  {
    v8 = objc_alloc(MEMORY[0x1E69939F0]);
    v9 = *v6;
    v10 = [v8 initWithFieldType:v9 doubleValue:self->_value];
    v12[2](v12, v10);
  }

  else
  {
    v9 = *v6;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_unitType];
  v12[2](v12, v11);
}

- (NSString)unit
{
  v2 = [(NSString *)self->_unit copy];

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
    goto LABEL_47;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v48 = self;
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
          v23 = *v10;
          if (*&v7[v23])
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *v10;
      v24 = *&v7[v23];
      if (v24)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v24)
      {
        goto LABEL_48;
      }

LABEL_21:
      v25 = v22 >> 3;
      if ((v22 >> 3) == 1)
      {
        v36 = CCPBReaderReadStringNoCopy();
        unit = self->_unit;
        self->_unit = v36;
      }

      else
      {
        if (v25 == 2)
        {
          v33 = *v8;
          v34 = *&v7[v33];
          if (v34 <= 0xFFFFFFFFFFFFFFF7 && v34 + 8 <= *&v7[*v9])
          {
            v35 = *(*&v7[*v12] + v34);
            *&v7[v33] = v34 + 8;
          }

          else
          {
            *&v7[v23] = 1;
            v35 = 0.0;
          }

          v11 = 0;
          self->_value = v35;
          self->_hasValue = 1;
          goto LABEL_44;
        }

        if (v25 == 3)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            v29 = *v8;
            v30 = *&v7[v29];
            v31 = v30 + 1;
            if (v30 == -1 || v31 > *&v7[*v9])
            {
              break;
            }

            v32 = *(*&v7[*v12] + v30);
            *&v7[v29] = v31;
            v28 |= (v32 & 0x7F) << v26;
            if ((v32 & 0x80) == 0)
            {
              goto LABEL_38;
            }

            v26 += 7;
            v21 = v27++ >= 9;
            if (v21)
            {
              LODWORD(v28) = 0;
              goto LABEL_40;
            }
          }

          *&v7[*v10] = 1;
LABEL_38:
          if (*&v7[*v10])
          {
            LODWORD(v28) = 0;
          }

LABEL_40:
          v11 = 0;
          self->_unitType = v28;
LABEL_44:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v38 = objc_opt_class();
          NSStringFromClass(v38);
          v39 = a4;
          v41 = v40 = v6;
          v42 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          v6 = v40;
          a4 = v39;
          self = v48;
          goto LABEL_44;
        }
      }

      v11 = 0;
      goto LABEL_44;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_49;
  }

LABEL_47:
  if (!*&v7[*v10])
  {
    v46 = 1;
    goto LABEL_51;
  }

LABEL_48:
  v43 = objc_opt_class();
  v11 = NSStringFromClass(v43);
  v44 = *&v7[*v10];
  v45 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_49:
  v46 = 0;
LABEL_51:

  return v46;
}

- (CCToolKitToolTypedValuePrimitiveValueMeasurement)initWithUnit:(id)a3 value:(id)a4 unitType:(unsigned int)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
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
    if (!v11)
    {
LABEL_4:
      v15 = v14;
      if (a5)
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
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v15 = v14;

  if (!v18)
  {
    CCSetError();
    v17 = 0;
    v14 = v15;
    goto LABEL_14;
  }

  [v11 doubleValue];
  CCPBDataWriterWriteDoubleField();
  if (!a5)
  {
    goto LABEL_11;
  }

LABEL_5:
  v16 = CCValidateEnumField();
  v14 = v15;

  if (v16)
  {
    CCPBDataWriterWriteUint32Field();
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