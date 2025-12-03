@interface MIStoreMetadata
+ (id)metadataForBundleContainerURL:(id)l error:(id *)error;
+ (id)metadataFromDictionary:(id)dictionary;
+ (id)metadataFromPlistAtURL:(id)l error:(id *)error;
+ (id)metadataFromPlistData:(id)data error:(id *)error;
- (BOOL)isEligibleForWatchAppInstall;
- (BOOL)isEqual:(id)equal;
- (MIStoreMetadata)initWithCoder:(id)coder;
- (MIStoreMetadata)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)propertyListDataWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIStoreMetadata

- (MIStoreMetadata)initWithDictionary:(id)dictionary
{
  v122 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(MIStoreMetadata *)self init];

  if (!v5)
  {
    goto LABEL_412;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:iAdAttribution];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setIAdAttribution:v6];
  }

  else if (v6 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v103 = iAdAttribution;
    MOLogWrite();
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:iAdConversionDate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setIAdConversionDate:v7];
  }

  else if (v7 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v103 = iAdConversionDate;
    MOLogWrite();
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:iAdImpressionDate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setIAdImpressionDate:v8];
  }

  else if (v8 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v103 = iAdImpressionDate;
    MOLogWrite();
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:artistName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setArtistName:v9];
  }

  else if (v9 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v103 = artistName;
    MOLogWrite();
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:betaExternalVersionIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setBetaExternalVersionIdentifier:v10];
  }

  else if (v10 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v103 = betaExternalVersionIdentifier;
    MOLogWrite();
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:bundleVersion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setBundleVersion:v11];
  }

  else if (v11 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v103 = bundleVersion;
    MOLogWrite();
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:bundleShortVersionString];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setBundleShortVersionString:v12];
  }

  else if (v12 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v103 = bundleShortVersionString;
    MOLogWrite();
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:downloadInfoDict];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = [v14 objectForKeyedSubscript:purchaseDate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadata *)v5 setPurchaseDate:v16];
    }

    else if (v16 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v103 = purchaseDate;
      MOLogWrite();
    }

    v17 = [v14 objectForKeyedSubscript:accountInfoDict];
    objc_opt_class();
    v18 = v17;
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = [v18 objectForKeyedSubscript:appleID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MIStoreMetadata *)v5 setAppleID:v20];
      }

      else if (v20 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v103 = appleID;
        MOLogWrite();
      }

      v21 = [v18 objectForKeyedSubscript:DSPersonID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MIStoreMetadata *)v5 setDSPersonID:v21];
      }

      else if (v21 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v103 = DSPersonID;
        MOLogWrite();
      }

      v22 = [v18 objectForKeyedSubscript:downloaderID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MIStoreMetadata *)v5 setDownloaderID:v22];
      }

      else if (v22 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v103 = downloaderID;
        MOLogWrite();
      }

      v23 = [v18 objectForKeyedSubscript:familyID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MIStoreMetadata *)v5 setFamilyID:v23];
      }

      else if (v23 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v103 = familyID;
        MOLogWrite();
      }

      v24 = [v18 objectForKeyedSubscript:purchaserID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MIStoreMetadata *)v5 setPurchaserID:v24];
      }

      else if (v24 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v103 = purchaserID;
        MOLogWrite();
      }

      v25 = [v18 objectForKeyedSubscript:altDSID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MIStoreMetadata *)v5 setAltDSID:v25];
      }

      else if (v25 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v103 = altDSID;
        MOLogWrite();
      }
    }

    else if (v18 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v103 = accountInfoDict;
      v109 = downloadInfoDict;
      MOLogWrite();
    }
  }

  else if (v14 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v103 = downloadInfoDict;
    MOLogWrite();
  }

  v26 = [dictionaryCopy objectForKeyedSubscript:{hasMessagesExtension, v103, v109}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setHasMessagesExtension:](v5, "setHasMessagesExtension:", [v26 BOOLValue]);
  }

  else if (v26 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = hasMessagesExtension;
    MOLogWrite();
  }

  v27 = [dictionaryCopy objectForKeyedSubscript:initialODRSize];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setInitialODRSize:v27];
  }

  else if (v27 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = initialODRSize;
    MOLogWrite();
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:purchasedRedownload];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setPurchasedRedownload:](v5, "setPurchasedRedownload:", [v28 BOOLValue]);
  }

  else if (v28 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = purchasedRedownload;
    MOLogWrite();
  }

  v29 = [dictionaryCopy objectForKeyedSubscript:itemID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setItemID:v29];
  }

  else if (v29 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = itemID;
    MOLogWrite();
  }

  v30 = [dictionaryCopy objectForKeyedSubscript:itemName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setItemName:v30];
  }

  else if (v30 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = itemName;
    MOLogWrite();
  }

  v31 = [dictionaryCopy objectForKeyedSubscript:shortItemName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setShortItemName:v31];
  }

  else if (v31 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = shortItemName;
    MOLogWrite();
  }

  v32 = [dictionaryCopy objectForKeyedSubscript:kind];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setKind:v32];
  }

  else if (v32 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = kind;
    MOLogWrite();
  }

  v33 = [dictionaryCopy objectForKeyedSubscript:label];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setLabel:v33];
  }

  else if (v33 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = label;
    MOLogWrite();
  }

  v34 = [dictionaryCopy objectForKeyedSubscript:launchProhibited];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setLaunchProhibited:](v5, "setLaunchProhibited:", [v34 BOOLValue]);
  }

  else if (v34 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = launchProhibited;
    MOLogWrite();
  }

  v35 = [dictionaryCopy objectForKeyedSubscript:ratingDict];
  objc_opt_class();
  v36 = v35;
  if (objc_opt_isKindOfClass())
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    v38 = [v36 objectForKeyedSubscript:ratingLabel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadata *)v5 setRatingLabel:v38];
    }

    else if (v38 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v104 = ratingLabel;
      MOLogWrite();
    }

    v39 = [v36 objectForKeyedSubscript:ratingRank];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MIStoreMetadata *)v5 setRatingRank:v39];
    }

    else if (v39 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v104 = ratingRank;
      MOLogWrite();
    }
  }

  else if (v36 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v104 = ratingDict;
    MOLogWrite();
  }

  v40 = [dictionaryCopy objectForKeyedSubscript:{releaseDate, v104}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setReleaseDate:v40];
  }

  else if (v40 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = releaseDate;
    MOLogWrite();
  }

  v41 = [dictionaryCopy objectForKeyedSubscript:softwareVersionBundleID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setSoftwareVersionBundleID:v41];
  }

  else if (v41 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = softwareVersionBundleID;
    MOLogWrite();
  }

  v42 = [dictionaryCopy objectForKeyedSubscript:softwareVersionExternalIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setSoftwareVersionExternalIdentifier:v42];
  }

  else if (v42 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = softwareVersionExternalIdentifier;
    MOLogWrite();
  }

  v43 = [dictionaryCopy objectForKeyedSubscript:sourceApp];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setSourceApp:v43];
  }

  else if (v43 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = sourceApp;
    MOLogWrite();
  }

  v44 = [dictionaryCopy objectForKeyedSubscript:storeCohort];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setStoreCohort:v44];
  }

  else if (v44 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = storeCohort;
    MOLogWrite();
  }

  v45 = [dictionaryCopy objectForKeyedSubscript:storefront];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setStorefront:v45];
  }

  else if (v45 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = storefront;
    MOLogWrite();
  }

  v46 = [dictionaryCopy objectForKeyedSubscript:storefrontCountryCode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setStorefrontCountryCode:v46];
  }

  else if (v46 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = storefrontCountryCode;
    MOLogWrite();
  }

  v47 = [dictionaryCopy objectForKeyedSubscript:assetToken];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setAssetToken:v47];
  }

  else if (v47 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = assetToken;
    MOLogWrite();
  }

  v48 = [dictionaryCopy objectForKeyedSubscript:variantID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setVariantID:v48];
  }

  else if (v48 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = variantID;
    MOLogWrite();
  }

  v49 = [dictionaryCopy objectForKeyedSubscript:betaBuildGroupID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setBetaBuildGroupID:v49];
  }

  else if (v49 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = betaBuildGroupID;
    MOLogWrite();
  }

  v50 = [dictionaryCopy objectForKeyedSubscript:genre];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setGenre:v50];
  }

  else if (v50 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = genre;
    MOLogWrite();
  }

  v51 = [dictionaryCopy objectForKeyedSubscript:genreID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setGenreID:v51];
  }

  else if (v51 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v105 = genreID;
    MOLogWrite();
  }

  v52 = [dictionaryCopy objectForKeyedSubscript:subGenres];
  if (!v52)
  {
    v52 = [dictionaryCopy objectForKeyedSubscript:@"subgenre"];
  }

  objc_opt_class();
  v53 = v52;
  if (objc_opt_isKindOfClass())
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v115 = v53;
  if (v54)
  {
    v112 = v36;
    v113 = v5;
    v114 = dictionaryCopy;
    v116 = objc_opt_new();
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v55 = v53;
    v56 = [v55 countByEnumeratingWithState:&v117 objects:v121 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v118;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v118 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v117 + 1) + 8 * i);
          objc_opt_class();
          v61 = v60;
          if (objc_opt_isKindOfClass())
          {
            v62 = v61;
          }

          else
          {
            v62 = 0;
          }

          if (v62)
          {
            v63 = [v61 objectForKeyedSubscript:genre];
            objc_opt_class();
            v64 = v63;
            if (objc_opt_isKindOfClass())
            {
              v65 = v64;
            }

            else
            {
              v65 = 0;
            }

            v66 = [v61 objectForKeyedSubscript:genreID];
            objc_opt_class();
            v67 = v66;
            if (objc_opt_isKindOfClass())
            {
              v68 = v67;
            }

            else
            {
              v68 = 0;
            }

            if (v65 && v68)
            {
              v69 = [[MIStoreMetadataSubGenre alloc] initWithGenre:v65 genreID:v68];
              if (v69)
              {
                [v116 addObject:v69];
              }

              else if (!gLogHandle || *(gLogHandle + 44) >= 3)
              {
                MOLogWrite();
              }
            }

            else if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v110 = genreID;
              v111 = v61;
              v105 = genre;
              MOLogWrite();
            }
          }

          else if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v105 = v61;
            MOLogWrite();
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v117 objects:v121 count:16];
      }

      while (v57);
    }

    v5 = v113;
    if ([v116 count])
    {
      v70 = [v116 copy];
      [(MIStoreMetadata *)v113 setSubGenres:v70];
    }

    dictionaryCopy = v114;
    v36 = v112;
  }

  v71 = [dictionaryCopy objectForKeyedSubscript:{categories, v105, v110, v111}];
  if (v71)
  {
    objc_opt_class();
    v72 = v71;
    if (objc_opt_isKindOfClass())
    {
      v73 = v72;

      objc_opt_class();
      v74 = MIArrayContainsOnlyClass(v73);

      if (v74)
      {
        [(MIStoreMetadata *)v5 setCategories:v73];
        goto LABEL_300;
      }
    }

    else
    {
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v106 = v72;
      MOLogWrite();
    }
  }

