@interface MIStoreMetadata
+ (id)metadataForBundleContainerURL:(id)a3 error:(id *)a4;
+ (id)metadataFromDictionary:(id)a3;
+ (id)metadataFromPlistAtURL:(id)a3 error:(id *)a4;
+ (id)metadataFromPlistData:(id)a3 error:(id *)a4;
- (BOOL)isEligibleForWatchAppInstall;
- (BOOL)isEqual:(id)a3;
- (MIStoreMetadata)initWithCoder:(id)a3;
- (MIStoreMetadata)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)propertyListDataWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIStoreMetadata

- (MIStoreMetadata)initWithDictionary:(id)a3
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MIStoreMetadata *)self init];

  if (!v5)
  {
    goto LABEL_412;
  }

  v6 = [v4 objectForKeyedSubscript:iAdAttribution];
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

  v7 = [v4 objectForKeyedSubscript:iAdConversionDate];
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

  v8 = [v4 objectForKeyedSubscript:iAdImpressionDate];
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

  v9 = [v4 objectForKeyedSubscript:artistName];
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

  v10 = [v4 objectForKeyedSubscript:betaExternalVersionIdentifier];
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

  v11 = [v4 objectForKeyedSubscript:bundleVersion];
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

  v12 = [v4 objectForKeyedSubscript:bundleShortVersionString];
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

  v13 = [v4 objectForKeyedSubscript:downloadInfoDict];
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

  v26 = [v4 objectForKeyedSubscript:{hasMessagesExtension, v103, v109}];
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

  v27 = [v4 objectForKeyedSubscript:initialODRSize];
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

  v28 = [v4 objectForKeyedSubscript:purchasedRedownload];
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

  v29 = [v4 objectForKeyedSubscript:itemID];
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

  v30 = [v4 objectForKeyedSubscript:itemName];
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

  v31 = [v4 objectForKeyedSubscript:shortItemName];
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

  v32 = [v4 objectForKeyedSubscript:kind];
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

  v33 = [v4 objectForKeyedSubscript:label];
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

  v34 = [v4 objectForKeyedSubscript:launchProhibited];
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

  v35 = [v4 objectForKeyedSubscript:ratingDict];
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

  v40 = [v4 objectForKeyedSubscript:{releaseDate, v104}];
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

  v41 = [v4 objectForKeyedSubscript:softwareVersionBundleID];
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

  v42 = [v4 objectForKeyedSubscript:softwareVersionExternalIdentifier];
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

  v43 = [v4 objectForKeyedSubscript:sourceApp];
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

  v44 = [v4 objectForKeyedSubscript:storeCohort];
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

  v45 = [v4 objectForKeyedSubscript:storefront];
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

  v46 = [v4 objectForKeyedSubscript:storefrontCountryCode];
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

  v47 = [v4 objectForKeyedSubscript:assetToken];
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

  v48 = [v4 objectForKeyedSubscript:variantID];
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

  v49 = [v4 objectForKeyedSubscript:betaBuildGroupID];
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

  v50 = [v4 objectForKeyedSubscript:genre];
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

  v51 = [v4 objectForKeyedSubscript:genreID];
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

  v52 = [v4 objectForKeyedSubscript:subGenres];
  if (!v52)
  {
    v52 = [v4 objectForKeyedSubscript:@"subgenre"];
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
    v114 = v4;
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

    v4 = v114;
    v36 = v112;
  }

  v71 = [v4 objectForKeyedSubscript:{categories, v105, v110, v111}];
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
  v75 = [v4 objectForKeyedSubscript:{gameCenterEnabled, v106}];
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

  v76 = [v4 objectForKeyedSubscript:gameCenterEverEnabled];
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

  v77 = [v4 objectForKeyedSubscript:isAutoDownload];
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

  v78 = [v4 objectForKeyedSubscript:referrerURL];
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

  v79 = [v4 objectForKeyedSubscript:referrerApp];
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

  v80 = [v4 objectForKeyedSubscript:sideLoadedDeviceBasedVPP];
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

  v81 = [v4 objectForKeyedSubscript:deviceBasedVPP];
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

  v82 = [v4 objectForKeyedSubscript:isB2BCustomApp];
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

  v83 = [v4 objectForKeyedSubscript:enterpriseInstallURL];
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

  v84 = [v4 objectForKeyedSubscript:redownloadParams];
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

  v85 = [v4 objectForKeyedSubscript:factoryInstall];
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

  v86 = [v4 objectForKeyedSubscript:md5];
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

  v87 = [v4 objectForKeyedSubscript:protectedMetadata];
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

  v88 = [v4 objectForKeyedSubscript:hasOrEverHasHadIAP];
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

  v89 = [v4 objectForKeyedSubscript:nameTranscriptions];
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

  v91 = [v4 objectForKeyedSubscript:{::distributorInfo, v107}];
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

  v96 = [v4 objectForKeyedSubscript:{managementDeclarationIdentifier, v108}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MIStoreMetadata *)v5 setManagementDeclarationIdentifier:v96];
  }

  else if (v96 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

  v97 = [v4 objectForKeyedSubscript:installerEpoch];
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
    v100 = [v99 unsignedIntegerValue];
    if (v100 <= 2)
    {
      v5->_installerEpoch = v100;
    }
  }

