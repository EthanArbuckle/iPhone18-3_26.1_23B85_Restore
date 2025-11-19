@interface DDSAsset
+ (id)debuggingIDsForAssets:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DDSAsset)initWithAttributes:(id)a3 localURL:(id)a4;
- (unint64_t)hash;
@end

@implementation DDSAsset

- (DDSAsset)initWithAttributes:(id)a3 localURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = DDSAsset;
  v8 = [(DDSAsset *)&v33 init];
  if (v8)
  {
    v9 = [v6 copy];
    attributes = v8->_attributes;
    v8->_attributes = v9;

    v11 = [v7 copy];
    localURL = v8->_localURL;
    v8->_localURL = v11;

    v13 = assetUUIDWithLocalURL(v7);
    assetUUID = v8->_assetUUID;
    v8->_assetUUID = v13;

    v15 = uniqueIdentifierWithAttributes(v6);
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v15;

    v17 = shortNameWithAttributes(v6);
    shortName = v8->_shortName;
    v8->_shortName = v17;

    v19 = [v6 dds_numberForKey:@"_CompatibilityVersion"];
    v8->_compatibilityVersion = [v19 unsignedIntegerValue];

    v20 = [v6 dds_numberForKey:@"_ContentVersion"];
    v8->_contentVersion = [v20 unsignedIntegerValue];

    v21 = [v6 dds_stringForKey:@"AssetLocale"];
    locale = v8->_locale;
    v8->_locale = v21;

    v23 = [v6 dds_stringForKey:@"__InstallDate"];
    installDate = v8->_installDate;
    v8->_installDate = v23;

    v25 = v6;
    v26 = assetUUIDWithLocalURL(v7);
    if (DDS_LOG_REDACTED())
    {
      uniqueIdentifierWithAttributes(v25);
    }

    else
    {
      shortNameWithAttributes(v25);
    }
    v27 = ;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@::%@", v27, v26];

    debuggingID = v8->_debuggingID;
    v8->_debuggingID = v28;

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p, %@>", objc_opt_class(), v8, v8->_debuggingID];
    description = v8->_description;
    v8->_description = v30;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(DDSAsset *)self attributes];
    v8 = [v6 attributes];
    if (!DDSObjectsAreEqualOrNil(v7, v8))
    {
      v20 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v9 = [(DDSAsset *)self localURL];
    v10 = [v6 localURL];
    if (!DDSObjectsAreEqualOrNil(v9, v10))
    {
      v20 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v11 = [(DDSAsset *)self assetUUID];
    v12 = [v6 assetUUID];
    if (!DDSObjectsAreEqualOrNil(v11, v12))
    {
      v20 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v13 = [(DDSAsset *)self uniqueIdentifier];
    v32 = [v6 uniqueIdentifier];
    if (!DDSObjectsAreEqualOrNil(v13, v32))
    {
      v20 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v30 = v11;
    v14 = [(DDSAsset *)self shortName];
    [v6 shortName];
    v29 = v31 = v14;
    if (DDSObjectsAreEqualOrNil(v14, v29))
    {
      v28 = v13;
      v15 = [(DDSAsset *)self compatibilityVersion];
      if (v15 == [v6 compatibilityVersion])
      {
        v16 = [(DDSAsset *)self locale];
        v26 = [v6 locale];
        v27 = v16;
        if (DDSObjectsAreEqualOrNil(v16, v26))
        {
          v17 = [(DDSAsset *)self installDate];
          v24 = [v6 installDate];
          v25 = v17;
          if (DDSObjectsAreEqualOrNil(v17, v24))
          {
            v18 = [(DDSAsset *)self debuggingID];
            v22 = [v6 debuggingID];
            v23 = v18;
            if (DDSObjectsAreEqualOrNil(v18, v22))
            {
              v19 = [(DDSAsset *)self contentVersion];
              v20 = v19 == [v6 contentVersion];
            }

            else
            {
              v20 = 0;
            }

            v13 = v28;
            v11 = v30;
          }

          else
          {
            v20 = 0;
            v13 = v28;
            v11 = v30;
          }
        }

        else
        {
          v20 = 0;
          v13 = v28;
          v11 = v30;
        }

        goto LABEL_29;
      }

      v20 = 0;
      v13 = v28;
    }

    else
    {
      v20 = 0;
    }

    v11 = v30;
LABEL_29:

    goto LABEL_30;
  }

  v20 = 0;
LABEL_34:

  return v20;
}

- (unint64_t)hash
{
  v3 = [(DDSAsset *)self attributes];
  v4 = [v3 hash];

  v5 = [(DDSAsset *)self localURL];
  v6 = [v5 hash] ^ v4;

  v7 = [(DDSAsset *)self assetUUID];
  v8 = [v7 hash];

  v9 = [(DDSAsset *)self uniqueIdentifier];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(DDSAsset *)self shortName];
  v12 = [v11 hash];

  v13 = v12 ^ [(DDSAsset *)self compatibilityVersion];
  v14 = [(DDSAsset *)self locale];
  v15 = v10 ^ v13 ^ [v14 hash];

  v16 = [(DDSAsset *)self installDate];
  v17 = [v16 hash];

  v18 = [(DDSAsset *)self debuggingID];
  v19 = v17 ^ [v18 hash];

  return v15 ^ v19 ^ [(DDSAsset *)self contentVersion];
}

+ (id)debuggingIDsForAssets:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) debuggingID];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end