LABEL_300:
  v75 = [dictionaryCopy objectForKeyedSubscript:{gameCenterEnabled, v106}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setGameCenterEnabled:](v5, "setGameCenterEnabled:", [v75 BOOLValue]);
  }

  else if (v75 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = gameCenterEnabled;
    MOLogWrite();
  }

  v76 = [dictionaryCopy objectForKeyedSubscript:gameCenterEverEnabled];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setGameCenterEverEnabled:](v5, "setGameCenterEverEnabled:", [v76 BOOLValue]);
  }

  else if (v76 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = gameCenterEverEnabled;
    MOLogWrite();
  }

  v77 = [dictionaryCopy objectForKeyedSubscript:isAutoDownload];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setIsAutoDownload:](v5, "setIsAutoDownload:", [v77 BOOLValue]);
  }

  else if (v77 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = isAutoDownload;
    MOLogWrite();
  }

  v78 = [dictionaryCopy objectForKeyedSubscript:referrerURL];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setReferrerURL:v78];
  }

  else if (v78 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = referrerURL;
    MOLogWrite();
  }

  v79 = [dictionaryCopy objectForKeyedSubscript:referrerApp];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setReferrerApp:v79];
  }

  else if (v79 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = referrerApp;
    MOLogWrite();
  }

  v80 = [dictionaryCopy objectForKeyedSubscript:sideLoadedDeviceBasedVPP];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setSideLoadedDeviceBasedVPP:](v5, "setSideLoadedDeviceBasedVPP:", [v80 BOOLValue]);
  }

  else if (v80 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = sideLoadedDeviceBasedVPP;
    MOLogWrite();
  }

  v81 = [dictionaryCopy objectForKeyedSubscript:deviceBasedVPP];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setDeviceBasedVPP:](v5, "setDeviceBasedVPP:", [v81 BOOLValue]);
  }

  else if (v81 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = deviceBasedVPP;
    MOLogWrite();
  }

  v82 = [dictionaryCopy objectForKeyedSubscript:isB2BCustomApp];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setIsB2BCustomApp:](v5, "setIsB2BCustomApp:", [v82 BOOLValue]);
  }

  else if (v82 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = isB2BCustomApp;
    MOLogWrite();
  }

  v83 = [dictionaryCopy objectForKeyedSubscript:enterpriseInstallURL];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setEnterpriseInstallURL:v83];
  }

  else if (v83 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = enterpriseInstallURL;
    MOLogWrite();
  }

  v84 = [dictionaryCopy objectForKeyedSubscript:redownloadParams];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setRedownloadParams:v84];
  }

  else if (v84 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = redownloadParams;
    MOLogWrite();
  }

  v85 = [dictionaryCopy objectForKeyedSubscript:factoryInstall];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[MIStoreMetadata setFactoryInstall:](v5, "setFactoryInstall:", [v85 BOOLValue]);
  }

  else if (v85 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = factoryInstall;
    MOLogWrite();
  }

  v86 = [dictionaryCopy objectForKeyedSubscript:md5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setMd5:v86];
  }

  else if (v86 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = md5;
    MOLogWrite();
  }

  v87 = [dictionaryCopy objectForKeyedSubscript:protectedMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setProtectedMetadata:v87];
  }

  else if (v87 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = protectedMetadata;
    MOLogWrite();
  }

  v88 = [dictionaryCopy objectForKeyedSubscript:hasOrEverHasHadIAP];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setHasOrEverHasHadIAP:v88];
  }

  else if (v88 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v107 = hasOrEverHasHadIAP;
    MOLogWrite();
  }

  v89 = [dictionaryCopy objectForKeyedSubscript:nameTranscriptions];
  v90 = v89;
  if (v89)
  {
    if (_IsDictionaryWithKeyStringAndValueArrayOfString(v89))
    {
      [(MIStoreMetadata *)v5 setNameTranscriptions:v90];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  v91 = [dictionaryCopy objectForKeyedSubscript:{::distributorInfo, v107}];
  objc_opt_class();
  v92 = v91;
  if (objc_opt_isKindOfClass())
  {
    v93 = v92;
  }

  else
  {
    v93 = 0;
  }

  if (v93)
  {
    v94 = [[MIStoreMetadataDistributor alloc] initWithDictionary:v92];
    distributorInfo = v5->_distributorInfo;
    v5->_distributorInfo = v94;
  }

  else if (v92 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v108 = v92;
    MOLogWrite();
  }

  v96 = [dictionaryCopy objectForKeyedSubscript:{managementDeclarationIdentifier, v108}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setManagementDeclarationIdentifier:v96];
  }

  else if (v96 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

  v97 = [dictionaryCopy objectForKeyedSubscript:installerEpoch];
  objc_opt_class();
  v98 = v97;
  if (objc_opt_isKindOfClass())
  {
    v99 = v98;
  }

  else
  {
    v99 = 0;
  }

  if (v99)
  {
    unsignedIntegerValue = [v99 unsignedIntegerValue];
    if (unsignedIntegerValue <= 2)
    {
      v5->_installerEpoch = unsignedIntegerValue;
    }
  }

LABEL_412:
  v101 = v5;

  return v101;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  iAdAttribution = [(MIStoreMetadata *)self iAdAttribution];
  v6 = [iAdAttribution copy];
  [v4 setIAdAttribution:v6];

  iAdConversionDate = [(MIStoreMetadata *)self iAdConversionDate];
  v8 = [iAdConversionDate copy];
  [v4 setIAdConversionDate:v8];

  iAdImpressionDate = [(MIStoreMetadata *)self iAdImpressionDate];
  v10 = [iAdImpressionDate copy];
  [v4 setIAdImpressionDate:v10];

  artistName = [(MIStoreMetadata *)self artistName];
  v12 = [artistName copy];
  [v4 setArtistName:v12];

  betaExternalVersionIdentifier = [(MIStoreMetadata *)self betaExternalVersionIdentifier];
  v14 = [betaExternalVersionIdentifier copy];
  [v4 setBetaExternalVersionIdentifier:v14];

  bundleVersion = [(MIStoreMetadata *)self bundleVersion];
  v16 = [bundleVersion copy];
  [v4 setBundleVersion:v16];

  bundleShortVersionString = [(MIStoreMetadata *)self bundleShortVersionString];
  v18 = [bundleShortVersionString copy];
  [v4 setBundleShortVersionString:v18];

  purchaseDate = [(MIStoreMetadata *)self purchaseDate];
  v20 = [purchaseDate copy];
  [v4 setPurchaseDate:v20];

  appleID = [(MIStoreMetadata *)self appleID];
  v22 = [appleID copy];
  [v4 setAppleID:v22];

  dSPersonID = [(MIStoreMetadata *)self DSPersonID];
  v24 = [dSPersonID copy];
  [v4 setDSPersonID:v24];

  downloaderID = [(MIStoreMetadata *)self downloaderID];
  v26 = [downloaderID copy];
  [v4 setDownloaderID:v26];

  familyID = [(MIStoreMetadata *)self familyID];
  v28 = [familyID copy];
  [v4 setFamilyID:v28];

  purchaserID = [(MIStoreMetadata *)self purchaserID];
  v30 = [purchaserID copy];
  [v4 setPurchaserID:v30];

  altDSID = [(MIStoreMetadata *)self altDSID];
  v32 = [altDSID copy];
  [v4 setAltDSID:v32];

  [v4 setHasMessagesExtension:{-[MIStoreMetadata hasMessagesExtension](self, "hasMessagesExtension")}];
  initialODRSize = [(MIStoreMetadata *)self initialODRSize];
  v34 = [initialODRSize copy];
  [v4 setInitialODRSize:v34];

  [v4 setPurchasedRedownload:{-[MIStoreMetadata isPurchasedRedownload](self, "isPurchasedRedownload")}];
  itemID = [(MIStoreMetadata *)self itemID];
  v36 = [itemID copy];
  [v4 setItemID:v36];

  itemName = [(MIStoreMetadata *)self itemName];
  v38 = [itemName copy];
  [v4 setItemName:v38];

  shortItemName = [(MIStoreMetadata *)self shortItemName];
  v40 = [shortItemName copy];
  [v4 setShortItemName:v40];

  kind = [(MIStoreMetadata *)self kind];
  v42 = [kind copy];
  [v4 setKind:v42];

  label = [(MIStoreMetadata *)self label];
  v44 = [label copy];
  [v4 setLabel:v44];

  [v4 setLaunchProhibited:{-[MIStoreMetadata isLaunchProhibited](self, "isLaunchProhibited")}];
  ratingLabel = [(MIStoreMetadata *)self ratingLabel];
  v46 = [ratingLabel copy];
  [v4 setRatingLabel:v46];

  ratingRank = [(MIStoreMetadata *)self ratingRank];
  v48 = [ratingRank copy];
  [v4 setRatingRank:v48];

  releaseDate = [(MIStoreMetadata *)self releaseDate];
  v50 = [releaseDate copy];
  [v4 setReleaseDate:v50];

  softwareVersionBundleID = [(MIStoreMetadata *)self softwareVersionBundleID];
  v52 = [softwareVersionBundleID copy];
  [v4 setSoftwareVersionBundleID:v52];

  softwareVersionExternalIdentifier = [(MIStoreMetadata *)self softwareVersionExternalIdentifier];
  v54 = [softwareVersionExternalIdentifier copy];
  [v4 setSoftwareVersionExternalIdentifier:v54];

  sourceApp = [(MIStoreMetadata *)self sourceApp];
  v56 = [sourceApp copy];
  [v4 setSourceApp:v56];

  storeCohort = [(MIStoreMetadata *)self storeCohort];
  v58 = [storeCohort copy];
  [v4 setStoreCohort:v58];

  storefront = [(MIStoreMetadata *)self storefront];
  v60 = [storefront copy];
  [v4 setStorefront:v60];

  storefrontCountryCode = [(MIStoreMetadata *)self storefrontCountryCode];
  v62 = [storefrontCountryCode copy];
  [v4 setStorefrontCountryCode:v62];

  assetToken = [(MIStoreMetadata *)self assetToken];
  v64 = [assetToken copy];
  [v4 setAssetToken:v64];

  variantID = [(MIStoreMetadata *)self variantID];
  v66 = [variantID copy];
  [v4 setVariantID:v66];

  betaBuildGroupID = [(MIStoreMetadata *)self betaBuildGroupID];
  v68 = [betaBuildGroupID copy];
  [v4 setBetaBuildGroupID:v68];

  genre = [(MIStoreMetadata *)self genre];
  v70 = [genre copy];
  [v4 setGenre:v70];

  genreID = [(MIStoreMetadata *)self genreID];
  v72 = [genreID copy];
  [v4 setGenreID:v72];

  subGenres = [(MIStoreMetadata *)self subGenres];
  v74 = [subGenres copy];
  [v4 setSubGenres:v74];

  categories = [(MIStoreMetadata *)self categories];
  v76 = [categories copy];
  [v4 setCategories:v76];

  [v4 setGameCenterEnabled:{-[MIStoreMetadata isGameCenterEnabled](self, "isGameCenterEnabled")}];
  [v4 setGameCenterEverEnabled:{-[MIStoreMetadata gameCenterEverEnabled](self, "gameCenterEverEnabled")}];
  [v4 setIsAutoDownload:{-[MIStoreMetadata isAutoDownload](self, "isAutoDownload")}];
  referrerURL = [(MIStoreMetadata *)self referrerURL];
  v78 = [referrerURL copy];
  [v4 setReferrerURL:v78];

  referrerApp = [(MIStoreMetadata *)self referrerApp];
  v80 = [referrerApp copy];
  [v4 setReferrerApp:v80];

  [v4 setSideLoadedDeviceBasedVPP:{-[MIStoreMetadata sideLoadedDeviceBasedVPP](self, "sideLoadedDeviceBasedVPP")}];
  [v4 setDeviceBasedVPP:{-[MIStoreMetadata deviceBasedVPP](self, "deviceBasedVPP")}];
  [v4 setIsB2BCustomApp:{-[MIStoreMetadata isB2BCustomApp](self, "isB2BCustomApp")}];
  enterpriseInstallURL = [(MIStoreMetadata *)self enterpriseInstallURL];
  v82 = [enterpriseInstallURL copy];
  [v4 setEnterpriseInstallURL:v82];

  redownloadParams = [(MIStoreMetadata *)self redownloadParams];
  v84 = [redownloadParams copy];
  [v4 setRedownloadParams:v84];

  nameTranscriptions = [(MIStoreMetadata *)self nameTranscriptions];
  v86 = [nameTranscriptions copy];
  [v4 setNameTranscriptions:v86];

  [v4 setFactoryInstall:{-[MIStoreMetadata isFactoryInstall](self, "isFactoryInstall")}];
  v87 = [(MIStoreMetadata *)self md5];
  v88 = [v87 copy];
  [v4 setMd5:v88];

  protectedMetadata = [(MIStoreMetadata *)self protectedMetadata];
  v90 = [protectedMetadata copy];
  [v4 setProtectedMetadata:v90];

  hasOrEverHasHadIAP = [(MIStoreMetadata *)self hasOrEverHasHadIAP];
  v92 = [hasOrEverHasHadIAP copy];
  [v4 setHasOrEverHasHadIAP:v92];

  distributorInfo = [(MIStoreMetadata *)self distributorInfo];
  v94 = [distributorInfo copy];
  [v4 setDistributorInfo:v94];

  managementDeclarationIdentifier = [(MIStoreMetadata *)self managementDeclarationIdentifier];
  v96 = [managementDeclarationIdentifier copy];
  [v4 setManagementDeclarationIdentifier:v96];

  [v4 setInstallerEpoch:{-[MIStoreMetadata installerEpoch](self, "installerEpoch")}];
  return v4;
}

- (MIStoreMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MIStoreMetadata *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iAdAttribution"];
    iAdAttribution = v5->_iAdAttribution;
    v5->_iAdAttribution = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iAdConversionDate"];
    iAdConversionDate = v5->_iAdConversionDate;
    v5->_iAdConversionDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iAdImpressionDate"];
    iAdImpressionDate = v5->_iAdImpressionDate;
    v5->_iAdImpressionDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artistName"];
    artistName = v5->_artistName;
    v5->_artistName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"betaExternalVersionIdentifier"];
    betaExternalVersionIdentifier = v5->_betaExternalVersionIdentifier;
    v5->_betaExternalVersionIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersionString"];
    bundleShortVersionString = v5->_bundleShortVersionString;
    v5->_bundleShortVersionString = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseDate"];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DSPersonID"];
    DSPersonID = v5->_DSPersonID;
    v5->_DSPersonID = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloaderID"];
    downloaderID = v5->_downloaderID;
    v5->_downloaderID = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyID"];
    familyID = v5->_familyID;
    v5->_familyID = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaserID"];
    purchaserID = v5->_purchaserID;
    v5->_purchaserID = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v32;

    v5->_hasMessagesExtension = [coderCopy decodeBoolForKey:@"hasMessagesExtension"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialODRSize"];
    initialODRSize = v5->_initialODRSize;
    v5->_initialODRSize = v34;

    v5->_purchasedRedownload = [coderCopy decodeBoolForKey:@"purchasedRedownload"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v5->_itemName;
    v5->_itemName = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortItemName"];
    shortItemName = v5->_shortItemName;
    v5->_shortItemName = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v44;

    v5->_launchProhibited = [coderCopy decodeBoolForKey:@"launchProhibited"];
    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ratingLabel"];
    ratingLabel = v5->_ratingLabel;
    v5->_ratingLabel = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ratingRank"];
    ratingRank = v5->_ratingRank;
    v5->_ratingRank = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"softwareVersionBundleID"];
    softwareVersionBundleID = v5->_softwareVersionBundleID;
    v5->_softwareVersionBundleID = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"softwareVersionExternalIdentifier"];
    softwareVersionExternalIdentifier = v5->_softwareVersionExternalIdentifier;
    v5->_softwareVersionExternalIdentifier = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceApp"];
    sourceApp = v5->_sourceApp;
    v5->_sourceApp = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeCohort"];
    storeCohort = v5->_storeCohort;
    v5->_storeCohort = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefrontCountryCode"];
    storefrontCountryCode = v5->_storefrontCountryCode;
    v5->_storefrontCountryCode = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetToken"];
    assetToken = v5->_assetToken;
    v5->_assetToken = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v5->_variantID;
    v5->_variantID = v66;

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"betaBuildGroupID"];
    betaBuildGroupID = v5->_betaBuildGroupID;
    v5->_betaBuildGroupID = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v70;

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genreID"];
    genreID = v5->_genreID;
    v5->_genreID = v72;

    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    v77 = [coderCopy decodeObjectOfClasses:v76 forKey:@"subGenres"];
    subGenres = v5->_subGenres;
    v5->_subGenres = v77;

    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
    v82 = [coderCopy decodeObjectOfClasses:v81 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v82;

    v5->_gameCenterEnabled = [coderCopy decodeBoolForKey:@"gameCenterEnabled"];
    v5->_gameCenterEverEnabled = [coderCopy decodeBoolForKey:@"gameCenterEverEnabled"];
    v5->_isAutoDownload = [coderCopy decodeBoolForKey:@"isAutoDownload"];
    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerURL"];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = v84;

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerApp"];
    referrerApp = v5->_referrerApp;
    v5->_referrerApp = v86;

    v5->_sideLoadedDeviceBasedVPP = [coderCopy decodeBoolForKey:@"sideLoadedDeviceBasedVPP"];
    v5->_deviceBasedVPP = [coderCopy decodeBoolForKey:@"deviceBasedVPP"];
    v5->_isB2BCustomApp = [coderCopy decodeBoolForKey:@"isB2BCustomApp"];
    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enterpriseInstallURL"];
    enterpriseInstallURL = v5->_enterpriseInstallURL;
    v5->_enterpriseInstallURL = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redownloadParams"];
    redownloadParams = v5->_redownloadParams;
    v5->_redownloadParams = v90;

    v5->_factoryInstall = [coderCopy decodeBoolForKey:@"factoryInstall"];
    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"md5"];
    md5 = v5->_md5;
    v5->_md5 = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protectedMetadata"];
    protectedMetadata = v5->_protectedMetadata;
    v5->_protectedMetadata = v94;

    v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasOrEverHasHadIAP"];
    hasOrEverHasHadIAP = v5->_hasOrEverHasHadIAP;
    v5->_hasOrEverHasHadIAP = v96;

    v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorInfo"];
    distributorInfo = v5->_distributorInfo;
    v5->_distributorInfo = v98;

    v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementDeclarationIdentifier"];
    managementDeclarationIdentifier = v5->_managementDeclarationIdentifier;
    v5->_managementDeclarationIdentifier = v100;

    v102 = MEMORY[0x1E695DFD8];
    v103 = objc_opt_class();
    v104 = objc_opt_class();
    v105 = [v102 setWithObjects:{v103, v104, objc_opt_class(), 0}];
    v106 = [coderCopy decodeObjectOfClasses:v105 forKey:@"nameTranscriptions"];

    if (v106 && (_IsDictionaryWithKeyStringAndValueArrayOfString(v106) & 1) == 0)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    else
    {
      [(MIStoreMetadata *)v5 setNameTranscriptions:v106];
    }

    v107 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installerEpoch"];
    v5->_installerEpoch = [v107 unsignedIntegerValue];

    if (v5->_installerEpoch >= 3)
    {
      v5->_installerEpoch = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  iAdAttribution = [(MIStoreMetadata *)self iAdAttribution];
  [coderCopy encodeObject:iAdAttribution forKey:@"iAdAttribution"];

  iAdConversionDate = [(MIStoreMetadata *)self iAdConversionDate];
  [coderCopy encodeObject:iAdConversionDate forKey:@"iAdConversionDate"];

  iAdImpressionDate = [(MIStoreMetadata *)self iAdImpressionDate];
  [coderCopy encodeObject:iAdImpressionDate forKey:@"iAdImpressionDate"];

  artistName = [(MIStoreMetadata *)self artistName];
  [coderCopy encodeObject:artistName forKey:@"artistName"];

  betaExternalVersionIdentifier = [(MIStoreMetadata *)self betaExternalVersionIdentifier];
  [coderCopy encodeObject:betaExternalVersionIdentifier forKey:@"betaExternalVersionIdentifier"];

  bundleVersion = [(MIStoreMetadata *)self bundleVersion];
  [coderCopy encodeObject:bundleVersion forKey:@"bundleVersion"];

  bundleShortVersionString = [(MIStoreMetadata *)self bundleShortVersionString];
  [coderCopy encodeObject:bundleShortVersionString forKey:@"bundleShortVersionString"];

  purchaseDate = [(MIStoreMetadata *)self purchaseDate];
  [coderCopy encodeObject:purchaseDate forKey:@"purchaseDate"];

  appleID = [(MIStoreMetadata *)self appleID];
  [coderCopy encodeObject:appleID forKey:@"appleID"];

  dSPersonID = [(MIStoreMetadata *)self DSPersonID];
  [coderCopy encodeObject:dSPersonID forKey:@"DSPersonID"];

  downloaderID = [(MIStoreMetadata *)self downloaderID];
  [coderCopy encodeObject:downloaderID forKey:@"downloaderID"];

  familyID = [(MIStoreMetadata *)self familyID];
  [coderCopy encodeObject:familyID forKey:@"familyID"];

  purchaserID = [(MIStoreMetadata *)self purchaserID];
  [coderCopy encodeObject:purchaserID forKey:@"purchaserID"];

  altDSID = [(MIStoreMetadata *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];

  [coderCopy encodeBool:-[MIStoreMetadata hasMessagesExtension](self forKey:{"hasMessagesExtension"), @"hasMessagesExtension"}];
  initialODRSize = [(MIStoreMetadata *)self initialODRSize];
  [coderCopy encodeObject:initialODRSize forKey:@"initialODRSize"];

  [coderCopy encodeBool:-[MIStoreMetadata isPurchasedRedownload](self forKey:{"isPurchasedRedownload"), @"purchasedRedownload"}];
  itemID = [(MIStoreMetadata *)self itemID];
  [coderCopy encodeObject:itemID forKey:@"itemID"];

  itemName = [(MIStoreMetadata *)self itemName];
  [coderCopy encodeObject:itemName forKey:@"itemName"];

  shortItemName = [(MIStoreMetadata *)self shortItemName];
  [coderCopy encodeObject:shortItemName forKey:@"shortItemName"];

  kind = [(MIStoreMetadata *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  label = [(MIStoreMetadata *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  [coderCopy encodeBool:-[MIStoreMetadata isLaunchProhibited](self forKey:{"isLaunchProhibited"), @"launchProhibited"}];
  ratingLabel = [(MIStoreMetadata *)self ratingLabel];
  [coderCopy encodeObject:ratingLabel forKey:@"ratingLabel"];

  ratingRank = [(MIStoreMetadata *)self ratingRank];
  [coderCopy encodeObject:ratingRank forKey:@"ratingRank"];

  releaseDate = [(MIStoreMetadata *)self releaseDate];
  [coderCopy encodeObject:releaseDate forKey:@"releaseDate"];

  softwareVersionBundleID = [(MIStoreMetadata *)self softwareVersionBundleID];
  [coderCopy encodeObject:softwareVersionBundleID forKey:@"softwareVersionBundleID"];

  softwareVersionExternalIdentifier = [(MIStoreMetadata *)self softwareVersionExternalIdentifier];
  [coderCopy encodeObject:softwareVersionExternalIdentifier forKey:@"softwareVersionExternalIdentifier"];

  sourceApp = [(MIStoreMetadata *)self sourceApp];
  [coderCopy encodeObject:sourceApp forKey:@"sourceApp"];

  storeCohort = [(MIStoreMetadata *)self storeCohort];
  [coderCopy encodeObject:storeCohort forKey:@"storeCohort"];

  storefront = [(MIStoreMetadata *)self storefront];
  [coderCopy encodeObject:storefront forKey:@"storefront"];

  storefrontCountryCode = [(MIStoreMetadata *)self storefrontCountryCode];
  [coderCopy encodeObject:storefrontCountryCode forKey:@"storefrontCountryCode"];

  assetToken = [(MIStoreMetadata *)self assetToken];
  [coderCopy encodeObject:assetToken forKey:@"assetToken"];

  variantID = [(MIStoreMetadata *)self variantID];
  [coderCopy encodeObject:variantID forKey:@"variantID"];

  betaBuildGroupID = [(MIStoreMetadata *)self betaBuildGroupID];
  [coderCopy encodeObject:betaBuildGroupID forKey:@"betaBuildGroupID"];

  genre = [(MIStoreMetadata *)self genre];
  [coderCopy encodeObject:genre forKey:@"genre"];

  genreID = [(MIStoreMetadata *)self genreID];
  [coderCopy encodeObject:genreID forKey:@"genreID"];

  subGenres = [(MIStoreMetadata *)self subGenres];
  [coderCopy encodeObject:subGenres forKey:@"subGenres"];

  categories = [(MIStoreMetadata *)self categories];
  [coderCopy encodeObject:categories forKey:@"categories"];

  [coderCopy encodeBool:-[MIStoreMetadata isGameCenterEnabled](self forKey:{"isGameCenterEnabled"), @"gameCenterEnabled"}];
  [coderCopy encodeBool:-[MIStoreMetadata gameCenterEverEnabled](self forKey:{"gameCenterEverEnabled"), @"gameCenterEverEnabled"}];
  [coderCopy encodeBool:-[MIStoreMetadata isAutoDownload](self forKey:{"isAutoDownload"), @"isAutoDownload"}];
  referrerURL = [(MIStoreMetadata *)self referrerURL];
  [coderCopy encodeObject:referrerURL forKey:@"referrerURL"];

  referrerApp = [(MIStoreMetadata *)self referrerApp];
  [coderCopy encodeObject:referrerApp forKey:@"referrerApp"];

  [coderCopy encodeBool:-[MIStoreMetadata sideLoadedDeviceBasedVPP](self forKey:{"sideLoadedDeviceBasedVPP"), @"sideLoadedDeviceBasedVPP"}];
  [coderCopy encodeBool:-[MIStoreMetadata deviceBasedVPP](self forKey:{"deviceBasedVPP"), @"deviceBasedVPP"}];
  [coderCopy encodeBool:-[MIStoreMetadata isB2BCustomApp](self forKey:{"isB2BCustomApp"), @"isB2BCustomApp"}];
  enterpriseInstallURL = [(MIStoreMetadata *)self enterpriseInstallURL];
  [coderCopy encodeObject:enterpriseInstallURL forKey:@"enterpriseInstallURL"];

  redownloadParams = [(MIStoreMetadata *)self redownloadParams];
  [coderCopy encodeObject:redownloadParams forKey:@"redownloadParams"];

  nameTranscriptions = [(MIStoreMetadata *)self nameTranscriptions];
  [coderCopy encodeObject:nameTranscriptions forKey:@"nameTranscriptions"];

  [coderCopy encodeBool:-[MIStoreMetadata isFactoryInstall](self forKey:{"isFactoryInstall"), @"factoryInstall"}];
  v46 = [(MIStoreMetadata *)self md5];
  [coderCopy encodeObject:v46 forKey:@"md5"];

  protectedMetadata = [(MIStoreMetadata *)self protectedMetadata];
  [coderCopy encodeObject:protectedMetadata forKey:@"protectedMetadata"];

  hasOrEverHasHadIAP = [(MIStoreMetadata *)self hasOrEverHasHadIAP];
  [coderCopy encodeObject:hasOrEverHasHadIAP forKey:@"hasOrEverHasHadIAP"];

  distributorInfo = [(MIStoreMetadata *)self distributorInfo];
  [coderCopy encodeObject:distributorInfo forKey:@"distributorInfo"];

  managementDeclarationIdentifier = [(MIStoreMetadata *)self managementDeclarationIdentifier];
  [coderCopy encodeObject:managementDeclarationIdentifier forKey:@"managementDeclarationIdentifier"];

  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIStoreMetadata installerEpoch](self, "installerEpoch")}];
  [coderCopy encodeObject:v51 forKey:@"installerEpoch"];
}

+ (id)metadataFromPlistData:(id)data error:(id *)error
{
  v18 = 0;
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:&v18];
  v8 = v18;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [self metadataFromDictionary:v6];
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = _CreateAndLogError("+[MIStoreMetadata metadataFromPlistData:error:]", 975, @"MIInstallerErrorDomain", 78, 0, &unk_1F2888BF0, @"iTunesMetadata.plist was not a dictionary found class %@", v13, v12);;

      v9 = 0;
      v8 = v14;
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = _CreateAndLogError("+[MIStoreMetadata metadataFromPlistData:error:]", 970, @"MIInstallerErrorDomain", 78, v8, &unk_1F2888BC8, @"Unable to deserialize iTunesMetadata.plist data", v7, v17);

    v9 = 0;
    v8 = v10;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v15 = v8;
    *error = v8;
  }

LABEL_10:

  return v9;
}

