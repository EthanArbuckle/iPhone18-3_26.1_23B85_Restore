@interface MIStoreMetadataDistributor
- (BOOL)isEqual:(id)a3;
- (MIStoreMetadataDistributor)initWithCoder:(id)a3;
- (MIStoreMetadataDistributor)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSString)distributorNameForCurrentLocale;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)distributorType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIStoreMetadataDistributor

- (MIStoreMetadataDistributor)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(MIStoreMetadataDistributor *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:distributorID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setDistributorID:v6];
    }

    else if (v6 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v36 = distributorID;
      MOLogWrite();
    }

    v7 = [v4 objectForKeyedSubscript:accountID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setAccountID:v7];
    }

    else if (v7 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v36 = accountID;
      MOLogWrite();
    }

    v8 = [v4 objectForKeyedSubscript:domain];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setDomain:v8];
    }

    else if (v8 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v36 = domain;
      MOLogWrite();
    }

    v9 = [v4 objectForKeyedSubscript:::supportPageURL];
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
      supportPageURL = v5->_supportPageURL;
      v5->_supportPageURL = v12;
    }

    v14 = [v4 objectForKeyedSubscript:{::sourceURL, v36}];
    objc_opt_class();
    v15 = v14;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
      sourceURL = v5->_sourceURL;
      v5->_sourceURL = v17;
    }

    v19 = [v4 objectForKeyedSubscript:localizedDistributorName];
    if (v19)
    {
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      if (MIDictionaryContainsOnlyClasses(v19, v20, v21))
      {
        [(MIStoreMetadataDistributor *)v5 setLocalizedDistributorName:v19];
      }

      else if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    v22 = [v4 objectForKeyedSubscript:developerID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setDeveloperID:v22];
    }

    else if (v22 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v37 = developerID;
      MOLogWrite();
    }

    v23 = [v4 objectForKeyedSubscript:developerName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setDeveloperName:v23];
    }

    else if (v23 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v37 = developerName;
      MOLogWrite();
    }

    v24 = [v4 objectForKeyedSubscript:::shareURL];
    objc_opt_class();
    v25 = v24;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v27 = [MEMORY[0x1E695DFF8] URLWithString:v26];
      shareURL = v5->_shareURL;
      v5->_shareURL = v27;
    }

    v29 = [v4 objectForKeyedSubscript:{marketplaceItemID, v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setMarketplaceItemID:v29];
    }

    else if (v29 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }

    v30 = [v4 objectForKeyedSubscript:marketplaceDomain];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setMarketplaceDomain:v30];
    }

    else if (v30 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }

    v31 = [v4 objectForKeyedSubscript:betaTesterType];
    objc_opt_class();
    v32 = v31;
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      v34 = [v33 unsignedIntegerValue];
      if (v34 <= 2)
      {
        v5->_betaTesterType = v34;
      }
    }
  }

  return v5;
}

