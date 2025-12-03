@interface MIStoreMetadataDistributor
- (BOOL)isEqual:(id)equal;
- (MIStoreMetadataDistributor)initWithCoder:(id)coder;
- (MIStoreMetadataDistributor)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (NSString)distributorNameForCurrentLocale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)distributorType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIStoreMetadataDistributor

- (MIStoreMetadataDistributor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(MIStoreMetadataDistributor *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:distributorID];
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

    v7 = [dictionaryCopy objectForKeyedSubscript:accountID];
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

    v8 = [dictionaryCopy objectForKeyedSubscript:domain];
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

    v9 = [dictionaryCopy objectForKeyedSubscript:::supportPageURL];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:{::sourceURL, v36}];
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

    v19 = [dictionaryCopy objectForKeyedSubscript:localizedDistributorName];
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

    v22 = [dictionaryCopy objectForKeyedSubscript:developerID];
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

    v23 = [dictionaryCopy objectForKeyedSubscript:developerName];
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

    v24 = [dictionaryCopy objectForKeyedSubscript:::shareURL];
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

    v29 = [dictionaryCopy objectForKeyedSubscript:{marketplaceItemID, v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setMarketplaceItemID:v29];
    }

    else if (v29 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:marketplaceDomain];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadataDistributor *)v5 setMarketplaceDomain:v30];
    }

    else if (v30 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      MOLogWrite();
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:betaTesterType];
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
      unsignedIntegerValue = [v33 unsignedIntegerValue];
      if (unsignedIntegerValue <= 2)
      {
        v5->_betaTesterType = unsignedIntegerValue;
      }
    }
  }

  return v5;
}

