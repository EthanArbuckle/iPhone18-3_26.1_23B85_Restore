@interface CCInstalledAppContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCInstalledAppContent)initWithBundleIdentifier:(id)a3 bundleName:(id)a4 displayAppName:(id)a5 spokenName:(id)a6 alternativeAppNames:(id)a7 carPlayAlternativeDisplayName:(id)a8 spotlightName:(id)a9 providerName:(id)a10 error:(id *)a11;
- (CCInstalledAppContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSArray)alternativeAppNames;
- (NSString)bundleIdentifier;
- (NSString)bundleName;
- (NSString)carPlayAlternativeDisplayName;
- (NSString)displayAppName;
- (NSString)providerName;
- (NSString)spokenName;
- (NSString)spotlightName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCInstalledAppContent

- (CCInstalledAppContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
    v10 = [v6 objectForKeyedSubscript:@"bundleName"];
    v11 = [v6 objectForKeyedSubscript:@"displayAppName"];
    [v6 objectForKeyedSubscript:@"spokenName"];
    v12 = v19 = v8;
    v13 = [v6 objectForKeyedSubscript:@"alternativeAppNames"];
    v14 = [v6 objectForKeyedSubscript:@"carPlayAlternativeDisplayName"];
    [v6 objectForKeyedSubscript:@"spotlightName"];
    v15 = v20 = self;
    v16 = [v6 objectForKeyedSubscript:@"providerName"];
    v17 = [[CCInstalledAppContent alloc] initWithBundleIdentifier:v9 bundleName:v10 displayAppName:v11 spokenName:v12 alternativeAppNames:v13 carPlayAlternativeDisplayName:v14 spotlightName:v15 providerName:v16 error:a4];

    self = v20;
    v8 = v19;
  }

  else
  {
    CCSetError();
    v17 = 0;
  }

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_bundleIdentifier)
  {
    v4 = [(CCInstalledAppContent *)self bundleIdentifier];
    [v3 setObject:v4 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_bundleName)
  {
    v5 = [(CCInstalledAppContent *)self bundleName];
    [v3 setObject:v5 forKeyedSubscript:@"bundleName"];
  }

  if (self->_displayAppName)
  {
    v6 = [(CCInstalledAppContent *)self displayAppName];
    [v3 setObject:v6 forKeyedSubscript:@"displayAppName"];
  }

  if (self->_spokenName)
  {
    v7 = [(CCInstalledAppContent *)self spokenName];
    [v3 setObject:v7 forKeyedSubscript:@"spokenName"];
  }

  if (self->_alternativeAppNames)
  {
    v8 = [(CCInstalledAppContent *)self alternativeAppNames];
    [v3 setObject:v8 forKeyedSubscript:@"alternativeAppNames"];
  }

  if (self->_carPlayAlternativeDisplayName)
  {
    v9 = [(CCInstalledAppContent *)self carPlayAlternativeDisplayName];
    [v3 setObject:v9 forKeyedSubscript:@"carPlayAlternativeDisplayName"];
  }

  if (self->_spotlightName)
  {
    v10 = [(CCInstalledAppContent *)self spotlightName];
    [v3 setObject:v10 forKeyedSubscript:@"spotlightName"];
  }

  if (self->_providerName)
  {
    v11 = [(CCInstalledAppContent *)self providerName];
    [v3 setObject:v11 forKeyedSubscript:@"providerName"];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v14 = a3;
  if (self->_bundleIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36437 stringValue:self->_bundleIdentifier];
    v14[2](v14, v5);
  }

  if (self->_bundleName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36438 stringValue:self->_bundleName];
    v14[2](v14, v6);
  }

  if (self->_displayAppName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36439 stringValue:self->_displayAppName];
    v14[2](v14, v7);
  }

  if (self->_spokenName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36440 stringValue:self->_spokenName];
    v14[2](v14, v8);
  }

  if (self->_alternativeAppNames)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36441 repeatedStringValue:self->_alternativeAppNames];
    v14[2](v14, v9);
  }

  if (self->_carPlayAlternativeDisplayName)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36442 stringValue:self->_carPlayAlternativeDisplayName];
    v14[2](v14, v10);
  }

  if (self->_spotlightName)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36443 stringValue:self->_spotlightName];
    v14[2](v14, v11);
  }

  v12 = v14;
  if (self->_providerName)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36444 stringValue:self->_providerName];
    v14[2](v14, v13);

    v12 = v14;
  }
}

- (NSString)providerName
{
  v2 = [(NSString *)self->_providerName copy];

  return v2;
}

- (NSString)spotlightName
{
  v2 = [(NSString *)self->_spotlightName copy];

  return v2;
}

- (NSString)carPlayAlternativeDisplayName
{
  v2 = [(NSString *)self->_carPlayAlternativeDisplayName copy];

  return v2;
}

- (NSArray)alternativeAppNames
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_alternativeAppNames copyItems:1];

  return v2;
}

- (NSString)spokenName
{
  v2 = [(NSString *)self->_spokenName copy];

  return v2;
}

- (NSString)displayAppName
{
  v2 = [(NSString *)self->_displayAppName copy];

  return v2;
}

- (NSString)bundleName
{
  v2 = [(NSString *)self->_bundleName copy];

  return v2;
}

