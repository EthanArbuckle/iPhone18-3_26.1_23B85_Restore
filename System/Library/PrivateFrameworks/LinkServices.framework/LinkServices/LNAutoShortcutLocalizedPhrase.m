@interface LNAutoShortcutLocalizedPhrase
- (BOOL)isEqual:(id)a3;
- (LNAutoShortcutLocalizedPhrase)initWithCoder:(id)a3;
- (LNAutoShortcutLocalizedPhrase)initWithLocalizedPhrase:(id)a3 bundleIdentifier:(id)a4 basePhraseTemplate:(id)a5 parameterIdentifier:(id)a6 optionsCollectionTitle:(id)a7 optionsCollectionSystemImageName:(id)a8 primary:(BOOL)a9 signature:(id)a10;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAutoShortcutLocalizedPhrase

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(LNAutoShortcutLocalizedPhrase *)self localizedPhrase];
  v6 = [(LNAutoShortcutLocalizedPhrase *)self bundleIdentifier];
  v7 = [(LNAutoShortcutLocalizedPhrase *)self basePhraseTemplate];
  v8 = [(LNAutoShortcutLocalizedPhrase *)self parameterIdentifier];
  v9 = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionTitle];
  v10 = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionSystemImageName];
  v11 = [(LNAutoShortcutLocalizedPhrase *)self isPrimary];
  v12 = [(LNAutoShortcutLocalizedPhrase *)self signature];
  v13 = [v15 stringWithFormat:@"<%@: %p, localizedPhrase: %@, bundleIdentifier: %@, basePhraseTemplate: %@, parameterIdentifier: %@ optionsCollectionTitle: %@, systemImageName: %@ isPrimary: %d, signature: %@>", v4, self, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (unint64_t)hash
{
  v3 = [(LNAutoShortcutLocalizedPhrase *)self isPrimary];
  v4 = [(LNAutoShortcutLocalizedPhrase *)self localizedPhrase];
  v5 = [v4 hash];
  v6 = [(LNAutoShortcutLocalizedPhrase *)self bundleIdentifier];
  v7 = v5 ^ [v6 hash] ^ v3;
  v8 = [(LNAutoShortcutLocalizedPhrase *)self basePhraseTemplate];
  v9 = [v8 hash];
  v10 = [(LNAutoShortcutLocalizedPhrase *)self parameterIdentifier];
  v11 = v9 ^ [v10 hash];
  v12 = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionTitle];
  v13 = v7 ^ v11 ^ [v12 hash];
  v14 = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionSystemImageName];
  v15 = [v14 hash];
  v16 = [(LNAutoShortcutLocalizedPhrase *)self signature];
  v17 = v15 ^ [v16 hash];

  return v13 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNAutoShortcutLocalizedPhrase *)self isPrimary];
        if (v7 != [(LNAutoShortcutLocalizedPhrase *)v6 isPrimary])
        {
          LOBYTE(v8) = 0;
LABEL_65:

          goto LABEL_66;
        }

        v10 = [(LNAutoShortcutLocalizedPhrase *)self localizedPhrase];
        v11 = [(LNAutoShortcutLocalizedPhrase *)v6 localizedPhrase];
        v9 = v10;
        v12 = v11;
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

        v17 = [(LNAutoShortcutLocalizedPhrase *)self bundleIdentifier];
        v18 = [(LNAutoShortcutLocalizedPhrase *)v6 bundleIdentifier];
        v15 = v17;
        v19 = v18;
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

        v23 = [(LNAutoShortcutLocalizedPhrase *)self basePhraseTemplate];
        v24 = [(LNAutoShortcutLocalizedPhrase *)v6 basePhraseTemplate];
        v21 = v23;
        v25 = v24;
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
        v27 = [(LNAutoShortcutLocalizedPhrase *)self parameterIdentifier];
        v28 = [(LNAutoShortcutLocalizedPhrase *)v6 parameterIdentifier];
        v29 = v27;
        v30 = v28;
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

        v33 = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionTitle];
        v34 = [(LNAutoShortcutLocalizedPhrase *)v6 optionsCollectionTitle];
        v29 = v33;
        v35 = v34;
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
              v38 = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionSystemImageName];
              v39 = [(LNAutoShortcutLocalizedPhrase *)v6 optionsCollectionSystemImageName];
              v40 = v38;
              v41 = v39;
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
              v45 = [(LNAutoShortcutLocalizedPhrase *)v6 signature];
              v40 = v44;
              v46 = v45;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAutoShortcutLocalizedPhrase *)self localizedPhrase];
  [v4 encodeObject:v5 forKey:@"localizedPhrase"];

  v6 = [(LNAutoShortcutLocalizedPhrase *)self bundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleIdentifier"];

  v7 = [(LNAutoShortcutLocalizedPhrase *)self basePhraseTemplate];
  [v4 encodeObject:v7 forKey:@"basePhraseTemplate"];

  v8 = [(LNAutoShortcutLocalizedPhrase *)self parameterIdentifier];
  [v4 encodeObject:v8 forKey:@"parameterIdentifier"];

  v9 = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionTitle];
  [v4 encodeObject:v9 forKey:@"optionsCollectionTitle"];

  v10 = [(LNAutoShortcutLocalizedPhrase *)self optionsCollectionSystemImageName];
  [v4 encodeObject:v10 forKey:@"optionsCollectionSystemImageName"];

  [v4 encodeBool:-[LNAutoShortcutLocalizedPhrase isPrimary](self forKey:{"isPrimary"), @"primary"}];
  v11 = [(LNAutoShortcutLocalizedPhrase *)self signature];
  [v4 encodeObject:v11 forKey:@"signature"];
}