+ (id)metadataFromPlistAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v15 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:3 error:&v15];
  v7 = v15;
  if (v6)
  {
    v14 = v7;
    v8 = [objc_opt_class() metadataFromPlistData:v6 error:&v14];
    v9 = v14;
  }

  else
  {
    path = [lCopy path];
    v9 = _CreateError("+[MIStoreMetadata metadataFromPlistAtURL:error:]", 994, @"MIInstallerErrorDomain", 78, v7, &unk_1F2888C18, @"Failed to read iTunesMetadata.plist from %@", v11, path);

    v8 = 0;
    v7 = path;
  }

  if (error && !v8)
  {
    v12 = v9;
    *error = v9;
  }

  return v8;
}

+ (id)metadataFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithDictionary:dictionaryCopy];

  return v4;
}

+ (id)metadataForBundleContainerURL:(id)l error:(id *)error
{
  v6 = [l URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];
  v7 = [self metadataFromPlistAtURL:v6 error:error];

  return v7;
}

- (id)dictionaryRepresentation
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  iAdAttribution = [(MIStoreMetadata *)self iAdAttribution];
  if (iAdAttribution)
  {
    [v3 setObject:iAdAttribution forKeyedSubscript:iAdAttribution];
  }

  iAdConversionDate = [(MIStoreMetadata *)self iAdConversionDate];
  if (iAdConversionDate)
  {
    [v3 setObject:iAdConversionDate forKeyedSubscript:iAdConversionDate];
  }

  iAdImpressionDate = [(MIStoreMetadata *)self iAdImpressionDate];
  if (iAdImpressionDate)
  {
    [v3 setObject:iAdImpressionDate forKeyedSubscript:iAdImpressionDate];
  }

  artistName = [(MIStoreMetadata *)self artistName];
  if (artistName)
  {
    [v3 setObject:artistName forKeyedSubscript:artistName];
  }

  betaExternalVersionIdentifier = [(MIStoreMetadata *)self betaExternalVersionIdentifier];
  if (betaExternalVersionIdentifier)
  {
    [v3 setObject:betaExternalVersionIdentifier forKeyedSubscript:betaExternalVersionIdentifier];
  }

  bundleVersion = [(MIStoreMetadata *)self bundleVersion];
  if (bundleVersion)
  {
    [v3 setObject:bundleVersion forKeyedSubscript:bundleVersion];
  }

  bundleShortVersionString = [(MIStoreMetadata *)self bundleShortVersionString];
  if (bundleShortVersionString)
  {
    [v3 setObject:bundleShortVersionString forKeyedSubscript:bundleShortVersionString];
  }

  v11 = objc_opt_new();
  purchaseDate = [(MIStoreMetadata *)self purchaseDate];

  if (purchaseDate)
  {
    purchaseDate2 = [(MIStoreMetadata *)self purchaseDate];
    [v11 setObject:purchaseDate2 forKeyedSubscript:purchaseDate];
  }

  appleID = [(MIStoreMetadata *)self appleID];
  if (appleID || ([(MIStoreMetadata *)self DSPersonID], (appleID = objc_claimAutoreleasedReturnValue()) != 0) || ([(MIStoreMetadata *)self downloaderID], (appleID = objc_claimAutoreleasedReturnValue()) != 0) || ([(MIStoreMetadata *)self familyID], (appleID = objc_claimAutoreleasedReturnValue()) != 0) || ([(MIStoreMetadata *)self purchaserID], (appleID = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    altDSID = [(MIStoreMetadata *)self altDSID];

    if (!altDSID)
    {
      goto LABEL_36;
    }
  }

  v15 = objc_opt_new();
  appleID2 = [(MIStoreMetadata *)self appleID];

  if (appleID2)
  {
    appleID3 = [(MIStoreMetadata *)self appleID];
    [v15 setObject:appleID3 forKeyedSubscript:appleID];
  }

  dSPersonID = [(MIStoreMetadata *)self DSPersonID];

  if (dSPersonID)
  {
    dSPersonID2 = [(MIStoreMetadata *)self DSPersonID];
    [v15 setObject:dSPersonID2 forKeyedSubscript:DSPersonID];
  }

  downloaderID = [(MIStoreMetadata *)self downloaderID];

  if (downloaderID)
  {
    downloaderID2 = [(MIStoreMetadata *)self downloaderID];
    [v15 setObject:downloaderID2 forKeyedSubscript:downloaderID];
  }

  familyID = [(MIStoreMetadata *)self familyID];

  if (familyID)
  {
    familyID2 = [(MIStoreMetadata *)self familyID];
    [v15 setObject:familyID2 forKeyedSubscript:familyID];
  }

  purchaserID = [(MIStoreMetadata *)self purchaserID];

  if (purchaserID)
  {
    purchaserID2 = [(MIStoreMetadata *)self purchaserID];
    [v15 setObject:purchaserID2 forKeyedSubscript:purchaserID];
  }

  altDSID2 = [(MIStoreMetadata *)self altDSID];

  if (altDSID2)
  {
    altDSID3 = [(MIStoreMetadata *)self altDSID];
    [v15 setObject:altDSID3 forKeyedSubscript:altDSID];
  }

  v28 = [v15 copy];
  [v11 setObject:v28 forKeyedSubscript:accountInfoDict];

LABEL_36:
  if ([v11 count])
  {
    v29 = [v11 copy];
    [v3 setObject:v29 forKeyedSubscript:downloadInfoDict];
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata hasMessagesExtension](self, "hasMessagesExtension")}];
  [v3 setObject:v30 forKeyedSubscript:hasMessagesExtension];

  initialODRSize = [(MIStoreMetadata *)self initialODRSize];
  if (initialODRSize)
  {
    [v3 setObject:initialODRSize forKeyedSubscript:initialODRSize];
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isPurchasedRedownload](self, "isPurchasedRedownload")}];
  [v3 setObject:v32 forKeyedSubscript:purchasedRedownload];

  itemID = [(MIStoreMetadata *)self itemID];
  if (itemID)
  {
    [v3 setObject:itemID forKeyedSubscript:itemID];
  }

  itemName = [(MIStoreMetadata *)self itemName];
  if (itemName)
  {
    [v3 setObject:itemName forKeyedSubscript:itemName];
  }

  shortItemName = [(MIStoreMetadata *)self shortItemName];
  if (shortItemName)
  {
    [v3 setObject:shortItemName forKeyedSubscript:shortItemName];
  }

  kind = [(MIStoreMetadata *)self kind];
  if (kind)
  {
    [v3 setObject:kind forKeyedSubscript:kind];
  }

  label = [(MIStoreMetadata *)self label];
  if (label)
  {
    [v3 setObject:label forKeyedSubscript:label];
  }

  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isLaunchProhibited](self, "isLaunchProhibited")}];
  [v3 setObject:v38 forKeyedSubscript:launchProhibited];

  v39 = objc_opt_new();
  ratingLabel = [(MIStoreMetadata *)self ratingLabel];

  if (ratingLabel)
  {
    ratingLabel2 = [(MIStoreMetadata *)self ratingLabel];
    [v39 setObject:ratingLabel2 forKeyedSubscript:ratingLabel];
  }

  ratingRank = [(MIStoreMetadata *)self ratingRank];

  if (ratingRank)
  {
    ratingRank2 = [(MIStoreMetadata *)self ratingRank];
    [v39 setObject:ratingRank2 forKeyedSubscript:ratingRank];
  }

  if ([v39 count])
  {
    [v3 setObject:v39 forKeyedSubscript:ratingDict];
  }

  releaseDate = [(MIStoreMetadata *)self releaseDate];
  if (releaseDate)
  {
    [v3 setObject:releaseDate forKeyedSubscript:releaseDate];
  }

  softwareVersionBundleID = [(MIStoreMetadata *)self softwareVersionBundleID];
  if (softwareVersionBundleID)
  {
    [v3 setObject:softwareVersionBundleID forKeyedSubscript:softwareVersionBundleID];
  }

  softwareVersionExternalIdentifier = [(MIStoreMetadata *)self softwareVersionExternalIdentifier];
  if (softwareVersionExternalIdentifier)
  {
    [v3 setObject:softwareVersionExternalIdentifier forKeyedSubscript:softwareVersionExternalIdentifier];
  }

  sourceApp = [(MIStoreMetadata *)self sourceApp];
  if (sourceApp)
  {
    [v3 setObject:sourceApp forKeyedSubscript:sourceApp];
  }

  storeCohort = [(MIStoreMetadata *)self storeCohort];
  if (storeCohort)
  {
    [v3 setObject:storeCohort forKeyedSubscript:storeCohort];
  }

  storefront = [(MIStoreMetadata *)self storefront];
  if (storefront)
  {
    [v3 setObject:storefront forKeyedSubscript:storefront];
  }

  storefrontCountryCode = [(MIStoreMetadata *)self storefrontCountryCode];
  if (storefrontCountryCode)
  {
    [v3 setObject:storefrontCountryCode forKeyedSubscript:storefrontCountryCode];
  }

  assetToken = [(MIStoreMetadata *)self assetToken];
  if (assetToken)
  {
    [v3 setObject:assetToken forKeyedSubscript:assetToken];
  }

  variantID = [(MIStoreMetadata *)self variantID];
  if (variantID)
  {
    [v3 setObject:variantID forKeyedSubscript:variantID];
  }

  betaBuildGroupID = [(MIStoreMetadata *)self betaBuildGroupID];
  if (betaBuildGroupID)
  {
    [v3 setObject:betaBuildGroupID forKeyedSubscript:betaBuildGroupID];
  }

  genre = [(MIStoreMetadata *)self genre];
  if (genre)
  {
    [v3 setObject:genre forKeyedSubscript:genre];
  }

  genreID = [(MIStoreMetadata *)self genreID];
  if (genreID)
  {
    [v3 setObject:genreID forKeyedSubscript:genreID];
  }

  v56 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  subGenres = [(MIStoreMetadata *)self subGenres];
  v58 = [subGenres countByEnumeratingWithState:&v89 objects:v93 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v90;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v90 != v60)
        {
          objc_enumerationMutation(subGenres);
        }

        dictionaryRepresentation = [*(*(&v89 + 1) + 8 * i) dictionaryRepresentation];
        [v56 addObject:dictionaryRepresentation];
      }

      v59 = [subGenres countByEnumeratingWithState:&v89 objects:v93 count:16];
    }

    while (v59);
  }

  v63 = [v56 copy];
  [v3 setObject:v63 forKeyedSubscript:subGenres];

  categories = [(MIStoreMetadata *)self categories];
  if (categories)
  {
    [v3 setObject:categories forKeyedSubscript:categories];
  }

  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isGameCenterEnabled](self, "isGameCenterEnabled")}];
  [v3 setObject:v65 forKeyedSubscript:gameCenterEnabled];

  v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata gameCenterEverEnabled](self, "gameCenterEverEnabled")}];
  [v3 setObject:v66 forKeyedSubscript:gameCenterEverEnabled];

  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isAutoDownload](self, "isAutoDownload")}];
  [v3 setObject:v67 forKeyedSubscript:isAutoDownload];

  referrerURL = [(MIStoreMetadata *)self referrerURL];
  if (referrerURL)
  {
    [v3 setObject:referrerURL forKeyedSubscript:referrerURL];
  }

  referrerApp = [(MIStoreMetadata *)self referrerApp];
  if (referrerApp)
  {
    [v3 setObject:referrerApp forKeyedSubscript:referrerApp];
  }

  v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata sideLoadedDeviceBasedVPP](self, "sideLoadedDeviceBasedVPP")}];
  [v3 setObject:v70 forKeyedSubscript:sideLoadedDeviceBasedVPP];

  v71 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata deviceBasedVPP](self, "deviceBasedVPP")}];
  [v3 setObject:v71 forKeyedSubscript:deviceBasedVPP];

  v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isB2BCustomApp](self, "isB2BCustomApp")}];
  [v3 setObject:v72 forKeyedSubscript:isB2BCustomApp];

  enterpriseInstallURL = [(MIStoreMetadata *)self enterpriseInstallURL];
  if (enterpriseInstallURL)
  {
    [v3 setObject:enterpriseInstallURL forKeyedSubscript:enterpriseInstallURL];
  }

  redownloadParams = [(MIStoreMetadata *)self redownloadParams];
  if (redownloadParams)
  {
    [v3 setObject:redownloadParams forKeyedSubscript:redownloadParams];
  }

  nameTranscriptions = [(MIStoreMetadata *)self nameTranscriptions];
  if (nameTranscriptions)
  {
    [v3 setObject:nameTranscriptions forKeyedSubscript:nameTranscriptions];
  }

  v76 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isFactoryInstall](self, "isFactoryInstall")}];
  [v3 setObject:v76 forKeyedSubscript:factoryInstall];

  v77 = [(MIStoreMetadata *)self md5];
  if (v77)
  {
    [v3 setObject:v77 forKeyedSubscript:md5];
  }

  protectedMetadata = [(MIStoreMetadata *)self protectedMetadata];
  if (protectedMetadata)
  {
    [v3 setObject:protectedMetadata forKeyedSubscript:protectedMetadata];
  }

  hasOrEverHasHadIAP = [(MIStoreMetadata *)self hasOrEverHasHadIAP];
  if (hasOrEverHasHadIAP)
  {
    [v3 setObject:hasOrEverHasHadIAP forKeyedSubscript:hasOrEverHasHadIAP];
  }

  distributorInfo = [(MIStoreMetadata *)self distributorInfo];
  v81 = distributorInfo;
  if (distributorInfo)
  {
    dictionaryRepresentation2 = [distributorInfo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:distributorInfo];
  }

  managementDeclarationIdentifier = [(MIStoreMetadata *)self managementDeclarationIdentifier];
  if (managementDeclarationIdentifier)
  {
    [v3 setObject:managementDeclarationIdentifier forKeyedSubscript:managementDeclarationIdentifier];
  }

  installerEpoch = [(MIStoreMetadata *)self installerEpoch];
  if (installerEpoch)
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:installerEpoch];
    [v3 setObject:v85 forKeyedSubscript:installerEpoch];
  }

  v86 = [v3 copy];

  return v86;
}

