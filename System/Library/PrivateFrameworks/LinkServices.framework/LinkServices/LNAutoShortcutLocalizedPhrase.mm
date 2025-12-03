@interface LNAutoShortcutLocalizedPhrase
- (BOOL)isEqual:(id)equal;
- (LNAutoShortcutLocalizedPhrase)initWithCoder:(id)coder;
- (LNAutoShortcutLocalizedPhrase)initWithLocalizedPhrase:(id)phrase bundleIdentifier:(id)identifier basePhraseTemplate:(id)template parameterIdentifier:(id)parameterIdentifier optionsCollectionTitle:(id)title optionsCollectionSystemImageName:(id)name primary:(BOOL)primary signature:(id)self0;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAutoShortcutLocalizedPhrase

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  localizedPhrase = [(LNAutoShortcutLocalizedPhrase *)self localizedPhrase];
  bundleIdentifier = [(LNAutoShortcutLocalizedPhrase *)self bundleIdentifier];
  basePhraseTemplate = [(LNAutoShortcutLocalizedPhrase *)self basePhraseTemplate];
  parameterIdentifier = [(LNAutoShortcutLocalizedPhrase *)self parameterIdentifier];
  optionsCollectionTitle = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionTitle];
  optionsCollectionSystemImageName = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionSystemImageName];
  isPrimary = [(LNAutoShortcutLocalizedPhrase *)self isPrimary];
  signature = [(LNAutoShortcutLocalizedPhrase *)self signature];
  v13 = [v15 stringWithFormat:@"<%@: %p, localizedPhrase: %@, bundleIdentifier: %@, basePhraseTemplate: %@, parameterIdentifier: %@ optionsCollectionTitle: %@, systemImageName: %@ isPrimary: %d, signature: %@>", v4, self, localizedPhrase, bundleIdentifier, basePhraseTemplate, parameterIdentifier, optionsCollectionTitle, optionsCollectionSystemImageName, isPrimary, signature];

  return v13;
}