- (NSString)bundleIdentifier
{
  v2 = [(NSString *)self->_bundleIdentifier copy];

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
        goto LABEL_53;
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
            goto LABEL_52;
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
        goto LABEL_52;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            v23 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v24 = 64;
            goto LABEL_44;
          }

          if (v22 == 8)
          {
            v23 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v24 = 72;
            goto LABEL_44;
          }
        }

        else
        {
          if (v22 == 5)
          {
            v25 = CCPBReaderReadStringNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            if (v25)
            {
              [v9 addObject:v25];
            }

            v8 = 0;
            goto LABEL_45;
          }

          if (v22 == 6)
          {
            v23 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v24 = 56;
            goto LABEL_44;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v24 = 32;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v24 = 40;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v24 = 16;
          goto LABEL_44;
        }

        if (v22 == 2)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v24 = 24;
LABEL_44:
          v25 = *(&self->super.super.isa + v24);
          *(&self->super.super.isa + v24) = v23;
          goto LABEL_45;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v8 = 0;
LABEL_46:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        goto LABEL_53;
      }

      break;
    }

    v26 = objc_opt_class();
    v25 = NSStringFromClass(v26);
    v27 = *&v5[*v10];
    v8 = CCSkipFieldErrorForMessage();
LABEL_45:

    goto LABEL_46;
  }

  v9 = 0;
LABEL_52:
  v8 = 0;
LABEL_53:
  v28 = [v9 copy];
  alternativeAppNames = self->_alternativeAppNames;
  self->_alternativeAppNames = v28;

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

- (CCInstalledAppContent)initWithBundleIdentifier:(id)a3 bundleName:(id)a4 displayAppName:(id)a5 spokenName:(id)a6 alternativeAppNames:(id)a7 carPlayAlternativeDisplayName:(id)a8 spotlightName:(id)a9 providerName:(id)a10 error:(id *)a11
{
  v68 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v57 = a8;
  v21 = a9;
  v56 = a10;
  v22 = objc_opt_new();
  v54 = v16;
  if (v16)
  {
    objc_opt_class();
    v66 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v24 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v31 = v20;
      goto LABEL_15;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v24 = 0;
  }

  v53 = v21;
  if (v17)
  {
    objc_opt_class();
    v65 = v24;
    v25 = CCValidateIsInstanceOfExpectedClass();
    v26 = v24;

    if (!v25)
    {
LABEL_12:
      v28 = v17;
      v29 = v18;
      v30 = v19;
      v31 = v20;
LABEL_13:
      CCSetError();
      v32 = 0;
      v24 = v26;
LABEL_37:
      v33 = self;
      v34 = v57;
LABEL_38:
      v21 = v53;
      goto LABEL_39;
    }

    CCPBDataWriterWriteStringField();
    if (!v18)
    {
LABEL_8:
      v24 = v26;
      if (v19)
      {
        goto LABEL_9;
      }

LABEL_20:
      v26 = v24;
      if (!v20)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v26 = v24;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v64 = v26;
  v35 = CCValidateIsInstanceOfExpectedClass();
  v24 = v26;

  if (!v35)
  {
    goto LABEL_36;
  }

  CCPBDataWriterWriteStringField();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_9:
  objc_opt_class();
  v63 = v24;
  v27 = CCValidateIsInstanceOfExpectedClass();
  v26 = v24;

  if (!v27)
  {
    goto LABEL_12;
  }

  CCPBDataWriterWriteStringField();
  if (v20)
  {
LABEL_21:
    objc_opt_class();
    v62 = v26;
    v36 = CCValidateArrayValues();
    v24 = v26;

    if (v36)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v52 = v20;
      v37 = v20;
      v38 = [v37 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v59;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v59 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v58 + 1) + 8 * i);
            CCPBDataWriterWriteStringField();
          }

          v39 = [v37 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v39);
      }

      v20 = v52;
      goto LABEL_30;
    }

LABEL_36:
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    CCSetError();
    v32 = 0;
    goto LABEL_37;
  }

LABEL_11:
  v24 = v26;
LABEL_30:
  if (v57)
  {
    v28 = v17;
    v29 = v18;
    v30 = v19;
    objc_opt_class();
    v43 = CCValidateIsInstanceOfExpectedClass();
    v34 = v57;
    v44 = v24;

    if (!v43)
    {
      v31 = v20;
      CCSetError();
      v32 = 0;
      v24 = v44;
      v33 = self;
      goto LABEL_38;
    }

    v24 = v44;
    CCPBDataWriterWriteStringField();
    v19 = v30;
    v18 = v29;
    v17 = v28;
  }

  v21 = v53;
  if (!v53)
  {
    v31 = v20;
    goto LABEL_42;
  }

  v31 = v20;
  objc_opt_class();
  v45 = v24;
  v46 = CCValidateIsInstanceOfExpectedClass();
  v24 = v24;

  if (v46)
  {
    CCPBDataWriterWriteStringField();
LABEL_42:
    v49 = self;
    v28 = v17;
    if (!v56)
    {
      v29 = v18;
      v30 = v19;
      goto LABEL_47;
    }

    v29 = v18;
    objc_opt_class();
    v50 = CCValidateIsInstanceOfExpectedClass();
    v26 = v24;

    if (v50)
    {
      v30 = v19;
      CCPBDataWriterWriteStringField();
      v24 = v26;
      v49 = self;
      v21 = v53;
LABEL_47:
      v51 = [v22 immutableData];
      v33 = [(CCItemMessage *)v49 initWithData:v51 error:a11];

      v32 = v33;
      goto LABEL_16;
    }

    v30 = v19;
    goto LABEL_13;
  }

  v28 = v17;
  v29 = v18;
  v30 = v19;
LABEL_15:
  CCSetError();
  v32 = 0;
  v33 = self;
LABEL_16:
  v34 = v57;
LABEL_39:

  v47 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 + 29102) > 0xAu)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E7690 + (a3 + 29102));
  }
}

@end