@interface CCAppEnumCaseDisplayRepresentation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppEnumCaseDisplayRepresentation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppEnumCaseDisplayRepresentation)initWithTitle:(id)a3 subtitle:(id)a4 synonyms:(id)a5 error:(id *)a6;
- (NSArray)synonyms;
- (NSString)subtitle;
- (NSString)title;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppEnumCaseDisplayRepresentation

- (CCAppEnumCaseDisplayRepresentation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"title"];
    v10 = [v6 objectForKeyedSubscript:@"subtitle"];
    v11 = [v6 objectForKeyedSubscript:@"synonyms"];
    v12 = [[CCAppEnumCaseDisplayRepresentation alloc] initWithTitle:v9 subtitle:v10 synonyms:v11 error:a4];
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
  if (self->_title)
  {
    v4 = [(CCAppEnumCaseDisplayRepresentation *)self title];
    [v3 setObject:v4 forKeyedSubscript:@"title"];
  }

  if (self->_subtitle)
  {
    v5 = [(CCAppEnumCaseDisplayRepresentation *)self subtitle];
    [v3 setObject:v5 forKeyedSubscript:@"subtitle"];
  }

  if (self->_synonyms)
  {
    v6 = [(CCAppEnumCaseDisplayRepresentation *)self synonyms];
    [v3 setObject:v6 forKeyedSubscript:@"synonyms"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v9 = a3;
  if (self->_title)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42618 stringValue:self->_title];
    v9[2](v9, v5);
  }

  if (self->_subtitle)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42619 stringValue:self->_subtitle];
    v9[2](v9, v6);
  }

  v7 = v9;
  if (self->_synonyms)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42620 repeatedStringValue:self->_synonyms];
    v9[2](v9, v8);

    v7 = v9;
  }
}

- (NSArray)synonyms
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_synonyms copyItems:1];

  return v2;
}

- (NSString)subtitle
{
  v2 = [(NSString *)self->_subtitle copy];

  return v2;
}

- (NSString)title
{
  v2 = [(NSString *)self->_title copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v39 = a4;
  v40 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v40];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        if (v17 == -1 || v17 >= *&v5[*v7])
        {
          break;
        }

        v18 = *(*&v5[*v11] + v17);
        *&v5[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v21 = *&v5[*v10];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_40;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) != 3)
      {
        if (v22 == 2)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v24 = 24;
        }

        else
        {
          if (v22 != 1)
          {
            if (CCPBReaderSkipValueWithTag())
            {
              v8 = 0;
              goto LABEL_35;
            }

            v27 = objc_opt_class();
            v25 = NSStringFromClass(v27);
            v28 = *&v5[*v10];
            v8 = CCSkipFieldErrorForMessage();
LABEL_34:

LABEL_35:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_41;
          }

          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v24 = 16;
        }

        v25 = *(&self->super.super.isa + v24);
        *(&self->super.super.isa + v24) = v23;
        goto LABEL_34;
      }

      break;
    }

    v26 = CCPBReaderReadStringNoCopy();
    v25 = v26;
    if (v9)
    {
      if (!v26)
      {
LABEL_30:
        v8 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    [v9 addObject:{v25, v39}];
    goto LABEL_30;
  }

  v9 = 0;
LABEL_40:
  v8 = 0;
LABEL_41:
  v29 = [v9 copy];
  synonyms = self->_synonyms;
  self->_synonyms = v29;

  if (v8)
  {
    CCSetError();
    v31 = 0;
    v32 = v40;
  }

  else
  {
    v33 = MEMORY[0x1E6993AA8];
    v32 = v40;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = *&v5[*v33];
      v37 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }
  }

  return v31;
}

- (CCAppEnumCaseDisplayRepresentation)initWithTitle:(id)a3 subtitle:(id)a4 synonyms:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    v36 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_14;
    }

    CCPBDataWriterWriteStringField();
    if (!v11)
    {
LABEL_4:
      v16 = v15;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_18:
      v15 = v16;
LABEL_19:
      v26 = [v13 immutableData];
      self = [(CCItemMessage *)self initWithData:v26 error:a6];

      v24 = self;
      goto LABEL_21;
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
  v35 = v15;
  v25 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v25)
  {
    CCSetError();
    v24 = 0;
    v15 = v16;
    goto LABEL_21;
  }

  CCPBDataWriterWriteStringField();
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_5:
  objc_opt_class();
  v34 = v16;
  v17 = CCValidateArrayValues();
  v15 = v16;

  if (v17)
  {
    v29 = a6;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v30 + 1) + 8 * v22);
          CCPBDataWriterWriteStringField();
          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v20);
    }

    a6 = v29;
    goto LABEL_19;
  }

LABEL_14:
  CCSetError();
  v24 = 0;
LABEL_21:

  v27 = *MEMORY[0x1E69E9840];
  return v24;
}

@end