- (MIStoreMetadataDistributor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MIStoreMetadataDistributor *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorID"];
    distributorID = v5->_distributorID;
    v5->_distributorID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportPageURL"];
    supportPageURL = v5->_supportPageURL;
    v5->_supportPageURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceURL"];
    sourceURL = v5->_sourceURL;
    v5->_sourceURL = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"localizedDistributorName"];
    localizedDistributorName = v5->_localizedDistributorName;
    v5->_localizedDistributorName = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerID"];
    developerID = v5->_developerID;
    v5->_developerID = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerName"];
    developerName = v5->_developerName;
    v5->_developerName = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"marketplaceItemID"];
    marketplaceItemID = v5->_marketplaceItemID;
    v5->_marketplaceItemID = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"marketplaceDomain"];
    marketplaceDomain = v5->_marketplaceDomain;
    v5->_marketplaceDomain = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"betaTesterType"];
    v32 = v31;
    if (v31)
    {
      unsignedIntegerValue = [v31 unsignedIntegerValue];
      if (unsignedIntegerValue <= 2)
      {
        v5->_betaTesterType = unsignedIntegerValue;
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  distributorID = [(MIStoreMetadataDistributor *)self distributorID];
  v7 = [distributorID copyWithZone:zone];
  [v5 setDistributorID:v7];

  accountID = [(MIStoreMetadataDistributor *)self accountID];
  v9 = [accountID copyWithZone:zone];
  [v5 setAccountID:v9];

  domain = [(MIStoreMetadataDistributor *)self domain];
  v11 = [domain copyWithZone:zone];
  [v5 setDomain:v11];

  supportPageURL = [(MIStoreMetadataDistributor *)self supportPageURL];
  v13 = [supportPageURL copyWithZone:zone];
  [v5 setSupportPageURL:v13];

  sourceURL = [(MIStoreMetadataDistributor *)self sourceURL];
  v15 = [sourceURL copyWithZone:zone];
  [v5 setSourceURL:v15];

  localizedDistributorName = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  v17 = [localizedDistributorName copyWithZone:zone];
  [v5 setLocalizedDistributorName:v17];

  developerID = [(MIStoreMetadataDistributor *)self developerID];
  v19 = [developerID copyWithZone:zone];
  [v5 setDeveloperID:v19];

  developerName = [(MIStoreMetadataDistributor *)self developerName];
  v21 = [developerName copyWithZone:zone];
  [v5 setDeveloperName:v21];

  shareURL = [(MIStoreMetadataDistributor *)self shareURL];
  v23 = [shareURL copyWithZone:zone];
  [v5 setShareURL:v23];

  marketplaceItemID = [(MIStoreMetadataDistributor *)self marketplaceItemID];
  v25 = [marketplaceItemID copyWithZone:zone];
  [v5 setMarketplaceItemID:v25];

  marketplaceDomain = [(MIStoreMetadataDistributor *)self marketplaceDomain];
  v27 = [marketplaceDomain copyWithZone:zone];
  [v5 setMarketplaceDomain:v27];

  [v5 setBetaTesterType:{-[MIStoreMetadataDistributor betaTesterType](self, "betaTesterType")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  distributorID = [(MIStoreMetadataDistributor *)self distributorID];
  [coderCopy encodeObject:distributorID forKey:@"distributorID"];

  accountID = [(MIStoreMetadataDistributor *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  domain = [(MIStoreMetadataDistributor *)self domain];
  [coderCopy encodeObject:domain forKey:@"domain"];

  supportPageURL = [(MIStoreMetadataDistributor *)self supportPageURL];
  [coderCopy encodeObject:supportPageURL forKey:@"supportPageURL"];

  sourceURL = [(MIStoreMetadataDistributor *)self sourceURL];
  [coderCopy encodeObject:sourceURL forKey:@"sourceURL"];

  localizedDistributorName = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  [coderCopy encodeObject:localizedDistributorName forKey:@"localizedDistributorName"];

  developerID = [(MIStoreMetadataDistributor *)self developerID];
  [coderCopy encodeObject:developerID forKey:@"developerID"];

  developerName = [(MIStoreMetadataDistributor *)self developerName];
  [coderCopy encodeObject:developerName forKey:@"developerName"];

  shareURL = [(MIStoreMetadataDistributor *)self shareURL];
  [coderCopy encodeObject:shareURL forKey:@"shareURL"];

  marketplaceItemID = [(MIStoreMetadataDistributor *)self marketplaceItemID];
  [coderCopy encodeObject:marketplaceItemID forKey:@"marketplaceItemID"];

  marketplaceDomain = [(MIStoreMetadataDistributor *)self marketplaceDomain];
  [coderCopy encodeObject:marketplaceDomain forKey:@"marketplaceDomain"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIStoreMetadataDistributor betaTesterType](self, "betaTesterType")}];
  [coderCopy encodeObject:v16 forKey:@"betaTesterType"];
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  distributorID = [(MIStoreMetadataDistributor *)self distributorID];
  if (distributorID)
  {
    [v3 setObject:distributorID forKeyedSubscript:distributorID];
  }

  accountID = [(MIStoreMetadataDistributor *)self accountID];
  if (accountID)
  {
    [v3 setObject:accountID forKeyedSubscript:accountID];
  }

  domain = [(MIStoreMetadataDistributor *)self domain];
  if (domain)
  {
    [v3 setObject:domain forKeyedSubscript:domain];
  }

  localizedDistributorName = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  if (localizedDistributorName)
  {
    [v3 setObject:localizedDistributorName forKeyedSubscript:localizedDistributorName];
  }

  supportPageURL = [(MIStoreMetadataDistributor *)self supportPageURL];
  v9 = supportPageURL;
  if (supportPageURL)
  {
    absoluteString = [supportPageURL absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:supportPageURL];
  }

  sourceURL = [(MIStoreMetadataDistributor *)self sourceURL];
  v12 = sourceURL;
  if (sourceURL)
  {
    absoluteString2 = [sourceURL absoluteString];
    [v3 setObject:absoluteString2 forKeyedSubscript:sourceURL];
  }

  developerID = [(MIStoreMetadataDistributor *)self developerID];
  if (developerID)
  {
    [v3 setObject:developerID forKeyedSubscript:developerID];
  }

  developerName = [(MIStoreMetadataDistributor *)self developerName];
  if (developerName)
  {
    [v3 setObject:developerName forKeyedSubscript:developerName];
  }

  shareURL = [(MIStoreMetadataDistributor *)self shareURL];
  v17 = shareURL;
  if (shareURL)
  {
    absoluteString3 = [shareURL absoluteString];
    [v3 setObject:absoluteString3 forKeyedSubscript:shareURL];
  }

  marketplaceItemID = [(MIStoreMetadataDistributor *)self marketplaceItemID];
  if (marketplaceItemID)
  {
    [v3 setObject:marketplaceItemID forKeyedSubscript:marketplaceItemID];
  }

  marketplaceDomain = [(MIStoreMetadataDistributor *)self marketplaceDomain];
  if (marketplaceDomain)
  {
    [v3 setObject:marketplaceDomain forKeyedSubscript:marketplaceDomain];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIStoreMetadataDistributor betaTesterType](self, "betaTesterType")}];
  [v3 setObject:v21 forKeyedSubscript:betaTesterType];

  v22 = [v3 copy];

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      distributorID = [(MIStoreMetadataDistributor *)self distributorID];
      distributorID2 = [(MIStoreMetadataDistributor *)v5 distributorID];
      if (MICompareObjects(distributorID, distributorID2))
      {
        accountID = [(MIStoreMetadataDistributor *)self accountID];
        accountID2 = [(MIStoreMetadataDistributor *)v5 accountID];
        if (MICompareObjects(accountID, accountID2))
        {
          domain = [(MIStoreMetadataDistributor *)self domain];
          domain2 = [(MIStoreMetadataDistributor *)v5 domain];
          if (MICompareObjects(domain, domain2))
          {
            supportPageURL = [(MIStoreMetadataDistributor *)self supportPageURL];
            supportPageURL2 = [(MIStoreMetadataDistributor *)v5 supportPageURL];
            v40 = supportPageURL;
            if (MICompareObjects(supportPageURL, supportPageURL2))
            {
              sourceURL = [(MIStoreMetadataDistributor *)self sourceURL];
              sourceURL2 = [(MIStoreMetadataDistributor *)v5 sourceURL];
              v38 = sourceURL;
              if (MICompareObjects(sourceURL, sourceURL2))
              {
                localizedDistributorName = [(MIStoreMetadataDistributor *)self localizedDistributorName];
                localizedDistributorName2 = [(MIStoreMetadataDistributor *)v5 localizedDistributorName];
                v36 = localizedDistributorName;
                if (MICompareObjects(localizedDistributorName, localizedDistributorName2))
                {
                  developerID = [(MIStoreMetadataDistributor *)self developerID];
                  developerID2 = [(MIStoreMetadataDistributor *)v5 developerID];
                  v34 = developerID;
                  if (MICompareObjects(developerID, developerID2))
                  {
                    developerName = [(MIStoreMetadataDistributor *)self developerName];
                    developerName2 = [(MIStoreMetadataDistributor *)v5 developerName];
                    v32 = developerName;
                    if (MICompareObjects(developerName, developerName2))
                    {
                      shareURL = [(MIStoreMetadataDistributor *)self shareURL];
                      shareURL2 = [(MIStoreMetadataDistributor *)v5 shareURL];
                      v30 = shareURL;
                      if (MICompareObjects(shareURL, shareURL2))
                      {
                        marketplaceItemID = [(MIStoreMetadataDistributor *)self marketplaceItemID];
                        marketplaceItemID2 = [(MIStoreMetadataDistributor *)v5 marketplaceItemID];
                        v28 = marketplaceItemID;
                        if (MICompareObjects(marketplaceItemID, marketplaceItemID2))
                        {
                          marketplaceDomain = [(MIStoreMetadataDistributor *)self marketplaceDomain];
                          marketplaceDomain2 = [(MIStoreMetadataDistributor *)v5 marketplaceDomain];
                          v26 = marketplaceDomain;
                          v21 = marketplaceDomain;
                          v22 = marketplaceDomain2;
                          if (MICompareObjects(v21, marketplaceDomain2))
                          {
                            betaTesterType = [(MIStoreMetadataDistributor *)self betaTesterType];
                            v24 = betaTesterType == [(MIStoreMetadataDistributor *)v5 betaTesterType];
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
  distributorID = [(MIStoreMetadataDistributor *)self distributorID];
  v3 = [distributorID hash];
  accountID = [(MIStoreMetadataDistributor *)self accountID];
  v4 = [accountID hash] ^ v3;
  domain = [(MIStoreMetadataDistributor *)self domain];
  v5 = [domain hash];
  supportPageURL = [(MIStoreMetadataDistributor *)self supportPageURL];
  v6 = v4 ^ v5 ^ [supportPageURL hash];
  sourceURL = [(MIStoreMetadataDistributor *)self sourceURL];
  v8 = [sourceURL hash];
  localizedDistributorName = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  v10 = v8 ^ [localizedDistributorName hash];
  developerID = [(MIStoreMetadataDistributor *)self developerID];
  v12 = v6 ^ v10 ^ [developerID hash];
  developerName = [(MIStoreMetadataDistributor *)self developerName];
  v14 = [developerName hash];
  shareURL = [(MIStoreMetadataDistributor *)self shareURL];
  v16 = v14 ^ [shareURL hash];
  marketplaceItemID = [(MIStoreMetadataDistributor *)self marketplaceItemID];
  v18 = v16 ^ [marketplaceItemID hash];
  marketplaceDomain = [(MIStoreMetadataDistributor *)self marketplaceDomain];
  v20 = v12 ^ v18 ^ [marketplaceDomain hash];
  betaTesterType = [(MIStoreMetadataDistributor *)self betaTesterType];

  return v20 ^ betaTesterType;
}

- (id)description
{
  dictionaryRepresentation = [(MIStoreMetadataDistributor *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (unint64_t)distributorType
{
  distributorID = [(MIStoreMetadataDistributor *)self distributorID];
  v3 = distributorID;
  if (distributorID)
  {
    if ([distributorID isEqualToString:@"com.apple.AppStore"])
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
  localizedDistributorName = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  localizedDistributorName2 = [(MIStoreMetadataDistributor *)self localizedDistributorName];
  allKeys = [localizedDistributorName2 allKeys];

  if (![allKeys count])
  {
    goto LABEL_11;
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = CFBundleCopyLocalizationsForPreferences(allKeys, 0);
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

        v11 = [localizedDistributorName objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          distributorID = v11;

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

  distributorID = [localizedDistributorName objectForKeyedSubscript:&stru_1F28762E8];

  if (!distributorID)
  {
LABEL_11:
    distributorID = [(MIStoreMetadataDistributor *)self distributorID];
  }

LABEL_13:

  return distributorID;
}

@end