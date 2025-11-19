@interface CCToolKitToolTypedValuePrimitiveValueDecimal
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueDecimal)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueDecimal)initWithSign:(unsigned int)a3 exponent:(id)a4 isCompact:(id)a5 length:(id)a6 mantissa:(id)a7 error:(id *)a8;
- (CCToolKitToolTypedValuePrimitiveValueDecimalMantissa)mantissa;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueDecimal

- (CCToolKitToolTypedValuePrimitiveValueDecimal)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v24[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v23 = self;
    v9 = [v6 objectForKeyedSubscript:@"sign"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"exponent"];
    v14 = [v6 objectForKeyedSubscript:@"isCompact"];
    v15 = [v6 objectForKeyedSubscript:@"length"];
    v16 = [v6 objectForKeyedSubscript:@"mantissa"];
    if (v16)
    {
      v17 = v16;
      v22 = v11;
      v24[0] = 0;
      v18 = [[CCToolKitToolTypedValuePrimitiveValueDecimalMantissa alloc] initWithJSONDictionary:v16 error:v24];
      v19 = v24[0];
      v20 = v19;
      if (!v18 || v19)
      {
        CCSetError();

        v12 = 0;
        goto LABEL_13;
      }

      v11 = v22;
    }

    else
    {
      v18 = 0;
    }

    v12 = [[CCToolKitToolTypedValuePrimitiveValueDecimal alloc] initWithSign:v11 exponent:v13 isCompact:v14 length:v15 mantissa:v18 error:a4];
    v17 = v18;
LABEL_13:

    self = v23;
    goto LABEL_14;
  }

  CCSetError();
  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValueDecimal sign](self, "sign")}];
  [v3 setObject:v4 forKeyedSubscript:@"sign"];

  if (self->_hasExponent)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCToolKitToolTypedValuePrimitiveValueDecimal exponent](self, "exponent")}];
    [v3 setObject:v5 forKeyedSubscript:@"exponent"];
  }

  if (self->_hasIsCompact)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolTypedValuePrimitiveValueDecimal isCompact](self, "isCompact")}];
    [v3 setObject:v6 forKeyedSubscript:@"isCompact"];
  }

  if (self->_hasLength)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValueDecimal length](self, "length")}];
    [v3 setObject:v7 forKeyedSubscript:@"length"];
  }

  if (self->_mantissa)
  {
    v8 = [(CCToolKitToolTypedValuePrimitiveValueDecimal *)self mantissa];
    v9 = [v8 jsonDictionary];
    [v3 setObject:v9 forKeyedSubscript:@"mantissa"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v13 = a3;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_sign];
  v13[2](v13, v7);

  if (self->_hasExponent)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int32Value:self->_exponent];
    v13[2](v13, v8);
  }

  if (self->_hasIsCompact)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 BOOLValue:self->_isCompact];
    v13[2](v13, v9);
  }

  if (self->_hasLength)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 uint32Value:self->_length];
    v13[2](v13, v10);
  }

  v11 = v13;
  if (self->_mantissa)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_mantissa];
    v13[2](v13, v12);

    v11 = v13;
  }
}

- (CCToolKitToolTypedValuePrimitiveValueDecimalMantissa)mantissa
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueDecimalMantissa *)self->_mantissa copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v66 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v66];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  v8 = MEMORY[0x1E6993AA8];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_84;
  }

  v9 = 0;
  v10 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v5[*v8])
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 0;
    }

    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = *v6;
        v16 = *&v5[v15];
        v17 = v16 + 1;
        if (v16 == -1 || v17 > *&v5[*v7])
        {
          break;
        }

        v18 = *(*&v5[*v10] + v16);
        *&v5[v15] = v17;
        v14 |= (v18 & 0x7F) << v12;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v12 += 7;
        v19 = v13++ >= 9;
        if (v19)
        {
          v20 = 0;
          if (*&v5[*v8])
          {
            goto LABEL_85;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v8] = 1;
LABEL_17:
      v21 = *&v5[*v8];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v14;
      }

      if (v21)
      {
        goto LABEL_85;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) <= 3)
      {
        if (v22 == 1)
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          while (1)
          {
            v52 = *v6;
            v53 = *&v5[v52];
            v54 = v53 + 1;
            if (v53 == -1 || v54 > *&v5[*v7])
            {
              break;
            }

            v55 = *(*&v5[*v10] + v53);
            *&v5[v52] = v54;
            v51 |= (v55 & 0x7F) << v49;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_67;
            }

            v49 += 7;
            v19 = v50++ >= 9;
            if (v19)
            {
              LODWORD(v51) = 0;
              goto LABEL_69;
            }
          }

          *&v5[*v8] = 1;
LABEL_67:
          if (*&v5[*v8])
          {
            LODWORD(v51) = 0;
          }

LABEL_69:
          v9 = 0;
          self->_sign = v51;
LABEL_81:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          break;
        }

        if (v22 == 2)
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

            v36 = *(*&v5[*v10] + v34);
            *&v5[v33] = v35;
            v32 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              goto LABEL_75;
            }

            v30 += 7;
            v19 = v31++ >= 9;
            if (v19)
            {
              LODWORD(v32) = 0;
              goto LABEL_77;
            }
          }

          *&v5[*v8] = 1;
LABEL_75:
          if (*&v5[*v8])
          {
            LODWORD(v32) = 0;
          }