- (MIStoreMetadataDistributor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStoreMetadataDistributor *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorID"];
    distributorID = v5->_distributorID;
    v5->_distributorID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportPageURL"];
    supportPageURL = v5->_supportPageURL;
    v5->_supportPageURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"localizedDistributorName"];
    localizedDistributorName = v5->_localizedDistributorName;
    v5->_localizedDistributorName = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"developerID"];
    developerID = v5->_developerID;
    v5->_developerID = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"developerName"];
    developerName = v5->_developerName;
    v5->_developerName = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"marketplaceItemID"];
    marketplaceItemID = v5->_marketplaceItemID;
    v5->_marketplaceItemID = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"marketplaceDomain"];
    marketplaceDomain = v5->_marketplaceDomain;
    v5->_marketplaceDomain = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"betaTesterType"];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 unsignedIntegerValue];
      if (v33 <= 2)
      {
        v5->_betaTesterType = v33;
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MIStoreMetadataDistributor *)self distributorID];
  v7 = [v6 copyWithZone:a3];
  [v5 setDistributorID:v7];

  v8 = [(MIStoreMetadataDistributor *)self accountID];
  v9 = [v8 copyWithZone:a3];
  [v5 setAccountID:v9];

  v10 = [(MIStoreMetadataDistributor *)self domain];
  v11 = [v10 copyWithZone:a3];
  [v5 setDomain:v11];

  v12 = [(MIStoreMetadataDistributor *)self supportPageURL];
  v13 = [v12 copyWithZone:a3];
  [v5 setSupportPageURL:v13];

  v14 = [(MIStoreMetadataDistributor *)self sourceURL];
  v15 = [v14 copyWithZone:a3];
  [v5 setSourceURL:v15];

  v16 = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  v17 = [v16 copyWithZone:a3];
  [v5 setLocalizedDistributorName:v17];

  v18 = [(MIStoreMetadataDistributor *)self developerID];
  v19 = [v18 copyWithZone:a3];
  [v5 setDeveloperID:v19];

  v20 = [(MIStoreMetadataDistributor *)self developerName];
  v21 = [v20 copyWithZone:a3];
  [v5 setDeveloperName:v21];

  v22 = [(MIStoreMetadataDistributor *)self shareURL];
  v23 = [v22 copyWithZone:a3];
  [v5 setShareURL:v23];

  v24 = [(MIStoreMetadataDistributor *)self marketplaceItemID];
  v25 = [v24 copyWithZone:a3];
  [v5 setMarketplaceItemID:v25];

  v26 = [(MIStoreMetadataDistributor *)self marketplaceDomain];
  v27 = [v26 copyWithZone:a3];
  [v5 setMarketplaceDomain:v27];

  [v5 setBetaTesterType:{-[MIStoreMetadataDistributor betaTesterType](self, "betaTesterType")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStoreMetadataDistributor *)self distributorID];
  [v4 encodeObject:v5 forKey:@"distributorID"];

  v6 = [(MIStoreMetadataDistributor *)self accountID];
  [v4 encodeObject:v6 forKey:@"accountID"];

  v7 = [(MIStoreMetadataDistributor *)self domain];
  [v4 encodeObject:v7 forKey:@"domain"];

  v8 = [(MIStoreMetadataDistributor *)self supportPageURL];
  [v4 encodeObject:v8 forKey:@"supportPageURL"];

  v9 = [(MIStoreMetadataDistributor *)self sourceURL];
  [v4 encodeObject:v9 forKey:@"sourceURL"];

  v10 = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  [v4 encodeObject:v10 forKey:@"localizedDistributorName"];

  v11 = [(MIStoreMetadataDistributor *)self developerID];
  [v4 encodeObject:v11 forKey:@"developerID"];

  v12 = [(MIStoreMetadataDistributor *)self developerName];
  [v4 encodeObject:v12 forKey:@"developerName"];

  v13 = [(MIStoreMetadataDistributor *)self shareURL];
  [v4 encodeObject:v13 forKey:@"shareURL"];

  v14 = [(MIStoreMetadataDistributor *)self marketplaceItemID];
  [v4 encodeObject:v14 forKey:@"marketplaceItemID"];

  v15 = [(MIStoreMetadataDistributor *)self marketplaceDomain];
  [v4 encodeObject:v15 forKey:@"marketplaceDomain"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIStoreMetadataDistributor betaTesterType](self, "betaTesterType")}];
  [v4 encodeObject:v16 forKey:@"betaTesterType"];
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(MIStoreMetadataDistributor *)self distributorID];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:distributorID];
  }

  v5 = [(MIStoreMetadataDistributor *)self accountID];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:accountID];
  }

  v6 = [(MIStoreMetadataDistributor *)self domain];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:domain];
  }

  v7 = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:localizedDistributorName];
  }

  v8 = [(MIStoreMetadataDistributor *)self supportPageURL];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 absoluteString];
    [v3 setObject:v10 forKeyedSubscript:supportPageURL];
  }

  v11 = [(MIStoreMetadataDistributor *)self sourceURL];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 absoluteString];
    [v3 setObject:v13 forKeyedSubscript:sourceURL];
  }

  v14 = [(MIStoreMetadataDistributor *)self developerID];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:developerID];
  }

  v15 = [(MIStoreMetadataDistributor *)self developerName];
  if (v15)
  {
    [v3 setObject:v15 forKeyedSubscript:developerName];
  }

  v16 = [(MIStoreMetadataDistributor *)self shareURL];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 absoluteString];
    [v3 setObject:v18 forKeyedSubscript:shareURL];
  }

  v19 = [(MIStoreMetadataDistributor *)self marketplaceItemID];
  if (v19)
  {
    [v3 setObject:v19 forKeyedSubscript:marketplaceItemID];
  }

  v20 = [(MIStoreMetadataDistributor *)self marketplaceDomain];
  if (v20)
  {
    [v3 setObject:v20 forKeyedSubscript:marketplaceDomain];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIStoreMetadataDistributor betaTesterType](self, "betaTesterType")}];
  [v3 setObject:v21 forKeyedSubscript:betaTesterType];

  v22 = [v3 copy];

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIStoreMetadataDistributor *)self distributorID];
      v7 = [(MIStoreMetadataDistributor *)v5 distributorID];
      if (MICompareObjects(v6, v7))
      {
        v8 = [(MIStoreMetadataDistributor *)self accountID];
        v9 = [(MIStoreMetadataDistributor *)v5 accountID];
        if (MICompareObjects(v8, v9))
        {
          v10 = [(MIStoreMetadataDistributor *)self domain];
          v11 = [(MIStoreMetadataDistributor *)v5 domain];
          if (MICompareObjects(v10, v11))
          {
            v12 = [(MIStoreMetadataDistributor *)self supportPageURL];
            v39 = [(MIStoreMetadataDistributor *)v5 supportPageURL];
            v40 = v12;
            if (MICompareObjects(v12, v39))
            {
              v13 = [(MIStoreMetadataDistributor *)self sourceURL];
              v37 = [(MIStoreMetadataDistributor *)v5 sourceURL];
              v38 = v13;
              if (MICompareObjects(v13, v37))
              {
                v14 = [(MIStoreMetadataDistributor *)self localizedDistributorName];
                v35 = [(MIStoreMetadataDistributor *)v5 localizedDistributorName];
                v36 = v14;
                if (MICompareObjects(v14, v35))
                {
                  v15 = [(MIStoreMetadataDistributor *)self developerID];
                  v33 = [(MIStoreMetadataDistributor *)v5 developerID];
                  v34 = v15;
                  if (MICompareObjects(v15, v33))
                  {
                    v16 = [(MIStoreMetadataDistributor *)self developerName];
                    v31 = [(MIStoreMetadataDistributor *)v5 developerName];
                    v32 = v16;
                    if (MICompareObjects(v16, v31))
                    {
                      v17 = [(MIStoreMetadataDistributor *)self shareURL];
                      v29 = [(MIStoreMetadataDistributor *)v5 shareURL];
                      v30 = v17;
                      if (MICompareObjects(v17, v29))
                      {
                        v18 = [(MIStoreMetadataDistributor *)self marketplaceItemID];
                        v27 = [(MIStoreMetadataDistributor *)v5 marketplaceItemID];
                        v28 = v18;
                        if (MICompareObjects(v18, v27))
                        {
                          v19 = [(MIStoreMetadataDistributor *)self marketplaceDomain];
                          v20 = [(MIStoreMetadataDistributor *)v5 marketplaceDomain];
                          v26 = v19;
                          v21 = v19;
                          v22 = v20;
                          if (MICompareObjects(v21, v20))
                          {
                            v23 = [(MIStoreMetadataDistributor *)self betaTesterType];
                            v24 = v23 == [(MIStoreMetadataDistributor *)v5 betaTesterType];
                          }

                          else
                          {
                            v24 = 0;
                          }
                        }

                        else
                        {
                          v24 = 0;
                        }
                      }

                      else
                      {
                        v24 = 0;
                      }
                    }

                    else
                    {
                      v24 = 0;
                    }
                  }

                  else
                  {
                    v24 = 0;
                  }
                }

                else
                {
                  v24 = 0;
                }
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  v26 = [(MIStoreMetadataDistributor *)self distributorID];
  v3 = [v26 hash];
  v25 = [(MIStoreMetadataDistributor *)self accountID];
  v4 = [v25 hash] ^ v3;
  v24 = [(MIStoreMetadataDistributor *)self domain];
  v5 = [v24 hash];
  v23 = [(MIStoreMetadataDistributor *)self supportPageURL];
  v6 = v4 ^ v5 ^ [v23 hash];
  v7 = [(MIStoreMetadataDistributor *)self sourceURL];
  v8 = [v7 hash];
  v9 = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  v10 = v8 ^ [v9 hash];
  v11 = [(MIStoreMetadataDistributor *)self developerID];
  v12 = v6 ^ v10 ^ [v11 hash];
  v13 = [(MIStoreMetadataDistributor *)self developerName];
  v14 = [v13 hash];
  v15 = [(MIStoreMetadataDistributor *)self shareURL];
  v16 = v14 ^ [v15 hash];
  v17 = [(MIStoreMetadataDistributor *)self marketplaceItemID];
  v18 = v16 ^ [v17 hash];
  v19 = [(MIStoreMetadataDistributor *)self marketplaceDomain];
  v20 = v12 ^ v18 ^ [v19 hash];
  v21 = [(MIStoreMetadataDistributor *)self betaTesterType];

  return v20 ^ v21;
}

- (id)description
{
  v2 = [(MIStoreMetadataDistributor *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (unint64_t)distributorType
{
  v2 = [(MIStoreMetadataDistributor *)self distributorID];
  v3 = v2;
  if (v2)
  {
    if ([v2 isEqualToString:@"com.apple.AppStore"])
    {
      v4 = 1;
    }

    else if ([v3 isEqualToString:@"com.apple.TestFlight"])
    {
      v4 = 2;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)distributorNameForCurrentLocale
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  v4 = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  v5 = [v4 allKeys];

  if (![v5 count])
  {
    goto LABEL_11;
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = CFBundleCopyLocalizationsForPreferences(v5, 0);
  v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v3 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          v12 = v11;

          goto LABEL_13;
        }
      }

      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = [v3 objectForKeyedSubscript:&stru_1F28762E8];

  if (!v12)
  {
LABEL_11:
    v12 = [(MIStoreMetadataDistributor *)self distributorID];
  }

LABEL_13:

  return v12;
}

@end