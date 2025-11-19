@interface CCToolKitToolContentLocalizedStringTable
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolContentLocalizedStringTable)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolContentLocalizedStringTable)initWithLocale:(id)a3 entries:(id)a4 error:(id *)a5;
- (NSArray)entries;
- (NSString)locale;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolContentLocalizedStringTable

- (CCToolKitToolContentLocalizedStringTable)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v36 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"locale"];
    v10 = [v6 objectForKeyedSubscript:@"entries"];
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      v35 = v8;
      v12 = CCValidateIsInstanceOfExpectedClass();
      v13 = v8;

      if ((v12 & 1) == 0)
      {
        CCSetError();
        v25 = 0;
        goto LABEL_21;
      }

      v28 = v9;
      v29 = self;
      v14 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v11;
      v15 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v11);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            v20 = [CCToolKitToolContentLocalizedStringTableEntriesEntry alloc];
            v30 = 0;
            v21 = [(CCToolKitToolContentLocalizedStringTableEntriesEntry *)v20 initWithJSONDictionary:v19 error:&v30];
            v22 = v30;
            if (v21)
            {
              v23 = v22 == 0;
            }

            else
            {
              v23 = 0;
            }

            if (!v23)
            {
              v24 = v22;
              CCSetError();

              v25 = 0;
              v9 = v28;
              self = v29;
              goto LABEL_21;
            }

            [v14 addObject:v21];
          }

          v16 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v16);
      }

      v9 = v28;
      self = v29;
    }

    else
    {
      v14 = 0;
      v13 = v8;
    }

    v25 = [[CCToolKitToolContentLocalizedStringTable alloc] initWithLocale:v9 entries:v14 error:a4];
    v11 = v14;
LABEL_21:

    v8 = v13;
    goto LABEL_22;
  }

  CCSetError();
  v25 = 0;
LABEL_22:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)jsonDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_locale)
  {
    v4 = [(CCToolKitToolContentLocalizedStringTable *)self locale];
    [v3 setObject:v4 forKeyedSubscript:@"locale"];
  }

  if (self->_entries)
  {
    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(CCToolKitToolContentLocalizedStringTable *)self entries];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) jsonDictionary];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"entries"];
  }

  v12 = [v3 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_locale)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_locale];
    v8[2](v8, v6);
  }

  if (self->_entries)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_entries];
    v8[2](v8, v7);
  }
}

- (NSArray)entries
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_entries copyItems:1];

  return v2;
}

- (NSString)locale
{
  v2 = [(NSString *)self->_locale copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v39 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v39];
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
        goto LABEL_38;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_37;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
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
        goto LABEL_37;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        locale = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v25 = [CCToolKitToolContentLocalizedStringTableEntriesEntry alloc];
        v40 = 0;
        v26 = [(CCItemMessage *)v25 initWithData:locale error:&v40];
        v8 = v40;
        if (!v8 && v26)
        {
          [v9 addObject:v26];
        }
      }

      else if ((v21 >> 3) == 1)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v8 = 0;
        locale = self->_locale;
        self->_locale = v23;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_34;
        }

        v27 = objc_opt_class();
        locale = NSStringFromClass(v27);
        v28 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
      }

LABEL_34:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }

      goto LABEL_38;
    }
  }

  v9 = 0;
LABEL_37:
  v8 = 0;
LABEL_38:
  v29 = [v9 copy];
  entries = self->_entries;
  self->_entries = v29;

  if (v8)
  {
    CCSetError();
    v31 = 0;
    v32 = v39;
  }

  else
  {
    v33 = MEMORY[0x1E6993AA8];
    v32 = v39;
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

- (CCToolKitToolContentLocalizedStringTable)initWithLocale:(id)a3 entries:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if (!v8)
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    v30 = v12;
    v13 = CCValidateArrayValues();
    v14 = v12;

    if (!v13)
    {
      CCSetError();
      v22 = 0;
      v12 = v14;
      goto LABEL_18;
    }

    v25 = v14;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v26 + 1) + 8 * v19) data];
          CCPBDataWriterWriteDataField();

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v17);
    }

    v12 = v25;
    goto LABEL_15;
  }

  objc_opt_class();
  v31 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    v22 = 0;
    goto LABEL_18;
  }

  CCPBDataWriterWriteStringField();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_15:
  v21 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v21 error:a5];

  v22 = self;
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

@end