@interface CCToolKitToolRestrictionContextMeasurementExpressibleAs
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolRestrictionContextMeasurementExpressibleAs)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolRestrictionContextMeasurementExpressibleAs)initWithUnit:(id)a3 unitAdjustForLocale:(id)a4 supportsNegativeNumbers:(id)a5 error:(id *)a6;
- (NSString)unit;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolRestrictionContextMeasurementExpressibleAs

- (CCToolKitToolRestrictionContextMeasurementExpressibleAs)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"unit"];
    v10 = [v6 objectForKeyedSubscript:@"unitAdjustForLocale"];
    v11 = [v6 objectForKeyedSubscript:@"supportsNegativeNumbers"];
    v12 = [[CCToolKitToolRestrictionContextMeasurementExpressibleAs alloc] initWithUnit:v9 unitAdjustForLocale:v10 supportsNegativeNumbers:v11 error:a4];
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
  if (self->_unit)
  {
    v4 = [(CCToolKitToolRestrictionContextMeasurementExpressibleAs *)self unit];
    [v3 setObject:v4 forKeyedSubscript:@"unit"];
  }

  if (self->_hasUnitAdjustForLocale)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolRestrictionContextMeasurementExpressibleAs unitAdjustForLocale](self, "unitAdjustForLocale")}];
    [v3 setObject:v5 forKeyedSubscript:@"unitAdjustForLocale"];
  }

  if (self->_hasSupportsNegativeNumbers)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolRestrictionContextMeasurementExpressibleAs supportsNegativeNumbers](self, "supportsNegativeNumbers")}];
    [v3 setObject:v6 forKeyedSubscript:@"supportsNegativeNumbers"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v10 = v5;
  if (self->_unit)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_unit];
    v10[2](v10, v7);
  }

  if (self->_hasUnitAdjustForLocale)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 BOOLValue:self->_unitAdjustForLocale];
    v10[2](v10, v8);
  }

  if (self->_hasSupportsNegativeNumbers)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 BOOLValue:self->_supportsNegativeNumbers];
    v10[2](v10, v9);
  }
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
    goto LABEL_62;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v56 = self;
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
            goto LABEL_63;
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
        goto LABEL_63;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) == 1)
      {
        v41 = CCPBReaderReadStringNoCopy();
        unit = self->_unit;
        self->_unit = v41;

        v11 = 0;
        goto LABEL_59;
      }

      if (v24 == 2)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        while (1)
        {
          v36 = *v8;
          v37 = *&v7[v36];
          v38 = v37 + 1;
          if (v37 == -1 || v38 > *&v7[*v9])
          {
            break;
          }

          v39 = *(*&v7[*v12] + v37);
          *&v7[v36] = v38;
          v35 |= (v39 & 0x7F) << v33;
          if ((v39 & 0x80) == 0)
          {
            goto LABEL_42;
          }

          v33 += 7;
          v21 = v34++ >= 9;
          if (v21)
          {
            v40 = 0;
            goto LABEL_48;
          }
        }

        *&v7[*v10] = 1;
LABEL_42:
        if (*&v7[*v10])
        {
          v43 = 1;
        }

        else
        {
          v43 = v35 == 0;
        }

        v40 = !v43;
LABEL_48:
        v11 = 0;
        self->_unitAdjustForLocale = v40;
        v44 = 18;
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
            v46 = objc_opt_class();
            NSStringFromClass(v46);
            v47 = a4;
            v49 = v48 = v6;
            v50 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            v6 = v48;
            a4 = v47;
            self = v56;
          }

LABEL_59:
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
            goto LABEL_50;
          }

          v25 += 7;
          v21 = v26++ >= 9;
          if (v21)
          {
            v32 = 0;
            goto LABEL_56;
          }
        }

        *&v7[*v10] = 1;
LABEL_50:
        if (*&v7[*v10])
        {
          v45 = 1;
        }

        else
        {
          v45 = v27 == 0;
        }

        v32 = !v45;
LABEL_56:
        v11 = 0;
        self->_supportsNegativeNumbers = v32;
        v44 = 19;
      }

      *(&self->super.super.isa + v44) = 1;
      goto LABEL_59;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_64;
  }

LABEL_62:
  if (!*&v7[*v10])
  {
    v54 = 1;
    goto LABEL_66;
  }

LABEL_63:
  v51 = objc_opt_class();
  v11 = NSStringFromClass(v51);
  v52 = *&v7[*v10];
  v53 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_64:
  v54 = 0;
LABEL_66:

  return v54;
}

- (CCToolKitToolRestrictionContextMeasurementExpressibleAs)initWithUnit:(id)a3 unitAdjustForLocale:(id)a4 supportsNegativeNumbers:(id)a5 error:(id *)a6
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
      goto LABEL_13;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v17 = v15;

    if (!v16)
    {
      CCSetError();
      v20 = 0;
      v15 = v17;
      goto LABEL_15;
    }

    [v11 BOOLValue];
    CCPBDataWriterWriteBOOLField();
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v17 = v15;
  if (v12)
  {
LABEL_10:
    objc_opt_class();
    v18 = CCValidateIsInstanceOfExpectedClass();
    v15 = v17;

    if (v18)
    {
      [v12 BOOLValue];
      CCPBDataWriterWriteBOOLField();
      goto LABEL_12;
    }

LABEL_13:
    CCSetError();
    v20 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v15 = v17;
LABEL_12:
  v19 = [v13 immutableData];
  self = [(CCItemMessage *)self initWithData:v19 error:a6];

  v20 = self;
LABEL_15:

  return v20;
}

@end