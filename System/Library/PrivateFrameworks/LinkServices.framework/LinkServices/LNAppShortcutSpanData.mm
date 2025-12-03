@interface LNAppShortcutSpanData
- (BOOL)isEqual:(id)equal;
- (LNAppShortcutSpanData)initWithCoder:(id)coder;
- (LNAppShortcutSpanData)initWithValue:(id)value propertyTitle:(id)title propertyTitleKey:(id)key providerClassName:(id)name parameterTypeIdentifier:(id)identifier synonyms:(id)synonyms;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAppShortcutSpanData

- (unint64_t)hash
{
  propertyTitle = [(LNAppShortcutSpanData *)self propertyTitle];
  v4 = [propertyTitle hash];
  propertyTitleKey = [(LNAppShortcutSpanData *)self propertyTitleKey];
  v6 = [propertyTitleKey hash] ^ v4;
  providerClassName = [(LNAppShortcutSpanData *)self providerClassName];
  v8 = [providerClassName hash];
  parameterTypeIdentifier = [(LNAppShortcutSpanData *)self parameterTypeIdentifier];
  v10 = v6 ^ v8 ^ [parameterTypeIdentifier hash];
  synonyms = [(LNAppShortcutSpanData *)self synonyms];
  v12 = [synonyms hash];
  value = [(LNAppShortcutSpanData *)self value];
  v14 = v12 ^ [value hash];

  return v10 ^ v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  propertyTitle = [(LNAppShortcutSpanData *)self propertyTitle];
  [coderCopy encodeObject:propertyTitle forKey:@"propertyTitle"];

  propertyTitleKey = [(LNAppShortcutSpanData *)self propertyTitleKey];
  [coderCopy encodeObject:propertyTitleKey forKey:@"propertyTitleKey"];

  providerClassName = [(LNAppShortcutSpanData *)self providerClassName];
  [coderCopy encodeObject:providerClassName forKey:@"providerClassName"];

  value = [(LNAppShortcutSpanData *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  parameterTypeIdentifier = [(LNAppShortcutSpanData *)self parameterTypeIdentifier];
  [coderCopy encodeObject:parameterTypeIdentifier forKey:@"parameterTypeIdentifier"];

  synonyms = [(LNAppShortcutSpanData *)self synonyms];
  [coderCopy encodeObject:synonyms forKey:@"synonyms"];
}

- (LNAppShortcutSpanData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyTitle"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyTitleKey"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerClassName"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
        if (v8)
        {
          v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterTypeIdentifier"];
          if (v9)
          {
            v10 = MEMORY[0x1E695DFD8];
            v11 = objc_opt_class();
            v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
            v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"synonyms"];

            if (v13)
            {
              self = [(LNAppShortcutSpanData *)self initWithValue:v8 propertyTitle:v5 propertyTitleKey:v6 providerClassName:v7 parameterTypeIdentifier:v9 synonyms:v13];
              selfCopy = self;
            }

            else
            {
              selfCopy = 0;
            }
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_54:

      goto LABEL_55;
    }

    propertyTitle = [(LNAppShortcutSpanData *)self propertyTitle];
    propertyTitle2 = [(LNAppShortcutSpanData *)v6 propertyTitle];
    v9 = propertyTitle;
    v10 = propertyTitle2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_52;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_53:

        goto LABEL_54;
      }
    }

    propertyTitleKey = [(LNAppShortcutSpanData *)self propertyTitleKey];
    propertyTitleKey2 = [(LNAppShortcutSpanData *)v6 propertyTitleKey];
    v14 = propertyTitleKey;
    v18 = propertyTitleKey2;
    v13 = v18;
    if (v14 == v18)
    {

      v54 = v14;
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_51;
      }

      v21 = v14;
      v22 = [v14 isEqual:v18];

      v54 = v21;
      if (!v22)
      {
        LOBYTE(v12) = 0;
        v14 = v21;
LABEL_52:

        goto LABEL_53;
      }
    }

    providerClassName = [(LNAppShortcutSpanData *)self providerClassName];
    providerClassName2 = [(LNAppShortcutSpanData *)v6 providerClassName];
    v20 = providerClassName;
    v25 = providerClassName2;
    v19 = v25;
    if (v20 == v25)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v26 = v25;
      v27 = v20;
      if (!v20 || !v25)
      {
        goto LABEL_49;
      }

      v12 = [v20 isEqual:v25];

      if (!v12)
      {
        goto LABEL_50;
      }
    }

    v53 = v20;
    parameterTypeIdentifier = [(LNAppShortcutSpanData *)self parameterTypeIdentifier];
    parameterTypeIdentifier2 = [(LNAppShortcutSpanData *)v6 parameterTypeIdentifier];
    v30 = parameterTypeIdentifier;
    v31 = parameterTypeIdentifier2;
    v51 = v31;
    v52 = v30;
    if (v30 != v31)
    {
      LOBYTE(v12) = 0;
      if (v30)
      {
        v32 = v31;
        v33 = v30;
        v20 = v53;
        if (v31)
        {
          v34 = [v52 isEqual:v31];

          if (!v34)
          {
            LOBYTE(v12) = 0;
            v20 = v53;
LABEL_48:
            v26 = v51;
            v27 = v52;
LABEL_49:

LABEL_50:
            v14 = v54;
LABEL_51:

            goto LABEL_52;
          }

LABEL_30:
          synonyms = [(LNAppShortcutSpanData *)self synonyms];
          synonyms2 = [(LNAppShortcutSpanData *)v6 synonyms];
          v33 = synonyms;
          v37 = synonyms2;
          v50 = v37;
          if (v33 != v37)
          {
            LOBYTE(v12) = 0;
            if (v33)
            {
              v38 = v37;
              v39 = v33;
              v20 = v53;
              if (v37)
              {
                v40 = v33;
                v41 = [v33 isEqual:v37];

                v48 = v40;
                if (!v41)
                {
                  LOBYTE(v12) = 0;
                  v20 = v53;
                  v33 = v48;
LABEL_46:
                  v32 = v50;
                  goto LABEL_47;
                }

                goto LABEL_36;
              }
            }

            else
            {
              v38 = v37;
              v39 = 0;
              v20 = v53;
            }

LABEL_45:
            v46 = v39;

            goto LABEL_46;
          }

          v48 = v33;
LABEL_36:
          value = [(LNAppShortcutSpanData *)self value];
          value2 = [(LNAppShortcutSpanData *)v6 value];
          v44 = value;
          v45 = value2;
          v49 = v45;
          if (v44 == v45)
          {
            LOBYTE(v12) = 1;
            v20 = v53;
            v33 = v48;
          }

          else
          {
            LOBYTE(v12) = 0;
            v33 = v48;
            if (v44)
            {
              v20 = v53;
              if (v45)
              {
                LOBYTE(v12) = [v44 isEqual:v45];
              }
            }

            else
            {
              v20 = v53;
            }
          }

          v38 = v49;
          v39 = v44;
          goto LABEL_45;
        }
      }

      else
      {
        v32 = v31;
        v33 = 0;
        v20 = v53;
      }

LABEL_47:

      goto LABEL_48;
    }

    goto LABEL_30;
  }

  LOBYTE(v12) = 1;
