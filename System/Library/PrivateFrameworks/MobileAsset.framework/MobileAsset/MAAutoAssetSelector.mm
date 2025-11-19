@interface MAAutoAssetSelector
- (BOOL)isEqual:(id)a3;
- (MAAutoAssetSelector)initWithCoder:(id)a3;
- (id)_initForAssetType:(id)a3 withAssetSpecifier:(id)a4 matchingAssetVersion:(id)a5 usingDecryptionKey:(id)a6 setAtomicInstanceUUID:(id)a7;
- (id)copy;
- (id)copyClearingWriteOnlyFields;
- (id)initForAssetType:(id)a3;
- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4;
- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4 matchingAssetVersion:(id)a5;
- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4 matchingAssetVersion:(id)a5 usingDecryptionKey:(id)a6;
- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4 usingDecryptionKey:(id)a5;
- (id)initForSetAtomicInstanceUUID:(id)a3;
- (id)newSummaryDictionary;
- (id)persistedEntryID;
- (id)shortName;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSelector

- (id)summary
{
  v3 = [(MAAutoAssetSelector *)self assetVersion];
  if (v3 || ([(MAAutoAssetSelector *)self assetSpecifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v15 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

    if (v15)
    {
      v16 = MEMORY[0x1E696AEC0];
      v7 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
      v13 = [v16 stringWithFormat:@"setAtomicInstanceUUID:%@", v7];
      goto LABEL_10;
    }
  }

  v4 = [(MAAutoAssetSelector *)self assetVersion];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(MAAutoAssetSelector *)self assetVersion];
    v7 = [v5 initWithFormat:@"|version:%@", v6];
  }

  else
  {
    v7 = @"(any version)";
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(MAAutoAssetSelector *)self assetType];
  v10 = [(MAAutoAssetSelector *)self assetSpecifier];
  v11 = [(MAAutoAssetSelector *)self downloadDecryptionKey];
  v12 = @"|decryption:Y";
  if (!v11)
  {
    v12 = &stru_1F0C1B388;
  }

  v13 = [v8 stringWithFormat:@"type:%@|specifier:%@%@%@", v9, v10, v7, v12];

LABEL_10:

  return v13;
}

- (id)persistedEntryID
{
  v3 = [(MAAutoAssetSelector *)self assetVersion];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AD60]);
    v5 = [(MAAutoAssetSelector *)self assetVersion];
    v6 = [v4 initWithString:v5];

    [v6 replaceOccurrencesOfString:@" withString:" options:@"_" range:{2, 0, objc_msgSend(v6, "length")}];
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [(MAAutoAssetSelector *)self assetType];
    v9 = [(MAAutoAssetSelector *)self assetSpecifier];
    v10 = [v7 initWithFormat:@"%@_%@_%@", v8, v9, v6];
  }

  else
  {
    v11 = [(MAAutoAssetSelector *)self assetSpecifier];

    if (!v11)
    {
      v14 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v14)
      {
        v6 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
        v16 = [v15 initWithFormat:@"%@_SET_ATOMIC_INSTANCE", v6];
      }

      else
      {
        v6 = [(MAAutoAssetSelector *)self assetType];
        v16 = [v15 initWithFormat:@"%@_ENTIRE_ASSET_TYPE", v6];
      }

      v10 = v16;
      goto LABEL_6;
    }

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(MAAutoAssetSelector *)self assetType];
    v8 = [(MAAutoAssetSelector *)self assetSpecifier];
    v10 = [v12 initWithFormat:@"%@_%@", v6, v8];
  }

LABEL_6:

  return v10;
}

- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSelector;
  v9 = [(MAAutoAssetSelector *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetType, a3);
    objc_storeStrong(&v10->_assetSpecifier, a4);
    assetVersion = v10->_assetVersion;
    v10->_assetVersion = 0;

    downloadDecryptionKey = v10->_downloadDecryptionKey;
    v10->_downloadDecryptionKey = 0;

    setAtomicInstanceUUID = v10->_setAtomicInstanceUUID;
    v10->_setAtomicInstanceUUID = 0;
  }

  return v10;
}

- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4 usingDecryptionKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSelector;
  v12 = [(MAAutoAssetSelector *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetType, a3);
    objc_storeStrong(&v13->_assetSpecifier, a4);
    assetVersion = v13->_assetVersion;
    v13->_assetVersion = 0;

    objc_storeStrong(&v13->_downloadDecryptionKey, a5);
    setAtomicInstanceUUID = v13->_setAtomicInstanceUUID;
    v13->_setAtomicInstanceUUID = 0;
  }

  return v13;
}

- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4 matchingAssetVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSelector;
  v12 = [(MAAutoAssetSelector *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetType, a3);
    objc_storeStrong(&v13->_assetSpecifier, a4);
    objc_storeStrong(&v13->_assetVersion, a5);
    downloadDecryptionKey = v13->_downloadDecryptionKey;
    v13->_downloadDecryptionKey = 0;

    setAtomicInstanceUUID = v13->_setAtomicInstanceUUID;
    v13->_setAtomicInstanceUUID = 0;
  }

  return v13;
}

- (id)initForAssetType:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MAAutoAssetSelector;
  v6 = [(MAAutoAssetSelector *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetType, a3);
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

- (id)initForSetAtomicInstanceUUID:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_setAtomicInstanceUUID, a3);
  }

  return v7;
}

- (id)initForAssetType:(id)a3 withAssetSpecifier:(id)a4 matchingAssetVersion:(id)a5 usingDecryptionKey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = MAAutoAssetSelector;
  v15 = [(MAAutoAssetSelector *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetType, a3);
    objc_storeStrong(&v16->_assetSpecifier, a4);
    objc_storeStrong(&v16->_assetVersion, a5);
    objc_storeStrong(&v16->_downloadDecryptionKey, a6);
    setAtomicInstanceUUID = v16->_setAtomicInstanceUUID;
    v16->_setAtomicInstanceUUID = 0;
  }

  return v16;
}

