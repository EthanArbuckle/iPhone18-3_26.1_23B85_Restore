@interface CCAppShortcutEntityContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppShortcutEntityContent)initWithEntityTitle:(id)a3 entityInstanceIdentifier:(id)a4 entityTypeIdentifier:(id)a5 providerClass:(id)a6 entitySynonyms:(id)a7 error:(id *)a8;
- (CCAppShortcutEntityContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSArray)entitySynonyms;
- (NSString)entityInstanceIdentifier;
- (NSString)entityTitle;
- (NSString)entityTypeIdentifier;
- (NSString)providerClass;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppShortcutEntityContent

- (CCAppShortcutEntityContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"entityTitle"];
    v10 = [v6 objectForKeyedSubscript:@"entityInstanceIdentifier"];
    v11 = [v6 objectForKeyedSubscript:@"entityTypeIdentifier"];
    v12 = [v6 objectForKeyedSubscript:@"providerClass"];
    v13 = [v6 objectForKeyedSubscript:@"entitySynonyms"];
    v14 = [[CCAppShortcutEntityContent alloc] initWithEntityTitle:v9 entityInstanceIdentifier:v10 entityTypeIdentifier:v11 providerClass:v12 entitySynonyms:v13 error:a4];
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
  if (self->_entityTitle)
  {
    v4 = [(CCAppShortcutEntityContent *)self entityTitle];
    [v3 setObject:v4 forKeyedSubscript:@"entityTitle"];
  }

  if (self->_entityInstanceIdentifier)
  {
    v5 = [(CCAppShortcutEntityContent *)self entityInstanceIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"entityInstanceIdentifier"];
  }

  if (self->_entityTypeIdentifier)
  {
    v6 = [(CCAppShortcutEntityContent *)self entityTypeIdentifier];
    [v3 setObject:v6 forKeyedSubscript:@"entityTypeIdentifier"];
  }

  if (self->_providerClass)
  {
    v7 = [(CCAppShortcutEntityContent *)self providerClass];
    [v3 setObject:v7 forKeyedSubscript:@"providerClass"];
  }

  if (self->_entitySynonyms)
  {
    v8 = [(CCAppShortcutEntityContent *)self entitySynonyms];
    [v3 setObject:v8 forKeyedSubscript:@"entitySynonyms"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v11 = a3;
  if (self->_entityTitle)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7825 stringValue:self->_entityTitle];
    v11[2](v11, v5);
  }

  if (self->_entityInstanceIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7826 stringValue:self->_entityInstanceIdentifier];
    v11[2](v11, v6);
  }

  if (self->_entityTypeIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7827 stringValue:self->_entityTypeIdentifier];
    v11[2](v11, v7);
  }

  if (self->_providerClass)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7828 stringValue:self->_providerClass];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_entitySynonyms)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7830 repeatedStringValue:self->_entitySynonyms];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSArray)entitySynonyms
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_entitySynonyms copyItems:1];

  return v2;
}

- (NSString)providerClass
{
  v2 = [(NSString *)self->_providerClass copy];

  return v2;
}

- (NSString)entityTypeIdentifier
{
  v2 = [(NSString *)self->_entityTypeIdentifier copy];

  return v2;
}

- (NSString)entityInstanceIdentifier
{
  v2 = [(NSString *)self->_entityInstanceIdentifier copy];

  return v2;
}

- (NSString)entityTitle
{
  v2 = [(NSString *)self->_entityTitle copy];

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
        goto LABEL_45;
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
            goto LABEL_44;
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
        goto LABEL_44;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v25 = 16;
        }

        else
        {
          if (v22 != 2)
          {
LABEL_40:
            if (CCPBReaderSkipValueWithTag())
            {
              v8 = 0;
LABEL_38:
              if (*&v5[*v6] < *&v5[*v7])
              {
                continue;
              }

              goto LABEL_45;
            }

            v26 = objc_opt_class();
            v23 = NSStringFromClass(v26);
            v27 = *&v5[*v10];
            v8 = CCSkipFieldErrorForMessage();
LABEL_37:

            goto LABEL_38;
          }

          v24 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v25 = 24;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            v24 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v25 = 32;
            break;
          case 4:
            v24 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v25 = 40;
            break;
          case 5:
            v23 = CCPBReaderReadStringNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            if (v23)
            {
              [v9 addObject:v23];
            }

            v8 = 0;
            goto LABEL_37;
          default:
            goto LABEL_40;
        }
      }

      break;
    }

    v23 = *(&self->super.super.isa + v25);
    *(&self->super.super.isa + v25) = v24;
    goto LABEL_37;
  }

  v9 = 0;
LABEL_44:
  v8 = 0;
LABEL_45:
  v28 = [v9 copy];
  entitySynonyms = self->_entitySynonyms;
  self->_entitySynonyms = v28;

  if (v8)
  {
    CCSetError();
    v30 = 0;
    v31 = v39;
  }

  else
  {
    v32 = MEMORY[0x1E6993AA8];
    v31 = v39;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = *&v5[*v32];
      v36 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  return v30;
}

- (CCAppShortcutEntityContent)initWithEntityTitle:(id)a3 entityInstanceIdentifier:(id)a4 entityTypeIdentifier:(id)a5 providerClass:(id)a6 entitySynonyms:(id)a7 error:(id *)a8
{
  v49 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_opt_new();
  if (!v13)
  {
    v20 = 0;
LABEL_5:
    v37 = self;
    if (v14)
    {
      objc_opt_class();
      v46 = v20;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v22 = v20;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_12;
      }

      CCPBDataWriterWriteStringField();
      if (!v15)
      {
LABEL_8:
        v20 = v22;
        if (v16)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
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
    v45 = v22;
    v25 = CCValidateIsInstanceOfExpectedClass();
    v20 = v22;

    if (!v25)
    {
LABEL_28:
      CCSetError();
      v24 = 0;
      goto LABEL_29;
    }

    CCPBDataWriterWriteStringField();
    if (v16)
    {
LABEL_9:
      objc_opt_class();
      v44 = v20;
      v23 = CCValidateIsInstanceOfExpectedClass();
      v22 = v20;

      if (v23)
      {
        CCPBDataWriterWriteStringField();
        if (!v17)
        {
LABEL_11:
          v20 = v22;
LABEL_27:
          v33 = [v18 immutableData];
          self = [(CCItemMessage *)v37 initWithData:v33 error:a8];

          v24 = self;
          goto LABEL_30;
        }

        goto LABEL_18;
      }

LABEL_12:
      CCSetError();
      v24 = 0;
      v20 = v22;
LABEL_29:
      self = v37;
      goto LABEL_30;
    }

LABEL_17:
    v22 = v20;
    if (!v17)
    {
      goto LABEL_11;
    }

LABEL_18:
    objc_opt_class();
    v43 = v22;
    v26 = CCValidateArrayValues();
    v20 = v22;

    if (v26)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v36 = v17;
      v27 = v17;
      v28 = [v27 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v40;
        do
        {
          v31 = 0;
          do
          {
            if (*v40 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v39 + 1) + 8 * v31);
            CCPBDataWriterWriteStringField();
            ++v31;
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v39 objects:v48 count:16];
        }

        while (v29);
      }

      v17 = v36;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  objc_opt_class();
  v47 = 0;
  v19 = CCValidateIsInstanceOfExpectedClass();
  v20 = 0;
  if (v19)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v24 = 0;
LABEL_30:

  v34 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 - 7822) > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E6DE8 + (a3 - 7822));
  }
}

@end