LABEL_412:
  v101 = v5;

  return v101;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MIStoreMetadata *)self iAdAttribution];
  v6 = [v5 copy];
  [v4 setIAdAttribution:v6];

  v7 = [(MIStoreMetadata *)self iAdConversionDate];
  v8 = [v7 copy];
  [v4 setIAdConversionDate:v8];

  v9 = [(MIStoreMetadata *)self iAdImpressionDate];
  v10 = [v9 copy];
  [v4 setIAdImpressionDate:v10];

  v11 = [(MIStoreMetadata *)self artistName];
  v12 = [v11 copy];
  [v4 setArtistName:v12];

  v13 = [(MIStoreMetadata *)self betaExternalVersionIdentifier];
  v14 = [v13 copy];
  [v4 setBetaExternalVersionIdentifier:v14];

  v15 = [(MIStoreMetadata *)self bundleVersion];
  v16 = [v15 copy];
  [v4 setBundleVersion:v16];

  v17 = [(MIStoreMetadata *)self bundleShortVersionString];
  v18 = [v17 copy];
  [v4 setBundleShortVersionString:v18];

  v19 = [(MIStoreMetadata *)self purchaseDate];
  v20 = [v19 copy];
  [v4 setPurchaseDate:v20];

  v21 = [(MIStoreMetadata *)self appleID];
  v22 = [v21 copy];
  [v4 setAppleID:v22];

  v23 = [(MIStoreMetadata *)self DSPersonID];
  v24 = [v23 copy];
  [v4 setDSPersonID:v24];

  v25 = [(MIStoreMetadata *)self downloaderID];
  v26 = [v25 copy];
  [v4 setDownloaderID:v26];

  v27 = [(MIStoreMetadata *)self familyID];
  v28 = [v27 copy];
  [v4 setFamilyID:v28];

  v29 = [(MIStoreMetadata *)self purchaserID];
  v30 = [v29 copy];
  [v4 setPurchaserID:v30];

  v31 = [(MIStoreMetadata *)self altDSID];
  v32 = [v31 copy];
  [v4 setAltDSID:v32];

  [v4 setHasMessagesExtension:{-[MIStoreMetadata hasMessagesExtension](self, "hasMessagesExtension")}];
  v33 = [(MIStoreMetadata *)self initialODRSize];
  v34 = [v33 copy];
  [v4 setInitialODRSize:v34];

  [v4 setPurchasedRedownload:{-[MIStoreMetadata isPurchasedRedownload](self, "isPurchasedRedownload")}];
  v35 = [(MIStoreMetadata *)self itemID];
  v36 = [v35 copy];
  [v4 setItemID:v36];

  v37 = [(MIStoreMetadata *)self itemName];
  v38 = [v37 copy];
  [v4 setItemName:v38];

  v39 = [(MIStoreMetadata *)self shortItemName];
  v40 = [v39 copy];
  [v4 setShortItemName:v40];

  v41 = [(MIStoreMetadata *)self kind];
  v42 = [v41 copy];
  [v4 setKind:v42];

  v43 = [(MIStoreMetadata *)self label];
  v44 = [v43 copy];
  [v4 setLabel:v44];

  [v4 setLaunchProhibited:{-[MIStoreMetadata isLaunchProhibited](self, "isLaunchProhibited")}];
  v45 = [(MIStoreMetadata *)self ratingLabel];
  v46 = [v45 copy];
  [v4 setRatingLabel:v46];

  v47 = [(MIStoreMetadata *)self ratingRank];
  v48 = [v47 copy];
  [v4 setRatingRank:v48];

  v49 = [(MIStoreMetadata *)self releaseDate];
  v50 = [v49 copy];
  [v4 setReleaseDate:v50];

  v51 = [(MIStoreMetadata *)self softwareVersionBundleID];
  v52 = [v51 copy];
  [v4 setSoftwareVersionBundleID:v52];

  v53 = [(MIStoreMetadata *)self softwareVersionExternalIdentifier];
  v54 = [v53 copy];
  [v4 setSoftwareVersionExternalIdentifier:v54];

  v55 = [(MIStoreMetadata *)self sourceApp];
  v56 = [v55 copy];
  [v4 setSourceApp:v56];

  v57 = [(MIStoreMetadata *)self storeCohort];
  v58 = [v57 copy];
  [v4 setStoreCohort:v58];

  v59 = [(MIStoreMetadata *)self storefront];
  v60 = [v59 copy];
  [v4 setStorefront:v60];

  v61 = [(MIStoreMetadata *)self storefrontCountryCode];
  v62 = [v61 copy];
  [v4 setStorefrontCountryCode:v62];

  v63 = [(MIStoreMetadata *)self assetToken];
  v64 = [v63 copy];
  [v4 setAssetToken:v64];

  v65 = [(MIStoreMetadata *)self variantID];
  v66 = [v65 copy];
  [v4 setVariantID:v66];

  v67 = [(MIStoreMetadata *)self betaBuildGroupID];
  v68 = [v67 copy];
  [v4 setBetaBuildGroupID:v68];

  v69 = [(MIStoreMetadata *)self genre];
  v70 = [v69 copy];
  [v4 setGenre:v70];

  v71 = [(MIStoreMetadata *)self genreID];
  v72 = [v71 copy];
  [v4 setGenreID:v72];

  v73 = [(MIStoreMetadata *)self subGenres];
  v74 = [v73 copy];
  [v4 setSubGenres:v74];

  v75 = [(MIStoreMetadata *)self categories];
  v76 = [v75 copy];
  [v4 setCategories:v76];

  [v4 setGameCenterEnabled:{-[MIStoreMetadata isGameCenterEnabled](self, "isGameCenterEnabled")}];
  [v4 setGameCenterEverEnabled:{-[MIStoreMetadata gameCenterEverEnabled](self, "gameCenterEverEnabled")}];
  [v4 setIsAutoDownload:{-[MIStoreMetadata isAutoDownload](self, "isAutoDownload")}];
  v77 = [(MIStoreMetadata *)self referrerURL];
  v78 = [v77 copy];
  [v4 setReferrerURL:v78];

  v79 = [(MIStoreMetadata *)self referrerApp];
  v80 = [v79 copy];
  [v4 setReferrerApp:v80];

  [v4 setSideLoadedDeviceBasedVPP:{-[MIStoreMetadata sideLoadedDeviceBasedVPP](self, "sideLoadedDeviceBasedVPP")}];
  [v4 setDeviceBasedVPP:{-[MIStoreMetadata deviceBasedVPP](self, "deviceBasedVPP")}];
  [v4 setIsB2BCustomApp:{-[MIStoreMetadata isB2BCustomApp](self, "isB2BCustomApp")}];
  v81 = [(MIStoreMetadata *)self enterpriseInstallURL];
  v82 = [v81 copy];
  [v4 setEnterpriseInstallURL:v82];

  v83 = [(MIStoreMetadata *)self redownloadParams];
  v84 = [v83 copy];
  [v4 setRedownloadParams:v84];

  v85 = [(MIStoreMetadata *)self nameTranscriptions];
  v86 = [v85 copy];
  [v4 setNameTranscriptions:v86];

  [v4 setFactoryInstall:{-[MIStoreMetadata isFactoryInstall](self, "isFactoryInstall")}];
  v87 = [(MIStoreMetadata *)self md5];
  v88 = [v87 copy];
  [v4 setMd5:v88];

  v89 = [(MIStoreMetadata *)self protectedMetadata];
  v90 = [v89 copy];
  [v4 setProtectedMetadata:v90];

  v91 = [(MIStoreMetadata *)self hasOrEverHasHadIAP];
  v92 = [v91 copy];
  [v4 setHasOrEverHasHadIAP:v92];

  v93 = [(MIStoreMetadata *)self distributorInfo];
  v94 = [v93 copy];
  [v4 setDistributorInfo:v94];

  v95 = [(MIStoreMetadata *)self managementDeclarationIdentifier];
  v96 = [v95 copy];
  [v4 setManagementDeclarationIdentifier:v96];

  [v4 setInstallerEpoch:{-[MIStoreMetadata installerEpoch](self, "installerEpoch")}];
  return v4;
}

