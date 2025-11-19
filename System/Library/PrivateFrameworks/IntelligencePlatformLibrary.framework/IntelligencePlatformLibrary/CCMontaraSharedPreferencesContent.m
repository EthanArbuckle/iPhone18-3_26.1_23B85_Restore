@interface CCMontaraSharedPreferencesContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCMontaraSharedPreferencesContent)initWithIsEnabled:(id)a3 setupPrompt:(id)a4 useConfirmationPrompts:(id)a5 error:(id *)a6;
- (CCMontaraSharedPreferencesContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCMontaraSharedPreferencesContent

- (CCMontaraSharedPreferencesContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"isEnabled"];
    v10 = [v6 objectForKeyedSubscript:@"setupPrompt"];
    v11 = [v6 objectForKeyedSubscript:@"useConfirmationPrompts"];
    v12 = [[CCMontaraSharedPreferencesContent alloc] initWithIsEnabled:v9 setupPrompt:v10 useConfirmationPrompts:v11 error:a4];
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
  if (self->_hasIsEnabled)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCMontaraSharedPreferencesContent isEnabled](self, "isEnabled")}];
    [v3 setObject:v4 forKeyedSubscript:@"isEnabled"];
  }

  if (self->_hasSetupPrompt)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCMontaraSharedPreferencesContent setupPrompt](self, "setupPrompt")}];
    [v3 setObject:v5 forKeyedSubscript:@"setupPrompt"];
  }

  if (self->_hasUseConfirmationPrompts)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCMontaraSharedPreferencesContent useConfirmationPrompts](self, "useConfirmationPrompts")}];
    [v3 setObject:v6 forKeyedSubscript:@"useConfirmationPrompts"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  if (self->_hasIsEnabled)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:44531 BOOLValue:self->_isEnabled];
    v8[2](v8, v5);
  }

  if (self->_hasSetupPrompt)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:44532 BOOLValue:self->_setupPrompt];
    v8[2](v8, v6);
  }

  if (self->_hasUseConfirmationPrompts)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:44533 BOOLValue:self->_useConfirmationPrompts];
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
    goto LABEL_76;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v59 = self;
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
            goto LABEL_77;
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
        goto LABEL_77;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 1)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          v41 = *v8;
          v42 = *&v7[v41];
          if (v42 == -1 || v42 >= *&v7[*v9])
          {
            break;
          }

          v43 = *(*&v7[*v12] + v42);
          *&v7[v41] = v42 + 1;
          v40 |= (v43 & 0x7F) << v38;
          if ((v43 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          v38 += 7;
          v20 = v39++ >= 9;
          if (v20)
          {
            v44 = 0;
            goto LABEL_62;
          }
        }

        *&v7[*v10] = 1;
LABEL_56:
        if (*&v7[*v10])
        {
          v47 = 1;
        }

        else
        {
          v47 = v40 == 0;
        }

        v44 = !v47;
LABEL_62:
        v11 = 0;
        self->_isEnabled = v44;
        v46 = 19;
      }

      else if (v23 == 2)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v34 = *v8;
          v35 = *&v7[v34];
          if (v35 == -1 || v35 >= *&v7[*v9])
          {
            break;
          }

          v36 = *(*&v7[*v12] + v35);
          *&v7[v34] = v35 + 1;
          v33 |= (v36 & 0x7F) << v31;
          if ((v36 & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v31 += 7;
          v20 = v32++ >= 9;
          if (v20)
          {
            v37 = 0;
            goto LABEL_54;
          }
        }

        *&v7[*v10] = 1;
LABEL_48:
        if (*&v7[*v10])
        {
          v45 = 1;
        }

        else
        {
          v45 = v33 == 0;
        }

        v37 = !v45;
LABEL_54:
        v11 = 0;
        self->_setupPrompt = v37;
        v46 = 20;
      }

      else
      {
        if (v23 != 3)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v11 = 0;
          }

          else
          {
            v49 = objc_opt_class();
            NSStringFromClass(v49);
            v50 = a4;
            v52 = v51 = v6;
            v53 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            v6 = v51;
            a4 = v50;
            self = v59;
          }

LABEL_73:
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
          if (v28 == -1 || v28 >= *&v7[*v9])
          {
            break;
          }

          v29 = *(*&v7[*v12] + v28);
          *&v7[v27] = v28 + 1;
          v26 |= (v29 & 0x7F) << v24;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_64;
          }

          v24 += 7;
          v20 = v25++ >= 9;
          if (v20)
          {
            v30 = 0;
            goto LABEL_70;
          }
        }

        *&v7[*v10] = 1;
LABEL_64:
        if (*&v7[*v10])
        {
          v48 = 1;
        }

        else
        {
          v48 = v26 == 0;
        }

        v30 = !v48;
LABEL_70:
        v11 = 0;
        self->_useConfirmationPrompts = v30;
        v46 = 21;
      }

      *(&self->super.super.isa + v46) = 1;
      goto LABEL_73;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_78;
  }

LABEL_76:
  if (!*&v7[*v10])
  {
    v57 = 1;
    goto LABEL_80;
  }

LABEL_77:
  v54 = objc_opt_class();
  v11 = NSStringFromClass(v54);
  v55 = *&v7[*v10];
  v56 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_78:
  v57 = 0;
LABEL_80:

  return v57;
}

- (CCMontaraSharedPreferencesContent)initWithIsEnabled:(id)a3 setupPrompt:(id)a4 useConfirmationPrompts:(id)a5 error:(id *)a6
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
      goto LABEL_7;
    }

    [v10 BOOLValue];
    CCPBDataWriterWriteBOOLField();
    if (!v11)
    {
LABEL_4:
      v16 = v15;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = v16;
      goto LABEL_12;
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
  v19 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v19)
  {
    CCSetError();
    v18 = 0;
    v15 = v16;
    goto LABEL_14;
  }

  [v11 BOOLValue];
  CCPBDataWriterWriteBOOLField();
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    [v12 BOOLValue];
    CCPBDataWriterWriteBOOLField();
LABEL_12:
    v20 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v20 error:a6];

    v18 = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  v18 = 0;
LABEL_14:

  return v18;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 + 21006) > 3u)
  {
    return 0;
  }

  else
  {
    return off_1E73E9530[(a3 + 21006)];
  }
}

@end