LABEL_55:

  return v12;
}

- (LNAppShortcutSpanData)initWithValue:(id)value propertyTitle:(id)title propertyTitleKey:(id)key providerClassName:(id)name parameterTypeIdentifier:(id)identifier synonyms:(id)synonyms
{
  valueCopy = value;
  titleCopy = title;
  keyCopy = key;
  obj = name;
  nameCopy = name;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  synonymsCopy = synonyms;
  synonymsCopy2 = synonyms;
  if (valueCopy)
  {
    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (titleCopy)
    {
LABEL_3:
      if (keyCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"propertyTitle"}];

  if (keyCopy)
  {
LABEL_4:
    if (nameCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"propertyTitleKey"}];

  if (nameCopy)
  {
LABEL_5:
    if (identifierCopy2)
    {
      goto LABEL_6;
    }

LABEL_14:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"parameterTypeIdentifier"}];

    if (synonymsCopy2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"providerClassName"}];

  if (!identifierCopy2)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (synonymsCopy2)
  {
    goto LABEL_7;
  }

LABEL_15:
  currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler6 handleFailureInMethod:a2 object:self file:@"LNAppShortcutSpanData.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"synonyms"}];

LABEL_7:
  v35.receiver = self;
  v35.super_class = LNAppShortcutSpanData;
  v20 = [(LNAppShortcutSpanData *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_value, value);
    objc_storeStrong(&v21->_propertyTitle, title);
    objc_storeStrong(&v21->_propertyTitleKey, key);
    objc_storeStrong(&v21->_providerClassName, obj);
    objc_storeStrong(&v21->_parameterTypeIdentifier, identifierCopy);
    objc_storeStrong(&v21->_synonyms, synonymsCopy);
    v22 = v21;
  }

  return v21;
}

@end