- (MIStoreMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStoreMetadata *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iAdAttribution"];
    iAdAttribution = v5->_iAdAttribution;
    v5->_iAdAttribution = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iAdConversionDate"];
    iAdConversionDate = v5->_iAdConversionDate;
    v5->_iAdConversionDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iAdImpressionDate"];
    iAdImpressionDate = v5->_iAdImpressionDate;
    v5->_iAdImpressionDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artistName"];
    artistName = v5->_artistName;
    v5->_artistName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"betaExternalVersionIdentifier"];
    betaExternalVersionIdentifier = v5->_betaExternalVersionIdentifier;
    v5->_betaExternalVersionIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersionString"];
    bundleShortVersionString = v5->_bundleShortVersionString;
    v5->_bundleShortVersionString = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseDate"];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DSPersonID"];
    DSPersonID = v5->_DSPersonID;
    v5->_DSPersonID = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloaderID"];
    downloaderID = v5->_downloaderID;
    v5->_downloaderID = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyID"];
    familyID = v5->_familyID;
    v5->_familyID = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaserID"];
    purchaserID = v5->_purchaserID;
    v5->_purchaserID = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v32;

    v5->_hasMessagesExtension = [v4 decodeBoolForKey:@"hasMessagesExtension"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialODRSize"];
    initialODRSize = v5->_initialODRSize;
    v5->_initialODRSize = v34;

    v5->_purchasedRedownload = [v4 decodeBoolForKey:@"purchasedRedownload"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemName"];
    itemName = v5->_itemName;
    v5->_itemName = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortItemName"];
    shortItemName = v5->_shortItemName;
    v5->_shortItemName = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v44;

    v5->_launchProhibited = [v4 decodeBoolForKey:@"launchProhibited"];
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ratingLabel"];
    ratingLabel = v5->_ratingLabel;
    v5->_ratingLabel = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ratingRank"];
    ratingRank = v5->_ratingRank;
    v5->_ratingRank = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"softwareVersionBundleID"];
    softwareVersionBundleID = v5->_softwareVersionBundleID;
    v5->_softwareVersionBundleID = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"softwareVersionExternalIdentifier"];
    softwareVersionExternalIdentifier = v5->_softwareVersionExternalIdentifier;
    v5->_softwareVersionExternalIdentifier = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApp"];
    sourceApp = v5->_sourceApp;
    v5->_sourceApp = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeCohort"];
    storeCohort = v5->_storeCohort;
    v5->_storeCohort = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefrontCountryCode"];
    storefrontCountryCode = v5->_storefrontCountryCode;
    v5->_storefrontCountryCode = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetToken"];
    assetToken = v5->_assetToken;
    v5->_assetToken = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v5->_variantID;
    v5->_variantID = v66;

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"betaBuildGroupID"];
    betaBuildGroupID = v5->_betaBuildGroupID;
    v5->_betaBuildGroupID = v68;

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genreID"];
    genreID = v5->_genreID;
    v5->_genreID = v72;

    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    v77 = [v4 decodeObjectOfClasses:v76 forKey:@"subGenres"];
    subGenres = v5->_subGenres;
    v5->_subGenres = v77;

    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
    v82 = [v4 decodeObjectOfClasses:v81 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v82;

    v5->_gameCenterEnabled = [v4 decodeBoolForKey:@"gameCenterEnabled"];
    v5->_gameCenterEverEnabled = [v4 decodeBoolForKey:@"gameCenterEverEnabled"];
    v5->_isAutoDownload = [v4 decodeBoolForKey:@"isAutoDownload"];
    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerURL"];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = v84;

    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerApp"];
    referrerApp = v5->_referrerApp;
    v5->_referrerApp = v86;

    v5->_sideLoadedDeviceBasedVPP = [v4 decodeBoolForKey:@"sideLoadedDeviceBasedVPP"];
    v5->_deviceBasedVPP = [v4 decodeBoolForKey:@"deviceBasedVPP"];
    v5->_isB2BCustomApp = [v4 decodeBoolForKey:@"isB2BCustomApp"];
    v88 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enterpriseInstallURL"];
    enterpriseInstallURL = v5->_enterpriseInstallURL;
    v5->_enterpriseInstallURL = v88;

    v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"redownloadParams"];
    redownloadParams = v5->_redownloadParams;
    v5->_redownloadParams = v90;

    v5->_factoryInstall = [v4 decodeBoolForKey:@"factoryInstall"];
    v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"md5"];
    md5 = v5->_md5;
    v5->_md5 = v92;

    v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protectedMetadata"];
    protectedMetadata = v5->_protectedMetadata;
    v5->_protectedMetadata = v94;

    v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasOrEverHasHadIAP"];
    hasOrEverHasHadIAP = v5->_hasOrEverHasHadIAP;
    v5->_hasOrEverHasHadIAP = v96;

    v98 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorInfo"];
    distributorInfo = v5->_distributorInfo;
    v5->_distributorInfo = v98;

    v100 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managementDeclarationIdentifier"];
    managementDeclarationIdentifier = v5->_managementDeclarationIdentifier;
    v5->_managementDeclarationIdentifier = v100;

    v102 = MEMORY[0x1E695DFD8];
    v103 = objc_opt_class();
    v104 = objc_opt_class();
    v105 = [v102 setWithObjects:{v103, v104, objc_opt_class(), 0}];
    v106 = [v4 decodeObjectOfClasses:v105 forKey:@"nameTranscriptions"];

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

    v107 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installerEpoch"];
    v5->_installerEpoch = [v107 unsignedIntegerValue];

    if (v5->_installerEpoch >= 3)
    {
      v5->_installerEpoch = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStoreMetadata *)self iAdAttribution];
  [v4 encodeObject:v5 forKey:@"iAdAttribution"];

  v6 = [(MIStoreMetadata *)self iAdConversionDate];
  [v4 encodeObject:v6 forKey:@"iAdConversionDate"];

  v7 = [(MIStoreMetadata *)self iAdImpressionDate];
  [v4 encodeObject:v7 forKey:@"iAdImpressionDate"];

  v8 = [(MIStoreMetadata *)self artistName];
  [v4 encodeObject:v8 forKey:@"artistName"];

  v9 = [(MIStoreMetadata *)self betaExternalVersionIdentifier];
  [v4 encodeObject:v9 forKey:@"betaExternalVersionIdentifier"];

  v10 = [(MIStoreMetadata *)self bundleVersion];
  [v4 encodeObject:v10 forKey:@"bundleVersion"];

  v11 = [(MIStoreMetadata *)self bundleShortVersionString];
  [v4 encodeObject:v11 forKey:@"bundleShortVersionString"];

  v12 = [(MIStoreMetadata *)self purchaseDate];
  [v4 encodeObject:v12 forKey:@"purchaseDate"];

  v13 = [(MIStoreMetadata *)self appleID];
  [v4 encodeObject:v13 forKey:@"appleID"];

  v14 = [(MIStoreMetadata *)self DSPersonID];
  [v4 encodeObject:v14 forKey:@"DSPersonID"];

  v15 = [(MIStoreMetadata *)self downloaderID];
  [v4 encodeObject:v15 forKey:@"downloaderID"];

  v16 = [(MIStoreMetadata *)self familyID];
  [v4 encodeObject:v16 forKey:@"familyID"];

  v17 = [(MIStoreMetadata *)self purchaserID];
  [v4 encodeObject:v17 forKey:@"purchaserID"];

  v18 = [(MIStoreMetadata *)self altDSID];
  [v4 encodeObject:v18 forKey:@"altDSID"];

  [v4 encodeBool:-[MIStoreMetadata hasMessagesExtension](self forKey:{"hasMessagesExtension"), @"hasMessagesExtension"}];
  v19 = [(MIStoreMetadata *)self initialODRSize];
  [v4 encodeObject:v19 forKey:@"initialODRSize"];

  [v4 encodeBool:-[MIStoreMetadata isPurchasedRedownload](self forKey:{"isPurchasedRedownload"), @"purchasedRedownload"}];
  v20 = [(MIStoreMetadata *)self itemID];
  [v4 encodeObject:v20 forKey:@"itemID"];

  v21 = [(MIStoreMetadata *)self itemName];
  [v4 encodeObject:v21 forKey:@"itemName"];

  v22 = [(MIStoreMetadata *)self shortItemName];
  [v4 encodeObject:v22 forKey:@"shortItemName"];

  v23 = [(MIStoreMetadata *)self kind];
  [v4 encodeObject:v23 forKey:@"kind"];

  v24 = [(MIStoreMetadata *)self label];
  [v4 encodeObject:v24 forKey:@"label"];

  [v4 encodeBool:-[MIStoreMetadata isLaunchProhibited](self forKey:{"isLaunchProhibited"), @"launchProhibited"}];
  v25 = [(MIStoreMetadata *)self ratingLabel];
  [v4 encodeObject:v25 forKey:@"ratingLabel"];

  v26 = [(MIStoreMetadata *)self ratingRank];
  [v4 encodeObject:v26 forKey:@"ratingRank"];

  v27 = [(MIStoreMetadata *)self releaseDate];
  [v4 encodeObject:v27 forKey:@"releaseDate"];

  v28 = [(MIStoreMetadata *)self softwareVersionBundleID];
  [v4 encodeObject:v28 forKey:@"softwareVersionBundleID"];

  v29 = [(MIStoreMetadata *)self softwareVersionExternalIdentifier];
  [v4 encodeObject:v29 forKey:@"softwareVersionExternalIdentifier"];

  v30 = [(MIStoreMetadata *)self sourceApp];
  [v4 encodeObject:v30 forKey:@"sourceApp"];

  v31 = [(MIStoreMetadata *)self storeCohort];
  [v4 encodeObject:v31 forKey:@"storeCohort"];

  v32 = [(MIStoreMetadata *)self storefront];
  [v4 encodeObject:v32 forKey:@"storefront"];

  v33 = [(MIStoreMetadata *)self storefrontCountryCode];
  [v4 encodeObject:v33 forKey:@"storefrontCountryCode"];

  v34 = [(MIStoreMetadata *)self assetToken];
  [v4 encodeObject:v34 forKey:@"assetToken"];

  v35 = [(MIStoreMetadata *)self variantID];
  [v4 encodeObject:v35 forKey:@"variantID"];

  v36 = [(MIStoreMetadata *)self betaBuildGroupID];
  [v4 encodeObject:v36 forKey:@"betaBuildGroupID"];

  v37 = [(MIStoreMetadata *)self genre];
  [v4 encodeObject:v37 forKey:@"genre"];

  v38 = [(MIStoreMetadata *)self genreID];
  [v4 encodeObject:v38 forKey:@"genreID"];

  v39 = [(MIStoreMetadata *)self subGenres];
  [v4 encodeObject:v39 forKey:@"subGenres"];

  v40 = [(MIStoreMetadata *)self categories];
  [v4 encodeObject:v40 forKey:@"categories"];

  [v4 encodeBool:-[MIStoreMetadata isGameCenterEnabled](self forKey:{"isGameCenterEnabled"), @"gameCenterEnabled"}];
  [v4 encodeBool:-[MIStoreMetadata gameCenterEverEnabled](self forKey:{"gameCenterEverEnabled"), @"gameCenterEverEnabled"}];
  [v4 encodeBool:-[MIStoreMetadata isAutoDownload](self forKey:{"isAutoDownload"), @"isAutoDownload"}];
  v41 = [(MIStoreMetadata *)self referrerURL];
  [v4 encodeObject:v41 forKey:@"referrerURL"];

  v42 = [(MIStoreMetadata *)self referrerApp];
  [v4 encodeObject:v42 forKey:@"referrerApp"];

  [v4 encodeBool:-[MIStoreMetadata sideLoadedDeviceBasedVPP](self forKey:{"sideLoadedDeviceBasedVPP"), @"sideLoadedDeviceBasedVPP"}];
  [v4 encodeBool:-[MIStoreMetadata deviceBasedVPP](self forKey:{"deviceBasedVPP"), @"deviceBasedVPP"}];
  [v4 encodeBool:-[MIStoreMetadata isB2BCustomApp](self forKey:{"isB2BCustomApp"), @"isB2BCustomApp"}];
  v43 = [(MIStoreMetadata *)self enterpriseInstallURL];
  [v4 encodeObject:v43 forKey:@"enterpriseInstallURL"];

  v44 = [(MIStoreMetadata *)self redownloadParams];
  [v4 encodeObject:v44 forKey:@"redownloadParams"];

  v45 = [(MIStoreMetadata *)self nameTranscriptions];
  [v4 encodeObject:v45 forKey:@"nameTranscriptions"];

  [v4 encodeBool:-[MIStoreMetadata isFactoryInstall](self forKey:{"isFactoryInstall"), @"factoryInstall"}];
  v46 = [(MIStoreMetadata *)self md5];
  [v4 encodeObject:v46 forKey:@"md5"];

  v47 = [(MIStoreMetadata *)self protectedMetadata];
  [v4 encodeObject:v47 forKey:@"protectedMetadata"];

  v48 = [(MIStoreMetadata *)self hasOrEverHasHadIAP];
  [v4 encodeObject:v48 forKey:@"hasOrEverHasHadIAP"];

  v49 = [(MIStoreMetadata *)self distributorInfo];
  [v4 encodeObject:v49 forKey:@"distributorInfo"];

  v50 = [(MIStoreMetadata *)self managementDeclarationIdentifier];
  [v4 encodeObject:v50 forKey:@"managementDeclarationIdentifier"];

  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIStoreMetadata installerEpoch](self, "installerEpoch")}];
  [v4 encodeObject:v51 forKey:@"installerEpoch"];
}