- (LNAutoShortcutLocalizedPhrase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedPhrase"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"basePhraseTemplate"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterIdentifier"];
        v9 = [v4 decodeBoolForKey:@"primary"];
        v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
        if (v10)
        {
          v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optionsCollectionTitle"];
          v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optionsCollectionSystemImageName"];
          LOBYTE(v15) = v9;
          self = [(LNAutoShortcutLocalizedPhrase *)self initWithLocalizedPhrase:v5 bundleIdentifier:v6 basePhraseTemplate:v7 parameterIdentifier:v8 optionsCollectionTitle:v11 optionsCollectionSystemImageName:v12 primary:v15 signature:v10];

          v13 = self;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (LNAutoShortcutLocalizedPhrase)initWithLocalizedPhrase:(id)a3 bundleIdentifier:(id)a4 basePhraseTemplate:(id)a5 parameterIdentifier:(id)a6 optionsCollectionTitle:(id)a7 optionsCollectionSystemImageName:(id)a8 primary:(BOOL)a9 signature:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutLocalizedPhrase.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"localizedPhrase"}];

    if (v18)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_10:
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      [v41 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutLocalizedPhrase.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"basePhraseTemplate"}];

      if (v23)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v40 = [MEMORY[0x1E696AAA8] currentHandler];
  [v40 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutLocalizedPhrase.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v23)
  {
    goto LABEL_5;
  }

LABEL_11:
  v42 = [MEMORY[0x1E696AAA8] currentHandler];
  [v42 handleFailureInMethod:a2 object:self file:@"LNAutoShortcutLocalizedPhrase.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"signature"}];

LABEL_5:
  v43.receiver = self;
  v43.super_class = LNAutoShortcutLocalizedPhrase;
  v24 = [(LNAutoShortcutLocalizedPhrase *)&v43 init];
  if (v24)
  {
    v25 = [v17 copy];
    localizedPhrase = v24->_localizedPhrase;
    v24->_localizedPhrase = v25;

    v27 = [v18 copy];
    bundleIdentifier = v24->_bundleIdentifier;
    v24->_bundleIdentifier = v27;

    v29 = [v19 copy];
    basePhraseTemplate = v24->_basePhraseTemplate;
    v24->_basePhraseTemplate = v29;

    v31 = [v20 copy];
    parameterIdentifier = v24->_parameterIdentifier;
    v24->_parameterIdentifier = v31;

    v33 = [v21 copy];
    optionsCollectionTitle = v24->_optionsCollectionTitle;
    v24->_optionsCollectionTitle = v33;

    v35 = [v22 copy];
    optionsCollectionSystemImageName = v24->_optionsCollectionSystemImageName;
    v24->_optionsCollectionSystemImageName = v35;

    v24->_primary = a9;
    objc_storeStrong(&v24->_signature, a10);
    v37 = v24;
  }

  return v24;
}

@end