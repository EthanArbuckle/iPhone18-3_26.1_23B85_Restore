@interface CCToolKitToolComparisonPredicateComparisonPair
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolComparisonPredicateComparisonPair)initWithFirst:(id)a3 second:(id)a4 error:(id *)a5;
- (CCToolKitToolComparisonPredicateComparisonPair)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValue)first;
- (CCToolKitToolTypedValue)second;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolComparisonPredicateComparisonPair

- (CCToolKitToolComparisonPredicateComparisonPair)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v20[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"first"];
    if (v9)
    {
      v20[0] = 0;
      v10 = [[CCToolKitToolTypedValue alloc] initWithJSONDictionary:v9 error:v20];
      v11 = v20[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();

        goto LABEL_15;
      }

      v9 = v10;
    }

    v13 = [v6 objectForKeyedSubscript:@"second"];
    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v12 = v13;
    v19 = 0;
    v14 = [[CCToolKitToolTypedValue alloc] initWithJSONDictionary:v13 error:&v19];
    v15 = v19;
    v16 = v15;
    if (v14 && !v15)
    {

LABEL_13:
      v17 = [[CCToolKitToolComparisonPredicateComparisonPair alloc] initWithFirst:v9 second:v14 error:a4];
      v12 = v14;
LABEL_16:

      goto LABEL_17;
    }

    CCSetError();

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  CCSetError();
  v17 = 0;
LABEL_17:

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_first)
  {
    v4 = [(CCToolKitToolComparisonPredicateComparisonPair *)self first];
    v5 = [v4 jsonDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"first"];
  }

  if (self->_second)
  {
    v6 = [(CCToolKitToolComparisonPredicateComparisonPair *)self second];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"second"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_first)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_first];
    v8[2](v8, v6);
  }

  if (self->_second)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 subMessageValue:self->_second];
    v8[2](v8, v7);
  }
}

- (CCToolKitToolTypedValue)second
{
  v2 = [(CCToolKitToolTypedValue *)self->_second copy];

  return v2;
}

- (CCToolKitToolTypedValue)first
{
  v2 = [(CCToolKitToolTypedValue *)self->_first copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_34;
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
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_35;
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
        goto LABEL_35;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v27 = [CCToolKitToolTypedValue alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v37 = 0;
        v25 = [(CCItemMessage *)v27 initWithData:v24 error:&v37];
        v10 = v37;
        v26 = 24;
      }

      else
      {
        if ((v21 >> 3) != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
LABEL_27:
            if (*&v6[*v7] < *&v6[*v8])
            {
              continue;
            }

            break;
          }

          v29 = objc_opt_class();
          v24 = NSStringFromClass(v29);
          v30 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_26:

          goto LABEL_27;
        }

        v23 = [CCToolKitToolTypedValue alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v38 = 0;
        v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v38];
        v10 = v38;
        v26 = 16;
      }

      v28 = *(&self->super.super.isa + v26);
      *(&self->super.super.isa + v26) = v25;

      goto LABEL_26;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_36;
  }

LABEL_34:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v35 = 1;
    goto LABEL_38;
  }

LABEL_35:
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = *&v6[*v9];
  v34 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_36:
  v35 = 0;
LABEL_38:

  return v35;
}

- (CCToolKitToolComparisonPredicateComparisonPair)initWithFirst:(id)a3 second:(id)a4 error:(id *)a5
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
    v20 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v18 = 0;
      v12 = v15;
      goto LABEL_11;
    }

    v16 = [v9 data];
    CCPBDataWriterWriteDataField();

    v12 = v15;
    goto LABEL_8;
  }

  objc_opt_class();
  v11 = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    v18 = 0;
    goto LABEL_11;
  }

  v13 = [v8 data];
  CCPBDataWriterWriteDataField();

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_8:
  v17 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v17 error:a5];

  v18 = self;
LABEL_11:

  return v18;
}

@end