+ (id)metadataFromPlistData:(id)a3 error:(id *)a4
{
  v18 = 0;
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:&v18];
  v8 = v18;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [a1 metadataFromDictionary:v6];
      if (!a4)
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
      if (!a4)
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
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v15 = v8;
    *a4 = v8;
  }

LABEL_10:

  return v9;
}

+ (id)metadataFromPlistAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v15 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:3 error:&v15];
  v7 = v15;
  if (v6)
  {
    v14 = v7;
    v8 = [objc_opt_class() metadataFromPlistData:v6 error:&v14];
    v9 = v14;
  }

  else
  {
    v10 = [v5 path];
    v9 = _CreateError("+[MIStoreMetadata metadataFromPlistAtURL:error:]", 994, @"MIInstallerErrorDomain", 78, v7, &unk_1F2888C18, @"Failed to read iTunesMetadata.plist from %@", v11, v10);

    v8 = 0;
    v7 = v10;
  }

  if (a4 && !v8)
  {
    v12 = v9;
    *a4 = v9;
  }

  return v8;
}

+ (id)metadataFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDictionary:v3];

  return v4;
}

+ (id)metadataForBundleContainerURL:(id)a3 error:(id *)a4
{
  v6 = [a3 URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];
  v7 = [a1 metadataFromPlistAtURL:v6 error:a4];

  return v7;
}

