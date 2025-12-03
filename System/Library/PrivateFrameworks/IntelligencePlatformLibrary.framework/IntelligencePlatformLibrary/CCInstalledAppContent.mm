@interface CCInstalledAppContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCInstalledAppContent)initWithBundleIdentifier:(id)identifier bundleName:(id)name displayAppName:(id)appName spokenName:(id)spokenName alternativeAppNames:(id)names carPlayAlternativeDisplayName:(id)displayName spotlightName:(id)spotlightName providerName:(id)self0 error:(id *)self1;
- (CCInstalledAppContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSArray)alternativeAppNames;
- (NSString)bundleIdentifier;
- (NSString)bundleName;
- (NSString)carPlayAlternativeDisplayName;
- (NSString)displayAppName;
- (NSString)providerName;
- (NSString)spokenName;
- (NSString)spotlightName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCInstalledAppContent

- (CCInstalledAppContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"bundleName"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"displayAppName"];
    [dictionaryCopy objectForKeyedSubscript:@"spokenName"];
    v12 = v19 = v8;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"alternativeAppNames"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"carPlayAlternativeDisplayName"];
    [dictionaryCopy objectForKeyedSubscript:@"spotlightName"];
    v15 = v20 = self;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"providerName"];
    v17 = [[CCInstalledAppContent alloc] initWithBundleIdentifier:v9 bundleName:v10 displayAppName:v11 spokenName:v12 alternativeAppNames:v13 carPlayAlternativeDisplayName:v14 spotlightName:v15 providerName:v16 error:error];

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
    bundleIdentifier = [(CCInstalledAppContent *)self bundleIdentifier];
    [v3 setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_bundleName)
  {
    bundleName = [(CCInstalledAppContent *)self bundleName];
    [v3 setObject:bundleName forKeyedSubscript:@"bundleName"];
  }

  if (self->_displayAppName)
  {
    displayAppName = [(CCInstalledAppContent *)self displayAppName];
    [v3 setObject:displayAppName forKeyedSubscript:@"displayAppName"];
  }

  if (self->_spokenName)
  {
    spokenName = [(CCInstalledAppContent *)self spokenName];
    [v3 setObject:spokenName forKeyedSubscript:@"spokenName"];
  }

  if (self->_alternativeAppNames)
  {
    alternativeAppNames = [(CCInstalledAppContent *)self alternativeAppNames];
    [v3 setObject:alternativeAppNames forKeyedSubscript:@"alternativeAppNames"];
  }

  if (self->_carPlayAlternativeDisplayName)
  {
    carPlayAlternativeDisplayName = [(CCInstalledAppContent *)self carPlayAlternativeDisplayName];
    [v3 setObject:carPlayAlternativeDisplayName forKeyedSubscript:@"carPlayAlternativeDisplayName"];
  }

  if (self->_spotlightName)
  {
    spotlightName = [(CCInstalledAppContent *)self spotlightName];
    [v3 setObject:spotlightName forKeyedSubscript:@"spotlightName"];
  }

  if (self->_providerName)
  {
    providerName = [(CCInstalledAppContent *)self providerName];
    [v3 setObject:providerName forKeyedSubscript:@"providerName"];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_bundleIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36437 stringValue:self->_bundleIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_bundleName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36438 stringValue:self->_bundleName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_displayAppName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36439 stringValue:self->_displayAppName];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_spokenName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36440 stringValue:self->_spokenName];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_alternativeAppNames)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36441 repeatedStringValue:self->_alternativeAppNames];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_carPlayAlternativeDisplayName)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36442 stringValue:self->_carPlayAlternativeDisplayName];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_spotlightName)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36443 stringValue:self->_spotlightName];
    blockCopy[2](blockCopy, v11);
  }

  v12 = blockCopy;
  if (self->_providerName)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:36444 stringValue:self->_providerName];
    blockCopy[2](blockCopy, v13);

    v12 = blockCopy;
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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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
    v31 = dataCopy;
  }

  else
  {
    v32 = MEMORY[0x1E6993AA8];
    v31 = dataCopy;
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

- (CCInstalledAppContent)initWithBundleIdentifier:(id)identifier bundleName:(id)name displayAppName:(id)appName spokenName:(id)spokenName alternativeAppNames:(id)names carPlayAlternativeDisplayName:(id)displayName spotlightName:(id)spotlightName providerName:(id)self0 error:(id *)self1
{
  v68 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  appNameCopy = appName;
  spokenNameCopy = spokenName;
  namesCopy = names;
  displayNameCopy = displayName;
  spotlightNameCopy = spotlightName;
  providerNameCopy = providerName;
  v22 = objc_opt_new();
  v54 = identifierCopy;
  if (identifierCopy)
  {
    objc_opt_class();
    v66 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v24 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      v28 = nameCopy;
      v29 = appNameCopy;
      v30 = spokenNameCopy;
      v31 = namesCopy;
      goto LABEL_15;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v24 = 0;
  }

  v53 = spotlightNameCopy;
  if (nameCopy)
  {
    objc_opt_class();
    v65 = v24;
    v25 = CCValidateIsInstanceOfExpectedClass();
    v26 = v24;

    if (!v25)
    {
LABEL_12:
      v28 = nameCopy;
      v29 = appNameCopy;
      v30 = spokenNameCopy;
      v31 = namesCopy;
LABEL_13:
      CCSetError();
      v32 = 0;
      v24 = v26;
LABEL_37:
      selfCopy5 = self;
      v34 = displayNameCopy;
LABEL_38:
      spotlightNameCopy = v53;
      goto LABEL_39;
    }

    CCPBDataWriterWriteStringField();
    if (!appNameCopy)
    {
LABEL_8:
      v24 = v26;
      if (spokenNameCopy)
      {
        goto LABEL_9;
      }

LABEL_20:
      v26 = v24;
      if (!namesCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v26 = v24;
    if (!appNameCopy)
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
  if (!spokenNameCopy)
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
  if (namesCopy)
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
      v52 = namesCopy;
      v37 = namesCopy;
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

      namesCopy = v52;
      goto LABEL_30;
    }

LABEL_36:
    v28 = nameCopy;
    v29 = appNameCopy;
    v30 = spokenNameCopy;
    v31 = namesCopy;
    CCSetError();
    v32 = 0;
    goto LABEL_37;
  }

LABEL_11:
  v24 = v26;
LABEL_30:
  if (displayNameCopy)
  {
    v28 = nameCopy;
    v29 = appNameCopy;
    v30 = spokenNameCopy;
    objc_opt_class();
    v43 = CCValidateIsInstanceOfExpectedClass();
    v34 = displayNameCopy;
    v44 = v24;

    if (!v43)
    {
      v31 = namesCopy;
      CCSetError();
      v32 = 0;
      v24 = v44;
      selfCopy5 = self;
      goto LABEL_38;
    }

    v24 = v44;
    CCPBDataWriterWriteStringField();
    spokenNameCopy = v30;
    appNameCopy = v29;
    nameCopy = v28;
  }

  spotlightNameCopy = v53;
  if (!v53)
  {
    v31 = namesCopy;
    goto LABEL_42;
  }

  v31 = namesCopy;
  objc_opt_class();
  v45 = v24;
  v46 = CCValidateIsInstanceOfExpectedClass();
  v24 = v24;

  if (v46)
  {
    CCPBDataWriterWriteStringField();
LABEL_42:
    selfCopy4 = self;
    v28 = nameCopy;
    if (!providerNameCopy)
    {
      v29 = appNameCopy;
      v30 = spokenNameCopy;
      goto LABEL_47;
    }

    v29 = appNameCopy;
    objc_opt_class();
    v50 = CCValidateIsInstanceOfExpectedClass();
    v26 = v24;

    if (v50)
    {
      v30 = spokenNameCopy;
      CCPBDataWriterWriteStringField();
      v24 = v26;
      selfCopy4 = self;
      spotlightNameCopy = v53;
LABEL_47:
      immutableData = [v22 immutableData];
      selfCopy5 = [(CCItemMessage *)selfCopy4 initWithData:immutableData error:error];

      v32 = selfCopy5;
      goto LABEL_16;
    }

    v30 = spokenNameCopy;
    goto LABEL_13;
  }

  v28 = nameCopy;
  v29 = appNameCopy;
  v30 = spokenNameCopy;
LABEL_15:
  CCSetError();
  v32 = 0;
  selfCopy5 = self;
LABEL_16:
  v34 = displayNameCopy;
LABEL_39:

  v47 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 29102) > 0xAu)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E7690 + (identifier + 29102));
  }
}

@end