LABEL_77:
          v9 = 0;
          self->_exponent = v32;
          v57 = 17;
          goto LABEL_78;
        }
      }

      else
      {
        switch(v22)
        {
          case 4:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            while (1)
            {
              v40 = *v6;
              v41 = *&v5[v40];
              v42 = v41 + 1;
              if (v41 == -1 || v42 > *&v5[*v7])
              {
                break;
              }

              v43 = *(*&v5[*v10] + v41);
              *&v5[v40] = v42;
              v39 |= (v43 & 0x7F) << v37;
              if ((v43 & 0x80) == 0)
              {
                goto LABEL_59;
              }

              v37 += 7;
              v19 = v38++ >= 9;
              if (v19)
              {
                v44 = 0;
                goto LABEL_65;
              }
            }

            *&v5[*v8] = 1;
LABEL_59:
            if (*&v5[*v8])
            {
              v56 = 1;
            }

            else
            {
              v56 = v39 == 0;
            }

            v44 = !v56;
LABEL_65:
            v9 = 0;
            self->_isCompact = v44;
            v57 = 18;
            goto LABEL_78;
          case 6:
            v45 = [CCToolKitToolTypedValuePrimitiveValueDecimalMantissa alloc];
            v46 = CCPBReaderReadDataNoCopy();
            v67 = 0;
            v47 = [(CCItemMessage *)v45 initWithData:v46 error:&v67];
            v9 = v67;
            mantissa = self->_mantissa;
            self->_mantissa = v47;

LABEL_80:
            goto LABEL_81;
          case 5:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              v26 = *v6;
              v27 = *&v5[v26];
              v28 = v27 + 1;
              if (v27 == -1 || v28 > *&v5[*v7])
              {
                break;
              }

              v29 = *(*&v5[*v10] + v27);
              *&v5[v26] = v28;
              v25 |= (v29 & 0x7F) << v23;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_71;
              }

              v23 += 7;
              v19 = v24++ >= 9;
              if (v19)
              {
                LODWORD(v25) = 0;
                goto LABEL_73;
              }
            }

            *&v5[*v8] = 1;
LABEL_71:
            if (*&v5[*v8])
            {
              LODWORD(v25) = 0;
            }

LABEL_73:
            v9 = 0;
            self->_length = v25;
            v57 = 19;
LABEL_78:
            *(&self->super.super.isa + v57) = 1;
            goto LABEL_81;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v9 = 0;
        goto LABEL_81;
      }

      v58 = objc_opt_class();
      v46 = NSStringFromClass(v58);
      v59 = *&v5[*v8];
      v9 = CCSkipFieldErrorForMessage();
      goto LABEL_80;
    }

    break;
  }

  if (v9)
  {
    CCSetError();
    goto LABEL_86;
  }

LABEL_84:
  if (!*&v5[*v8])
  {
    v9 = 0;
    v64 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v60 = objc_opt_class();
  v61 = NSStringFromClass(v60);
  v62 = *&v5[*v8];
  v63 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v9 = 0;
LABEL_86:
  v64 = 0;
LABEL_88:

  return v64;
}

- (CCToolKitToolTypedValuePrimitiveValueDecimal)initWithSign:(unsigned int)a3 exponent:(id)a4 isCompact:(id)a5 length:(id)a6 mantissa:(id)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_opt_new();
  if (!a3)
  {
    v30 = self;
    v20 = 0;
LABEL_5:
    if (v14)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v22 = v20;

      if (!IsInstanceOfExpectedClass)
      {
LABEL_11:
        CCSetError();
        v24 = 0;
        v20 = v22;
LABEL_21:
        self = v30;
        goto LABEL_24;
      }

      [v14 intValue];
      CCPBDataWriterWriteInt32Field();
      if (!v15)
      {
LABEL_8:
        v20 = v22;
        if (v16)
        {
LABEL_9:
          objc_opt_class();
          v23 = CCValidateIsInstanceOfExpectedClass();
          v22 = v20;

          if (v23)
          {
            [v16 unsignedIntValue];
            CCPBDataWriterWriteUint32Field();
LABEL_16:
            self = v30;
            if (!v17)
            {
              v20 = v22;
              goto LABEL_23;
            }

            objc_opt_class();
            v26 = CCValidateIsInstanceOfExpectedClass();
            v20 = v22;

            if (v26)
            {
              v27 = [v17 data];
              CCPBDataWriterWriteDataField();

LABEL_23:
              v28 = [v18 immutableData];
              self = [(CCItemMessage *)self initWithData:v28 error:a8];

              v24 = self;
              goto LABEL_24;
            }

            goto LABEL_19;
          }

          goto LABEL_11;
        }

LABEL_15:
        v22 = v20;
        goto LABEL_16;
      }
    }

    else
    {
      v22 = v20;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v25 = CCValidateIsInstanceOfExpectedClass();
    v20 = v22;

    if (!v25)
    {
      CCSetError();
      v24 = 0;
      goto LABEL_21;
    }

    [v15 BOOLValue];
    CCPBDataWriterWriteBOOLField();
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v19 = CCValidateEnumField();
  v20 = 0;
  if (v19)
  {
    v30 = self;
    CCPBDataWriterWriteUint32Field();
    goto LABEL_5;
  }

LABEL_19:
  CCSetError();
  v24 = 0;
LABEL_24:

  return v24;
}

@end