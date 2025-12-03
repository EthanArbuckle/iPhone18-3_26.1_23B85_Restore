@interface MAAutoAssetSelector
- (BOOL)isEqual:(id)equal;
- (MAAutoAssetSelector)initWithCoder:(id)coder;
- (id)_initForAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version usingDecryptionKey:(id)key setAtomicInstanceUUID:(id)d;
- (id)copy;
- (id)copyClearingWriteOnlyFields;
- (id)initForAssetType:(id)type;
- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier;
- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version;
- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version usingDecryptionKey:(id)key;
- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier usingDecryptionKey:(id)key;
- (id)initForSetAtomicInstanceUUID:(id)d;
- (id)newSummaryDictionary;
- (id)persistedEntryID;
- (id)shortName;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSelector

- (id)summary
{
  assetVersion = [(MAAutoAssetSelector *)self assetVersion];
  if (assetVersion || ([(MAAutoAssetSelector *)self assetSpecifier], (assetVersion = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    setAtomicInstanceUUID = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

    if (setAtomicInstanceUUID)
    {
      v16 = MEMORY[0x1E696AEC0];
      setAtomicInstanceUUID2 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
      v13 = [v16 stringWithFormat:@"setAtomicInstanceUUID:%@", setAtomicInstanceUUID2];
      goto LABEL_10;
    }
  }

  assetVersion2 = [(MAAutoAssetSelector *)self assetVersion];
  if (assetVersion2)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetVersion3 = [(MAAutoAssetSelector *)self assetVersion];
    setAtomicInstanceUUID2 = [v5 initWithFormat:@"|version:%@", assetVersion3];
  }

  else
  {
    setAtomicInstanceUUID2 = @"(any version)";
  }

  v8 = MEMORY[0x1E696AEC0];
  assetType = [(MAAutoAssetSelector *)self assetType];
  assetSpecifier = [(MAAutoAssetSelector *)self assetSpecifier];
  downloadDecryptionKey = [(MAAutoAssetSelector *)self downloadDecryptionKey];
  v12 = @"|decryption:Y";
  if (!downloadDecryptionKey)
  {
    v12 = &stru_1F0C1B388;
  }

  v13 = [v8 stringWithFormat:@"type:%@|specifier:%@%@%@", assetType, assetSpecifier, setAtomicInstanceUUID2, v12];

LABEL_10:

  return v13;
}

- (id)persistedEntryID
{
  assetVersion = [(MAAutoAssetSelector *)self assetVersion];

  if (assetVersion)
  {
    v4 = objc_alloc(MEMORY[0x1E696AD60]);
    assetVersion2 = [(MAAutoAssetSelector *)self assetVersion];
    setAtomicInstanceUUID2 = [v4 initWithString:assetVersion2];

    [setAtomicInstanceUUID2 replaceOccurrencesOfString:@" withString:" options:@"_" range:{2, 0, objc_msgSend(setAtomicInstanceUUID2, "length")}];
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType = [(MAAutoAssetSelector *)self assetType];
    assetSpecifier = [(MAAutoAssetSelector *)self assetSpecifier];
    v10 = [v7 initWithFormat:@"%@_%@_%@", assetType, assetSpecifier, setAtomicInstanceUUID2];
  }

  else
  {
    assetSpecifier2 = [(MAAutoAssetSelector *)self assetSpecifier];

    if (!assetSpecifier2)
    {
      setAtomicInstanceUUID = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (setAtomicInstanceUUID)
      {
        setAtomicInstanceUUID2 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
        v16 = [v15 initWithFormat:@"%@_SET_ATOMIC_INSTANCE", setAtomicInstanceUUID2];
      }

      else
      {
        setAtomicInstanceUUID2 = [(MAAutoAssetSelector *)self assetType];
        v16 = [v15 initWithFormat:@"%@_ENTIRE_ASSET_TYPE", setAtomicInstanceUUID2];
      }

      v10 = v16;
      goto LABEL_6;
    }

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    setAtomicInstanceUUID2 = [(MAAutoAssetSelector *)self assetType];
    assetType = [(MAAutoAssetSelector *)self assetSpecifier];
    v10 = [v12 initWithFormat:@"%@_%@", setAtomicInstanceUUID2, assetType];
  }

LABEL_6:

  return v10;
}

- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier
{
  typeCopy = type;
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSelector;
  v9 = [(MAAutoAssetSelector *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetType, type);
    objc_storeStrong(&v10->_assetSpecifier, specifier);
    assetVersion = v10->_assetVersion;
    v10->_assetVersion = 0;

    downloadDecryptionKey = v10->_downloadDecryptionKey;
    v10->_downloadDecryptionKey = 0;

    setAtomicInstanceUUID = v10->_setAtomicInstanceUUID;
    v10->_setAtomicInstanceUUID = 0;
  }

  return v10;
}

- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier usingDecryptionKey:(id)key
{
  typeCopy = type;
  specifierCopy = specifier;
  keyCopy = key;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSelector;
  v12 = [(MAAutoAssetSelector *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetType, type);
    objc_storeStrong(&v13->_assetSpecifier, specifier);
    assetVersion = v13->_assetVersion;
    v13->_assetVersion = 0;

    objc_storeStrong(&v13->_downloadDecryptionKey, key);
    setAtomicInstanceUUID = v13->_setAtomicInstanceUUID;
    v13->_setAtomicInstanceUUID = 0;
  }

  return v13;
}

- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version
{
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSelector;
  v12 = [(MAAutoAssetSelector *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetType, type);
    objc_storeStrong(&v13->_assetSpecifier, specifier);
    objc_storeStrong(&v13->_assetVersion, version);
    downloadDecryptionKey = v13->_downloadDecryptionKey;
    v13->_downloadDecryptionKey = 0;

    setAtomicInstanceUUID = v13->_setAtomicInstanceUUID;
    v13->_setAtomicInstanceUUID = 0;
  }

  return v13;
}

- (id)initForAssetType:(id)type
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = MAAutoAssetSelector;
  v6 = [(MAAutoAssetSelector *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetType, type);
    assetSpecifier = v7->_assetSpecifier;
    v7->_assetSpecifier = 0;

    assetVersion = v7->_assetVersion;
    v7->_assetVersion = 0;

    downloadDecryptionKey = v7->_downloadDecryptionKey;
    v7->_downloadDecryptionKey = 0;

    setAtomicInstanceUUID = v7->_setAtomicInstanceUUID;
    v7->_setAtomicInstanceUUID = 0;
  }

  return v7;
}