- (unint64_t)hash
{
  isPrimary = [(LNAutoShortcutLocalizedPhrase *)self isPrimary];
  localizedPhrase = [(LNAutoShortcutLocalizedPhrase *)self localizedPhrase];
  v5 = [localizedPhrase hash];
  bundleIdentifier = [(LNAutoShortcutLocalizedPhrase *)self bundleIdentifier];
  v7 = v5 ^ [bundleIdentifier hash] ^ isPrimary;
  basePhraseTemplate = [(LNAutoShortcutLocalizedPhrase *)self basePhraseTemplate];
  v9 = [basePhraseTemplate hash];
  parameterIdentifier = [(LNAutoShortcutLocalizedPhrase *)self parameterIdentifier];
  v11 = v9 ^ [parameterIdentifier hash];
  optionsCollectionTitle = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionTitle];
  v13 = v7 ^ v11 ^ [optionsCollectionTitle hash];
  optionsCollectionSystemImageName = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionSystemImageName];
  v15 = [optionsCollectionSystemImageName hash];
  signature = [(LNAutoShortcutLocalizedPhrase *)self signature];
  v17 = v15 ^ [signature hash];

  return v13 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isPrimary = [(LNAutoShortcutLocalizedPhrase *)self isPrimary];
        if (isPrimary != [(LNAutoShortcutLocalizedPhrase *)v6 isPrimary])
        {
          LOBYTE(v8) = 0;
LABEL_65:

          goto LABEL_66;
        }

        localizedPhrase = [(LNAutoShortcutLocalizedPhrase *)self localizedPhrase];
        localizedPhrase2 = [(LNAutoShortcutLocalizedPhrase *)v6 localizedPhrase];
        v9 = localizedPhrase;
        v12 = localizedPhrase2;
        v13 = v12;
        if (v9 == v12)
        {
        }

        else
        {
          LOBYTE(v8) = 0;
          v14 = v12;
          v15 = v9;
          if (!v9 || !v12)
          {
            goto LABEL_62;
          }

          v16 = [(LNAutoShortcutLocalizedPhrase *)v9 isEqualToString:v12];

          if (!v16)
          {
            LOBYTE(v8) = 0;
LABEL_63:

            goto LABEL_64;
          }
        }

        bundleIdentifier = [(LNAutoShortcutLocalizedPhrase *)self bundleIdentifier];
        bundleIdentifier2 = [(LNAutoShortcutLocalizedPhrase *)v6 bundleIdentifier];
        v15 = bundleIdentifier;
        v19 = bundleIdentifier2;
        v14 = v19;
        if (v15 == v19)
        {
        }

        else
        {
          LOBYTE(v8) = 0;
          v20 = v19;
          v21 = v15;
          if (!v15 || !v19)
          {
            goto LABEL_61;
          }

          v22 = [(LNAutoShortcutLocalizedPhrase *)v15 isEqualToString:v19];

          if (!v22)
          {
            LOBYTE(v8) = 0;
LABEL_62:

            goto LABEL_63;
          }
        }

        basePhraseTemplate = [(LNAutoShortcutLocalizedPhrase *)self basePhraseTemplate];
        basePhraseTemplate2 = [(LNAutoShortcutLocalizedPhrase *)v6 basePhraseTemplate];
        v21 = basePhraseTemplate;
        v25 = basePhraseTemplate2;
        v20 = v25;
        v56 = v21;
        if (v21 == v25)
        {
        }

        else
        {
          LOBYTE(v8) = 0;
          v26 = v25;
          if (!v21 || !v25)
          {
            goto LABEL_60;
          }

          v8 = [(LNAutoShortcutLocalizedPhrase *)v21 isEqualToString:v25];

          if (!v8)
          {
            goto LABEL_61;
          }
        }

        v55 = v20;
        parameterIdentifier = [(LNAutoShortcutLocalizedPhrase *)self parameterIdentifier];
        parameterIdentifier2 = [(LNAutoShortcutLocalizedPhrase *)v6 parameterIdentifier];
        v29 = parameterIdentifier;
        v30 = parameterIdentifier2;
        v53 = v30;
        v54 = v29;
        if (v29 == v30)
        {
        }

        else
        {
          LOBYTE(v8) = 0;
          if (!v29)
          {
            v31 = v30;
            v20 = v55;
            goto LABEL_58;
          }

          v31 = v30;
          v20 = v55;
          if (!v30)
          {
LABEL_58:

            goto LABEL_59;
          }

          v32 = [(LNAutoShortcutLocalizedPhrase *)v29 isEqual:v30];

          if (!v32)
          {
            LOBYTE(v8) = 0;
            v20 = v55;
LABEL_59:
            v26 = v53;
            v21 = v54;
LABEL_60:

            v21 = v56;
LABEL_61:

            goto LABEL_62;
          }
        }

        optionsCollectionTitle = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionTitle];
        optionsCollectionTitle2 = [(LNAutoShortcutLocalizedPhrase *)v6 optionsCollectionTitle];
        v29 = optionsCollectionTitle;
        v35 = optionsCollectionTitle2;
        v51 = v29;
        v52 = v35;
        if (v29 != v35)
        {
          LOBYTE(v8) = 0;
          if (v29)
          {
            v36 = v35;
            v20 = v55;
            if (v35)
            {
              v37 = [(LNAutoShortcutLocalizedPhrase *)v29 isEqualToString:v35];

              if (!v37)
              {
                LOBYTE(v8) = 0;
                v20 = v55;
                v31 = v52;
                goto LABEL_58;
              }

LABEL_39:
              optionsCollectionSystemImageName = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionSystemImageName];
              optionsCollectionSystemImageName2 = [(LNAutoShortcutLocalizedPhrase *)v6 optionsCollectionSystemImageName];
              v40 = optionsCollectionSystemImageName;
              v41 = optionsCollectionSystemImageName2;
              v49 = v41;
              v50 = v40;
              if (v40 == v41)
              {
              }

              else
              {
                LOBYTE(v8) = 0;
                if (!v40)
                {
                  v42 = v41;
                  v20 = v55;
                  goto LABEL_55;
                }

                v42 = v41;
                v20 = v55;
                if (!v41)
                {
LABEL_55:

                  goto LABEL_56;
                }

                v43 = [(LNAutoShortcutLocalizedPhrase *)v40 isEqual:v41];

                if (!v43)
                {
                  LOBYTE(v8) = 0;
                  v20 = v55;
LABEL_56:
                  v36 = v49;
                  v29 = v50;
                  goto LABEL_57;
                }
              }

              v44 = [(LNAutoShortcutLocalizedPhrase *)self signature:v49];
              signature = [(LNAutoShortcutLocalizedPhrase *)v6 signature];
              v40 = v44;
              v46 = signature;
              v47 = v46;
              if (v40 == v46)
              {
                LOBYTE(v8) = 1;
              }

              else
              {
                LOBYTE(v8) = 0;
                if (v40)
                {
                  v20 = v55;
                  if (v46)
                  {
                    LOBYTE(v8) = [(LNAutoShortcutLocalizedPhrase *)v40 isEqualToString:v46];
                  }

                  goto LABEL_53;
                }
              }

              v20 = v55;
LABEL_53:

              v42 = v47;
              goto LABEL_55;
            }
          }

          else
          {
            v36 = v35;
            v20 = v55;
          }

