@interface DDSAsset
+ (id)debuggingIDsForAssets:(id)assets;
- (BOOL)isEqual:(id)equal;
- (DDSAsset)initWithAttributes:(id)attributes localURL:(id)l;
- (unint64_t)hash;
@end

@implementation DDSAsset

- (DDSAsset)initWithAttributes:(id)attributes localURL:(id)l
{
  attributesCopy = attributes;
  lCopy = l;
  v33.receiver = self;
  v33.super_class = DDSAsset;
  v8 = [(DDSAsset *)&v33 init];
  if (v8)
  {
    v9 = [attributesCopy copy];
    attributes = v8->_attributes;
    v8->_attributes = v9;

    v11 = [lCopy copy];
    localURL = v8->_localURL;
    v8->_localURL = v11;

    v13 = assetUUIDWithLocalURL(lCopy);
    assetUUID = v8->_assetUUID;
    v8->_assetUUID = v13;

    v15 = uniqueIdentifierWithAttributes(attributesCopy);
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v15;

    v17 = shortNameWithAttributes(attributesCopy);
    shortName = v8->_shortName;
    v8->_shortName = v17;

    v19 = [attributesCopy dds_numberForKey:@"_CompatibilityVersion"];
    v8->_compatibilityVersion = [v19 unsignedIntegerValue];

    v20 = [attributesCopy dds_numberForKey:@"_ContentVersion"];
    v8->_contentVersion = [v20 unsignedIntegerValue];

    v21 = [attributesCopy dds_stringForKey:@"AssetLocale"];
    locale = v8->_locale;
    v8->_locale = v21;

    v23 = [attributesCopy dds_stringForKey:@"__InstallDate"];
    installDate = v8->_installDate;
    v8->_installDate = v23;

    v25 = attributesCopy;
    v26 = assetUUIDWithLocalURL(lCopy);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    attributes = [(DDSAsset *)self attributes];
    attributes2 = [v6 attributes];
    if (!DDSObjectsAreEqualOrNil(attributes, attributes2))
    {
      v20 = 0;
LABEL_33:

      goto LABEL_34;
    }

    localURL = [(DDSAsset *)self localURL];
    localURL2 = [v6 localURL];
    if (!DDSObjectsAreEqualOrNil(localURL, localURL2))
    {
      v20 = 0;
LABEL_32:

      goto LABEL_33;
    }

    assetUUID = [(DDSAsset *)self assetUUID];
    assetUUID2 = [v6 assetUUID];
    if (!DDSObjectsAreEqualOrNil(assetUUID, assetUUID2))
    {
      v20 = 0;
LABEL_31:

      goto LABEL_32;
    }

    uniqueIdentifier = [(DDSAsset *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    if (!DDSObjectsAreEqualOrNil(uniqueIdentifier, uniqueIdentifier2))
    {
      v20 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v30 = assetUUID;
    shortName = [(DDSAsset *)self shortName];
    [v6 shortName];
    v29 = v31 = shortName;
    if (DDSObjectsAreEqualOrNil(shortName, v29))
    {
      v28 = uniqueIdentifier;
      compatibilityVersion = [(DDSAsset *)self compatibilityVersion];
      if (compatibilityVersion == [v6 compatibilityVersion])
      {
        locale = [(DDSAsset *)self locale];
        locale2 = [v6 locale];
        v27 = locale;
        if (DDSObjectsAreEqualOrNil(locale, locale2))
        {
          installDate = [(DDSAsset *)self installDate];
          installDate2 = [v6 installDate];
          v25 = installDate;
          if (DDSObjectsAreEqualOrNil(installDate, installDate2))
          {
            debuggingID = [(DDSAsset *)self debuggingID];
            debuggingID2 = [v6 debuggingID];
            v23 = debuggingID;
            if (DDSObjectsAreEqualOrNil(debuggingID, debuggingID2))
            {
              contentVersion = [(DDSAsset *)self contentVersion];
              v20 = contentVersion == [v6 contentVersion];
            }

            else
            {
              v20 = 0;
            }

            uniqueIdentifier = v28;
            assetUUID = v30;
          }

          else
          {
            v20 = 0;
            uniqueIdentifier = v28;
            assetUUID = v30;
          }
        }

        else
        {
          v20 = 0;
          uniqueIdentifier = v28;
          assetUUID = v30;
        }

        goto LABEL_29;
      }

      v20 = 0;
      uniqueIdentifier = v28;
    }

    else
    {
      v20 = 0;
    }

    assetUUID = v30;
LABEL_29:

    goto LABEL_30;
  }

  v20 = 0;
LABEL_34:

  return v20;
}

- (unint64_t)hash
{
  attributes = [(DDSAsset *)self attributes];
  v4 = [attributes hash];

  localURL = [(DDSAsset *)self localURL];
  v6 = [localURL hash] ^ v4;

  assetUUID = [(DDSAsset *)self assetUUID];
  v8 = [assetUUID hash];

  uniqueIdentifier = [(DDSAsset *)self uniqueIdentifier];
  v10 = v6 ^ v8 ^ [uniqueIdentifier hash];

  shortName = [(DDSAsset *)self shortName];
  v12 = [shortName hash];

  v13 = v12 ^ [(DDSAsset *)self compatibilityVersion];
  locale = [(DDSAsset *)self locale];
  v15 = v10 ^ v13 ^ [locale hash];

  installDate = [(DDSAsset *)self installDate];
  v17 = [installDate hash];

  debuggingID = [(DDSAsset *)self debuggingID];
  v19 = v17 ^ [debuggingID hash];

  return v15 ^ v19 ^ [(DDSAsset *)self contentVersion];
}

+ (id)debuggingIDsForAssets:(id)assets
{
  v18 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assetsCopy;
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

        debuggingID = [*(*(&v13 + 1) + 8 * i) debuggingID];
        [v4 addObject:debuggingID];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end