- (id)initForSetAtomicInstanceUUID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = MAAutoAssetSelector;
  v6 = [(MAAutoAssetSelector *)&v13 init];
  v7 = v6;
  if (v6)
  {
    assetType = v6->_assetType;
    v6->_assetType = 0;

    assetSpecifier = v7->_assetSpecifier;
    v7->_assetSpecifier = 0;

    assetVersion = v7->_assetVersion;
    v7->_assetVersion = 0;

    downloadDecryptionKey = v7->_downloadDecryptionKey;
    v7->_downloadDecryptionKey = 0;

    objc_storeStrong(&v7->_setAtomicInstanceUUID, d);
  }

  return v7;
}

- (id)initForAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version usingDecryptionKey:(id)key
{
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = MAAutoAssetSelector;
  v15 = [(MAAutoAssetSelector *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetType, type);
    objc_storeStrong(&v16->_assetSpecifier, specifier);
    objc_storeStrong(&v16->_assetVersion, version);
    objc_storeStrong(&v16->_downloadDecryptionKey, key);
    setAtomicInstanceUUID = v16->_setAtomicInstanceUUID;
    v16->_setAtomicInstanceUUID = 0;
  }

  return v16;
}

- (id)_initForAssetType:(id)type withAssetSpecifier:(id)specifier matchingAssetVersion:(id)version usingDecryptionKey:(id)key setAtomicInstanceUUID:(id)d
{
  typeCopy = type;
  specifierCopy = specifier;
  versionCopy = version;
  keyCopy = key;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = MAAutoAssetSelector;
  v17 = [(MAAutoAssetSelector *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_assetType, type);
    objc_storeStrong(p_isa + 2, specifier);
    objc_storeStrong(p_isa + 3, version);
    objc_storeStrong(p_isa + 4, key);
    objc_storeStrong(p_isa + 5, d);
  }

  return p_isa;
}