LABEL_57:

          v29 = v51;
          v31 = v52;
          goto LABEL_58;
        }

        goto LABEL_39;
      }

      LOBYTE(v8) = 0;
      v9 = v6;
      v6 = 0;
    }

    else
    {
      v9 = 0;
      LOBYTE(v8) = 0;
    }

LABEL_64:

    goto LABEL_65;
  }

  LOBYTE(v8) = 1;
LABEL_66:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedPhrase = [(LNAutoShortcutLocalizedPhrase *)self localizedPhrase];
  [coderCopy encodeObject:localizedPhrase forKey:@"localizedPhrase"];

  bundleIdentifier = [(LNAutoShortcutLocalizedPhrase *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  basePhraseTemplate = [(LNAutoShortcutLocalizedPhrase *)self basePhraseTemplate];
  [coderCopy encodeObject:basePhraseTemplate forKey:@"basePhraseTemplate"];

  parameterIdentifier = [(LNAutoShortcutLocalizedPhrase *)self parameterIdentifier];
  [coderCopy encodeObject:parameterIdentifier forKey:@"parameterIdentifier"];

  optionsCollectionTitle = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionTitle];
  [coderCopy encodeObject:optionsCollectionTitle forKey:@"optionsCollectionTitle"];

  optionsCollectionSystemImageName = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionSystemImageName];
  [coderCopy encodeObject:optionsCollectionSystemImageName forKey:@"optionsCollectionSystemImageName"];

  [coderCopy encodeBool:-[LNAutoShortcutLocalizedPhrase isPrimary](self forKey:{"isPrimary"), @"primary"}];
  signature = [(LNAutoShortcutLocalizedPhrase *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];
}

- (LNAutoShortcutLocalizedPhrase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedPhrase"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"basePhraseTemplate"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
        v9 = [coderCopy decodeBoolForKey:@"primary"];
        v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
        if (v10)
        {
          v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optionsCollectionTitle"];
          v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optionsCollectionSystemImageName"];
          LOBYTE(v15) = v9;
          self = [(LNAutoShortcutLocalizedPhrase *)self initWithLocalizedPhrase:v5 bundleIdentifier:v6 basePhraseTemplate:v7 parameterIdentifier:v8 optionsCollectionTitle:v11 optionsCollectionSystemImageName:v12 primary:v15 signature:v10];

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

  return selfCopy;
}

- (LNAutoShortcutLocalizedPhrase)initWithLocalizedPhrase:(id)phrase bundleIdentifier:(id)identifier basePhraseTemplate:(id)template parameterIdentifier:(id)parameterIdentifier optionsCollectionTitle:(id)title optionsCollectionSystemImageName:(id)name primary:(BOOL)primary signature:(id)self0
{
  phraseCopy = phrase;
  identifierCopy = identifier;
  templateCopy = template;
  parameterIdentifierCopy = parameterIdentifier;
  titleCopy = title;
  nameCopy = name;
  signatureCopy = signature;
  if (phraseCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAutoShortcutLocalizedPhrase.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"localizedPhrase"}];

    if (identifierCopy)
    {
LABEL_3:
      if (templateCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutLocalizedPhrase.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"basePhraseTemplate"}];

      if (signatureCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutLocalizedPhrase.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

  if (!templateCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (signatureCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutLocalizedPhrase.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"signature"}];

LABEL_5:
  v43.receiver = self;
  v43.super_class = LNAutoShortcutLocalizedPhrase;
  v24 = [(LNAutoShortcutLocalizedPhrase *)&v43 init];
  if (v24)
  {
    v25 = [phraseCopy copy];
    localizedPhrase = v24->_localizedPhrase;
    v24->_localizedPhrase = v25;

    v27 = [identifierCopy copy];
    bundleIdentifier = v24->_bundleIdentifier;
    v24->_bundleIdentifier = v27;

    v29 = [templateCopy copy];
    basePhraseTemplate = v24->_basePhraseTemplate;
    v24->_basePhraseTemplate = v29;

    v31 = [parameterIdentifierCopy copy];
    parameterIdentifier = v24->_parameterIdentifier;
    v24->_parameterIdentifier = v31;

    v33 = [titleCopy copy];
    optionsCollectionTitle = v24->_optionsCollectionTitle;
    v24->_optionsCollectionTitle = v33;

    v35 = [nameCopy copy];
    optionsCollectionSystemImageName = v24->_optionsCollectionSystemImageName;
    v24->_optionsCollectionSystemImageName = v35;

    v24->_primary = primary;
    objc_storeStrong(&v24->_signature, signature);
    v37 = v24;
  }

  return v24;
}

@end