- (id)_initForAssetType:(id)a3 withAssetSpecifier:(id)a4 matchingAssetVersion:(id)a5 usingDecryptionKey:(id)a6 setAtomicInstanceUUID:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = MAAutoAssetSelector;
  v17 = [(MAAutoAssetSelector *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_assetType, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  return p_isa;
}

- (MAAutoAssetSelector)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSelector;
  v5 = [(MAAutoAssetSelector *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setAtomicInstanceUUID"];
    setAtomicInstanceUUID = v5->_setAtomicInstanceUUID;
    v5->_setAtomicInstanceUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSpecifier"];
    assetSpecifier = v5->_assetSpecifier;
    v5->_assetSpecifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadDecryptionKey"];
    downloadDecryptionKey = v5->_downloadDecryptionKey;
    v5->_downloadDecryptionKey = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
  [v4 encodeObject:v5 forKey:@"setAtomicInstanceUUID"];

  v6 = [(MAAutoAssetSelector *)self assetType];
  [v4 encodeObject:v6 forKey:@"assetType"];

  v7 = [(MAAutoAssetSelector *)self assetSpecifier];
  [v4 encodeObject:v7 forKey:@"assetSpecifier"];

  v8 = [(MAAutoAssetSelector *)self assetVersion];
  [v4 encodeObject:v8 forKey:@"assetVersion"];

  v9 = [(MAAutoAssetSelector *)self downloadDecryptionKey];
  [v4 encodeObject:v9 forKey:@"downloadDecryptionKey"];
}

- (id)copy
{
  v3 = [MAAutoAssetSelector alloc];
  v4 = [(MAAutoAssetSelector *)self assetType];
  v5 = [(MAAutoAssetSelector *)self assetSpecifier];
  v6 = [(MAAutoAssetSelector *)self assetVersion];
  v7 = [(MAAutoAssetSelector *)self downloadDecryptionKey];
  v8 = [(MAAutoAssetSelector *)v3 initForAssetType:v4 withAssetSpecifier:v5 matchingAssetVersion:v6 usingDecryptionKey:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(MAAutoAssetSelector *)v6 setAtomicInstanceUUID];
      if (!v7)
      {
        v11 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
        if (v11)
        {
          v12 = v11;
LABEL_23:
          v10 = 0;
LABEL_52:

          goto LABEL_53;
        }
      }

      v8 = [(MAAutoAssetSelector *)v6 setAtomicInstanceUUID];
      if (v8)
      {
        v9 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

        if (v7)
        {

          if (!v9)
          {
            goto LABEL_40;
          }
        }

        else if (!v9)
        {
          goto LABEL_40;
        }
      }

      else
      {

        if (v7)
        {
        }
      }

      v13 = [(MAAutoAssetSelector *)v6 setAtomicInstanceUUID];
      if (v13)
      {
        v14 = v13;
        v15 = [(MAAutoAssetSelector *)v6 setAtomicInstanceUUID];
        v16 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
        v17 = [v15 isEqualToString:v16];

        if (!v17)
        {
          goto LABEL_40;
        }
      }

      v18 = [(MAAutoAssetSelector *)v6 assetType];
      if (!v18)
      {
        goto LABEL_40;
      }

      v12 = v18;
      v19 = [(MAAutoAssetSelector *)v6 assetSpecifier];
      if (!v19)
      {
        goto LABEL_23;
      }

      v20 = v19;
      v21 = [(MAAutoAssetSelector *)v6 assetVersion];
      if (!v21)
      {
        v24 = [(MAAutoAssetSelector *)self assetVersion];
        if (v24)
        {
          v25 = v24;
          v10 = 0;
          goto LABEL_50;
        }
      }

      v22 = [(MAAutoAssetSelector *)v6 assetVersion];
      if (v22)
      {
        v3 = [(MAAutoAssetSelector *)self assetVersion];
        if (!v3)
        {
          LOBYTE(v23) = 1;
          goto LABEL_38;
        }
      }

      v26 = [(MAAutoAssetSelector *)v6 downloadDecryptionKey];
      if (!v26)
      {
        v29 = [(MAAutoAssetSelector *)self downloadDecryptionKey];
        if (v29)
        {
          LOBYTE(v23) = 1;
          goto LABEL_37;
        }
      }

      v23 = [(MAAutoAssetSelector *)v6 downloadDecryptionKey];
      if (v23)
      {
        v35 = v3;
        v27 = [(MAAutoAssetSelector *)self downloadDecryptionKey];
        v28 = v27 == 0;

        if (v26)
        {
          LOBYTE(v23) = v28;
          v3 = v35;
          goto LABEL_33;
        }

        v29 = 0;
        LOBYTE(v23) = v28;
        v3 = v35;
      }

      else
      {
        if (v26)
        {
LABEL_33:

          if (!v22)
          {
LABEL_39:

            if ((v23 & 1) == 0)
            {
              v12 = [(MAAutoAssetSelector *)v6 assetType];
              v20 = [(MAAutoAssetSelector *)self assetType];
              if (![v12 isEqualToString:v20])
              {
                v10 = 0;
LABEL_51:

                goto LABEL_52;
              }

              v25 = [(MAAutoAssetSelector *)v6 assetSpecifier];
              v30 = [(MAAutoAssetSelector *)self assetSpecifier];
              if ([v25 isEqualToString:v30])
              {
                v31 = [(MAAutoAssetSelector *)v6 assetVersion];
                if (v31)
                {
                  v32 = [(MAAutoAssetSelector *)v6 assetVersion];
                  v33 = [(MAAutoAssetSelector *)self assetVersion];
                  v10 = [v32 isEqualToString:v33];
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

        v29 = 0;
      }

LABEL_37:

      if (!v22)
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
  v4 = [(MAAutoAssetSelector *)self assetType];
  v5 = [(MAAutoAssetSelector *)self assetSpecifier];
  v6 = [(MAAutoAssetSelector *)self assetVersion];
  v7 = [(MAAutoAssetSelector *)v3 initForAssetType:v4 withAssetSpecifier:v5 matchingAssetVersion:v6];

  return v7;
}

- (id)shortName
{
  v3 = [(MAAutoAssetSelector *)self assetVersion];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [(MAAutoAssetSelector *)self assetSpecifier];
    v6 = [(MAAutoAssetSelector *)self assetVersion];
    v7 = [v4 initWithFormat:@"%@(%@)", v5, v6];
  }

  else
  {
    v8 = [(MAAutoAssetSelector *)self assetSpecifier];

    if (v8)
    {
      v9 = [(MAAutoAssetSelector *)self assetSpecifier];
    }

    else
    {
      v10 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];

      if (v10)
      {
        [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
      }

      else
      {
        [(MAAutoAssetSelector *)self assetType];
      }
      v9 = ;
    }

    v7 = v9;
  }

  return v7;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MAAutoAssetSelector *)self setAtomicInstanceUUID];
  [v3 setSafeObject:v4 forKey:@"setAtomicInstanceUUID"];

  v5 = [(MAAutoAssetSelector *)self assetType];
  [v3 setSafeObject:v5 forKey:@"assetType"];

  v6 = [(MAAutoAssetSelector *)self assetSpecifier];
  [v3 setSafeObject:v6 forKey:@"assetSpecifier"];

  v7 = [(MAAutoAssetSelector *)self assetVersion];
  if (v7)
  {
    v8 = [(MAAutoAssetSelector *)self assetVersion];
    [v3 setSafeObject:v8 forKey:@"assetVersion"];
  }

  else
  {
    [v3 setSafeObject:@"ANY-VERSION" forKey:@"assetVersion"];
  }

  v9 = [(MAAutoAssetSelector *)self downloadDecryptionKey];
  if (v9)
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