- (id)propertyListDataWithError:(id *)error
{
  v4 = MEMORY[0x1E696AE40];
  dictionaryRepresentation = [(MIStoreMetadata *)self dictionaryRepresentation];
  v6 = [v4 dataWithPropertyList:dictionaryRepresentation format:200 options:0 error:error];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v155 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      iAdAttribution = [(MIStoreMetadata *)self iAdAttribution];
      iAdAttribution2 = [(MIStoreMetadata *)v5 iAdAttribution];
      v8 = MICompareObjects(iAdAttribution, iAdAttribution2);

      if (v8
        && ([(MIStoreMetadata *)self iAdConversionDate], v9 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 iAdConversionDate], v10 = objc_claimAutoreleasedReturnValue(), v11 = MICompareObjects(v9, v10), v10, v9, v11)
        && ([(MIStoreMetadata *)self iAdImpressionDate], v12 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 iAdImpressionDate], v13 = objc_claimAutoreleasedReturnValue(), v14 = MICompareObjects(v12, v13), v13, v12, v14)
        && ([(MIStoreMetadata *)self artistName], v15 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 artistName], v16 = objc_claimAutoreleasedReturnValue(), v17 = MICompareObjects(v15, v16), v16, v15, v17)
        && ([(MIStoreMetadata *)self betaExternalVersionIdentifier], v18 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 betaExternalVersionIdentifier], v19 = objc_claimAutoreleasedReturnValue(), v20 = MICompareObjects(v18, v19), v19, v18, v20)
        && ([(MIStoreMetadata *)self bundleVersion], v21 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 bundleVersion], v22 = objc_claimAutoreleasedReturnValue(), v23 = MICompareObjects(v21, v22), v22, v21, v23)
        && ([(MIStoreMetadata *)self bundleShortVersionString], v24 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 bundleShortVersionString], v25 = objc_claimAutoreleasedReturnValue(), v26 = MICompareObjects(v24, v25), v25, v24, v26)
        && ([(MIStoreMetadata *)self purchaseDate], v27 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 purchaseDate], v28 = objc_claimAutoreleasedReturnValue(), v29 = MICompareObjects(v27, v28), v28, v27, v29)
        && ([(MIStoreMetadata *)self appleID], v30 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 appleID], v31 = objc_claimAutoreleasedReturnValue(), v32 = MICompareObjects(v30, v31), v31, v30, v32)
        && ([(MIStoreMetadata *)self DSPersonID], v33 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 DSPersonID], v34 = objc_claimAutoreleasedReturnValue(), v35 = MICompareObjects(v33, v34), v34, v33, v35)
        && ([(MIStoreMetadata *)self downloaderID], v36 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 downloaderID], v37 = objc_claimAutoreleasedReturnValue(), v38 = MICompareObjects(v36, v37), v37, v36, v38)
        && ([(MIStoreMetadata *)self familyID], v39 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 familyID], v40 = objc_claimAutoreleasedReturnValue(), v41 = MICompareObjects(v39, v40), v40, v39, v41)
        && ([(MIStoreMetadata *)self purchaserID], v42 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 purchaserID], v43 = objc_claimAutoreleasedReturnValue(), v44 = MICompareObjects(v42, v43), v43, v42, v44)
        && ([(MIStoreMetadata *)self altDSID], v45 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 altDSID], v46 = objc_claimAutoreleasedReturnValue(), v47 = MICompareObjects(v45, v46), v46, v45, v47)
        && (v48 = [(MIStoreMetadata *)self hasMessagesExtension], v48 == [(MIStoreMetadata *)v5 hasMessagesExtension])
        && ([(MIStoreMetadata *)self initialODRSize], v49 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 initialODRSize], v50 = objc_claimAutoreleasedReturnValue(), v51 = MICompareObjects(v49, v50), v50, v49, v51)
        && (v52 = [(MIStoreMetadata *)self isPurchasedRedownload], v52 == [(MIStoreMetadata *)v5 isPurchasedRedownload])
        && ([(MIStoreMetadata *)self itemID], v53 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 itemID], v54 = objc_claimAutoreleasedReturnValue(), v55 = MICompareObjects(v53, v54), v54, v53, v55)
        && ([(MIStoreMetadata *)self itemName], v56 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 itemName], v57 = objc_claimAutoreleasedReturnValue(), v58 = MICompareObjects(v56, v57), v57, v56, v58)
        && ([(MIStoreMetadata *)self shortItemName], v59 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 shortItemName], v60 = objc_claimAutoreleasedReturnValue(), v61 = MICompareObjects(v59, v60), v60, v59, v61)
        && ([(MIStoreMetadata *)self kind], v62 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 kind], v63 = objc_claimAutoreleasedReturnValue(), v64 = MICompareObjects(v62, v63), v63, v62, v64)
        && ([(MIStoreMetadata *)self label], v65 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 label], v66 = objc_claimAutoreleasedReturnValue(), v67 = MICompareObjects(v65, v66), v66, v65, v67)
        && (v68 = [(MIStoreMetadata *)self isLaunchProhibited], v68 == [(MIStoreMetadata *)v5 isLaunchProhibited])
        && ([(MIStoreMetadata *)self ratingLabel], v69 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 ratingLabel], v70 = objc_claimAutoreleasedReturnValue(), v71 = MICompareObjects(v69, v70), v70, v69, v71)
        && ([(MIStoreMetadata *)self ratingRank], v72 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 ratingRank], v73 = objc_claimAutoreleasedReturnValue(), v74 = MICompareObjects(v72, v73), v73, v72, v74)
        && ([(MIStoreMetadata *)self releaseDate], v75 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 releaseDate], v76 = objc_claimAutoreleasedReturnValue(), v77 = MICompareObjects(v75, v76), v76, v75, v77)
        && ([(MIStoreMetadata *)self softwareVersionBundleID], v78 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 softwareVersionBundleID], v79 = objc_claimAutoreleasedReturnValue(), v80 = MICompareObjects(v78, v79), v79, v78, v80)
        && ([(MIStoreMetadata *)self softwareVersionExternalIdentifier], v81 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 softwareVersionExternalIdentifier], v82 = objc_claimAutoreleasedReturnValue(), v83 = MICompareObjects(v81, v82), v82, v81, v83)
        && ([(MIStoreMetadata *)self sourceApp], v84 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 sourceApp], v85 = objc_claimAutoreleasedReturnValue(), v86 = MICompareObjects(v84, v85), v85, v84, v86)
        && ([(MIStoreMetadata *)self storeCohort], v87 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 storeCohort], v88 = objc_claimAutoreleasedReturnValue(), v89 = MICompareObjects(v87, v88), v88, v87, v89)
        && ([(MIStoreMetadata *)self storefront], v90 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 storefront], v91 = objc_claimAutoreleasedReturnValue(), v92 = MICompareObjects(v90, v91), v91, v90, v92)
        && ([(MIStoreMetadata *)self storefrontCountryCode], v93 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 storefrontCountryCode], v94 = objc_claimAutoreleasedReturnValue(), v95 = MICompareObjects(v93, v94), v94, v93, v95)
        && ([(MIStoreMetadata *)self assetToken], v96 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 assetToken], v97 = objc_claimAutoreleasedReturnValue(), v98 = MICompareObjects(v96, v97), v97, v96, v98)
        && ([(MIStoreMetadata *)self variantID], v99 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 variantID], v100 = objc_claimAutoreleasedReturnValue(), v101 = MICompareObjects(v99, v100), v100, v99, v101)
        && ([(MIStoreMetadata *)self betaBuildGroupID], v102 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 betaBuildGroupID], v103 = objc_claimAutoreleasedReturnValue(), v104 = MICompareObjects(v102, v103), v103, v102, v104)
        && ([(MIStoreMetadata *)self genre], v105 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 genre], v106 = objc_claimAutoreleasedReturnValue(), v107 = MICompareObjects(v105, v106), v106, v105, v107)
        && ([(MIStoreMetadata *)self genreID], v108 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 genreID], v109 = objc_claimAutoreleasedReturnValue(), v110 = MICompareObjects(v108, v109), v109, v108, v110)
        && ([(MIStoreMetadata *)self subGenres], v111 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 subGenres], v112 = objc_claimAutoreleasedReturnValue(), v113 = MICompareObjects(v111, v112), v112, v111, v113)
        && ([(MIStoreMetadata *)self categories], v114 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 categories], v115 = objc_claimAutoreleasedReturnValue(), v116 = MICompareObjects(v114, v115), v115, v114, v116)
        && (v117 = [(MIStoreMetadata *)self isGameCenterEnabled], v117 == [(MIStoreMetadata *)v5 isGameCenterEnabled])
        && (v118 = [(MIStoreMetadata *)self gameCenterEverEnabled], v118 == [(MIStoreMetadata *)v5 gameCenterEverEnabled])
        && (v119 = [(MIStoreMetadata *)self isAutoDownload], v119 == [(MIStoreMetadata *)v5 isAutoDownload])
        && ([(MIStoreMetadata *)self referrerURL], v120 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 referrerURL], v121 = objc_claimAutoreleasedReturnValue(), v122 = MICompareObjects(v120, v121), v121, v120, v122)
        && ([(MIStoreMetadata *)self referrerApp], v123 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 referrerApp], v124 = objc_claimAutoreleasedReturnValue(), v125 = MICompareObjects(v123, v124), v124, v123, v125)
        && (v126 = [(MIStoreMetadata *)self sideLoadedDeviceBasedVPP], v126 == [(MIStoreMetadata *)v5 sideLoadedDeviceBasedVPP])
        && (v127 = [(MIStoreMetadata *)self deviceBasedVPP], v127 == [(MIStoreMetadata *)v5 deviceBasedVPP])
        && (v128 = [(MIStoreMetadata *)self isB2BCustomApp], v128 == [(MIStoreMetadata *)v5 isB2BCustomApp])
        && ([(MIStoreMetadata *)self enterpriseInstallURL], v129 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 enterpriseInstallURL], v130 = objc_claimAutoreleasedReturnValue(), v131 = MICompareObjects(v129, v130), v130, v129, v131)
        && ([(MIStoreMetadata *)self redownloadParams], v132 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 redownloadParams], v133 = objc_claimAutoreleasedReturnValue(), v134 = MICompareObjects(v132, v133), v133, v132, v134)
        && ([(MIStoreMetadata *)self nameTranscriptions], v135 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 nameTranscriptions], v136 = objc_claimAutoreleasedReturnValue(), v137 = MICompareObjects(v135, v136), v136, v135, v137)
        && (v138 = [(MIStoreMetadata *)self isFactoryInstall], v138 == [(MIStoreMetadata *)v5 isFactoryInstall])
        && ([(MIStoreMetadata *)self md5], v139 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 md5], v140 = objc_claimAutoreleasedReturnValue(), v141 = MICompareObjects(v139, v140), v140, v139, v141)
        && ([(MIStoreMetadata *)self protectedMetadata], v142 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 protectedMetadata], v143 = objc_claimAutoreleasedReturnValue(), v144 = MICompareObjects(v142, v143), v143, v142, v144)
        && ([(MIStoreMetadata *)self hasOrEverHasHadIAP], v145 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 hasOrEverHasHadIAP], v146 = objc_claimAutoreleasedReturnValue(), v147 = MICompareObjects(v145, v146), v146, v145, v147)
        && ([(MIStoreMetadata *)self distributorInfo], v148 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 distributorInfo], v149 = objc_claimAutoreleasedReturnValue(), v150 = MICompareObjects(v148, v149), v149, v148, v150)
        && ([(MIStoreMetadata *)self managementDeclarationIdentifier], v151 = objc_claimAutoreleasedReturnValue(), [(MIStoreMetadata *)v5 managementDeclarationIdentifier], v152 = objc_claimAutoreleasedReturnValue(), v153 = MICompareObjects(v151, v152), v152, v151, v153))
      {
        installerEpoch = [(MIStoreMetadata *)self installerEpoch];
        v155 = installerEpoch == [(MIStoreMetadata *)v5 installerEpoch];
      }

      else
      {
        v155 = 0;
      }
    }

    else
    {
      v155 = 0;
    }
  }

  return v155;
}

- (id)description
{
  dictionaryRepresentation = [(MIStoreMetadata *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (BOOL)isEligibleForWatchAppInstall
{
  distributorInfo = [(MIStoreMetadata *)self distributorInfo];
  distributorID = [distributorInfo distributorID];

  if (distributorID)
  {
    distributorIsFirstPartyApple = [distributorInfo distributorIsFirstPartyApple];
  }

  else
  {
    distributorIsFirstPartyApple = 1;
  }

  return distributorIsFirstPartyApple;
}

@end