- (MAAutoAssetSelector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSelector;
  v5 = [(MAAutoAssetSelector *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setAtomicInstanceUUID"];
    setAtomicInstanceUUID = v5->_setAtomicInstanceUUID;
    v5->_setAtomicInstanceUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSpecifier"];
    assetSpecifier = v5->_assetSpecifier;
    v5->_assetSpecifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadDecryptionKey"];
    downloadDecryptionKey = v5->_downloadDecryptionKey;
    v5->_downloadDecryptionKey = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  setAtomicInstanceUUID = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
  [coderCopy encodeObject:setAtomicInstanceUUID forKey:@"setAtomicInstanceUUID"];

  assetType = [(MAAutoAssetSelector *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  assetSpecifier = [(MAAutoAssetSelector *)self assetSpecifier];
  [coderCopy encodeObject:assetSpecifier forKey:@"assetSpecifier"];

  assetVersion = [(MAAutoAssetSelector *)self assetVersion];
  [coderCopy encodeObject:assetVersion forKey:@"assetVersion"];

  downloadDecryptionKey = [(MAAutoAssetSelector *)self downloadDecryptionKey];
  [coderCopy encodeObject:downloadDecryptionKey forKey:@"downloadDecryptionKey"];
}

- (id)copy
{
  v3 = [MAAutoAssetSelector alloc];
  assetType = [(MAAutoAssetSelector *)self assetType];
  assetSpecifier = [(MAAutoAssetSelector *)self assetSpecifier];
  assetVersion = [(MAAutoAssetSelector *)self assetVersion];
  downloadDecryptionKey = [(MAAutoAssetSelector *)self downloadDecryptionKey];
  v8 = [(MAAutoAssetSelector *)v3 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion usingDecryptionKey:downloadDecryptionKey];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      setAtomicInstanceUUID = [(MAAutoAssetSelector *)v6 setAtomicInstanceUUID];
      if (!setAtomicInstanceUUID)
      {
        setAtomicInstanceUUID2 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
        if (setAtomicInstanceUUID2)
        {
          assetType2 = setAtomicInstanceUUID2;
LABEL_23:
          v10 = 0;
LABEL_52:

          goto LABEL_53;
        }
      }

      setAtomicInstanceUUID3 = [(MAAutoAssetSelector *)v6 setAtomicInstanceUUID];
      if (setAtomicInstanceUUID3)
      {
        setAtomicInstanceUUID4 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

        if (setAtomicInstanceUUID)
        {

          if (!setAtomicInstanceUUID4)
          {
            goto LABEL_40;
          }
        }

        else if (!setAtomicInstanceUUID4)
        {
          goto LABEL_40;
        }
      }

      else
      {

        if (setAtomicInstanceUUID)
        {
        }
      }

      setAtomicInstanceUUID5 = [(MAAutoAssetSelector *)v6 setAtomicInstanceUUID];
      if (setAtomicInstanceUUID5)
      {
        v14 = setAtomicInstanceUUID5;
        setAtomicInstanceUUID6 = [(MAAutoAssetSelector *)v6 setAtomicInstanceUUID];
        setAtomicInstanceUUID7 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
        v17 = [setAtomicInstanceUUID6 isEqualToString:setAtomicInstanceUUID7];

        if (!v17)
        {
          goto LABEL_40;
        }
      }

      assetType = [(MAAutoAssetSelector *)v6 assetType];
      if (!assetType)
      {
        goto LABEL_40;
      }

      assetType2 = assetType;
      assetSpecifier = [(MAAutoAssetSelector *)v6 assetSpecifier];
      if (!assetSpecifier)
      {
        goto LABEL_23;
      }

      assetType3 = assetSpecifier;
      assetVersion = [(MAAutoAssetSelector *)v6 assetVersion];
      if (!assetVersion)
      {
        assetVersion2 = [(MAAutoAssetSelector *)self assetVersion];
        if (assetVersion2)
        {
          assetSpecifier2 = assetVersion2;
          v10 = 0;
          goto LABEL_50;
        }
      }

      assetVersion3 = [(MAAutoAssetSelector *)v6 assetVersion];
      if (assetVersion3)
      {
        assetVersion4 = [(MAAutoAssetSelector *)self assetVersion];
        if (!assetVersion4)
        {
          LOBYTE(downloadDecryptionKey3) = 1;
          goto LABEL_38;
        }
      }

      downloadDecryptionKey = [(MAAutoAssetSelector *)v6 downloadDecryptionKey];
      if (!downloadDecryptionKey)
      {
        downloadDecryptionKey2 = [(MAAutoAssetSelector *)self downloadDecryptionKey];
        if (downloadDecryptionKey2)
        {
          LOBYTE(downloadDecryptionKey3) = 1;
          goto LABEL_37;
        }
      }

      downloadDecryptionKey3 = [(MAAutoAssetSelector *)v6 downloadDecryptionKey];
      if (downloadDecryptionKey3)
      {
        v35 = assetVersion4;
        downloadDecryptionKey4 = [(MAAutoAssetSelector *)self downloadDecryptionKey];
        v28 = downloadDecryptionKey4 == 0;

        if (downloadDecryptionKey)
        {
          LOBYTE(downloadDecryptionKey3) = v28;
          assetVersion4 = v35;
          goto LABEL_33;
        }

        downloadDecryptionKey2 = 0;
        LOBYTE(downloadDecryptionKey3) = v28;
        assetVersion4 = v35;
      }

      else
      {
        if (downloadDecryptionKey)
        {
LABEL_33:

          if (!assetVersion3)
          {
LABEL_39:

            if ((downloadDecryptionKey3 & 1) == 0)
            {
              assetType2 = [(MAAutoAssetSelector *)v6 assetType];
              assetType3 = [(MAAutoAssetSelector *)self assetType];
              if (![assetType2 isEqualToString:assetType3])
              {
                v10 = 0;
LABEL_51:

                goto LABEL_52;
              }

              assetSpecifier2 = [(MAAutoAssetSelector *)v6 assetSpecifier];
              assetSpecifier3 = [(MAAutoAssetSelector *)self assetSpecifier];
              if ([assetSpecifier2 isEqualToString:assetSpecifier3])
              {
                assetVersion5 = [(MAAutoAssetSelector *)v6 assetVersion];
                if (assetVersion5)
                {
                  assetVersion6 = [(MAAutoAssetSelector *)v6 assetVersion];
                  assetVersion7 = [(MAAutoAssetSelector *)self assetVersion];
                  v10 = [assetVersion6 isEqualToString:assetVersion7];
                }

                else
                {
                  v10 = 1;
                }
              }

              else
              {
                v10 = 0;
              }

LABEL_50:
              goto LABEL_51;
            }

LABEL_40:
            v10 = 0;
LABEL_53:

            goto LABEL_54;
          }

LABEL_38:

          goto LABEL_39;
        }

        downloadDecryptionKey2 = 0;
      }

LABEL_37:

      if (!assetVersion3)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v10 = 0;
  }

LABEL_54:

  return v10;
}

- (id)copyClearingWriteOnlyFields
{
  v3 = [MAAutoAssetSelector alloc];
  assetType = [(MAAutoAssetSelector *)self assetType];
  assetSpecifier = [(MAAutoAssetSelector *)self assetSpecifier];
  assetVersion = [(MAAutoAssetSelector *)self assetVersion];
  v7 = [(MAAutoAssetSelector *)v3 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];

  return v7;
}

- (id)shortName
{
  assetVersion = [(MAAutoAssetSelector *)self assetVersion];

  if (assetVersion)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetSpecifier = [(MAAutoAssetSelector *)self assetSpecifier];
    assetVersion2 = [(MAAutoAssetSelector *)self assetVersion];
    v7 = [v4 initWithFormat:@"%@(%@)", assetSpecifier, assetVersion2];
  }

  else
  {
    assetSpecifier2 = [(MAAutoAssetSelector *)self assetSpecifier];

    if (assetSpecifier2)
    {
      assetSpecifier3 = [(MAAutoAssetSelector *)self assetSpecifier];
    }

    else
    {
      setAtomicInstanceUUID = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

      if (setAtomicInstanceUUID)
      {
        [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
      }

      else
      {
        [(MAAutoAssetSelector *)self assetType];
      }
      assetSpecifier3 = ;
    }

    v7 = assetSpecifier3;
  }

  return v7;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  setAtomicInstanceUUID = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
  [v3 setSafeObject:setAtomicInstanceUUID forKey:@"setAtomicInstanceUUID"];

  assetType = [(MAAutoAssetSelector *)self assetType];
  [v3 setSafeObject:assetType forKey:@"assetType"];

  assetSpecifier = [(MAAutoAssetSelector *)self assetSpecifier];
  [v3 setSafeObject:assetSpecifier forKey:@"assetSpecifier"];

  assetVersion = [(MAAutoAssetSelector *)self assetVersion];
  if (assetVersion)
  {
    assetVersion2 = [(MAAutoAssetSelector *)self assetVersion];
    [v3 setSafeObject:assetVersion2 forKey:@"assetVersion"];
  }

  else
  {
    [v3 setSafeObject:@"ANY-VERSION" forKey:@"assetVersion"];
  }

  downloadDecryptionKey = [(MAAutoAssetSelector *)self downloadDecryptionKey];
  if (downloadDecryptionKey)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 setSafeObject:v10 forKey:@"downloadDecryptionKey"];

  return v3;
}

@end