- (id)dictionaryRepresentation
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(MIStoreMetadata *)self iAdAttribution];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:iAdAttribution];
  }

  v5 = [(MIStoreMetadata *)self iAdConversionDate];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:iAdConversionDate];
  }

  v6 = [(MIStoreMetadata *)self iAdImpressionDate];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:iAdImpressionDate];
  }

  v7 = [(MIStoreMetadata *)self artistName];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:artistName];
  }

  v8 = [(MIStoreMetadata *)self betaExternalVersionIdentifier];
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:betaExternalVersionIdentifier];
  }

  v9 = [(MIStoreMetadata *)self bundleVersion];
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:bundleVersion];
  }

  v10 = [(MIStoreMetadata *)self bundleShortVersionString];
  if (v10)
  {
    [v3 setObject:v10 forKeyedSubscript:bundleShortVersionString];
  }

  v11 = objc_opt_new();
  v12 = [(MIStoreMetadata *)self purchaseDate];

  if (v12)
  {
    v13 = [(MIStoreMetadata *)self purchaseDate];
    [v11 setObject:v13 forKeyedSubscript:purchaseDate];
  }

  v14 = [(MIStoreMetadata *)self appleID];
  if (v14 || ([(MIStoreMetadata *)self DSPersonID], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MIStoreMetadata *)self downloaderID], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MIStoreMetadata *)self familyID], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || ([(MIStoreMetadata *)self purchaserID], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v88 = [(MIStoreMetadata *)self altDSID];

    if (!v88)
    {
      goto LABEL_36;
    }
  }

  v15 = objc_opt_new();
  v16 = [(MIStoreMetadata *)self appleID];

  if (v16)
  {
    v17 = [(MIStoreMetadata *)self appleID];
    [v15 setObject:v17 forKeyedSubscript:appleID];
  }

  v18 = [(MIStoreMetadata *)self DSPersonID];

  if (v18)
  {
    v19 = [(MIStoreMetadata *)self DSPersonID];
    [v15 setObject:v19 forKeyedSubscript:DSPersonID];
  }

  v20 = [(MIStoreMetadata *)self downloaderID];

  if (v20)
  {
    v21 = [(MIStoreMetadata *)self downloaderID];
    [v15 setObject:v21 forKeyedSubscript:downloaderID];
  }

  v22 = [(MIStoreMetadata *)self familyID];

  if (v22)
  {
    v23 = [(MIStoreMetadata *)self familyID];
    [v15 setObject:v23 forKeyedSubscript:familyID];
  }

  v24 = [(MIStoreMetadata *)self purchaserID];

  if (v24)
  {
    v25 = [(MIStoreMetadata *)self purchaserID];
    [v15 setObject:v25 forKeyedSubscript:purchaserID];
  }

  v26 = [(MIStoreMetadata *)self altDSID];

  if (v26)
  {
    v27 = [(MIStoreMetadata *)self altDSID];
    [v15 setObject:v27 forKeyedSubscript:altDSID];
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

  v31 = [(MIStoreMetadata *)self initialODRSize];
  if (v31)
  {
    [v3 setObject:v31 forKeyedSubscript:initialODRSize];
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isPurchasedRedownload](self, "isPurchasedRedownload")}];
  [v3 setObject:v32 forKeyedSubscript:purchasedRedownload];

  v33 = [(MIStoreMetadata *)self itemID];
  if (v33)
  {
    [v3 setObject:v33 forKeyedSubscript:itemID];
  }

  v34 = [(MIStoreMetadata *)self itemName];
  if (v34)
  {
    [v3 setObject:v34 forKeyedSubscript:itemName];
  }

  v35 = [(MIStoreMetadata *)self shortItemName];
  if (v35)
  {
    [v3 setObject:v35 forKeyedSubscript:shortItemName];
  }

  v36 = [(MIStoreMetadata *)self kind];
  if (v36)
  {
    [v3 setObject:v36 forKeyedSubscript:kind];
  }

  v37 = [(MIStoreMetadata *)self label];
  if (v37)
  {
    [v3 setObject:v37 forKeyedSubscript:label];
  }

  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isLaunchProhibited](self, "isLaunchProhibited")}];
  [v3 setObject:v38 forKeyedSubscript:launchProhibited];

  v39 = objc_opt_new();
  v40 = [(MIStoreMetadata *)self ratingLabel];

  if (v40)
  {
    v41 = [(MIStoreMetadata *)self ratingLabel];
    [v39 setObject:v41 forKeyedSubscript:ratingLabel];
  }

  v42 = [(MIStoreMetadata *)self ratingRank];

  if (v42)
  {
    v43 = [(MIStoreMetadata *)self ratingRank];
    [v39 setObject:v43 forKeyedSubscript:ratingRank];
  }

  if ([v39 count])
  {
    [v3 setObject:v39 forKeyedSubscript:ratingDict];
  }

  v44 = [(MIStoreMetadata *)self releaseDate];
  if (v44)
  {
    [v3 setObject:v44 forKeyedSubscript:releaseDate];
  }

  v45 = [(MIStoreMetadata *)self softwareVersionBundleID];
  if (v45)
  {
    [v3 setObject:v45 forKeyedSubscript:softwareVersionBundleID];
  }

  v46 = [(MIStoreMetadata *)self softwareVersionExternalIdentifier];
  if (v46)
  {
    [v3 setObject:v46 forKeyedSubscript:softwareVersionExternalIdentifier];
  }

  v47 = [(MIStoreMetadata *)self sourceApp];
  if (v47)
  {
    [v3 setObject:v47 forKeyedSubscript:sourceApp];
  }

  v48 = [(MIStoreMetadata *)self storeCohort];
  if (v48)
  {
    [v3 setObject:v48 forKeyedSubscript:storeCohort];
  }

  v49 = [(MIStoreMetadata *)self storefront];
  if (v49)
  {
    [v3 setObject:v49 forKeyedSubscript:storefront];
  }

  v50 = [(MIStoreMetadata *)self storefrontCountryCode];
  if (v50)
  {
    [v3 setObject:v50 forKeyedSubscript:storefrontCountryCode];
  }

  v51 = [(MIStoreMetadata *)self assetToken];
  if (v51)
  {
    [v3 setObject:v51 forKeyedSubscript:assetToken];
  }

  v52 = [(MIStoreMetadata *)self variantID];
  if (v52)
  {
    [v3 setObject:v52 forKeyedSubscript:variantID];
  }

  v53 = [(MIStoreMetadata *)self betaBuildGroupID];
  if (v53)
  {
    [v3 setObject:v53 forKeyedSubscript:betaBuildGroupID];
  }

  v54 = [(MIStoreMetadata *)self genre];
  if (v54)
  {
    [v3 setObject:v54 forKeyedSubscript:genre];
  }

  v55 = [(MIStoreMetadata *)self genreID];
  if (v55)
  {
    [v3 setObject:v55 forKeyedSubscript:genreID];
  }

  v56 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v57 = [(MIStoreMetadata *)self subGenres];
  v58 = [v57 countByEnumeratingWithState:&v89 objects:v93 count:16];
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
          objc_enumerationMutation(v57);
        }

        v62 = [*(*(&v89 + 1) + 8 * i) dictionaryRepresentation];
        [v56 addObject:v62];
      }

      v59 = [v57 countByEnumeratingWithState:&v89 objects:v93 count:16];
    }

    while (v59);
  }

  v63 = [v56 copy];
  [v3 setObject:v63 forKeyedSubscript:subGenres];

  v64 = [(MIStoreMetadata *)self categories];
  if (v64)
  {
    [v3 setObject:v64 forKeyedSubscript:categories];
  }

  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isGameCenterEnabled](self, "isGameCenterEnabled")}];
  [v3 setObject:v65 forKeyedSubscript:gameCenterEnabled];

  v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata gameCenterEverEnabled](self, "gameCenterEverEnabled")}];
  [v3 setObject:v66 forKeyedSubscript:gameCenterEverEnabled];

  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isAutoDownload](self, "isAutoDownload")}];
  [v3 setObject:v67 forKeyedSubscript:isAutoDownload];

  v68 = [(MIStoreMetadata *)self referrerURL];
  if (v68)
  {
    [v3 setObject:v68 forKeyedSubscript:referrerURL];
  }

  v69 = [(MIStoreMetadata *)self referrerApp];
  if (v69)
  {
    [v3 setObject:v69 forKeyedSubscript:referrerApp];
  }

  v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata sideLoadedDeviceBasedVPP](self, "sideLoadedDeviceBasedVPP")}];
  [v3 setObject:v70 forKeyedSubscript:sideLoadedDeviceBasedVPP];

  v71 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata deviceBasedVPP](self, "deviceBasedVPP")}];
  [v3 setObject:v71 forKeyedSubscript:deviceBasedVPP];

  v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isB2BCustomApp](self, "isB2BCustomApp")}];
  [v3 setObject:v72 forKeyedSubscript:isB2BCustomApp];

  v73 = [(MIStoreMetadata *)self enterpriseInstallURL];
  if (v73)
  {
    [v3 setObject:v73 forKeyedSubscript:enterpriseInstallURL];
  }

  v74 = [(MIStoreMetadata *)self redownloadParams];
  if (v74)
  {
    [v3 setObject:v74 forKeyedSubscript:redownloadParams];
  }

  v75 = [(MIStoreMetadata *)self nameTranscriptions];
  if (v75)
  {
    [v3 setObject:v75 forKeyedSubscript:nameTranscriptions];
  }

  v76 = [MEMORY[0x1E696AD98] numberWithBool:{-[MIStoreMetadata isFactoryInstall](self, "isFactoryInstall")}];
  [v3 setObject:v76 forKeyedSubscript:factoryInstall];

  v77 = [(MIStoreMetadata *)self md5];
  if (v77)
  {
    [v3 setObject:v77 forKeyedSubscript:md5];
  }

  v78 = [(MIStoreMetadata *)self protectedMetadata];
  if (v78)
  {
    [v3 setObject:v78 forKeyedSubscript:protectedMetadata];
  }

  v79 = [(MIStoreMetadata *)self hasOrEverHasHadIAP];
  if (v79)
  {
    [v3 setObject:v79 forKeyedSubscript:hasOrEverHasHadIAP];
  }

  v80 = [(MIStoreMetadata *)self distributorInfo];
  v81 = v80;
  if (v80)
  {
    v82 = [v80 dictionaryRepresentation];
    [v3 setObject:v82 forKeyedSubscript:distributorInfo];
  }

  v83 = [(MIStoreMetadata *)self managementDeclarationIdentifier];
  if (v83)
  {
    [v3 setObject:v83 forKeyedSubscript:managementDeclarationIdentifier];
  }

  v84 = [(MIStoreMetadata *)self installerEpoch];
  if (v84)
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v84];
    [v3 setObject:v85 forKeyedSubscript:installerEpoch];
  }

  v86 = [v3 copy];

  return v86;
}

- (id)propertyListDataWithError:(id *)a3
{
  v4 = MEMORY[0x1E696AE40];
  v5 = [(MIStoreMetadata *)self dictionaryRepresentation];
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:a3];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v155 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIStoreMetadata *)self iAdAttribution];
      v7 = [(MIStoreMetadata *)v5 iAdAttribution];
      v8 = MICompareObjects(v6, v7);

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
        v154 = [(MIStoreMetadata *)self installerEpoch];
        v155 = v154 == [(MIStoreMetadata *)v5 installerEpoch];
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
  v2 = [(MIStoreMetadata *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (BOOL)isEligibleForWatchAppInstall
{
  v2 = [(MIStoreMetadata *)self distributorInfo];
  v3 = [v2 distributorID];

  if (v3)
  {
    v4 = [v2 distributorIsFirstPartyApple];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end